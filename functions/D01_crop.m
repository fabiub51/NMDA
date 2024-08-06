function D01_crop(file)

matlabbatch{1}.spm.meeg.preproc.crop.D = {file};
matlabbatch{1}.spm.meeg.preproc.crop.timewin = [-100 800];
matlabbatch{1}.spm.meeg.preproc.crop.freqwin = [-Inf Inf];
matlabbatch{1}.spm.meeg.preproc.crop.channels{1}.all = 'all';
matlabbatch{1}.spm.meeg.preproc.crop.prefix = 'p';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);