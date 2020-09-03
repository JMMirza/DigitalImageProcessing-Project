d='H:\6th smester 2k19\DIP PRoject\Training of models';
f=dir([d '\*.jpg']);
n=numel(f);
disp(n);
idx=randi(n);
disp(idx);
im=imread(f(idx).name);
msgbox(f(idx).name);
imshow(im)