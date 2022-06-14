import numpy as np

x = np.array([
 [1.00000000e+00, 7.85213417e-01, 6.16560110e-01, 4.84131270e-01],
 [1.00000000e+00, 9.04186392e-01, 8.17553031e-01, 7.39220326e-01],
 [1.00000000e+00, 2.49222575e-01, 6.21118920e-02, 1.54796857e-02],
 [1.00000000e+00, 4.80504621e-01, 2.30884691e-01, 1.10941161e-01],
 [1.00000000e+00, 6.17108257e-01, 3.80822601e-01, 2.35008772e-01],
 [1.00000000e+00, 2.19251587e-01, 4.80712583e-02, 1.05396997e-02],
 [1.00000000e+00, 5.41945107e-01, 2.93704499e-01, 1.59171716e-01],
 [1.00000000e+00, 6.47540533e-01, 4.19308742e-01, 2.71519406e-01],
 [1.00000000e+00, 8.97332593e-01, 8.05205783e-01, 7.22537393e-01],
 [1.00000000e+00, 6.23072906e-01, 3.88219846e-01, 2.41889268e-01],
 [1.00000000e+00, 9.18702721e-01, 8.44014690e-01, 7.75398593e-01],
 [1.00000000e+00, 8.24638098e-01, 6.80027993e-01, 5.60776991e-01],
 [1.00000000e+00, 5.09801093e-01, 2.59897154e-01, 1.32495853e-01],
 [1.00000000e+00, 7.23224483e-01, 5.23053653e-01, 3.78285208e-01],
 [1.00000000e+00, 2.71648731e-01, 7.37930331e-02, 2.00457838e-02],
 [1.00000000e+00, 3.28425763e-01, 1.07863482e-01, 3.54251464e-02],
 [1.00000000e+00, 3.30381566e-01, 1.09151979e-01, 3.60618019e-02],
 [1.00000000e+00, 9.66834649e-01, 9.34769238e-01, 9.03767287e-01],
 [1.00000000e+00, 3.67046085e-01, 1.34722829e-01, 4.94494868e-02],
 [1.00000000e+00, 1.10848728e-01, 1.22874404e-02, 1.36204714e-03],
 [1.00000000e+00, 1.31760198e-01, 1.73607499e-02, 2.28745585e-03],
 [1.00000000e+00, 1.96029001e-01, 3.84273694e-02, 7.53287886e-03],
 [1.00000000e+00, 9.90564275e-01, 9.81217582e-01, 9.71959082e-01],
 [1.00000000e+00, 1.96341985e-01, 3.85501749e-02, 7.56901784e-03],
 [1.00000000e+00, 3.96078635e-01, 1.56878285e-01, 6.21361369e-02],
 [1.00000000e+00, 1.80340202e-01, 3.25225884e-02, 5.86513016e-03],
 [1.00000000e+00, 2.21298056e-02, 4.89728297e-04, 1.08375920e-05],
 [1.00000000e+00, 8.24669549e-01, 6.80079865e-01, 5.60841156e-01],
 [1.00000000e+00, 6.64553716e-01, 4.41631642e-01, 2.93487949e-01],
 [1.00000000e+00, 8.07637348e-01, 6.52278087e-01, 5.26804144e-01]
])

data = np.array([
[[0.51695348],
[0.09885695],
[0.49906926],
[0.46630836],
[0.46746899],
[0.43758908],
[0.46224106],
[0.1844308 ],
[0.40257631],
[0.04275214],
[0.20959075],
[0.84036194],
[0.04874494],
[0.05110643],
[0.44178438],
[0.69557714],
[0.65792748],
[0.27749002],
[0.75573298],
[0.53886287],
[0.33547904],
[0.18340547],
[0.91526521],
[0.53189087],
[0.19465068],
[0.68011952],
[0.63084721],
[0.03086202],
[0.72961055],
[0.92202459]],

[[1.32286736],
[1.05860854],
[1.01786564],
[1.26419359],
[1.21075343],
[1.37873634],
[1.3347834 ],
[1.43091734],
[1.23286007],
[0.90569548],
[1.26369039],
[1.58975429],
[1.03814091],
[1.09117276],
[1.05387991],
[1.22876547],
[1.14807437],
[1.24851193],
[1.49635152],
[1.39719134],
[1.20773244],
[1.09569604],
[1.51762785],
[1.25977024],
[1.16678635],
[1.23062918],
[1.39074994],
[1.15901114],
[1.55052206],
[1.64005151]]
])



def powers_of_X(X, degree):
    powers = np.arange(degree + 1).reshape(1, -1)
    return X ** powers

def poly_fit(data, degree, alpha):
	"Fit a polynomial of a given degree and weight decay parameter alpha"
	X = powers_of_X(data[0], degree)
	Y = data[1].reshape(-1, 1)

	I = np.identity(degree + 1)
	left = (X.T @ X) + I*alpha
	right = X.T @ Y
	Theta = np.linalg.solve(left, right)
	return Theta.T[0]


x = poly_fit(data, 14, 0.0)
print(x)