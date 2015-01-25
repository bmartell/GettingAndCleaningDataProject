GettingAndCleaningDataProject Readme file
==========================================

This file explains how to run the run_analysis.R file 
in order to get the tidy dataset as required by the 
GettingAndCleaningData Project

Open an RStudio session and open the run_analysis.R file

run all the code in the run_analysis.R file 


ANSWER TO POINT 1:

global_set: data.tabled obtained by merging activities,subject,data_set,body_gyro_x,body_gyro_y, body_gyro_z, body_acc_x,body_acc_y,body_acc_z, total_acc_x,total_acc_y,total_acc_z 

ANSWER TO POINT 2:
df_mean_std: a data.frame containing only mean and std measurements. Its colnames are 
the component of features vector containig the substrings "mean()" or "std()"
Please note that the substrings "mean" and "std" would have given the wrong result
because they could be part of parameters names, while what we want is only
values resulting from the application fo mean() and std() functions!

ANSWER TO POINT 3:
df_mean_std_action_labels: JOIN with activity_lables in order to add activities description to dataset

ANSWER TO POINT 4:
already done in point 1

ANSWER TO POINT 5:

