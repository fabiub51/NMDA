function C02_estimation(output_dir)

matlabbatch{1}.spm.stats.fmri_est.spmmat(1) = {strcat(output_dir,'/SPM.mat')};
matlabbatch{1}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{1}.spm.stats.fmri_est.method.Classical = 1;

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);

