%% General stuff
data_dir = 'C:\Users\berne\Documents\Master FU\2. Semester\NMDA practical\EEG\Multimodal\sub0';
function_directory = 'C:\Users\berne\Documents\Master FU\2. Semester\NMDA practical\EEG\Multimodal\functions';
addpath 'C:\Users\berne\Documents\MATLAB\spm12';
runs = 1:6;
subs = [14,15,16,17];

%% Preprocessing - every run individually 

% Convert

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    trial_dir = fullfile(strcat(data_dir,num2str(sub), '\Trials'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory);
    % add path to function_directory 
    for run = 1:length(runs) 

        file = fullfile(strcat(file_dir,'\run_0',num2str(run),'_sss.fif'));
        trial_file = fullfile(strcat(trial_dir,'\run_0',num2str(run),'_trldef.mat'));

        A01_convert(file, trial_file)
    end
end


% Prepare

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory);
    % add path to function_directory 
    for run = 1:length(runs) 
        file = fullfile(strcat(file_dir,'\spmeeg_run_0',num2str(run),'_sss.mat'));
        
        A02_prepare(file)
    end
end

% Prepare 2

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    for run = 1:length(runs) 
        file = fullfile(strcat(file_dir,'\spmeeg_run_0',num2str(run),'_sss.mat'));
        chan_file = fullfile(strcat(file_dir,'\bad_channels.mat'));
        A03_prepare(file,chan_file)
    end
end

% Downsample

for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    for run = 1:length(runs) 
        file = fullfile(strcat(file_dir,'\spmeeg_run_0',num2str(run),'_sss.mat'));
        A04_downsample(file)
    end
end


% Baseline Correction 
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    for run = 1:length(runs) 
        file = fullfile(strcat(file_dir,'\dspmeeg_run_0',num2str(run),'_sss.mat'));
        A05_bc(file)
    end
end

%% Combine all runs 

% Merging
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    A06_merging(file_dir, runs)
end

% Prepare
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file = fullfile(strcat(file_dir,'\cbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    A07_prepare(file)
end

% Montaging
for sub = subs
    file_dir = fullfile(strcat(data_dir,num2str(sub)));
    file_1 = fullfile(strcat(file_dir,'\cbdspmeeg_run_01_sss.mat'));
    file_2 = fullfile(strcat(file_dir,'\cbdspmeeg_run_01_sss.mat'));
    % set working directory to subject 
    cd(file_dir) 
    addpath(function_directory); % add path to function_directory 
    A08_montaging(file_1, file_2)
end
