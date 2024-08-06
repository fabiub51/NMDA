function A03_prepare(file,chan_file)

clear matlabbatch

matlabbatch{1}.spm.meeg.preproc.prepare.D(1) = {file};
matlabbatch{1}.spm.meeg.preproc.prepare.task{1}.setbadchan.channels{1}.chanfile = {chan_file};
matlabbatch{1}.spm.meeg.preproc.prepare.task{1}.setbadchan.status = 1;

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);