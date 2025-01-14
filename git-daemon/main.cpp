#include <iostream>
#include <fstream>
#include <experimental/filesystem>
#include <chrono>

namespace fs = std::experimental::filesystem;

std::pair<std::string, std::string> extractGitConfig() {
    std::string gitConfigPath = fs::path(getenv("HOME")) / ".gitconfig"; // Путь к файлу конфигурации Git

    if (fs::exists(gitConfigPath)) {
        std::ifstream configFile(gitConfigPath);
        std::string line;

        std::string name;
        std::string email;

        while (std::getline(configFile, line)) {
            if (line.find("[user]") != std::string::npos) {
                while (std::getline(configFile, line)) {
                    if (line.find("name") != std::string::npos) {
                        name = line.substr(line.find('=') + 2);
                    } else if (line.find("email") != std::string::npos) {
                        email = line.substr(line.find('=') + 2);
                    } else if (line.find('[') != std::string::npos) {
                        break;
                    }
                }
                break;
            }
        }

        configFile.close();

        return std::make_pair(name, email);
    }

    return std::make_pair("", "");
}

std::string extractRemoteOriginConfig(const std::string& directory) {
    std::string gitConfigPath = fs::path(directory) / ".git" / "config"; // Путь к файлу конфигурации Git в указанной директории

    if (fs::exists(gitConfigPath)) {
        std::ifstream configFile(gitConfigPath);
        std::string line;

        std::string url;

        while (std::getline(configFile, line)) {
            if (line.find("[remote \"origin\"]") != std::string::npos) {
                while (std::getline(configFile, line)) {
                    if (line.find("url") != std::string::npos) {
                        url = line.substr(line.find('=') + 2);
                    } else if (line.find('[') != std::string::npos) {
                        break;
                    }
                }
                break;
            }
        }

        configFile.close();

        return url;
    }

    return "";
}

int main() {
    std::cout << "Запрос директории для отслеживания\n"; // Вывод сообщения о запросе директории для отслеживания
    std::string directory = fs::current_path().string(); // Получение текущей директории

    std::cout << "# Извлечение информации из файла конфигурации Git\n"; // Вывод комментария
    auto [name, email] = extractGitConfig(); // Извлечение информации о пользователе из файла конфигурации Git
    std::string url = extractRemoteOriginConfig(directory); // Извлечение URL-адреса репозитория из файла конфигурации Git

    if (name.empty() || email.empty()) {
        std::cout << "Не удалось извлечь информацию о пользователе из файла конфигурации Git.\n";
    } else {
        std::cout << "Имя: " << name << "\n"; // Вывод имени пользователя
        std::cout << "Email: " << email << "\n"; // Вывод email пользователя
    }

    if (url.empty()) {
        std::cout << "Не удалось извлечь URL-адрес репозитория из файла конфигурации Git.\n";
    } else {
        std::cout << "URL репозитория: " << url << "\n"; // Вывод URL-адреса репозитория
    }

    if (name.empty() || email.empty() || url.empty()) {
        std::cout << "Ошибка: не удалось извлечь необходимую информацию из файла конфигурации Git.\n";
        return 1;
    }

    std::string repoPath = fs::current_path().string(); // Получение текущей директории

    try {
        // Репозиторий уже существует, можно продолжить работу
        std::cout << "# Репозиторий уже существует, можно продолжить работу\n";
    } catch (const git::exc::InvalidGitRepositoryError&) {
        std::cout << "# Репозиторий не существует, инициализируйте его\n";
        return 1;
    }

    std::cout << "# Add .\n"; // Вывод команды Git

    git::Repository repo(repoPath); // Инициализация объекта Repository для работы с репозиторием
    git::Index index = repo.index();
    index.addEverything();

    git::Signature author(name, email); // Создание объекта Signature для указания автора коммита
    git::Signature committer = author; // Использование автора коммита в качестве коммитера
    std::string commitMessage = "# Auto commit: " + std::to_string(std::chrono::system_clock::now().time_since_epoch().count()); // Формирование сообщения коммита
    index.commit(commitMessage, author, committer); // Создание коммита
    std::cout << commitMessage << "\n"; // Вывод комментария

    std::cout << "# Создаем удаленную ссылку на репозиторий\n"; // Вывод комментария
    git::Remote remote = repo.lookupRemote("origin");
    if (!remote.isValid()) {
        remote = repo.createRemote("origin", url); // Создание удаленной ссылки на репозиторий
    }

    std::cout << "# Push\n"; // Вывод комментария
    std::string currentBranch = repo.head().name(); // Получение текущей ветки
    remote.push(std::vector<std::string>{currentBranch});

    std::cout << "# Отслеживание изменений в директории\n"; // Вывод комментария
    std::set<std::string> changedFiles; // Создание множества для отслеживания измененных файлов

    while (true) {
        for (const auto& entry : fs::recursive_directory_iterator(repoPath)) { // Обход файлов в директории репозитория
            const std::string& filePath = entry.path().string();
            if (fs::is_regular_file(entry) && index.hasChanges(filePath) && changedFiles.find(filePath) == changedFiles.end()) {
                changedFiles.insert(filePath); // Добавление измененного файла во множество
                std::cout << "# Авто адд .\n"; // Вывод комментария
                index.addFile(filePath); // Добавление файла в индекс

                std::string commitMessage = "# Auto commit: " + std::to_string(std::chrono::system_clock::now().time_since_epoch().count()); // Формирование сообщения коммита
                index.commit(commitMessage, author, committer); // Создание коммита
                std::cout << commitMessage << "\n"; // Вывод комментария

                std::cout << "# Авто пуш\n"; // Вывод комментария
                remote.push(std::vector<std::string>{currentBranch}); // Отправка изменений в удаленный репозиторий

                std::cout << "# Изменения в репозитории Git обнаружены.\n"; // Вывод сообщения о найденных изменениях
                notify2::Notification notification("Git Changes", "Изменения в репозитории Git обнаружены."); // Создание объекта Notification для уведомлений
                notification.show(); // Отображение уведомления
            }
        }
        changedFiles.clear(); // Очистка списка измененных файлов
    }

    return 0;
}
