def flatten_and_sort(array):
    # Flatten the list of lists
    flattened = [item for sublist in array for item in sublist]
    
    # Sort the flattened list
    flattened.sort()
    
    return flattened

def merge_arrays(arr1, arr2):
    # Объединяем два массива в один
    merged = arr1 + arr2
    
    # Сортируем объединенный массив
    merged.sort()
    
    # Удаляем дубликаты, преобразовав список во множество и обратно в список
    distinct_result = list(set(merged))
    # Сортируем результат перед возвратом
    distinct_result.sort()
    
    return distinct_result

def merge_arrays(arr1, arr2):
    return sorted(set(arr1+arr2))

def merge_arrays(arr1, arr2):
  for arr in (arr1, arr2):
    if arr[0] > arr[-1]:
      arr.reverse()
  res = []
  i = 0
  k = 0
  while not(i >= len(arr1) and k >= len(arr2)):
    left = arr1[i] if i < len(arr1) else float("inf")
    right = arr2[k] if k < len(arr2) else float("inf")
    res_last = res[-1] if res else None
    if left <= right:
      res_last != left and res.append(left)
      i += 1
    else:
      res_last != right and res.append(right)
      k += 1
  return res
