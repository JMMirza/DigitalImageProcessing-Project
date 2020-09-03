clc;

close all;
[fname, path]=uigetfile('.png','provide an Image for testing');
fname=strcat(path, fname);
im=imread(fname);
im=im2bw(im);
imshow(im);
title('Test Image');
%% Find the class the test image belongs
Ftest=FeatureStatistical(im);
%% Compare with the feature of training image in the database
load checkAlpha.mat
Ftrain=db(:,1:2);
Ctrain=db(:,3);
for i=1:size(Ftrain,1)
    dist(i,:)=sum(abs(Ftrain(i,:)-Ftest));
end   
m=find(dist==min(dist),1);
det_class=Ctrain(m);
if det_class== 1
msgbox(strcat('IT IS An apple')); 
elseif (det_class)== 2
msgbox(strcat('IT IS A banana'));
end
    


