package point24;

import java.util.Arrays;
import java.util.List;
import java.util.Stack;

public class RPorlandExpression {
    final static double ERROR = -1;

    public static void main(String[] args) {
        String exp[] = "1 2 + 3 4 + *".split("\\s+");
        System.out.println(Arrays.asList(exp));
        double ans = evalute(Arrays.asList(exp));
        System.out.println(ans);
    }

    public static double evalute(List<String> exp) {
        Stack<Double> stack = new Stack<>();
        for (String e : exp) {
            if (isNumber(e)) {
                stack.push(Double.parseDouble(e));
            }else if(isOperator(e)){
                if(stack.size()<2)
                    return ERROR;
                double b=stack.pop();
                double a=stack.pop();
                double c=0;
                switch (e) {
                    case "+":
                        c=a+b;
                        break;
                    case "-":
                        c=a-b;
                        break;
                    case "*":
                        c=a*b;
                        break;
                    case "/":
                        if(b==0)
                            return ERROR;
                        c=a/b;
                        break;
                    default:
                        return ERROR;
                }
                stack.push(c);
            }
        }
        return stack.size()!=1?ERROR:stack.peek();
    }

    public static boolean isOperator(String s) {
        return "+-*/".contains(s)&&s.length()==1;
    }

    public static boolean isNumber(String s) {
        try {
            Double.parseDouble(s);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
}
