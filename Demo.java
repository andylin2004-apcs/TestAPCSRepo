class Demo{
  static int[][] testBoi = new int[][] {{6,9,4},{2,0,1}};
  public static void main(String[] args) {
    if (args.length == 0){
      printLoop(5);
    }else{
      printLoop(Integer.parseInt(args[0]));
    }
    System.out.println(arrrayDeepToString(testBoi));
    System.out.println(arrrayDeepToString(create2DArray(4,4,4)).replace("}, ","},\n "));
    System.out.println(arrrayDeepToString(create2DArrayRandomized(4,4,4)).replace("}, ","},\n "));
  }
  public static void printLoop(int n){
    for(int i = 1; i<=n; i++){
      for(int v = n; v>=i; v--){
         System.out.print(i);
      }
      System.out.println();
    }
  }
  public static String arrToString(int[] arr){
    String result = "{";
    for (int i = 0; i<arr.length; i++){
      result += arr[i];
      if (i<arr.length-1){
        result += ", ";
      }
    }
    return result+"}";
  }
  public static String arrrayDeepToString(int[][] arr){
    String result = "{";
    for(int i = 0; i<arr.length;i++){
      result += arrToString(arr[i]);
      if (i<arr.length-1){
        result += ", ";
      }
    }
    return result+"}";
  }
  public static int[][] create2DArray(int rows, int cols, int maxValue){
    int[][] result = new int[rows][cols];
    for (int i = 0; i<rows; i++){
      for (int v = 0; v<cols; v++){
        result[i][v] = (int)(Math.random()*(double)(maxValue+1));
      }
    }
    return result;
  }
  public static int[][] create2DArrayRandomized(int rows, int cols, int maxValue){
    int[][] result = new int[rows][];
    for (int i = 0; i<rows; i++){
      int randomLength = (int)(Math.random()*(double)(cols+1));
      result[i] = new int[randomLength];
      for (int v = 0; v<randomLength; v++){
        result[i][v] = (int)(Math.random()*(double)(maxValue+1));
      }
    }
    return result;
  }
}
