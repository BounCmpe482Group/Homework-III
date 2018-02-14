function W = SimGraph(X, distance)
    if strcmp(distance,'euclidean')
        % Create k-nearest neighbour graph
        Z = squareform(pdist(X, 'euclidean'));
        closeIndices = knnsearch(X,X,'K',10);
        % Create indices for mutual-knn graph
        rows = reshape( repmat(1:size(X,1), size(closeIndices,2),1 ), 1, [] );
        columns = reshape(closeIndices', 1, numel(closeIndices));
        linear_index = sub2ind(size(Z) , rows , columns);
        
        W = zeros(size(Z));
        W(linear_index) = Z(linear_index);
        ind = W == 0;
        ind = or(ind, ind');
        W(ind) = 0;
    elseif strcmp(distance,'gaussian')
        % Fully connected graph
        W = squareform(pdist(X, @GaussianSimilarity));
    end
end


function C = GaussianSimilarity(xi, xj)
    sigma = 1;
    z = bsxfun(@minus,xj,xi);
    a = sum(z.^2,2)/(2*(sigma^2));
    C = exp(-a);
end