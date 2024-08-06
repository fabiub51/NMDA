function B06_rescale_power(file)


matlabbatch{1}.spm.meeg.tf.rescale.D(1) = {file};
matlabbatch{1}.spm.meeg.tf.rescale.method.LogR.baseline.timewin = [-100 0];
matlabbatch{1}.spm.meeg.tf.rescale.method.LogR.baseline.pooledbaseline = 0;
matlabbatch{1}.spm.meeg.tf.rescale.method.LogR.baseline.Db = [];
matlabbatch{1}.spm.meeg.tf.rescale.prefix = 'r';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);