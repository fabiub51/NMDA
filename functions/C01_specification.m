function C01_specification(data_dir, subs, conditions, output_dir)

files = {};

for i = 1:length(subs)
    file_dir = fullfile(strcat(data_dir,num2str(subs(i))),'\eeg_img_pow_wrmptf_Mcbdspmeeg_run_01_sss\');
    files{i} = spm_select('expand', fullfile(file_dir,"condition_faces.nii"));
end

matlabbatch{1}.spm.stats.factorial_design.dir = {output_dir};
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.fsubject(1).scans = files{1};
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.fsubject(1).conds = conditions;
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.fsubject(1).scans = files{2};
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.fsubject(1).conds = conditions;
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.fsubject(1).scans = files{3};
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.fsubject(1).conds = conditions;
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.fsubject(1).scans = files{4};
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.fsubject(1).conds = conditions;
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.dept = 1;
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.variance = 1;
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.gmsca = 0;
matlabbatch{1}.spm.stats.factorial_design.des.anovaw.ancova = 0;
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);

