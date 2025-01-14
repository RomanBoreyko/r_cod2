
class myCallback(tf.keras.callbacks.Callback):
    def on_epoch_end(self, epoch, logs={}):
        if logs.get('accuracy') is not None and logs.get('accuracy') > 0.999:
            print("\nReached 99.9% accuracy so cancelling training!")
            self.model.stop_training = True    

            
    # Создаем экземпляр колбэка myCallback, который будет отслеживать точность обучения
    callbacks = myCallback()