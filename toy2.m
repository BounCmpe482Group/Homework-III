close all ; clc ; clear;
%% TOY DATA SET 2
load('data/toy2.mat')
k = 3;
figure('Name','Toy Data Set 2','NumberTitle','off');
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