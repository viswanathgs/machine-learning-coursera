function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


% Add the bias unit for each sample
% X = [ones(m, 1) X];

% Hidden layer
% A2 = sigmoid(Theta1 * X');

% Add the bias unit for the hidden layer
% A2 = [ones(1, m); A2];

% Output layer
% A3 = sigmoid(Theta2 * A2);

% [max_prob, p] = max(A3, [], 1);

% p = p';


% ====
% Another approach

X = [ones(m, 1) X];
A2 = sigmoid(X * Theta1');

A2 = [ones(m, 1) A2];
A3 = sigmoid(A2 * Theta2');

[max_prob, p] = max(A3, [], 2);



% =========================================================================


end
