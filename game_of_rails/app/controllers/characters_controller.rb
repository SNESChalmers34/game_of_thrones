class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(characters_params)
    @character.house_id = params[:character][:house].to_i
    @character.save

    redirect_to characters_path
  end

  def edit
    @character = Character.find(params[:id])
  end


  def update
    @character = Character.find(params[:id])
    @character.update(characters_params)

    redirect_to characters_path
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to characters_path
  end



  private
  def characters_params
    params.require(:character).permit(:name, :img_url, :alive, :bastard, :fireproof)

  end

end
