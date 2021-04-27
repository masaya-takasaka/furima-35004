class ItemsController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:image, :category_id, :status_id, :delivery_charge_id, :delivery_area_id, :delivery_days_id, :price ).merge(user_id: current_user.id)
  end
end
