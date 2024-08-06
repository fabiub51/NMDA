function C03_contrast_time_frequency(file, contrast, contrast_name)

matlabbatch{1}.spm.stats.con.spmmat = {file}
matlabbatch{1}.spm.stats.con.consess{1}.fcon.name = contrast_name;
matlabbatch{1}.spm.stats.con.consess{1}.fcon.weights = contrast;
matlabbatch{1}.spm.stats.con.consess{1}.fcon.sessrep = 'none';
matlabbatch{1}.spm.stats.con.delete = 0;

spm('defaults', 'EEG');
spm_jobman('run', jobs);