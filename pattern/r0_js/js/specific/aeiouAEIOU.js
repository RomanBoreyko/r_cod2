const vowel = "aeiouAEIOU".split("");
const replaceWith = '!';
s = s.split("");

for (let i=0; i<s.length; i++) vowel.includes(s[i]) ? s[i] = replaceWith :0;

// гласные
