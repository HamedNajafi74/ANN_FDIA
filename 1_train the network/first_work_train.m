%% Network Initialize
net = feedforwardnet(10);  
net.layers{1}.transferFcn = 'tansig';  
net.layers{2}.transferFcn = 'purelin'; 
%% Prepare the Training Data
X = [I1_t_1';I1_t_2';I2_t_1';I2_t_2';V1_t_1';V1_t_2';V2_t_1';V2_t_2']; 
T = Vdc_t';  
%% Training Parameters
net.trainFcn = 'trainlm'; % training function

% Set training options
net.trainParam.epochs = 699999;  % Maximum number of epochs to train
% net.trainParam.goal = 1e-6;  % Performance goal
% net.trainParam.min_grad = 1e-10;  % Minimum performance gradient
% net.trainParam.max_fail = 6;  % Maximum validation failures
%% Train the Network
[net, tr] = train(net, X, T);

plotperform(tr) % View the training record
