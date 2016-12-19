function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

diff = (X * theta) - y;
theta_no_bias = theta;
theta_no_bias(1) = 0;

% Cost function
J = 1 / (2 * m) * sum(diff .^ 2);

% Regularize cost function
J = J + lambda / (2 * m) * sum(theta_no_bias .^ 2);

% Gradients
grad = 1 / m * (X' * diff);

% Regularize gradient
grad = grad + lambda / m * theta_no_bias;


% =========================================================================

grad = grad(:);

end
