#!/bin/bash
WORKSPACE=$PWD
rm -fr $WORKSPACE/build
mkdir -p $WORKSPACE/build
cd build
cmake ..
cmake --build .

if [[ $RUN_UNIT_TESTS == "true" ]]; then
	echo "RUN UNIT Test Set to TRUE, genrating the Makefile with UNIT TEST macros"
	cmake -Dtest=ON ..
	cmake --build .
fi
cd $WORKSPACE
