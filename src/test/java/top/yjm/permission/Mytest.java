package top.yjm.permission;

public class Mytest {

    public void test() {
        int i = 11;
        while ((i -= 3) > 0);
        System.out.println("i = " + i);
    }

    public static void main(String[] args) {
        Mytest mytest = new Mytest();
        for (int i = 0; i < 50_000; i++) {
            System.out.println(i);
            mytest.test();
        }
    }
}
