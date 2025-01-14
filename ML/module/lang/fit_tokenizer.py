# GRADED FUNCTION: fit_tokenizer
def fit_tokenizer(sentences):
# def fit_tokenizer(train_sentences, num_words, oov_token):
    """
    Instantiates the Tokenizer class
    
    Args:
        sentences (list): lower-cased sentences without stopwords
    
    Returns:
        tokenizer (object): an instance of the Tokenizer class containing the word-index dictionary
    """
    ### START CODE HERE
    # Instantiate the Tokenizer class by passing in the oov_token argument
    tokenizer = Tokenizer(num_words = 100, oov_token="<OOV>")
    # tokenizer = Tokenizer(num_words = num_words, oov_token=oov_token)

    # Fit on the sentences
    tokenizer.fit_on_texts(sentences)
    # tokenizer.fit_on_texts(train_sentences)
    
    ### END CODE HERE
    return tokenizer