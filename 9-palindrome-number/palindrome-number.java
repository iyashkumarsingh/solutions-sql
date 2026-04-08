class Solution {
    public boolean isPalindrome(int x) {
        int original = x;
        int rev_No = 0;
        while(x > 0){
            int last_dig = x % 10;
            rev_No = (rev_No * 10) + last_dig;
            x = x / 10;
        }
        if(original == rev_No) return true;
        else return false;
    }
}