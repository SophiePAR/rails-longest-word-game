class GamesController < ApplicationController
  require "open-uri"
  def new
    #Créer un tableau random avec 10 lettres et le stocker en variable
    # Demander à la view de montrer la grille
    #Création d'un form qui demande un put au user via la view
    # demander à la view de montrer le formulaire
    @letters = 10.times.map { [*'A'..'Z'].sample }.join
  end

  def score
    #Récupère la réponse de l'utilisateur via la view (avec POST?)
    if word_exist(params[:word])
      #check if word ok with chars
      #compute score
    end
  end

  private

  def word_exist(word)
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    user_serialized = URI.open(url).read
    userword = JSON.parse(user_serialized)
    userword["found"]
  end
end
