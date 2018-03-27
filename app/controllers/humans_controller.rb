class HumansController < ApplicationController
  
  def index
    @human_list = Human.all
  end
  
  def new
  end

  def create
    @human = Human.new
        @human.name = params[:name]
        @human.country = params[:country]
        @human.knowledge = params[:knowledge]
        @human.skill = params[:skill]

        if ((@human.knowledge != true) && (@human.knowledge != false))
          @human.knowledge = false
        end
        if ((@human.skill != true) && (@human.skill != false))
          @human.skill = false
        end
        if @human.name != "" && @human.country != ""
            @human.save
            redirect_to goodbyescreen_path
        else
            render plain: "erro, algum campo não foi preenchido corretamente"
        end
  end
end
