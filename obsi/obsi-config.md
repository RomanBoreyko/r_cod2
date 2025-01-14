Вариант 1: Установка плагина для поддержки C#

    Откройте настройки Obsidian.
    Перейдите на вкладку "Плагины".
    В разделе "Community plugins" найдите плагин, который предоставляет поддержку C# (например, "C# (Omnisharp)").
    Установите плагин и перезапустите Obsidian, если это требуется.

После установки плагина для поддержки C#, файлы с расширением .cs должны быть отображаемыми и редактируемыми в редакторе заметок Obsidian.

Вариант 2: Настройка подсветки синтаксиса
Если вы не хотите использовать плагин, вы можете настроить подсветку синтаксиса языка C# в Obsidian вручную. Для этого выполните следующие шаги:

    Откройте файл settings.json в вашем рабочем каталоге Obsidian.
    Добавьте следующий код в файл settings.json:

json

"highlightModeMap": {
  "csharp": "text/x-csharp"
}

    Сохраните файл settings.json.
    Перезапустите Obsidian.


Custom file extensions settings
{"markdown":["","txt","html","js","css","ts","jsx","tsx","yaml","yml","sass","cs","csproj.nuget.dgspec.json",".json","csproj","targets","assets","cache","cpp","scss"]}
