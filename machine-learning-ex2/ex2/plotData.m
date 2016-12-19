function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


% Filter the examples with y == 1
pos_rows = find(y == 1);
X_pos = X(pos_rows, :);

% Filter the examples with y == 1
neg_rows = find(y == 0);
X_neg = X(neg_rows, :);

% For all the positive examples, plot the data with 'k+'
plot(X_pos(:, 1), X_pos(:, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);

% For all the negative examples, plot the data with 'ko'
plot(X_neg(:, 1), X_neg(:, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);


% =========================================================================



hold off;

end
