clear all
clc
init_pi = 1/3;

A = [0.2,0.3,0.5;  %mood probabilities_state
    0.2,0.2,0.6;
    0,0.2,0.8];

B = [0.7,0.2,0.1; %hw effort lvl prob_obs
    0.3,0.4,0.3;
    0,0.1,0.9];

result = zeros(3,5);
%1st column
result(1,1) = init_pi * B(1,1);
result(2,1) = init_pi * B(2,1);
result(3,1) = init_pi * B(3,1);





%2nd column
result(1,2) = (result(1,1)*A(1,1)*B(1,3)) + (result(2,1)*A(2,1)*B(1,3)) + (result(3,1)*A(3,1)*B(1,3)); 

result(2,2) = (result(1,1)*A(1,2)*B(2,3)) + (result(2,1)*A(2,2)*B(2,3)) + (result(3,1)*A(3,2)*B(2,3)); 

result(3,2) = (result(1,1)*A(1,3)*B(3,3)) + (result(2,1)*A(2,3)*B(3,3)) + (result(3,1)*A(3,3)*B(3,3)); 





%3rd column
result(1,3) = (result(1,2)*A(1,1)*B(1,2)) + (result(2,2)*A(2,1)*B(1,2)) + (result(3,2)*A(3,1)*B(1,2)); 

result(2,3) = (result(1,2)*A(1,2)*B(2,2)) + (result(2,2)*A(2,2)*B(2,2)) + (result(3,2)*A(3,2)*B(2,2)); 

result(3,3) = (result(1,2)*A(1,3)*B(3,2)) + (result(2,3)*A(2,3)*B(3,2)) + (result(3,2)*A(3,3)*B(3,2)); 



%4th column
result(1,4) = (result(1,3)*A(1,1)*B(1,1)) + (result(2,3)*A(2,1)*B(1,1)) + (result(3,3)*A(3,1)*B(1,1)); 

result(2,4) = (result(1,3)*A(1,2)*B(2,1)) + (result(2,3)*A(2,2)*B(2,1)) + (result(3,3)*A(3,2)*B(2,1)); 

result(3,4) = (result(1,3)*A(1,3)*B(3,1)) + (result(2,3)*A(2,3)*B(3,1)) + (result(3,3)*A(3,3)*B(3,1)); 


%5th column
result(1,5) = (result(1,4)*A(1,1)*B(1,3)) + (result(2,4)*A(2,1)*B(1,3)) + (result(3,4)*A(3,1)*B(1,3)); 

result(2,5) = (result(1,4)*A(1,2)*B(2,3)) + (result(2,4)*A(2,2)*B(2,3)) + (result(3,4)*A(3,2)*B(2,3)); 

result(3,5) = (result(1,4)*A(1,3)*B(3,3)) + (result(2,4)*A(2,3)*B(3,3)) + (result(3,4)*A(3,3)*B(3,3)); 







result