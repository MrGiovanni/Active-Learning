% Zhou, Zongwei, et al. "Fine-tuning convolutional neural networks for biomedical image analysis: actively and incrementally." 
% IEEE conference on computer vision and pattern recognition, Hawaii. 2017.

% Author: [Zongwei Zhou](http://www.zongweiz.com)
% Email: zongweiz@asu.edu
% Last modified: Jan.26.2017

%% Table 1. examples of seven different patterns
% Relationships among seven prediction patterns and six AIFT methods in active candidate selection. We assume that
% a candidate has 11 patches, and their probabilities predicted by the current CNN are listed in Column 2. AIFT Entropyα,
% Diversityα, and (Entropy+Diversity)α operate on the top or bottom α percent of the candidate’s patches based on the majority
% prediction as described in Sec. 3.3. In this illustration, we choose α to be 1/4, meaning that the selection criterion (Eq. 3) is
% computed based on 3 patches within each candidate. The first choice of each method is highlighted in yellow and the second
% choice is in light yellow.

function Alg_Analysis()

close all; clear; clc;


% A, B, C, D, E, F represents outputs from CNN after Softmax Layer belong to one candidate.
A = [0.4 0.4 0.4 0.5 0.5 0.5 0.5 0.5 0.5 0.6 0.6];
B = [0.0 0.1 0.2 0.3 0.4 0.4 0.6 0.7 0.8 1.0 1.0];
C = [0.0 0.0 0.0 0.1 0.1 0.9 0.9 1.0 1.0 1.0 1.0];
D = [1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.9 0.9 0.9 0.9];
E = [0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.1 0.1 0.1 0.1];
F  = [0.0 0.0 0.1 0.1 0.1 0.1 0.2 0.2 0.3 0.9 1.0];
G  = [0.0 0.1 0.7 0.8 0.8 0.9 0.9 0.9 0.9 1.0 1.0];

%% Produce values in Table 1 by row pattern A
disp('Table 1. pattern A');
disp(['Entropy_A = ', num2str(roundn(compute_matrix(A, 1, 0, 1), -2))]);
disp(['Entropy^1/4_A = ', num2str(roundn(compute_matrix(A, 1, 0, 0.25), -2))]);
disp(['Diversity_A = ', num2str(roundn(compute_matrix(A, 0, 1, 1), -2))]);
disp(['Diversity^1/4_A = ', num2str(roundn(compute_matrix(A, 0, 1, 0.25), -2))]);
disp(['(Entropy+Diversity)_A = ', num2str(roundn(compute_matrix(A, 1, 1, 1), -2))]);
disp(['(Entropy+Diversity)^1/4_A = ', num2str(roundn(compute_matrix(A, 1, 1, 0.25), -2))]);
disp(' ');

%% Produce values in Table 1 by row pattern B
disp('Table 1. pattern B');
disp(['Entropy_B = ', num2str(roundn(compute_matrix(B, 1, 0, 1), -2))]);
disp(['Entropy^1/4_B = ', num2str(roundn(compute_matrix(B, 1, 0, 0.25), -2))]);
disp(['Diversity_B = ', num2str(roundn(compute_matrix(B, 0, 1, 1), -2))]);
disp(['Diversity^1/4_B = ', num2str(roundn(compute_matrix(B, 0, 1, 0.25), -2))]);
disp(['(Entropy+Diversity)_B = ', num2str(roundn(compute_matrix(B, 1, 1, 1), -2))]);
disp(['(Entropy+Diversity)^1/4_B = ', num2str(roundn(compute_matrix(B, 1, 1, 0.25), -2))]);
disp(' ');

%% Produce values in Table 1 by row pattern C
disp('Table 1. pattern C');
disp(['Entropy_C = ', num2str(roundn(compute_matrix(C, 1, 0, 1), -2))]);
disp(['Entropy^1/4_C = ', num2str(roundn(compute_matrix(C, 1, 0, 0.25), -2))]);
disp(['Diversity_C = ', num2str(roundn(compute_matrix(C, 0, 1, 1), -2))]);
disp(['Diversity^1/4_C = ', num2str(roundn(compute_matrix(C, 0, 1, 0.25), -2))]);
disp(['(Entropy+Diversity)_C = ', num2str(roundn(compute_matrix(C, 1, 1, 1), -2))]);
disp(['(Entropy+Diversity)^1/4_C = ', num2str(roundn(compute_matrix(C, 1, 1, 0.25), -2))]);
disp(' ');

%% Produce values in Table 1 by row pattern D
disp('Table 1. pattern D');
disp(['Entropy_D = ', num2str(roundn(compute_matrix(D, 1, 0, 1), -2))]);
disp(['Entropy^1/4_D = ', num2str(roundn(compute_matrix(D, 1, 0, 0.25), -2))]);
disp(['Diversity_D = ', num2str(roundn(compute_matrix(D, 0, 1, 1), -2))]);
disp(['Diversity^1/4_D = ', num2str(roundn(compute_matrix(D, 0, 1, 0.25), -2))]);
disp(['(Entropy+Diversity)_D = ', num2str(roundn(compute_matrix(D, 1, 1, 1), -2))]);
disp(['(Entropy+Diversity)^1/4_D = ', num2str(roundn(compute_matrix(D, 1, 1, 0.25), -2))]);
disp(' ');

%% Produce values in Table 1 by row pattern E
disp('Table 1. pattern E');
disp(['Entropy_E = ', num2str(roundn(compute_matrix(E, 1, 0, 1), -2))]);
disp(['Entropy^1/4_E = ', num2str(roundn(compute_matrix(E, 1, 0, 0.25), -2))]);
disp(['Diversity_E = ', num2str(roundn(compute_matrix(E, 0, 1, 1), -2))]);
disp(['Diversity^1/4_E = ', num2str(roundn(compute_matrix(E, 0, 1, 0.25), -2))]);
disp(['(Entropy+Diversity)_E = ', num2str(roundn(compute_matrix(E, 1, 1, 1), -2))]);
disp(['(Entropy+Diversity)^1/4_E = ', num2str(roundn(compute_matrix(E, 1, 1, 0.25), -2))]);
disp(' ');

%% Produce values in Table 1 by row pattern F
disp('Table 1. pattern F');
disp(['Entropy_F = ', num2str(roundn(compute_matrix(F, 1, 0, 1), -2))]);
disp(['Entropy^1/4_F = ', num2str(roundn(compute_matrix(F, 1, 0, 0.25), -2))]);
disp(['Diversity_F = ', num2str(roundn(compute_matrix(F, 0, 1, 1), -2))]);
disp(['Diversity^1/4_F = ', num2str(roundn(compute_matrix(F, 0, 1, 0.25), -2))]);
disp(['(Entropy+Diversity)_F = ', num2str(roundn(compute_matrix(F, 1, 1, 1), -2))]);
disp(['(Entropy+Diversity)^1/4_F = ', num2str(roundn(compute_matrix(F, 1, 1, 0.25), -2))]);
disp(' ');

%% Produce values in Table 1 by row pattern G
disp('Table 1. pattern G');
disp(['Entropy_G = ', num2str(roundn(compute_matrix(G, 1, 0, 1), -2))]);
disp(['Entropy^1/4_G = ', num2str(roundn(compute_matrix(G, 1, 0, 0.25), -2))]);
disp(['Diversity_G = ', num2str(roundn(compute_matrix(G, 0, 1, 1), -2))]);
disp(['Diversity^1/4_G = ', num2str(roundn(compute_matrix(G, 0, 1, 0.25), -2))]);
disp(['(Entropy+Diversity)_G = ', num2str(roundn(compute_matrix(G, 1, 1, 1), -2))]);
disp(['(Entropy+Diversity)^1/4_G = ', num2str(roundn(compute_matrix(G, 1, 1, 0.25), -2))]);
disp(' ');


% %% Visualize the diversity equation
% x = 0:0.01:1;
% y = 0:0.01:1;
% [x,y] = meshgrid(x,y);
% div = (x-y).*log(x./(y+eps))+(y-x).*log((1-x)./(1-y+eps));
% mesh(x,y,div)

end

%% Compute matrix R (Eq. 3 in the paper)
function [S] = compute_matrix(p, lamda_1, lamda_2, alpha)

% lamda_1 and lamda_2 are trade-offs between entropy and diversity
% lamda_1: turn on/off entropy (1 or 0)
% lamda_2: turn on/off diversity (1 or 0)


% Handling noisy labels via majority selection (see Sec 3.3)
top = round(length(p) * alpha);
p = Majority(p,top);

% Initialize the R matrix
R = zeros(length(p));
for i = 1:length(p)
    for j = 1:i
        if i == j % entropy computed for diagonal of R
            R(i,i) = - lamda_1 * (p(i)*log(p(i)+eps)+(1-p(i))*log(1-p(i)+eps));
        else % diversity computed for rest of R
            R(i,j) = lamda_2 * ((p(i)-p(j)) * log((p(i)+eps)/(p(j)+eps)) + ...
                     (1-p(i)-1+p(j)) * log((1-p(i)+eps)/(1-p(j)+eps)));
            R(j,i) = R(i,j);
        end
    end
end

% Compute active selecting value from matrix R for this candidate
% by numerical sum of R (see Alg 1 line 11)
S = sum(R(:));


end


%% Sec 3.3. Handling noisy labels via majority selection
% eq. 4, calculate the mean and sort based on dominate predictions.
function [p] = Majority(p,top)

m = mean(p);
if m > 0.5
    p = sort(p,'descend');
else
    p = sort(p,'ascend');
end
p = p(1:top);

end