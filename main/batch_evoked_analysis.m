%% General stuff
data_dir = 'C:\Users\berne\Documents\Master FU\2. Semester\NMDA practical\EEG\Multimodal\sub0';
function_directory = 'C:\Users\berne\Documents\Master FU\2. Semester\NMDA practical\EEG\Multimodal\functions';

subs = [14,15,16,17];

%% Evoked Analysis

% crop
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\Mcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    D01_crop(file)
end

% artefacts 
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\pMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    D02_artefacts(file)
end

% planar
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\apMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    D03_planar(file)
end

% averaging 
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\papMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    D04_averaging(file)
end

% contrast
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\mpapMcbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    D05_contrast(file) %contrasts are specified within the function 
end
