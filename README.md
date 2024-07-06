# Polynomial-Fit
# R Curve Fit
Overview
This MATLAB script,'R_curvefit.m', fits a curve to a set of data points using various models. It includes data import, curve fitting, and visualization features.

# Features
'*' Data Import: Load data from files or manually input.
'*' Curve Fitting: Fit curves using linear, polynomial, exponential, and other models.
'*' Visualization: Plot original data and fitted curves.
'*'Customization: Adjust fitting parameters and models.
# Getting Started

# Description
The R_curvefit.m script is designed to perform curve fitting on a given set of data points. It provides options to use various mathematical models for fitting and visualizing the data.

# Usage
1-Load Data:
data = load('yourdatafile.txt');
x = data(:,1); % x values
y = data(:,2); % y values
2-Run the Script
run('R_curvefit.m')
# Customization
p = polyfit(x, y, 2); % 2nd degree polynomial
