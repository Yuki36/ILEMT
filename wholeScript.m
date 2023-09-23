%% import the file directory needed to analyze
% High/Low Comparison
fileDirectory = '/Users/jiahuizhu/Documents/Research/16879/final/Electromagnetic Tracker Project Materials/3_MATLAB analysis/jiahuiz2/drive-download-20230918/Aug Data X=5 Y=0 831';

% Xmoving
% fileDirectory = '/Users/jiahuizhu/Documents/Research/16879/final/Electromagnetic Tracker Project Materials/3_MATLAB analysis/jiahuiz2/drive-download-20230905/Aug Data Y=0';

% Ymoving 0 degree
% fileDirectory = '/Users/jiahuizhu/Documents/Research/16879/final/Electromagnetic Tracker Project Materials/3_MATLAB analysis/jiahuiz2/drive-download-20230918/Aug Data X=5';

% Ymoving 90 degree
% fileDirectory = '/Users/jiahuizhu/Documents/Research/16879/final/Electromagnetic Tracker Project Materials/3_MATLAB analysis/jiahuiz2/drive-download-20230905/Aug Data -20 to 20';

% Sheet 0 degree
% fileDirectory = '/Users/jiahuizhu/Documents/Research/16879/final/Electromagnetic Tracker Project Materials/3_MATLAB analysis/jiahuiz2/drive-download-20230918/Aug Sheet 10to80';

% Sheet 90 degree
% fileDirectory = '/Users/jiahuizhu/Documents/Research/16879/afinal/Electromagnetic Tracker Project Materials/3_MATLAB analysis/jiahuiz2/drive-download-20230918/Sept Data sheet 90 degree';

% do the validity check and print out the summary statistitcs 
[resultArray, data] = ExtractData(fileDirectory);
%% Extract low carrier data on x5y0
[resultArrayLow] = ExtractData(fileDirectory);
%% Run the data process
[transResult, rotResult] = dataProcess(resultArray, data);
%% Run the data process of low carrier data on x5y0
[transResultLow, rotResultLow] = dataProcess(resultArrayLow, data);
%% plot 
plotx5y0(transResult, rotResult, transResultLow, rotResultLow);
% plotxmoving(transResult, rotResult, data, 1);
% plotymoving(transResult, rotResult, data, 0, 0);
% plotymoving(transResult, rotResult, data, 90, 1);
% plotsheet(transResult, rotResult, data, 0, 0);
% plotsheet(transResult, rotResult, data, 90, 0);
