package point24;

import java.util.Arrays;
import java.util.List;
import java.util.Stack;

public class BinaryTree {
    BinaryTree left;
    String root;
    BinaryTree right;

    public BinaryTree(String root) {
        this.root = root;
        left = right = null;
    }

    public static BinaryTree createBinaryTree(List<String> exp) {
        Stack<BinaryTree> stack = new Stack<>();
        for (String e : exp) {
            if (RPorlandExpression.isOperator(e)) {
                BinaryTree cur = new BinaryTree(e);
                BinaryTree right = stack.pop();
                BinaryTree left = stack.pop();
                cur.left = left;
                cur.right = right;
                stack.push(cur);
            } else {
                BinaryTree cur = new BinaryTree(e);
                stack.push(cur);
            }
        }
        return stack.peek();

    }

    public static void main(String[] args) {
        BinaryTree btree = new BinaryTree("+");
        // btree.travel();
        BinaryTree left = new BinaryTree("a");
        BinaryTree right = new BinaryTree("b");
        btree.left = left;
        btree.right = right;
        // btree.travel();
        BinaryTree tree = BinaryTree.createBinaryTree(Arrays
                .asList("a b + c d + *".split("\\s+")));
        //tree.travel();
        StringBuffer buffer=new StringBuffer();
        tree.travel(buffer);
        System.out.println(buffer);
    }
    public void travel(StringBuffer buffer) {

        if (left != null) {
            buffer.append("(");
            left.travel(buffer);
        }
        buffer.append(root);
        if (right != null) {
            right.travel(buffer);
            buffer.append(")");
        }
    }
    public void travel() {

        if (left != null) {
            System.out.print("(");
            left.travel();
        }
        System.out.print(root);
        if (right != null) {
            right.travel();
            System.out.print(")");
        }
    }
}
