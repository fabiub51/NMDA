function D04_averaging(file)

matlabbatch{1}.spm.meeg.averaging.average.D = {file};
matlabbatch{1}.spm.meeg.averaging.average.userobust.robust.ks = 3;
matlabbatch{1}.spm.meeg.averaging.average.userobust.robust.bycondition = false;
matlabbatch{1}.spm.meeg.averaging.average.userobust.robust.savew = false;
matlabbatch{1}.spm.meeg.averaging.average.userobust.robust.removebad = false;
matlabbatch{1}.spm.meeg.averaging.average.plv = false;
matlabbatch{1}.spm.meeg.averaging.average.prefix = 'm';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);