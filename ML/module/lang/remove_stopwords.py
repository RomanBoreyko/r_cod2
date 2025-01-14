def remove_stopwords(sentence):
	stopwords = ["a", "about", "above", "after", "again", "against", "all", "am", "an", "and", "any", "are", "as", "at", "be", "because", "been", "before", "being", "below", "between", "both", "but", "by", "could", "did", "do", "does", "doing", "down", "during", "each", "few", "for", "from", "further", "had", "has", "have", "having", "he", "he'd", "he'll", "he's", "her", "here", "here's", "hers", "herself", "him", "himself", "his", "how", "how's", "i", "i'd", "i'll", "i'm", "i've", "if", "in", "into", "is", "it", "it's", "its", "itself", "let's", "me", "more", "most", "my", "myself", "nor", "of", "on", "once", "only", "or", "other", "ought", "our", "ours", "ourselves", "out", "over", "own", "same", "she", "she'd", "she'll", "she's", "should", "so", "some", "such", "than", "that", "that's", "the", "their", "theirs", "them", "themselves", "then", "there", "there's", "these", "they", "they'd", "they'll", "they're", "they've", "this", "those", "through", "to", "too", "under", "until", "up", "very", "was", "we", "we'd", "we'll", "we're", "we've", "were", "what", "what's", "when", "when's", "where", "where's", "which", "while", "who", "who's", "whom", "why", "why's", "with", "would", "you", "you'd", "you'll", "you're", "you've", "your", "yours", "yourself", "yourselves" ]
    
    # Sentence converted to lowercase-only
	sentence = sentence.lower()

# В данном коде определена функция  not_stopword(word), которая просто возвращает  True, если слово не является стоп-словом, и  False в противном случае. Затем функция filter() применяется к списку words, содержащему слова из предложения, и отфильтровывает только те слова, для которых not_stopword() вернула True. После этого отфильтрованные слова объединяются обратно в предложение с помощью метода join(). Обратите внимание, что возвращаемый результат  filter() является итератором, поэтому мы преобразовали его обратно в список, чтобы объединить слова в предложение. 
	words = sentence.split()
    # no_words = [w for w in words if w not in stopwords]

	def not_stopword(word):
		return word not in stopwords
	# ел из words проганяются через not_stopword и возвращает слова именуемые true 
	filtered_words = filter(not_stopword, words)
	sentence = ' '.join(filtered_words)
	# sentence = ' '.join([word for word in sentence.split() if word not in stopwords])
    # sentence = " ".join(no_words)

	return sentence

