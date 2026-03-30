# BASELINE MODELS (SPEED-TB)

## Train and Test your model using asr2k

### Steps

1. Go to asr2k folder and install the dependencies and requirements given there
2. Change the required variables inside asr2k/train.sh and run the script to train the model.
3. In order to improve the model, you can download more data into the respective data folders and run again. Currently raw TSV data is inside the DB_PATH (can be any path on your system - change in the train.sh script). The script prepares the data in required format and trains the language model to be used by asr2k for inference.
4. For inference use run.py. Change language ID and file path to run inference on the data from given language.

### Data and Model Paths

Sample train data is inside `bodo_data` directory (for Bodo).

Sample test file is inside `test/brx` directory (for Bodo).

The trained model and cleaned train files are inside `data/brx` directory (for Bodo).