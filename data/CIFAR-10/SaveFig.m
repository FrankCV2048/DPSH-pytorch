function SaveFig()
load('cifar-10.mat');
database img
num_database = size(data_set, 4);
fp = fopen('C:\Users\Administrator\PycharmProjects\DPSH-pytorch\data\CIFAR-10\database_img.txt', 'wt');
fp_label = fopen('C:\Users\Administrator\PycharmProjects\DPSH-pytorch\data\CIFAR-10\database_label.txt', 'wt');
for i = 1: num_database
    img = squeeze(data_set(:, :, :, i));
    filename = [ 'C:\Users\Administrator\PycharmProjects\DPSH-pytorch\data\CIFAR-10\dat\database_img\' int2str(i) '.png'];
    fprintf(fp, '%s\n', filename) ;
    fprintf(fp_label, '%d\n', dataset_L(i));
    imwrite(img, filename);
    fprintf('database: %d image finished\n', i);
end
fclose(fp);
fclose(fp_label);

% training img
num_training= size(train_data, 4);
fp = fopen('C:\Users\Administrator\PycharmProjects\DPSH-pytorch\data\CIFAR-10\train_img.txt', 'wt');
fp_label = fopen('C:\Users\Administrator\PycharmProjects\DPSH-pytorch\data\CIFAR-10\train_label.txt', 'wt');
for i = 1: num_training
    img = squeeze(train_data(:, :, :, i));
    filename = ['C:\Users\Administrator\PycharmProjects\DPSH-pytorch\data\CIFAR-10\dat\train_img\' int2str(i) '.png'];
    fprintf(fp, '%s\n', filename) ;
    fprintf(fp_label, '%d\n', train_L(i));
    imwrite(img, filename);
    fprintf('train: %d image finished\n', i);
end
fclose(fp);
fclose(fp_label);

% test img
num_test = size(test_data, 4);
fp = fopen('C:\Users\Administrator\PycharmProjects\DPSH-pytorch\data\CIFAR-10\test_img.txt', 'wt');
fp_label = fopen('C:\Users\Administrator\PycharmProjects\DPSH-pytorch\data\CIFAR-10\test_label.txt', 'wt');
for i = 1: num_test
    img = squeeze(test_data(:, :, :, i));
    filename = ['C:\Users\Administrator\PycharmProjects\DPSH-pytorch\data\CIFAR-10\dat\test_img\' int2str(i) '.png'];
    fprintf(fp, '%s\n', filename) ;
    fprintf(fp_label, '%d\n', test_L(i));
    imwrite(img, filename);
    fprintf('test: %d image finished\n', i);
end
fclose(fp);
fclose(fp_label);
end