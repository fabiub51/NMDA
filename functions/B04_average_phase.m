function B04_average_phase(file)

matlabbatch{1}.spm.meeg.averaging.average.D(1) = {file};
matlabbatch{1}.spm.meeg.averaging.average.userobust.standard = false;
matlabbatch{1}.spm.meeg.averaging.average.plv = true;
matlabbatch{1}.spm.meeg.averaging.average.prefix = 'm';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);