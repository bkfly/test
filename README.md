# RF-PCA combined with ELM are used for classification
# Requirements
•	Matlab
# Usage
•RF_feature selection.m is a program of the random forest feature selection algorithm for feature selection of data.  

•PCA.m is a function program of the principal component analysis. This is a feature extraction method, which can reduce the dimension of data.  

•ELM.zip includes main.m, elmtrain.m and elmpredict.m files. main.m is a program of the extreme learning machine algorithm. 

•elmtrain.m is a function subprogram for classification problem，which can be used for data classification quickly.

•elmpredict.m is a function subprogram for regression problem，which can be used for data regressionn quickly.

# Step 1: Feature selection
% %Load a dataset
  
  load data; 
  
  In = Inputs'; % input data
  
  Out = Targets'; % input labels
 
%% Parameters
 
 leaf=1; % the number of leaf node samples
 
 ntrees=200;  % the number of trees
 
 fboot=1;  % the number of fboot

%% Output description
 
 the order of attribute importance 
 
 # Step 2: feature extraction
 %%Load a data
 
 data=zscore(data); % Z-score normalization

 %% Parameters
 percent_threshold = 95； % the cumulative contribution rate is 95%
 
 %% Output description
 
 Principal Component and Variance Explained (%)
 
 # Step 3: Establish ELM classification model
 
 %%Input
 
 % P   - Input Matrix of Training Set  (R*Q)
 
 % T   - Output Matrix of Training Set (S*Q)

 % N   - Number of Hidden Neurons (default = Q)
 
 % TF  - Transfer Function:
 
 %  'sig' for Sigmoidal function (default)
 
 %  'sin' for Sine function

 %  'hardlim' for Hardlim function

 % TYPE - Regression (0,default) or Classification (1)

 %% Output
 
 % IW - Input Weight Matrix (N*R)

 % B - Bias Matrix  (N*1)

 % LW - Layer Weight Matrix (N*S)
 
%% Output description

accuracy of the training set and test set

training time
