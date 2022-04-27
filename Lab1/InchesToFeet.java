import java.util.Scanner;

public class InchesToFeet {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        // System.out.println("Enter the total number of inches ");
        int inches = sc.nextInt();
        sc.close();
        int ans_feet, ans_inches;
        ans_feet = inches / 12;
        ans_inches = inches % 12;

        System.out.println(inches + " inches = " + ans_feet + " feet, " + ans_inches + " inches");
    }
}