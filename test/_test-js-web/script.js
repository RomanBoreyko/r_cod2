let letterCount = 1;
let missedCount = 0;
let successCount = 0;
let gameStarted = false; // Переменная для отслеживания статуса игры

function generateRandomLetters(count) {
  let randomLetters = '';
  for (let i = 0; i < count; i++) {
    const randomCharCode = Math.floor(Math.random() * (90 - 65 + 1)) + 65;
    const randomLetter = String.fromCharCode(randomCharCode);
    randomLetters += randomLetter;
  }
  return randomLetters;
}

function displayLettersOnScreen(letters) {
  const letterDisplayElement = document.getElementById('letter-display');
  letterDisplayElement.innerHTML = ''; // Очищаем содержимое перед добавлением новых букв

  for (let i = 0; i < letters.length; i++) {
    const letterElement = document.createElement('div');
    letterElement.classList.add('letter');
    letterElement.textContent = letters[i];
    letterDisplayElement.appendChild(letterElement);

    const gameAreaWidth = document.getElementById('game-area').clientWidth;
    const gameAreaHeight = document.getElementById('game-area').clientHeight;
    const randomTop = Math.floor(Math.random() * (gameAreaHeight - 40)); // Случайное значение для координаты top
    const randomLeft = Math.floor(Math.random() * (gameAreaWidth - 40)); // Случайное значение для координаты left
    letterElement.style.top = `${randomTop}px`;
    letterElement.style.left = `${randomLeft}px`;
  }
}

function removeLetterFromScreen() {
  const letterDisplayElement = document.getElementById('letter-display');
  letterDisplayElement.innerHTML = '';
}

function handleKeyPress(event) {
  if (!gameStarted) return; // Прекратить обработку нажатия клавиши, если игра не начата

  const pressedKey = event.key.toUpperCase();
  const letterDisplayElement = document.getElementById('letter-display');
  const letterElements = letterDisplayElement.getElementsByClassName('letter');

  for (let i = 0; i < letterElements.length; i++) {
    const letterElement = letterElements[i];
    if (letterElement.textContent.toUpperCase() === pressedKey) {
      letterElement.remove();
      successCount++;
      break;
    }
  }

  if (letterElements.length === 0) {
    letterCount++;
    const randomLetters = generateRandomLetters(letterCount);
    displayLettersOnScreen(randomLetters);
  }
}

document.addEventListener('keypress', handleKeyPress);

// Анимация букв
function animateLetter() {
  const letterDisplayElement = document.getElementById('letter-display');
  const letterElements = letterDisplayElement.getElementsByClassName('letter');

  for (let i = 0; i < letterElements.length; i++) {
    const letterElement = letterElements[i];
    const randomTop = Math.floor(Math.random() * (400 - 40)); // Случайное значение для координаты top
    const randomLeft = Math.floor(Math.random() * (100 - 40)); // Случайное значение для координаты left
    const animationDuration = Math.random() * 5 + 2; // Случайная длительность анимации (от 2 до 7 секунд)

    letterElement.style.animationDuration = `${animationDuration}s`;
    letterElement.style.top = `${randomTop}px`;
    letterElement.style.left = `${randomLeft}px`;
  }

  // Обработчик события окончания анимации
  letterDisplayElement.addEventListener('animationend', function(event) {
    const removedLetter = event.target;
    missedCount++;
    document.getElementById('missed-count').textContent = missedCount;
    removedLetter.remove();

    if (letterElements.length === 0) {
      const randomLetters = generateRandomLetters(letterCount);
      displayLettersOnScreen(randomLetters);
    }
  });
}

// Обработчик события клика на кнопку "Старт"
document.getElementById('start-button').addEventListener('click', function() {
  if (!gameStarted) {
    gameStarted = true;
    this.disabled = true; // Отключить кнопку после старта игры
    const randomLetters = generateRandomLetters(letterCount);
    displayLettersOnScreen(randomLetters);
    animateLetter();
  }
});
