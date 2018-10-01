hadoop jar $STREAM \  # this is the java-streaming path of hadoop
-mapper ./mapper.py -file /home/weid0929/Downloads/mapper.py \ #this is the mapper.py file
-reducer ./reducer.py -file /home/weid0929/Downloads/reducer.py \ # this is the reducer.py file
-input /input/bible \ #dataset
-output /output \ #this is the output path

hadoop jar $STREAM \
-mapper ./mapper_two_word.py -file /home/weid0929/Downloads/mapper_two_word.py \
-reducer ./reducer.py -file /home/weid0929/Downloads/reducer.py \
-input /input/bible \
-output /output/two \

hadoop jar $STREAM \
-mapper ./mapper_match.py -file /home/weid0929/Downloads/mapper_match.py \
-reducer ./reducer.py -file /home/weid0929/Downloads/reducer.py \
-input /input/bible \
-output /output/match \
