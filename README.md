# RF-PCA combined with ELM are used for classification
# Requirements
•	Matlab
# Usage
•RF_feature selection.m is a program of the random forest feature selection algorithm for feature selection of data.  

•PCA.m is a program of the principal component analysis. This is a feature extraction method, which can reduce the dimension of data.  

•ELM.zip includes main.m, elmtrain.m and elmpredict.m files. main.m is a program of the extreme learning machine algorithm. 
   elmtrain.m is a subprogram for classification problem，which can be used for data classification quickly.
   elmpredict.m is a subprogram for regression problem，which can be used for data regressionn quickly.

# Step 1
% %Load a dataset
  load data; 
  In = Inputs'; % input data
  Out = Targets'; % input labels
 
%% Parameters
  leaf=1; % the number of leaf node samples
  ntrees=200;  % the number of trees
  fboot=1;  % the number of fboot
%% Output description
