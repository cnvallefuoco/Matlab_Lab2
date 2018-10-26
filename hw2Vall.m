%% HW2
% This is Carina Vallefuoco's Homework 2.
%% Problem 1
% This problem approximates exp(x) for x in [0,5]
% We found that exp(x) = expx+((x.^i)/factorial(i))
close all % closes all the open figure windows
clear % clears variables and functions from memory
x = linspace(0,5); % domain from 0 to 5 for x
plot(x, exp(x),'r') % plots the original exp(x) in red
hold on % waits to add more plots to the same graph
n = 2; % 2 number of terms
expVall % runs the exp taylor series formula in the expVall.m file
plot(x,expx,'g') % plots the expx with 2 terms in green
hold on % waits to add more plots to the same figure
n = 5; % 5 number of terms
expVall % runs the exp taylor series formula in the expVall.m file
plot(x,expx,'b') % plots the expx with 5 terms in blue
hold on % waits to add more plots to the same figure
n = 7; % 7 number of terms
expVall % runs the exp taylor series formula in the expVall.m file
plot(x,expx,'m') % plots the expx with 7 terms in magenta
hold on % waits to add more plots to the same figure
title('Taylor Series Approximation of e^x') % title of the graph
legend('e^x','n=2','n=5','n=7') % labels the curves in order on the graph
xlabel('x') % labels the x axis
ylabel('y') % labels the y axis
%%
% This tell us that the more terms we have the more accurate the e^x curve
% will be and thus our plot gets more accurate.
%% Problem 2
% This problem approximates exp(1)
close all % closes all the open figure windows
clear % clears variables and functions from memory
expx=1; % exp(1) function
n=1; % n is the base case 
error=ones(10000, 1); % creates a 10000 by 1 matrix of all ones
while error(n)>1e-6 % while the nth element in the error matrix is greater the error which is 1e-6 
    expx=expx+((1.^n)/factorial(n)); % exp(x) taylor series function
    n=n+1; % increases the n by 1
    error(n)=(1/n)-(1/(n+1)); % reassigns the n element in the error matrix to the error approximation
end
semilogy(error(1:n)) % plots the error matrix from the first elements to the nth element
title('Approximation of e^1') % title of the graph
legend('error per iteration in approximating e^1') % labels the e^1 error approx curve
%% Problem 3
% This problem will produce a pretty fern
close all % closes all the open figure windows
clear % clears variables and functions from memory
matrix = zeros(2,10000); % creates a 2 by 10,000 matrix of all ones
z = [0;0]; % creates a 2 by 1 matrix of 0 and 0 (top row x, bottom row y)
for i=2:10000 % for loop to go continue the processes below 10,000 times
    r = rand(1); % picks a random number between 0 and 1
    if (r >= 0 && r<=0.01) % if random number has the probability of .01
        z= [0 0;0 0.15]*z; % numbers applied to z matrix
    elseif (r>0.01 && r<= 0.85) % if random number has the probability of .85
        z = [0.85 0.04;-0.04 0.85]*z +[0;1.6]; % numbers applied to z matrix
    elseif (r>0.85 && r<=0.92) % if random number has the probability of .07
        z = [0.2 -0.26;0.23 0.22]*z +[0;1.6]; % numbers applied to z matrix
    else % if random number has the probability of .07
        z =[-0.15 0.28;0.26 0.24]*z+[0;0.44];  % numbers applied to z matrix   
    end
    matrix(:,i)=z; % z matrix to the original matrix going through by each column
end
plot(matrix(1,:),matrix(2,:),'g.') % plots the first row for x values and the
% second row for y values. The plot consists of green dots.
title('Pretty Fern') % title of the graph is green
%% Link to this website and m-file
%
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/hw2Vall.html hw2Vall.html>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/hw2Vall.m hw2Vall.m>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/expVall.m expVall.m>
%
