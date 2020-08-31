class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index; end

  def cards; end

  def invoices; end

end