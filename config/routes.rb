PoeRails::Engine.routes.draw do
  get "cheat_sheet" => "cheat_sheet#index"
  get "divided_emojis" => "cheat_sheet#poe_divided_emojis"
  get "categories" => "cheat_sheet#poe_categories"
end
