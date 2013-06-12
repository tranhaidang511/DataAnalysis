load normalized-wine-c1.txt
load normalized-wine-c2.txt
load normalized-wine-c3.txt
x=[normalized_wine_c1' normalized_wine_c2' normalized_wine_c3'];

z=kernelpca_tutorial(x,1,2);
z=z';
scatter(z(1:59,2),z(1:59,1),'r');
hold on;
scatter(z(60:130,2),z(60:130,1),'g');
scatter(z(131:178,2),z(131:178,1),'b');

figure();
z=kernelpca_tutorial(x,3,2);
z=z';
scatter(z(1:59,2),z(1:59,1),'r');
hold on;
scatter(z(60:130,2),z(60:130,1),'g');
scatter(z(131:178,2),z(131:178,1),'b');

figure();
z=kernelpca_tutorial(x,6,2);
z=z';
scatter(z(1:59,2),z(1:59,1),'r');
hold on;
scatter(z(60:130,2),z(60:130,1),'g');
scatter(z(131:178,2),z(131:178,1),'b');