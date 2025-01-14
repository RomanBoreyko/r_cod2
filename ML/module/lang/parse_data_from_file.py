# GRADED FUNCTION: parse_data_from_file
def parse_data_from_file(filename):
    """
    Extracts sentences and labels from a CSV file
    
    Args:
        filename (string): path to the CSV file
    
    Returns:
        sentences, labels (list of string, list of string): tuple containing lists of sentences and labels
    """
    sentences = []
    labels = []
    with open(filename, 'r') as csvfile:
        ### START CODE HERE
        reader = csv.reader(csvfile, delimiter=',')
        next(reader, None)
        # next(reader)
        for row in reader:
            label = row[0]
            # извлечение списка
            # sentence = ' '.join(row[1:])
            # извлечение в виде строки
            sentence = row[1]
            
            removeStopwords = remove_stopwords(sentence)
            sentences.append(removeStopwords)
            labels.append(label)
        ### END CODE HERE
    return sentences, labels



# grader-required-cell

# GRADED FUNCTION: parse_data_from_file
def parse_data_from_file(filename):
    """
    Extracts sentences and labels from a CSV file
    
    Args:
        filename (string): path to the CSV file
    
    Returns:
        sentences, labels (list of string, list of string): tuple containing lists of sentences and labels
    """
    
    sentences = []
    labels = []
    
    with open(filename, 'r') as csvfile:
        ### START CODE HERE
        reader = csv.reader(csvfile, delimiter=',')
        for row in reader:
            sentences.append(row['headline'])
            labels.append(row['is_sarcastic'])
        ### END CODE HERE
        
    return sentences, labels