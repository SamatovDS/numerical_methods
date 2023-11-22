clc, clearvars, close all, format compact

n_sq = 75;
n_sim = 4;
a = 1; b = 2;
f = @(x) exp(x) .* log(x + 2); 
eps = 0.0001;
delta = 0.05;

tic
int_rect = int_rectangle_method(n_sq, f, a, b);
toc
tic
int_sims = int_Simson_method(n_sim, f, a, b);
toc
tic
int_Monte_Carlo = int_Monte_Carlo_method(f, a, b, eps, delta);
toc
tic
Matlab_integrate = integral(f, a, b);
toc