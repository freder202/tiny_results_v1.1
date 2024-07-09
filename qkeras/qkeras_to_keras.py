# pip install tensorflow qkeras

from tensorflow.keras.models import load_model
import qkeras

# Charger le modèle QKeras
model_path = '/home/fred/Desktop/qkeras/CNN_quantized_pruned_model_pulses_3bits_opt.h5'
qkeras_model = load_model(model_path, compile=False)

# Afficher le résumé du modèle pour comprendre sa structure
qkeras_model.summary()

from tensorflow.keras.layers import Dense, Conv2D, Activation, Input
from tensorflow.keras.models import Model
from qkeras import QDense, QConv2D, QActivation

def convert_qkeras_to_keras(qkeras_model):
    keras_layers = []
    for layer in qkeras_model.layers:
        if isinstance(layer, QDense):
            keras_layers.append(Dense(layer.units, activation=layer.activation))
        elif isinstance(layer, QConv2D):
            keras_layers.append(Conv2D(layer.filters, layer.kernel_size, activation=layer.activation))
        elif isinstance(layer, QActivation):
            keras_layers.append(Activation(layer.activation))
        else:
            keras_layers.append(layer)  # Pour les autres types de couches

    # Créer le modèle Keras avec les nouvelles couches
    inputs = Input(shape=qkeras_model.input_shape[1:])
    x = inputs
    for layer in keras_layers:
        x = layer(x)
    keras_model = Model(inputs, x)
    return keras_model

# Convertir le modèle QKeras en modèle Keras
keras_model = convert_qkeras_to_keras(qkeras_model)

# Afficher un résumé du modèle Keras
keras_model.summary()
