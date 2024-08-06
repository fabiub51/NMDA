function A06_merging(file_dir, runs)

clear matlabbatch
files = {};
for run = 1:length(runs)
    files{run} = fullfile(strcat(file_dir,'\bdspmeeg_run_0',num2str(run),'_sss.mat'));
end

files = files';

matlabbatch{1}.spm.meeg.preproc.merge.D = files;
matlabbatch{1}.spm.meeg.preproc.merge.recode.file = '.*';
matlabbatch{1}.spm.meeg.preproc.merge.recode.labelorg = '.*';
matlabbatch{1}.spm.meeg.preproc.merge.recode.labelnew = '#labelorg#';
matlabbatch{1}.spm.meeg.preproc.merge.prefix = 'c';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);