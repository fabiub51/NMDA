function A09_prepare(file)

clear matlabbatch 

matlabbatch{1}.spm.meeg.preproc.prepare.D(1) = {file};
matlabbatch{1}.spm.meeg.preproc.prepare.task{1}.sortconditions.label = {
                                                                        'Famous'
                                                                        'Unfamiliar'
                                                                        'Scrambled'
                                                                        }';

spm('defaults', 'EEG');
spm_jobman('run', matlabbatch);