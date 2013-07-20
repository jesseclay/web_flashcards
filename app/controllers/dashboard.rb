get '/user_dashboard' do
  @decks = Deck.all
  p Deck.all
  erb :user_dashboard
end

post '/start_round' do
  deck = Deck.find_by_name(params[:deck_name])
  card_array = deck.map(&:cards)

  card_array.dup.map do |card|
    card.definition  # show definition
    card.term        # show term
    # think we want to do this stuff in the views
  end
end
