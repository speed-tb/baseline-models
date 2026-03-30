# change DB_PATH to yours
DB_PATH=/path/to/train.tsv
LANG_ID=brx
NGRAM=3

if [ ! -d "$DB_PATH" ]; then
  echo "Error: Directory $DB_PATH does not exist. change it to your local CV path"
  exit 1
fi

echo "prep raw text"
mkdir -p data
head -n 10000 $DB_PATH | cut -d $'\t' -f2 | sed '1d' > ./data_$LANG_ID/raw.txt
python -m asr2k.bin.clean_text -i ./data/$LANG_ID/raw.txt -o ./data/$LANG_ID/train_raw.txt

echo "train language model"
python -m asr2k.bin.prep_text_lm --lang_dir=./data/$LANG_ID --lang_id=brx --ngram=$NGRAM
