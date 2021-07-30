json.cache! @memes do
  json.array! @memes do |meme|
    next if meme.private
    json.id meme.id
    json.name meme.name
    json.audio public_blob_url(meme.audio)
    json.commands meme.commands.pluck(:name)
  end
end
