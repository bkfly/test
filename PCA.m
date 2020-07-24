function [data_PCA, COEFF, sum_explained, n]=PCA(data)
percent_threshold=95;   
data=zscore(data);  
[COEFF,SCORE,latent,tsquared,explained,mu]=pca(data);
latent1=100*latent/sum(latent);
A=length(latent1);
percents=0;                       
for n=1:A
    percents=percents+latent1(n);
    if percents>percent_threshold
        break;
    end
end
data= bsxfun(@minus,data,mean(data,1));
data_PCA=data*COEFF(:,1:n);
pareto(latent1);
xlabel('Principal Component');
ylabel('Variance Explained (%)');
print(gcf,'-dpng','PCA.png');
sum_explained=sum(explained(1:n));