TEMP=0.8
N_OUTPUT=256
PROMPT="Dream comes true this day"


MODEL=../models/llama2.c/llama3_8b.bin
MODEL=../models/llama2.c/stories15M.bin
MODEL=../models/llama2.c/llama2_7b.bin

all: conv



run:
	python3 llama2.py ${MODEL} ${TEMP} ${N_OUTPUT} ${PROMPT}

conv:
	python3 export_meta_llama_bin.py ./69656aac4cb47911a639f5890ff35b41ceb82e98 /tmp/xxx.bin

#	python export_meta_llama_bin.py ../models/Meta-Llama-3-8B-Instruct/original/ /tmp/llama3_8b.bin
