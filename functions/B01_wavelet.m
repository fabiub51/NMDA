function B01_wavelet(file)

matlabbatch{1}.spm.meeg.tf.tf.D = {file};
matlabbatch{1}.spm.meeg.tf.tf.channels{1}.all = 'all';
matlabbatch{1}.spm.meeg.tf.tf.frequencies = [6:40];
matlabbatch{1}.spm.meeg.tf.tf.timewin = [-Inf Inf];
matlabbatch{1}.spm.meeg.tf.tf.method.morlet.ncycles = 5;
matlabbatch{1}.spm.meeg.tf.tf.method.morlet.timeres = 0;
matlabbatch{1}.spm.meeg.tf.tf.method.morlet.subsample = 5;
matlabbatch{1}.spm.meeg.tf.tf.phase = 1;
matlabbatch{1}.spm.meeg.tf.tf.prefix = '';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);