function C = unnormalized_spec(X, k, similarity_func)
    
    W = SimGraph(X, similarity_func);
    D =diag(sum(W,2));
    
    % Unnormalized Laplacian of the similarity graph
    L = D - W;
    
    [U,~] = eigs(L,k,'SM');
    
    C = kmeans(U,k);
end