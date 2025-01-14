public class разбить-изменить-собрать {
    public static Streng р-и-с(String s, int n){
        String[] разбить = s.split("");
    }
}

// public class Kata {
//     public static String remove (String s, int n) {
//       String[] rArr = s.split("");
//       int rCounter = 0;
//       int rResultI = 0;
//       // узнать сколько ! в массиве
//       for (int i=0; i<=rArr.length; i++){ if (rArr[i] == "!") {rCounter++;};};
  
//   if(n>=rCounter){ // если n больше-равно массиву то удалять будем все "!"
//       //создать массив правильного размера
//       String[] rResult = new String[rArr.length-rCounter];
//       for (int i=0; i<=rArr.length; i++) {
//           if(rArr[i] != "!") {
//               rResult[rResultI] = rArr[i]; rResultI++;
//           }
//       }
//   } else {//создать массив правильного размера
//       String[] rResult = new String[rArr.length-n];
//       for (int i=0; i<=rArr.length; i++) {
//           if (rResult.length<rResultI){
//               if (rArr[i] != "!") {
//                   rResult[rResultI] = rArr[i]; rResultI++;
//               }
//           }
//       }
//   }
  
//       return Arrays.toString(rResult);
  
//   }
//   }
