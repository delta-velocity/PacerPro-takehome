class TestsController < ApplicationController
  def list
      @items = Item.all
  end

  def listall
      @items = Item.unscoped.all
  end
end
