function A05_bc(file)

clear matlabbatch

matlabbatch{1}.spm.meeg.preproc.bc.D(1) = {file};
matlabbatch{1}.spm.meeg.preproc.bc.timewin = [-100 0];
matlabbatch{1}.spm.meeg.preproc.bc.prefix = 'b';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);