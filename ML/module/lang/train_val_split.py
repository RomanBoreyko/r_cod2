def train_val_split(sentences, labels, training_split):
	train_size = int(len(sentences) * training_split)

	train_sentences = sentences[0:train_size]
	train_labels = labels[0:train_size]

	validation_sentences = sentences[train_size:]
	validation_labels = labels[train_size:]

	return train_sentences, validation_sentences, train_labels, validation_labels