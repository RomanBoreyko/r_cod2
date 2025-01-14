  # 11. 

# Get the untrained model
model = create_model()

# Train the model
# Note that this may take some time.
history = model.fit(train_generator,
                epochs=15,
                verbose=1,
                validation_data=validation_generator)


# 8 скомпилируем модель через оптимайзер
from keras import optimizers
model.compile(loss='binary_crossentropy',
	optimizer=optimizers.RMSprop(lr=1e-4),
	metrics=['acc'])

# 10 запуск модели

history = model.fit_generator(train_generator,
              steps_per_epoch=100,
              epochs=30,
              validation_data=validation_generator,
              validation_steps=10)

model.save('cats_and_dogs_small_1.h5')


# Train the model
history = model.fit(train_generator, epochs=25, steps_per_epoch=20, validation_data = validation_generator, verbose = 1, validation_steps=3)


# Set the training parameters
model.compile(
    optimizer = RMSprop(learning_rate=0.0001), 
              loss = 'binary_crossentropy', 
              metrics = ['accuracy'])


model.compile(loss = 'categorical_crossentropy', optimizer='rmsprop', metrics=['accuracy'])

