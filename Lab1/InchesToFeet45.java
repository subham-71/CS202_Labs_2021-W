public class InchesToFeet45 {
    public static void main(String[] args) {
        int inches = 45;
        int ans_feet, ans_inches;
        ans_feet = inches / 12;
        ans_inches = inches % 12;

        System.out.println("45 inches = " + ans_feet + " feet, " + ans_inches + " inches");
    }
}