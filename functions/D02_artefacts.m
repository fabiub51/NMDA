function D02_artefacts(file)

matlabbatch{1}.spm.meeg.preproc.artefact.D = {file};
matlabbatch{1}.spm.meeg.preproc.artefact.mode = 'reject';
matlabbatch{1}.spm.meeg.preproc.artefact.badchanthresh = 0.2;
matlabbatch{1}.spm.meeg.preproc.artefact.append = true;
matlabbatch{1}.spm.meeg.preproc.artefact.methods.channels{1}.type = 'EOG';
matlabbatch{1}.spm.meeg.preproc.artefact.methods.fun.threshchan.threshold = 200;
matlabbatch{1}.spm.meeg.preproc.artefact.methods.fun.threshchan.excwin = 1000;
matlabbatch{1}.spm.meeg.preproc.artefact.prefix = 'a';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);