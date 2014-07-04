json.array!(@games) do |game|
  json.extract! game, :id, :played, :buyin, :buyout
  json.url game_url(game, format: :json)
end
