for k = 1:4
    for i = 1:14
        test(:,:,(k-1)*14 + i) = yalefaces(:,:,(k-1)*64 + 50 + i);
    end
end


for k = 1:4
    for i = 1:100
        train{k}(:,i) = trainset{k}(:,i);
    end
end
train = cell2mat(train);
train_labels = [0 * ones(1,100) 1 * ones(1,100) 2 * ones(1,100) 3 * ones(1,100)];
save('ECG_train', 'train', 'train_labels');


for k = 1:4
    for i = 1:20
        test{k}(:,i) = trainset{k}(:,100+i);
    end
end
test = cell2mat(test);
test_labels = [0 * ones(1,20) 1 * ones(1,20) 2 * ones(1,20) 3 * ones(1,20)];
save('ECG_test', 'test', 'test_labels');