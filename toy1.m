close all ; clc ; clear;
%% TOY DATA SET 1
load('data/toy1.mat')
k = 5;
figure('Name','Toy Data Set 1','NumberTitle','off');
% Unnormalized Spectral CLustering
sim_func = 'gaussian';
spectral_clusters_unnormalized = unnormalized_spec(X,k, sim_func);
subplot(3,3,1);
scatter(X(:,1) , X(:,2) , [] , spectral_clusters_unnormalized);
ylabel('k = 5')
title({'Unnormalized Spectral Clustering with' , strcat(sim_func ,' similarity')});

% Normalized Spectral Clustering
sim_func = 'gaussian';
spectral_clusters_normalized = normalized_spec(X,k, sim_func);
subplot(3,3,2);
scatter(X(:,1) , X(:,2) , [] , spectral_clusters_normalized);
title({'Normalized Spectral Clustering with' , strcat(sim_func ,' similarity')});

% K-Means Clustering
k_means_clusters = kmeans(X,k);
subplot(3,3,3);
scatter(X(:,1) , X(:,2) , [] , k_means_clusters);
title('K-Means Clustering');

k = 6;
% Unnormalized Spectral CLustering
sim_func = 'gaussian';
spectral_clusters_unnormalized = unnormalized_spec(X,k, sim_func);
subplot(3,3,4);
scatter(X(:,1) , X(:,2) , [] , spectral_clusters_unnormalized);
ylabel('k = 6')

% Normalized Spectral Clustering
sim_func = 'gaussian';
spectral_clusters_normalized = normalized_spec(X,k, sim_func);
subplot(3,3,5);
scatter(X(:,1) , X(:,2) , [] , spectral_clusters_normalized);

% K-Means Clustering
k_means_clusters = kmeans(X,k);
subplot(3,3,6);
scatter(X(:,1) , X(:,2) , [] , k_means_clusters);

k = 7;
% Unnormalized Spectral CLustering
sim_func = 'gaussian';
spectral_clusters_unnormalized = unnormalized_spec(X,k, sim_func);
subplot(3,3,7);
scatter(X(:,1) , X(:,2) , [] , spectral_clusters_unnormalized);
ylabel('k = 7')

% Normalized Spectral Clustering
sim_func = 'gaussian';
spectral_clusters_normalized = normalized_spec(X,k, sim_func);
subplot(3,3,8);
scatter(X(:,1) , X(:,2) , [] , spectral_clusters_normalized);

% K-Means Clustering
k_means_clusters = kmeans(X,k);
subplot(3,3,9);
scatter(X(:,1) , X(:,2) , [] , k_means_clusters);
clc ; clear;