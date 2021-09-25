public class Problem4 {
  private static boolean isPalindrome(int n) {
    String nstr = String.valueOf(n);
    for (int i = 0, j = nstr.length() - 1; i <= j; i++, j--) {
      if (nstr.charAt(i) != nstr.charAt(j)) {
        return false;
      }
    }
    return true;
  }

  private static int solve() {
    int maxVal = -1;
    for (int i = 999; i >= 100; i--) {
      for (int j = 999; j >= 100; j--) {
        int p = i * j;
        if (isPalindrome(p)) {
          if (maxVal == -1) {
            maxVal = p;
          } else {
            maxVal = Math.max(maxVal, p);
          }
        }
      }
    }

    return maxVal;
  }

  public static void main(String[] args) {
    System.out.println(solve());
  }
}
