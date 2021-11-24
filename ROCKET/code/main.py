from rocket_functions import generate_kernels, apply_kernels
from sklearn.linear_model import RidgeClassifierCV

from rocket_functions import generate_kernels, apply_kernels
from sklearn.linear_model import RidgeClassifierCV

o

# generate random kernels
kernels = generate_kernels(X_training.shape[-1], 10_000)

# transform training set and train classifier
X_training_transform = apply_kernels(X_training, kernels)
classifier = RidgeClassifierCV(alphas = np.logspace(-3, 3, 10), normalize = True)
classifier.fit(X_training_transform, Y_training)

# transform test set and predict
X_test_transform = apply_kernels(X_test, kernels)
predictions = classifier.predict(X_test_transform)