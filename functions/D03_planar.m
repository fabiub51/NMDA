function D03_planar(file)

matlabbatch{1}.spm.meeg.preproc.combineplanar.D = {file};
matlabbatch{1}.spm.meeg.preproc.combineplanar.mode = 'replace';
matlabbatch{1}.spm.meeg.preproc.combineplanar.prefix = 'P';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);