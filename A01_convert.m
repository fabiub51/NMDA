function A01_convert(file, trial_file)

matlabbatch{1}.spm.meeg.convert.dataset = {file};
matlabbatch{1}.spm.meeg.convert.mode.epoched.trlfile = {trial_file};
matlabbatch{1}.spm.meeg.convert.channels{1}.type = 'EEG';
matlabbatch{1}.spm.meeg.convert.channels{2}.type = 'MEGMAG';
matlabbatch{1}.spm.meeg.convert.channels{3}.type = 'MEGPLANAR';
matlabbatch{1}.spm.meeg.convert.outfile = '';
matlabbatch{1}.spm.meeg.convert.eventpadding = 0;
matlabbatch{1}.spm.meeg.convert.blocksize = 3276800;
matlabbatch{1}.spm.meeg.convert.checkboundary = 1;
matlabbatch{1}.spm.meeg.convert.saveorigheader = 0;
matlabbatch{1}.spm.meeg.convert.inputformat = 'autodetect';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);
