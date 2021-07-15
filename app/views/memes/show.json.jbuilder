json.partial! 'memes/meme', meme: @meme
json.audio public_blob_url(@meme.audio_opus)
