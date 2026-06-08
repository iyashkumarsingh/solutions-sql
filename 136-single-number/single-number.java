class Solution {
    public int singleNumber(int[] nums) {
        // 3 xor 3 = 0; appears twice we xor them gets canceled automatically
        int n = nums.length;
        int xorr = 0;
        for(int i = 0; i < n; i++) {
            xorr = xorr^nums[i];
        }
        return xorr;
    }
}