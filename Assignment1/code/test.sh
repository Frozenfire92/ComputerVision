#!/bin/bash

# Clean our output directory
echo "Cleaning the output directory"
rm -rf /home/joel/Develop/computerVision/Assignment1/code/output/*

# Make a fresh copy of that project!
echo "Making fresh binaries"
make

# Test the dog cat
echo "Testing dog cat"
mkdir output/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 10 1 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 10 2 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 10 3 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 10 4 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 10 5 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 10 6 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 10 7 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 10 8 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 10 9 5 1.5 dogcat/dogcat

./Hybridize.o input/dog.bmp input/cat.bmp 8 1 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 8 2 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 8 3 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 8 4 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 8 5 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 8 6 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 8 7 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 8 8 5 1.5 dogcat/dogcat

./Hybridize.o input/dog.bmp input/cat.bmp 6 1 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 6 2 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 6 3 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 6 4 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 6 5 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 6 6 5 1.5 dogcat/dogcat

./Hybridize.o input/dog.bmp input/cat.bmp 4 1 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 4 2 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 4 3 5 1.5 dogcat/dogcat
./Hybridize.o input/dog.bmp input/cat.bmp 4 4 5 1.5 dogcat/dogcat

# # Test the cat dog
echo "Testing cat dog"
mkdir output/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 10 1 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 10 2 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 10 3 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 10 4 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 10 5 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 10 6 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 10 7 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 10 8 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 10 9 5 1.5 catdog/catdog

./Hybridize.o input/cat.bmp input/dog.bmp 8 1 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 8 2 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 8 3 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 8 4 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 8 5 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 8 6 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 8 7 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 8 8 5 1.5 catdog/catdog

./Hybridize.o input/cat.bmp input/dog.bmp 6 1 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 6 2 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 6 3 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 6 4 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 6 5 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 6 6 5 1.5 catdog/catdog

./Hybridize.o input/cat.bmp input/dog.bmp 4 1 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 4 2 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 4 3 5 1.5 catdog/catdog
./Hybridize.o input/cat.bmp input/dog.bmp 4 4 5 1.5 catdog/catdog

# # Test the bird plane
echo "Testing bird plane"
mkdir output/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 10 1 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 10 2 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 10 3 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 10 4 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 10 5 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 10 6 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 10 7 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 10 8 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 10 9 5 1.5 birdplane/birdplane

./Hybridize.o input/bird.bmp input/plane.bmp 8 1 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 8 2 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 8 3 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 8 4 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 8 5 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 8 6 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 8 7 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 8 8 5 1.5 birdplane/birdplane

./Hybridize.o input/bird.bmp input/plane.bmp 6 1 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 6 2 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 6 3 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 6 4 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 6 5 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 6 6 5 1.5 birdplane/birdplane

./Hybridize.o input/bird.bmp input/plane.bmp 4 1 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 4 2 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 4 3 5 1.5 birdplane/birdplane
./Hybridize.o input/bird.bmp input/plane.bmp 4 4 5 1.5 birdplane/birdplane

# Test the plane bird
echo "Testing plane bird"
mkdir output/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 10 1 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 10 2 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 10 3 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 10 4 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 10 5 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 10 6 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 10 7 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 10 8 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 10 9 5 1.5 planebird/planebird

./Hybridize.o input/plane.bmp input/bird.bmp 8 1 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 8 2 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 8 3 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 8 4 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 8 5 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 8 6 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 8 7 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 8 8 5 1.5 planebird/planebird

./Hybridize.o input/plane.bmp input/bird.bmp 6 1 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 6 2 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 6 3 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 6 4 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 6 5 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 6 6 5 1.5 planebird/planebird

./Hybridize.o input/plane.bmp input/bird.bmp 4 1 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 4 2 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 4 3 5 1.5 planebird/planebird
./Hybridize.o input/plane.bmp input/bird.bmp 4 4 5 1.5 planebird/planebird

# # Test the fish sub
echo "Testing fish sub"
mkdir output/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 10 1 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 10 2 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 10 3 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 10 4 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 10 5 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 10 6 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 10 7 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 10 8 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 10 9 5 1.5 fishsub/fishsub

./Hybridize.o input/fish.bmp input/submarine.bmp 8 1 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 8 2 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 8 3 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 8 4 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 8 5 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 8 6 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 8 7 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 8 8 5 1.5 fishsub/fishsub

./Hybridize.o input/fish.bmp input/submarine.bmp 6 1 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 6 2 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 6 3 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 6 4 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 6 5 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 6 6 5 1.5 fishsub/fishsub

./Hybridize.o input/fish.bmp input/submarine.bmp 4 1 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 4 2 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 4 3 5 1.5 fishsub/fishsub
./Hybridize.o input/fish.bmp input/submarine.bmp 4 4 5 1.5 fishsub/fishsub

# # Test the sub fish
echo "Testing sub fish"
mkdir output/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 10 1 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 10 2 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 10 3 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 10 4 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 10 5 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 10 6 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 10 7 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 10 8 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 10 9 5 1.5 subfish/subfish

./Hybridize.o input/submarine.bmp input/fish.bmp 8 1 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 8 2 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 8 3 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 8 4 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 8 5 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 8 6 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 8 7 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 8 8 5 1.5 subfish/subfish

./Hybridize.o input/submarine.bmp input/fish.bmp 6 1 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 6 2 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 6 3 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 6 4 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 6 5 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 6 6 5 1.5 subfish/subfish

./Hybridize.o input/submarine.bmp input/fish.bmp 4 1 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 4 2 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 4 3 5 1.5 subfish/subfish
./Hybridize.o input/submarine.bmp input/fish.bmp 4 4 5 1.5 subfish/subfish

# # Test the sub fish
# echo "Testing bike motor"
# mkdir output/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 10 1 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 10 2 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 10 3 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 10 4 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 10 5 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 10 6 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 10 7 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 10 8 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 10 9 5 1.5 bikemotor/bikemotor

# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 8 1 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 8 2 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 8 3 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 8 4 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 8 5 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 8 6 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 8 7 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 8 8 5 1.5 bikemotor/bikemotor

# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 6 1 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 6 2 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 6 3 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 6 4 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 6 5 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 6 6 5 1.5 bikemotor/bikemotor

# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 4 1 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 4 2 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 4 3 5 1.5 bikemotor/bikemotor
# ./Hybridize.o input/bicycle.bmp input/motorcycle.bmp 4 4 5 1.5 bikemotor/bikemotor

echo "Testing motor bike"
mkdir output/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 10 1 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 10 2 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 10 3 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 10 4 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 10 5 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 10 6 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 10 7 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 10 8 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 10 9 5 1.5 motorbike/motorbike

./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 8 1 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 8 2 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 8 3 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 8 4 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 8 5 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 8 6 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 8 7 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 8 8 5 1.5 motorbike/motorbike

./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 6 1 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 6 2 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 6 3 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 6 4 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 6 5 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 6 6 5 1.5 motorbike/motorbike

./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 4 1 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 4 2 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 4 3 5 1.5 motorbike/motorbike
./Hybridize.o input/motorcycle.bmp input/bicycle.bmp 4 4 5 1.5 motorbike/motorbike

echo "Testing marilyn einstein"
mkdir output/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 10 1 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 10 2 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 10 3 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 10 4 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 10 5 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 10 6 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 10 7 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 10 8 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 10 9 5 1.5 marilstein/marilstein

./Hybridize.o input/marilyn.bmp input/einstein.bmp 8 1 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 8 2 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 8 3 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 8 4 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 8 5 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 8 6 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 8 7 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 8 8 5 1.5 marilstein/marilstein

./Hybridize.o input/marilyn.bmp input/einstein.bmp 6 1 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 6 2 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 6 3 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 6 4 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 6 5 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 6 6 5 1.5 marilstein/marilstein

./Hybridize.o input/marilyn.bmp input/einstein.bmp 4 1 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 4 2 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 4 3 5 1.5 marilstein/marilstein
./Hybridize.o input/marilyn.bmp input/einstein.bmp 4 4 5 1.5 marilstein/marilstein

echo "Testing einstein marilyn"
mkdir output/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 10 1 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 10 2 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 10 3 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 10 4 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 10 5 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 10 6 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 10 7 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 10 8 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 10 9 5 1.5 einlyn/einlyn

./Hybridize.o input/einstein.bmp input/marilyn.bmp 8 1 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 8 2 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 8 3 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 8 4 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 8 5 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 8 6 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 8 7 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 8 8 5 1.5 einlyn/einlyn

./Hybridize.o input/einstein.bmp input/marilyn.bmp 6 1 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 6 2 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 6 3 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 6 4 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 6 5 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 6 6 5 1.5 einlyn/einlyn

./Hybridize.o input/einstein.bmp input/marilyn.bmp 4 1 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 4 2 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 4 3 5 1.5 einlyn/einlyn
./Hybridize.o input/einstein.bmp input/marilyn.bmp 4 4 5 1.5 einlyn/einlyn

echo "Testing penny back-front"
mkdir output/penny_bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 10 1 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 10 2 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 10 3 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 10 4 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 10 5 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 10 6 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 10 7 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 10 8 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 10 9 5 1.5 penny_bf/bf

./Hybridize.o input/pennyBack.png input/pennyFront.png 8 1 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 8 2 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 8 3 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 8 4 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 8 5 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 8 6 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 8 7 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 8 8 5 1.5 penny_bf/bf

./Hybridize.o input/pennyBack.png input/pennyFront.png 6 1 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 6 2 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 6 3 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 6 4 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 6 5 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 6 6 5 1.5 penny_bf/bf

./Hybridize.o input/pennyBack.png input/pennyFront.png 4 1 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 4 2 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 4 3 5 1.5 penny_bf/bf
./Hybridize.o input/pennyBack.png input/pennyFront.png 4 4 5 1.5 penny_bf/bf

echo "Testing penny front-back"
mkdir output/penny_fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 10 1 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 10 2 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 10 3 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 10 4 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 10 5 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 10 6 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 10 7 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 10 8 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 10 9 5 1.5 penny_fb/fb

./Hybridize.o input/pennyFront.png input/pennyBack.png 8 1 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 8 2 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 8 3 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 8 4 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 8 5 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 8 6 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 8 7 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 8 8 5 1.5 penny_fb/fb

./Hybridize.o input/pennyFront.png input/pennyBack.png 6 1 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 6 2 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 6 3 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 6 4 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 6 5 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 6 6 5 1.5 penny_fb/fb

./Hybridize.o input/pennyFront.png input/pennyBack.png 4 1 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 4 2 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 4 3 5 1.5 penny_fb/fb
./Hybridize.o input/pennyFront.png input/pennyBack.png 4 4 5 1.5 penny_fb/fb