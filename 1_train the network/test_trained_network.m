
r=randi([1 1e5],1e4,1);
X_test=X(:,r);
Y_test=T(r);
Y_predict=net(X_test);
figure
plot(Y_test-Y_predict,'DisplayName','Error')
legend
figure
plot((Y_test-Y_predict)./Y_test*100,'DisplayName','%Error')
legend

mseError = mse(net, X_test, Y_test);
fprintf('Mean Squared Error: %f\n', mseError);