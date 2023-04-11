
# Improving Text-to-SQL Models with Schema Descriptions and Relational Embeddings

This code is based on:

```bibtex
@misc{soare_docut5_2022,
	title = {{DocuT5}: {Seq2seq} {SQL} {Generation} with {Table} {Documentation}},
	shorttitle = {{DocuT5}},
	url = {http://arxiv.org/abs/2211.06193},
	urldate = {2022-11-14},
	publisher = {arXiv},
	author = {Soare, Elena and Mackie, Iain and Dalton, Jeffrey},
	month = nov,
	year = {2022},
	note = {arXiv:2211.06193 [cs]},
	keywords = {Computer Science - Computation and Language},
}
```

### Prerequisites

This repository uses git submodules. Clone it like this:
```
git clone --recurse-submodules https://github.com/totem37/docu-t5.git
```

Install Docker on Ubuntu with:
```
cd docu-t5
./install_docker.sh
```

Download the required datasets:
```
./download_datasets.sh
```

Pull the DocuT5 Docker image with:
```
make pull-eval-image
```

Alternatively, you can build the DocuT5 image from scratch. This is necessary if changes have been made to the environment. To do this run:
```
make build-eval-image
```

### Config Files

Configuration files are located in `configs/`.

To change the dataset, change the option "dataset" to e.g. "spider".

To change the model, change the option "model_name_or_path" to e.g. "totem37/DocuT5-Small-SD".

To enable Foreign Keys Serialization, set the option "schema_serialization_with_foreign_keys" to true.

To enable Schema Augumentation, set the option "schema_serialization_with_db_description" to true.

If you get out of memory errors, decrease the number in "per_device_train_batch_size" or "per_device_eval_batch_size".

### RASAT

If using RASAT or DocuT5-RASAT, ensure these lines are in your config file:
```
"use_rasat": true,
"data_base_dir": "dataset_files",
"split_dataset": "spider",
"use_dependency": true
```

Before running the training/evaluation script, run the following commands:
```
pip install stanza
python seq2seq/rasat/stanza_downloader.py
unzip seq2seq/rasat/preprocessed_dataset.zip -d ./dataset_files/
```

### Training

The training script is `seq2seq/run_seq2seq.py`.

Run training with:
```
make train
```

This puts you in a Docker image, in which you can run:
```
python seq2seq/run_seq2seq.py configs/train.json
```

Replace `train.json` with whatever config file you want to run.

For long runs, run the training in the background with:
```
wandb login
nohup python seq2seq/run_seq2seq.py configs/train.json &
```

This logs output to `nohup.out`. You can exit the Docker container with Ctrl-P then Ctrl-Q and close the terminal if you use nohup.

To re-enter the last exited Docker container run:
```
docker start `docker ps -q -l` && docker attach `docker ps -q -l`
```

## Upload Trained Model to HuggingFace

To upload a new trained model to HuggingFace, execute the following commands _before_ training (note that MODEL_NAME should be the same as the subdirectory of train specified in the output_dir argument in the training config):
```
huggingface-cli login
apt install git-lfs
cd train
git lfs install
huggingface-cli repo create [MODEL_NAME]
git clone https://huggingface.co/[HUGGINGFACE_USERNAME]/[MODEL_NAME]
huggingface-cli lfs-enable-largefiles [MODEL_NAME]
```

To push changes to an existing HuggingFace model repository, run the following commands after training:
```
huggingface-cli login
cd train
python push.py [MODEL_NAME]
```

### Evaluation

The evaluation script is `seq2seq/run_seq2seq.py`.

Run evaluation with:
```
make eval
```

This puts you in a Docker image, in which you can run:
```
python seq2seq/run_seq2seq.py configs/eval.json
```

Replace `eval.json` with whatever config file you want to run.

Pre-trained models are available on HuggingFace at https://huggingface.co/elena-soare and https://huggingface.co/totem37.

For long runs, run the evaluation in the background with:
```
wandb login
nohup python seq2seq/run_seq2seq.py configs/eval.json &
```

This logs output to `nohup.out`. You can exit the Docker container with Ctrl-P then Ctrl-Q and close the terminal if you use nohup.

To re-enter the last exited Docker container run:
```
docker start `docker ps -q -l` && docker attach `docker ps -q -l`
```

### Other Scripts

The other_scripts folder contains other miscellaneous scripts used outwith this repository.
