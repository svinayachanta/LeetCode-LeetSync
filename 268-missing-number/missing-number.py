class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        given_array_sum = 0
        supposed_sum = 0
        for i in range(1,len(nums)+1):
            supposed_sum = supposed_sum + i 
        for i in range(0,len(nums)):
            given_array_sum = given_array_sum + nums[i]
        return supposed_sum - given_array_sum