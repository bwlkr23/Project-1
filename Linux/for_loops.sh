#!/bin/bash

my_list=( 'hawaii' 'nebraska' 'california' 'ohio' 'texas' )
for my_list in ${my_list[@]};
do
	echo $my_list
done
