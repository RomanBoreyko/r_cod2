# каталог тренеровки
train_dir = os.path.join(base_dir, 'train')
os.mkdir(train_dir)
train_cats_dir = os.path.join(train_dir, 'cats')
os.mkdir(train_cats_dir)
train_dogs_dir = os.path.join(train_dir, 'dogs')
os.mkdir(train_dogs_dir)

# каталог проверки
validation_dir = os.path.join(base_dir, 'validation')
os.mkdir(validation_dir)
validation_cats_dir = os.path.join(base_dir, 'cats')
os.mkdir(validation_cats_dir)
validation_dogs_dir = os.path.join(base_dir, 'dogs')
os.mkdir(validation_dogs_dir)

r_train = os.path.join(root_path, 'training')
r_valid = os.path.join(root_path, 'validation')

r_train_cats = os.path.join(r_train, 'cats')
r_train_dogs = os.path.join(r_train, 'dogs')

r_valid_cats = os.path.join(r_valid, 'cats')
r_valid_dogs = os.path.join(r_valid, 'dogs')

os.makedirs(r_train)
os.makedirs(r_train_cats)
os.makedirs(r_train_dogs)

os.makedirs(r_valid)
os.makedirs(r_valid_cats)
os.makedirs(r_valid_dogs)


  os.makedirs(root_dir)
  os.makedirs(os.path.join(root_dir, 'training'))
  os.makedirs(os.path.join(root_dir, 'validation'))
  os.makedirs(os.path.join(root_dir, 'training/cats'))
  os.makedirs(os.path.join(root_dir, 'training/dogs'))
  os.makedirs(os.path.join(root_dir, 'validation/cats'))
  os.makedirs(os.path.join(root_dir, 'validation/dogs'))