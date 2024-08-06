function B07_averaging_contrast_phase(file, contrast, con_label)

matlabbatch{1}.spm.meeg.averaging.contrast.D = {file};
matlabbatch{1}.spm.meeg.averaging.contrast.contrast.c = contrast;
matlabbatch{1}.spm.meeg.averaging.contrast.contrast.label = con_label;
matlabbatch{1}.spm.meeg.averaging.contrast.weighted = 1;
matlabbatch{1}.spm.meeg.averaging.contrast.prefix = 'w';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);