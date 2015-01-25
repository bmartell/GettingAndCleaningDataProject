Getting and Cleaning Data Project CodeBook
========================================================

workingDir: the directory in wich the files are downloaded

files: vector containing the file names extracted from the .zip file given
by instructor

Each file is read into a data.table. The data.table has the same name as the original file



activity_labels: data.table containing labels for the 6 activities
features: data.table containing the list of 561 features 

x_test: data.table containing the test set of data (561 cols )
x_train: data.table containing the train set of data (561 cols )

y_test: data.table containing the x_test labels
y_train: data.table containing the x_train labels

subject_test: data.table containing the test subjects ids (2947 obs)

subject_train: data.table containing the train subjects ids(7352 obs)

body_acc_x_test: data.table containing the values for body acceleration on X for the  test subset

body_acc_y_test: data.table containing the values for body acceleration on Y for the  test subset

body_acc_z_test: data.table containing the values for body acceleration on Z for the  test subset

body_gyro_x_test: data.table containing the values for gyroscope acceleration on X for the  test subset

body_gyro_y_test: data.table containing the values for gyroscope acceleration on Y for the  test subset

body_gyro_z_test: data.table containing the values for gyroscope acceleration on Z for the  test subset

total_acc_x_test: data.table containing the values for total acceleration on X for the  test subset

total_acc_y_testdata.table containing the values for total acceleration on Y for the  test subset

total_acc_z_testdata.table containing the values for total acceleration on Z for the  test subset

body_acc_x_train: data.table containing the values for body acceleration on X for the  train subset

body_acc_y_train: data.table containing the values for body acceleration on Y for the  train subset

body_acc_z_train: data.table containing the values for body acceleration on Z for the  train subset

body_gyro_x_train: data.table containing the values for gyroscope acceleration on X for the  train subset

body_gyro_y_train: data.table containing the values for gyroscope acceleration on Y for the  train subset

body_gyro_z_train: data.table containing the values for gyroscope acceleration on Z for the  train subset

total_acc_x_train: data.table containing the values for total acceleration on X for the  train subset

total_acc_y_train: data.table containing the values for total acceleration on Y for the  train subset

total_acc_z_train: data.table containing the values for total acceleration on Z for the  train subset


data_set: data.tabled obtained by merging x_train and x_test in order to create a global dataset (training+test data sets) 10299 values. The column names for this dataset are the "features"" values


subject: data.tabled obtained by merging subject_train and subject_testin order to create a global subject vector (training+test subject vectors) 10299 values. The column names for this dataset are the "subjects" values

activities: data.tabled obtained by merging y_train and y_testin order to create a global labels vector (training+test labels vectors) 10299 values. The column names for this dataset are the "activities" values

total_acc_x: data.tabled obtained by merging total_acc_x_train and total_acc_x_test in order to create a global total_acceleration vector (training+test) 10299 rows and 128 cols. 

total_acc_y: data.tabled obtained by merging total_acc_y_train,total_acc_y_test in order to create a global total_acceleration vector (training+test) 10299 rows and 128 cols.

total_acc_z: data.tabled obtained by merging total_acc_z_train,total_acc_z_test in order to create a global total_acceleration vector (training+test) 10299 rows and 128 cols.

body_acc_x: data.tabled obtained by merging body_acc_x_train,body_acc_x_test in order to create a global total_acceleration vector (training+test) 10299 rows and 128 cols. 

body_acc_y: data.tabled obtained by merging body_acc_y_train,body_acc_y_test in order to create a global total_acceleration vector (training+test) 10299 rows and 128 cols.

body_acc_z: data.tabled obtained by merging body_acc_z_train,body_acc_z_test in order to create a global total_acceleration vector (training+test) 10299 rows and 128 cols.

body_gyro_x: data.tabled obtained by merging body_gyro_x_train,body_gyro_x_test in order to create a global total_acceleration vector (training+test) 10299 rows and 128 cols.

body_gyro_y: data.tabled obtained by merging body_gyro_y_train,body_gyro_y_test in order to create a global total_acceleration vector (training+test) 10299 rows and 128 cols.)  

body_gyro_z: data.tabled obtained by merging body_gyro_z_train,body_gyro_z_test in order to create a global total_acceleration vector (training+test) 10299 rows and 128 cols.

global_set: data.tabled obtained by merging activities,subject,data_set,body_gyro_x,body_gyro_y, body_gyro_z, body_acc_x,body_acc_y,body_acc_z, total_acc_x,total_acc_y,total_acc_z