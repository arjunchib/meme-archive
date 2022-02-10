json.cache! @memes do
  json.array! @memes do |meme|
    next if meme.private
    json.id meme.id
    json.name meme.name
    json.source_url meme.source_url
    json.start meme.start
    json.end meme.end
    json.audio public_blob_url(meme.audio)
    json.audio_opus public_blob_url(meme.audio_opus)
    json.commands meme.commands.pluck(:name)
    json.tags meme.tags.pluck(:name)
  end
end
