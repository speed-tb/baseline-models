from asr2k.app import read_app
lang_id = 'brx'
app = read_app(lang_id, f'./data/{lang_id}')
app.predict(f'./test/{lang_id}/A20240429062329637889-slice0006_Chapter_12_Elec_gNtmReZadMU&list=PLSKFrNqA_XH7TQZShnGoTiQHM_5D89Ntv&index=2_audio_16634_19469.wav')