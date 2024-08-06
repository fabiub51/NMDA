function A07_prepare(file)

clear matlabbatch 

matlabbatch{1}.spm.meeg.preproc.prepare.D(1) = {file};
matlabbatch{1}.spm.meeg.preproc.prepare.task{1}.avref.fname = 'avref_montage.mat';


spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);