package support;

public class Homework {
    public static void main(String[] args) {
        printString();
        printInt();
        printBoolean();
        sumOfStrings();
        mathResults();
        comparisonResults();
        logicalOperators();
    }

    static void printString() {
        System.out.println("This is a string ...");
    }

    static void printInt() {
        System.out.println(5);
    }

    static void printBoolean() {
        System.out.println(true);
    }

    static void sumOfStrings() {
        String str1 = "First string";
        String str2 = "Second string";
        System.out.println(str1 + str2);
    }

    static void mathResults() {
        int x = 5;
        int y = 6;
        System.out.println("Result for operation + " + (x+y));
        System.out.println("Result for operation - " + (x-y));
        System.out.println("Result for operation / " + (x/y));
        System.out.println("Result for operation * " + (x*y));
    }

    static void comparisonResults() {
        int x = 5;
        int y = 6;
        System.out.println("Result for "+x+">"+y+" = " + (x>y));
        System.out.println("Result for "+x+"<"+y+" = " + (x<y));
        System.out.println("Result for "+x+">="+y+" = " + (x>=y));
        System.out.println("Result for "+x+"<="+y+" = " + (x<=y));
        System.out.println("Result for "+x+"=="+y+" = " + (x==y));
        System.out.println("Result for "+x+"!="+y+" = " + (x!=y));
    }

    static void logicalOperators() {
        boolean val = true;
        int x = 10;

        if (x == 10 && val) {
            System.out.println("Both conditions are true");
        }
        if (x == 11 || val) {
            System.out.println("Single condition met");
        }
    }
}
