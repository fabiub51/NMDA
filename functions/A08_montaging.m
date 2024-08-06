function A08_montaging(file_1, file_2)

clear matlabbatch

matlabbatch{1}.spm.meeg.preproc.montage.D(1) = {file_1};
matlabbatch{1}.spm.meeg.preproc.montage.mode.write.montspec.montage.montagefile(1) = {file_2};
matlabbatch{1}.spm.meeg.preproc.montage.mode.write.montspec.montage.keepothers = 1;
matlabbatch{1}.spm.meeg.preproc.montage.mode.write.blocksize = 655360;
matlabbatch{1}.spm.meeg.preproc.montage.mode.write.prefix = 'M';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);