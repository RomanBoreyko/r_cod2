def pipe_fix(nums):
    result = []
    rMin = nums[0]
    rMax = nums[0]
    
    for item in nums:
        if item < rMin :
            rMin = item
        elif item > rMax:
            rMax = item
    
    for r in range(rMin, rMax + 1):
        result.append(r)
    
    return result

def pipe_fix(nums):
	return list(range(nums[0], nums[-1] + 1))

def pipe_fix(num):
	return range(min(num), max(num)+1)

def pipe_fix(arr):
    ls = []
    for i in range(arr[0],arr[len(arr)-1]+1):
        ls.append(i)
    return ls

def pipe_fix(numbers):
    length = len(numbers) - 1
    y = []
    x = numbers[0]
    while x <= numbers[length]:
        y.append(x)
        x += 1
    return y
