hadoop jar $STREAM \
-mapper ./mapper_two_word.py -file /home/weid0929/Downloads/mapper_two_word.py \
-reducer ./reducer.py -file /home/weid0929/Downloads/reducer.py \
-input /input/bible \
-output /output/two \
