function B08_averaging_contrast_power(file)

matlabbatch{1}.spm.meeg.averaging.contrast.D = {file};
matlabbatch{1}.spm.meeg.averaging.contrast.contrast(1).c = [1 0 0];
matlabbatch{1}.spm.meeg.averaging.contrast.contrast(1).label = 'Famous';
matlabbatch{1}.spm.meeg.averaging.contrast.contrast(2).c = [0 1 0];
matlabbatch{1}.spm.meeg.averaging.contrast.contrast(2).label = 'Unfamiliar';
matlabbatch{1}.spm.meeg.averaging.contrast.contrast(3).c = [0 0 1];
matlabbatch{1}.spm.meeg.averaging.contrast.contrast(3).label = 'Scrambled';
matlabbatch{1}.spm.meeg.averaging.contrast.weighted = 1;
matlabbatch{1}.spm.meeg.averaging.contrast.prefix = 'w';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);
