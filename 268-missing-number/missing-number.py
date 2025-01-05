class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        actual_sum = 0
        for i in range(1,len(nums)+1):
            actual_sum = actual_sum + i 
        return actual_sum - sum(nums)