class Solution {
    public boolean isPalindrome(String s) {
        int left = 0;
        int right = s.length() - 1;
        // skip non aplhanumeric character left
        while(left < right){
        while(left < right && !Character.isLetterOrDigit(s.charAt(left))) {
            left++;
        }
        // skip non alphanumeric character right
        while(left < right && !Character.isLetterOrDigit(s.charAt(right))) {
            right--;
        }
        // compare after converting to Lower Case
        if(Character.toLowerCase(s.charAt(left)) !=
        Character.toLowerCase(s.charAt(right))) {
            return false;
        }
        left++;
        right--;
        }
        return true;
    }
}