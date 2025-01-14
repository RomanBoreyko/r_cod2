def get_padded_sequences(tokenizer, sentences):
	sequences = tokenizer.texts_to_sequences(sentences)
	padded_sequences = pad_sequences(sequences, padding='pre')
	return padded_sequences



# GRADED FUNCTION: get_padded_sequences
def get_padded_sequences(tokenizer, sentences):
    """
    Generates an array of token sequences and pads them to the same length
    
    Args:
        tokenizer (object): Tokenizer instance containing the word-index dictionary
        sentences (list of string): list of sentences to tokenize and pad
    
    Returns:
        padded_sequences (array of int): tokenized sentences padded to the same length
    """
    
    ### START CODE HERE
    # Convert sentences to sequences
    sequences = tokenizer.texts_to_sequences(sentences)
    
    # Pad the sequences using the post padding strategy
    padded_sequences = pad_sequences(sequences, padding='post')
    
    ### END CODE HERE
    
    return padded_sequences

