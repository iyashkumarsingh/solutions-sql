class Solution {
    public boolean isPalindrome(int x) {
        int rev = 0;
        int original = x;
        while(x > 0){
            int last_dig = x % 10;
            
            rev = (rev * 10) + last_dig;
            x = x / 10;
        }
        return original == rev;
    }
}