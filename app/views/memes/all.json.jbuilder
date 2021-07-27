json.array! @memes do |meme|
  next if meme.private
  json.id meme.id
  json.name meme.name
  json.url meme_url(meme, format: :json)
  json.commands meme.commands.pluck(:name)
end
