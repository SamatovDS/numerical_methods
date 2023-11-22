clc, clearvars, close all, format compact

a = -8; b = 3;
c = -10; d = 1;

n = 1000;
hx = (b - a) / n; hy = (d - c) / n;
x = a:hx:b; y = c:hy:d;

ans = find_solution(x, y, hx, hy);
