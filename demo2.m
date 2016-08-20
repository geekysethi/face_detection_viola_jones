clc
clear all
close all
detector = vision.CascadeObjectDetector('face3.xml');
I= imread('1.pgm');
bboxes=step(detector,I);
 IFaces = insertObjectAnnotation(I, 'rectangle', bboxes, 'face');
   figure, imshow(IFaces), title('Detected Faces');
