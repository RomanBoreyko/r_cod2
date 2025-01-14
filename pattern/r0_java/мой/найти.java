// arr int[][] найти макс в двухмерном масиве
public int getMaxElement(int[][] matrix) {
  int max = matrix[0][0];
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] > max) max = matrix[i][j];
    }
  }
  return max;
}

// matrix[][]
class Solution
{ //Function to search a given number in row-column sorted matrix.
	static boolean search(int matrix[][], int n, int m, int x)
  {
  	int i = n-1, j = 0; 
  	while ( i >= 0 && j < m )
  	{ //if given number is found, we return true.
  		if ( matrix[i][j] == x ) 
  			return true; 
  			//if current element is greater than given number, we 
  		//decrease i pointer else we increase j pointer.
  		if ( matrix[i][j] > x ) 
  			i--; 
  		else 
  			j++; 
  	} //if we reach here, it means given number is not
  	//present in matrix so we return false.
  	return false; 
  } 
};

