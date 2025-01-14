// удалить ел масс
for(int i=0; i<n; i++) s = s.replaceFirst("!","");
String.join("", s.split("!", n + 1));
n==0?s:remove(s.replaceFirst("!",""),n-1);