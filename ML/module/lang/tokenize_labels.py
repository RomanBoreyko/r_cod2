def tokenize_labels(labels):
# def tokenize_labels(all_labels, split_labels):
    """
    Tokenizes the labels
    
    Args:
        labels (list of string): labels to tokenize
    
    Returns:
        label_sequences, label_word_index (list of string, dictionary): tokenized labels and the word-index
    """
    ### START CODE HERE
    
    # Instantiate the Tokenizer class
    # No need to pass additional arguments since you will be tokenizing the labels
    label_tokenizer = Tokenizer(NUM_WORDS, OOV_TOKEN)
    label_tokenizer = Tokenizer(num_words = 100, oov_token="<OOV>")
    
    # Fit the tokenizer to the labels
    label_tokenizer.fit_on_texts(labels)
    # label_tokenizer.fit_on_texts(all_labels)
    
    # Save the word index
    label_word_index = label_tokenizer.word_index
    
    # Save the sequences
    label_sequences = label_tokenizer.texts_to_sequences(labels)

    # # Convert labels to sequences
    # label_seq = np.array(label_tokenizer.texts_to_sequences(split_labels))
    # validation_label_seq = np.array(label_tokenizer.texts_to_sequences(split_labels))
    
    # # Convert sequences to a numpy array. Don't forget to substact 1 from every entry in the array!
    # label_seq_np = np.array([number - 1 for number in label_seq]) 
    ### END CODE HERE
    
    return label_sequences, label_word_index 
    # return label_seq_np

