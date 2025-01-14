# Define the split time
split_time = 1000

# Get the train set 
time_train = time[:split_time]
x_train = series[:split_time]

# Get the validation set
time_valid = time[split_time:]
x_valid = series[split_time:]










training_size = 20000

# Split the sentences
training_sentences = sentences[0:training_size]
testing_sentences = sentences[training_size:]

# Split the labels
training_labels = labels[0:training_size]
testing_labels = labels[training_size:]


def split_data(SOURCE_DIR, TRAINING_DIR, VALIDATION_DIR, SPLIT_SIZE):
  """
  Splits the data into train and test sets
  
  Args:
    SOURCE_DIR (string): directory path containing the images
    TRAINING_DIR (string): directory path to be used for training
    VALIDATION_DIR (string): directory path to be used for validation
    SPLIT_SIZE (float): proportion of the dataset to be used for training
    
  Returns:
    None
  """
  ### START CODE HERE
  all_files = os.listdir(SOURCE_DIR)
  random.shuffle(all_files)
  split_index = int(SPLIT_SIZE * len(all_files))
  training_files = all_files[:split_index]
  validation_files = all_files[split_index:]

  for file in training_files:
    src = os.path.join(SOURCE_DIR, file)
    dst = os.path.join(TRAINING_DIR, file)
    if os.path.getsize(src) > 0:
      shutil.copyfile(src, dst)
    else:
      print(f"{file} is zero length so ignoring.")
  for file in validation_files:
    src = os.path.join(SOURCE_DIR, file)
    dst = os.path.join(VALIDATION_DIR, file)
    if os.path.getsize(src) > 0:
      shutil.copyfile(src, dst)
    else:
      print(f"{file} is zero length so ignoring.")








# split_data
def split_data(SOURCE_DIR, TRAINING_DIR, VALIDATION_DIR, SPLIT_SIZE):

  """
  Splits the data into train and test sets
  
  Args:
    SOURCE_DIR (string): directory path containing the images
    TRAINING_DIR (string): directory path to be used for training
    VALIDATION_DIR (string): directory path to be used for validation
    SPLIT_SIZE (float): proportion of the dataset to be used for training
    
  Returns:
    None
  """
  
  source_dir_files_count = len(os.listdir(SOURCE_DIR)) # SOURCE_DIR is /Cat or /Dog with files

  train_files_count = round(source_dir_files_count * SPLIT_SIZE)

  shuffled_list = random.sample(os.listdir(SOURCE_DIR), source_dir_files_count)

  for filename in shuffled_list[:train_files_count]:    
    filesource = os.path.join(SOURCE_DIR, filename)
    filedest = os.path.join(TRAINING_DIR, filename)
    if os.path.getsize(filesource) == 0:
      print("{} is zero length, so ignoring.".format(filename))
    else:
      copyfile(filesource, filedest)

  for filename in shuffled_list[train_files_count:]: 
    filesource = os.path.join(SOURCE_DIR, filename)
    filedest = os.path.join(VALIDATION_DIR, filename)
    if os.path.getsize(filesource) == 0:
      print("{} is zero length, so ignoring.".format(filename))
    else:
      copyfile(filesource, filedest)


