function C = normalized_spec(X, k, similarity_func)
    
    W = SimGraph(X, similarity_func);
    D =diag(sum(W,2));
    
    % Normalized Laplacian of the similarity graph
    L = D^(-1/2)*W*D^(-1/2);
    %L = eye(size(D^(-1/2))) - D^(-1/2)*W*D^(-1/2);
    
    [U,~] = eigs(L,k);
    
    % Normalize rows of U
    Y = normr(U);
    
    C = kmeans(Y,k);
end