class HumansController < ApplicationController

  def new  
    @human = Human.new
  end

  def create
    @human = Human.new(human_parms)

    if @human.save
      redirect_to unauthenticated_root_path, notice: "Formulario respondido com sucesso!"
    else
      redirect_to unauthenticated_root_path, danger: "Por favor, preencha todos os campos"
    end
  end

  private

  def human_parms
    params.require(:human).permit(:name, :country, :knowledge, :skill, :q1, :q2, :q3, :q4, :q5, :q6)
  end
end
