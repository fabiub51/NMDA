%% General stuff
data_dir = 'C:\Users\berne\Documents\Master FU\2. Semester\NMDA practical\EEG\Multimodal\sub0';
function_directory = 'C:\Users\berne\Documents\Master FU\2. Semester\NMDA practical\EEG\Multimodal\functions';
addpath 'C:\Users\berne\Documents\MATLAB\spm12';
runs = 1:6;
subs = [14,15,16,17];

%% Time Frequency analysis
% Wavelet estimation
%   .mat file which has not been cropped yet
%   Output: two files with prefixes "tf" and "tph"

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B01_wavelet(file)
end

%% Crop

%   once for phase
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\tphMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B02_crop_phase(file)
end

%   once for power
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\tfMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B03_crop_power(file)
end

%% averaging

%   once for power
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\ptphMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B04_average_phase(file)
end

%   once for phase for i = 1:length(subs)
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\ptfMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B05_average_power(file)
end

%% Rescale 

%   once for power
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\mptfMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B06_rescale_power(file)
end

%% Averaging contrasts

% once for phase
    % specify contrasts
contrasts = {};
contrast_labels = {};

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\mpthfMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B07_averaging_contrast_phase(file, contrasts, contrast_labels)
end

% once for phase

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\rmptfMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B08_averaging_contrast_power(file, contrasts, contrast_labels)
end

%% Convert 2 images 

%   Select baseline-rescaled, trial-averaged power file

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\wmptfMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B09_convert2images(file)
end

%% Specification

%   specify conditions in correct order
%   create a loop for as many subjects as one has 

C01_specification(data_dir, subs, conditions)

%% estimation

C02_estimation(output_dir)
