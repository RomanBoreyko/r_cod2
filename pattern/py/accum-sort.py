def flatten_and_sort(array):
    # Flatten the list of lists
    flattened = [item for sublist in array for item in sublist]
    
    # Sort the flattened list
    flattened.sort()
    
    return flattened