class ItemsController < ApplicationController

  def index
    @item = Item.new
  end

end
