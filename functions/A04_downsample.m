function A04_downsample(file)

clear matlabbatch 

matlabbatch{1}.spm.meeg.preproc.downsample.D(1) = {file};
matlabbatch{1}.spm.meeg.preproc.downsample.fsample_new = 200;
matlabbatch{1}.spm.meeg.preproc.downsample.method = 'resample';
matlabbatch{1}.spm.meeg.preproc.downsample.prefix = 'd';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);