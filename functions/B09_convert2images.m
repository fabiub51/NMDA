function B09_convert2images(file, file_2)

matlabbatch{1}.spm.meeg.images.convert2images.D = {file};
matlabbatch{1}.spm.meeg.images.convert2images.mode = 'time x frequency';
matlabbatch{1}.spm.meeg.images.convert2images.conditions = {};
matlabbatch{1}.spm.meeg.images.convert2images.channels{1}.type = 'EEG';
matlabbatch{1}.spm.meeg.images.convert2images.timewin = [-Inf Inf];
matlabbatch{1}.spm.meeg.images.convert2images.freqwin = [-Inf Inf];
matlabbatch{1}.spm.meeg.images.convert2images.prefix = 'eeg_img_pow_';
matlabbatch{2}.spm.meeg.images.convert2images.D = {file};
matlabbatch{2}.spm.meeg.images.convert2images.mode = 'time x frequency';
matlabbatch{2}.spm.meeg.images.convert2images.conditions = {};
matlabbatch{2}.spm.meeg.images.convert2images.channels{1}.type = 'MEGMAG';
matlabbatch{2}.spm.meeg.images.convert2images.timewin = [-Inf Inf];
matlabbatch{2}.spm.meeg.images.convert2images.freqwin = [-Inf Inf];
matlabbatch{2}.spm.meeg.images.convert2images.prefix = 'mag_img_pow_';
matlabbatch{3}.spm.meeg.images.convert2images.D = {file};
matlabbatch{3}.spm.meeg.images.convert2images.mode = 'time x frequency';
matlabbatch{3}.spm.meeg.images.convert2images.conditions = {};
matlabbatch{3}.spm.meeg.images.convert2images.channels{1}.type = 'MEGPLANAR';
matlabbatch{3}.spm.meeg.images.convert2images.timewin = [-Inf Inf];
matlabbatch{3}.spm.meeg.images.convert2images.freqwin = [-Inf Inf];
matlabbatch{3}.spm.meeg.images.convert2images.prefix = 'grd_img_pow_';
matlabbatch{4}.spm.meeg.images.convert2images.D = {file_2};
matlabbatch{4}.spm.meeg.images.convert2images.mode = 'time x frequency';
matlabbatch{4}.spm.meeg.images.convert2images.conditions = {};
matlabbatch{4}.spm.meeg.images.convert2images.channels{1}.type = 'EEG';
matlabbatch{4}.spm.meeg.images.convert2images.timewin = [-Inf Inf];
matlabbatch{4}.spm.meeg.images.convert2images.freqwin = [-Inf Inf];
matlabbatch{4}.spm.meeg.images.convert2images.prefix = 'eeg_img_phs_';
matlabbatch{5}.spm.meeg.images.convert2images.D = {file_2};
matlabbatch{5}.spm.meeg.images.convert2images.mode = 'time x frequency';
matlabbatch{5}.spm.meeg.images.convert2images.conditions = {};
matlabbatch{5}.spm.meeg.images.convert2images.channels{1}.type = 'MEGMAG';
matlabbatch{5}.spm.meeg.images.convert2images.timewin = [-Inf Inf];
matlabbatch{5}.spm.meeg.images.convert2images.freqwin = [-Inf Inf];
matlabbatch{5}.spm.meeg.images.convert2images.prefix = 'mag_img_phs_';
matlabbatch{6}.spm.meeg.images.convert2images.D = {file_2};
matlabbatch{6}.spm.meeg.images.convert2images.mode = 'time x frequency';
matlabbatch{6}.spm.meeg.images.convert2images.conditions = {};
matlabbatch{6}.spm.meeg.images.convert2images.channels{1}.type = 'MEGPLANAR';
matlabbatch{6}.spm.meeg.images.convert2images.timewin = [-Inf Inf];
matlabbatch{6}.spm.meeg.images.convert2images.freqwin = [-Inf Inf];
matlabbatch{6}.spm.meeg.images.convert2images.prefix = 'grd_img_phs_';


spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);