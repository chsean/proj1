class PokemonsController < ApplicationController

  def capture
    pokemon_id = params[:id]
    pokemon = Pokemon.find(pokemon_id)
    #puts('trainer id is: ' + current_trainer.id.to_s)
    pokemon.trainer_id = current_trainer.id
    pokemon.save
    redirect_to '/'
  end

  def damage
    pokemon_id = params[:pokemon_id]
    pokemon = Pokemon.find(pokemon_id)
    pokemon.health -= 10
    #puts('pokemon health is: ' + pokemon.health.to_s)
    if pokemon.health <= 0
      pokemon.destroy
    else
      pokemon.save
    end

    redirect_to trainer_path(current_trainer.id)
  end



  def new
      @pokemon = Pokemon.new

  end

  def create
      #puts('name passed in: ' + params[:pokemon][:name].to_s)
      pokemon = Pokemon.new
      pokemon.update(pokemon_params)
      pokemon.health = 100
      pokemon.level = 1
      pokemon.trainer_id = current_trainer.id

      if !pokemon.valid?
        flash[:error] = pokemon.errors.full_messages.to_sentence
        redirect_to pokemon_path
      else
        pokemon.save
        redirect_to trainer_path(current_trainer.id)
      end
  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end


end
