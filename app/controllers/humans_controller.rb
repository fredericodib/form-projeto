class HumansController < ApplicationController

  def new
    @language = 0



    if @language == 0
      @titulo = "Pesquisa Musical"
      @inicial_text = "Por favor, seja sincero com as respostas, e responda este formulário apenas uma vez"
      @seu_nome = "nome"
      @seu_pais = "país"
      @seu_conhecimento = "possui algum conhecimento musical?"
      @sim = "sim"
      @nao = "não"
      @tocaOUNtoca = "você toca algum instrumento?"
      @reordena = "ordene os fragmentos abaixo como desejar.";
      @enviar = "enviar"
    elsif @language == 1
      @titulo = "Musical Research"
      @inicial_text = "Please, be sincere in your answers, and answer this formulary only once"
      @seu_nome = "name"
      @seu_pais = "country"
      @seu_conhecimento = "do you have any musical background?"
      @sim = "yes"
      @nao = "no"
      @tocaOUNtoca = "do you play any instrument?"
      @reordena = "sort the audio frags below as you wish.";
      @enviar = "submit"
    end
  
    @human = Human.new
  end

  def create
    @human = Human.new(human_parms)

    if @human.save
      redirect_to root_path, success: "Formulario respondido com sucesso!"
    else
      redirect_to root_path, danger: "Por favor, preencha todos os campos"
    end
  end

  private

  def human_parms
    params.require(:human).permit(:name, :country, :knowledge, :skill)
  end
end
