package point24;

public class Tools {
    public static int add(int a, int b) {
        return a + b;
    }

    public static String solve24(int a, int b, int c, int d) {
        int arr[] = new int[] { a, b, c, d };
        Point24 point = new Point24(arr);
        return point.solve();
    }
}
