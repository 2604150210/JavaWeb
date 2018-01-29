package point24;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Vector;

public class Point24 {
    int a[] = new int[4];

    public Point24(int b[]) {
        // this.a=a.clone();
        for (int i = 0; i < 4; i++)
            this.a[i] = b[i];
    }

    public static void main(String[] args) {
        Point24 p = new Point24(new int[] { 1, 2, 6, 7 });
        p.solve();
    }

    final static String OPERATORS[] = "+ - * /".split("\\s+");
    private static final double GOAL = 24.0;

    public String solve() {
        String ops[] = new String[3];
        for (int i = 0; i < 4 * 4 * 4; i++) {
            ops[0] = OPERATORS[i % 4];
            ops[1] = OPERATORS[i / 4 % 4];
            ops[2] = OPERATORS[i / 4 / 4 % 4];

            List<String> exp = new Vector<String>();
            exp.addAll(Arrays.asList(ops));
            for (int t : a)
                exp.add(Integer.toString(t));
            for (int j = 0; j < 5040; j++) {
                Collections.shuffle(exp);
                double val = RPorlandExpression.evalute(exp);
                if (fequal(val, GOAL)) {
                    //System.out.println(exp);
                    BinaryTree tree=BinaryTree.createBinaryTree(exp);
                    StringBuffer buffer=new StringBuffer();
                    tree.travel(buffer);
                    return buffer.toString();
                }
            }
        }
        return "NO solutions";

    }

    private boolean fequal(double x, double y) {

        return Math.abs(x - y) <= 1E-6;
    }
}
