json.partial! 'memes/meme', meme: @meme
json.audio rails_blob_url(@meme.audio_opus)
