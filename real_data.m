close all ; clc ; clear;
%%
% Since we want to cluster features, we simply transposed
% the matrix and clustered the new data instances. To make
% the clustering more efficient (and also for visualization
% purposes), we first reduced dimensions of data to two
% using PCA algorithm. The number of output features
% can be selected as more than two, so that less information is
% lost. After this we applied k-means and unnormalized, normalized
% spectral clustering. To our observation, the data could be clustered
% into 2-3 classes and k-means algorithm was more successful at that.
% 
% We can improve our method by applying some outlier reduction algorithms,
% so that spectral clustering algorithms can work better.
%%%

%% Real Data Set
figure('Name','Real Data Set','NumberTitle','off');
k = 5;
load('data/realdata.mat')
X = X';
X = pca(X, 'NumComponents', 2);

% Unnormalized Spectral CLustering
sim_func = 'gaussian';
spectral_clusters_unnormalized = unnormalized_spec(X,k, sim_func);
subplot(3,1,1);
scatter(X(:,1) , X(:,2) , [] , spectral_clusters_unnormalized);
title({'Unnormalized Spectral Clustering with' , strcat(sim_func ,' similarity')});

% Normalized Spectral Clustering
sim_func = 'gaussian';
spectral_clusters_normalized = normalized_spec(X,k, sim_func);
subplot(3,1,2);
scatter(X(:,1) , X(:,2) , [] , spectral_clusters_normalized);
title({'Normalized Spectral Clustering with' , strcat(sim_func ,' similarity')});

% K-Means Clustering
k_means_clusters = kmeans(X,k);
subplot(3,1,3);
scatter(X(:,1) , X(:,2) , [] , k_means_clusters);
title('K-Means Clustering');
