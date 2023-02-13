echo "Start install spacy"
pip3 install spacy==3.1.2

echo "Start download spacy model"
python -m spacy download en_core_web_lg
python -m spacy download en_core_web_trf

echo "Start install coreferee"
python3 -m pip install coreferee
python3 -m coreferee install en

echo "Start download stanza"
pip3 install stanza==1.3.0

echo "Start download protobuf"
pip3 install protobuf==3.19.0

echo "Start download stanza en resource"
python -c "import stanza;stanza.download('en')"

echo "Start coref process"
python3 get_coref.py --input_path ./dataset_files --output_path ./dataset_files/preprocessed_dataset/spider_dk/dev_coref.json --dataset_name spider_dk --mode dev
