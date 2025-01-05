class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        hashmap = {}
        for i in range(0, len(nums)+1):
            hashmap[i] = True
        for i in range(len(nums)):
            if nums[i] in hashmap:
                hashmap.pop(nums[i])
        return list(hashmap.keys())[0]
        