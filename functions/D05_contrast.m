function D05_contrast(file, contrast, contrast_label)

matlabbatch{1}.spm.meeg.averaging.contrast.D = {file};
matlabbatch{1}.spm.meeg.averaging.contrast.contrast.c = contrast;
matlabbatch{1}.spm.meeg.averaging.contrast.contrast.label = contrast_label;
matlabbatch{1}.spm.meeg.averaging.contrast.weighted = 1;
matlabbatch{1}.spm.meeg.averaging.contrast.prefix = 'w';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);