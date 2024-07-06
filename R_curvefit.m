clear all;
close all;
A=readtable('R_middle.xlsx');                                                  %%%Change this%%%
B=readtable('force_dis_middle.xls');                                         %%%Change this%%%
Y=table2array(A);
Z=table2array(B);
n_actual=size(Y,1);
n_required=size(Z,1);                                                            
X=(1:n_actual)';
X=X*n_required/n_actual;


[xData, yData] = prepareCurveData(X,Y);

% Set up fittype and options.
ft = fittype( 'poly4' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure;
h = plot( fitresult, xData, yData );
legend( h, 'Experimental data', '4th degree polynomial fit', 'Location', 'NorthWest', 'Interpreter', 'none' );
% Label axes
xlabel( 'Sample number');
ylabel( 'Resistance [Ohm]');
p1=fitresult.p1;
p2=fitresult.p2;
p3=fitresult.p3;
p4=fitresult.p4;
p5=fitresult.p5;
Y_required=zeros(n_required,1);
for i=1:n_required
    Y_required(i)=(p1*(i^4))+(p2*(i^3))+(p3*(i^2))+(p4*(i^1))+(p5*(i^0));
end