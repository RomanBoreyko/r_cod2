sudo apt update
sudo apt install texlive-latex-base texlive-latex-extra
sudo apt install pandoc
sudo apt install findutils
sudo apt install texlive-xetex
sudo apt-get install texlive-full
find . \( -name "*.md" -o -name "*.js" -o -name "*.cs" -o -name "*.csproj" \) -exec pandoc {} --highlight-style tango -o {}.pdf --pdf-engine=xelatex \;

// я не знаю какой был терминал у меня, но теперь он другой ((
откатил timeshift

Потребовалось распечатать конспект с подсветкой синтаксиса.
Вот решение

1. собираем файлы в директории в один
find . -type f \( -name "*.md" -o -name "*.js" -o -name "*.cs" -o -name "*.csproj" \) -exec cat {} + > combined.html

2. в нем добавляем подсветку
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/styles/default.min.css">
    <script
		src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/highlight.min.js"></script>
   	<script>hljs.highlightAll();</script>
</head>
<body>
<pre><code class="language-csharp hljs-line-highlight language-html">

3. открываем в браузере > жмем печать > сохраняем в пдф

