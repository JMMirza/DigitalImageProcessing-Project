clc;
clear all;
close all;
%% Taking an Image
[fname, path]=uigetfile('.jpg','Open an Image as input for training');
fname=strcat(path, fname);
im=imread(fname);
im=im2bw(im);
imshow(im);
title('Input Image');
c=input('Enter the Class(Number from 1-12)');
%% Feature Extraction
F=FeatureStatistical(im);
try 
    load checkAlpha;
    F=[F c];
    db=[db; F];
    save checkAlpha.mat db 
catch 
    db=[F c]; % 10 12 1
    save checkAlpha.mat db 
end



