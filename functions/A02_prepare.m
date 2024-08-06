function A02_prepare(file)

clear matlabbatch

load(file, 'D')

D.channels(367).type = 'EOG';
D.channels(368).type = 'EOG';
D.channels(369).type = 'ECG';
D.channels(370).type = 'Other';
