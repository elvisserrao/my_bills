class CardsController < ApplicationController
  before_action :set_card, only: [:new, :edit]

  def new; end

  def edit; end

  def create
    @card = current_user.cards.new(card_params)

    if @card.save
      redirect_to cards_path, notice: 'Cartão adicionado com Sucesso'
    else
      render :new
    end
  end

  private

  def set_card
    @card = if params[:id]
              Card.find params[:id]
            else
              Card.new
            end
  end

  def card_params
    params.require(:card).permit(:name, :bank, :user_id)
  end

end