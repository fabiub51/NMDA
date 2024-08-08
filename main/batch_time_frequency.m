%% General stuff
data_dir = 'C:\Users\berne\Documents\Master FU\2. Semester\NMDA practical\EEG\Multimodal\sub0';
function_directory = 'C:\Users\berne\Documents\Master FU\2. Semester\NMDA practical\EEG\Multimodal\functions';
output_dir = 'C:\Users\berne\Documents\Master FU\2. Semester\NMDA practical\EEG\Multimodal\output';

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
    file = fullfile(strcat(file_dir,'\tph_Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B02_crop_phase(file)
end

%   once for power
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\tf_Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B03_crop_power(file)
end

%% averaging

%   once for power
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\ptph_Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B04_average_phase(file)
end

%   once for phase for i = 1:length(subs)
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\ptf_Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B05_average_power(file)
end

%% Rescale 

%   once for power
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\mptf_Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B06_rescale_power(file)
end

%% Averaging contrasts

% once for phase

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\mptph_Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B07_averaging_contrast_phase(file) % contrasts specified within the function 
end

% once for power

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\rmptf_Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B08_averaging_contrast_power(file) % contrasts specified within the function 
end

%% Convert 2 images 

%   Select baseline-rescaled, trial-averaged power file

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\wrmptf_Mcbdspmeeg_run_01_sss.mat'));
    file_2 = fullfile(strcat(file_dir,'\wmptph_Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    B09_convert2images(file, file_2)
end

%% Specification

%   specify conditions in correct order 
conditions = [1, 2, 3];
C01_specification(data_dir, subs, conditions, output_dir)

%% estimation

C02_estimation(output_dir)

%% contrast
file = fullfile(output_dir, '\SPM.mat');
contrast = [eye(3) ones(3,2)/2];
contrast_name = 'All Effects';

C03_contrast_time_frequency(file, contrast, contrast_name)
