class GossipsController < ApplicationController
  
  before_action :set_gossip, only: [:update, :edit, :show, :destroy]

  def new
    @new_gossip = Gossip.new
  end

  def create
    @new_gossip = Gossip.create(content: params[:gossip][:content], moussaillon_id: current_moussaillon.id)
    redirect_to gossip_path(@new_gossip.id)
  end

  def show
  end

  def edit
  end

  def update
    @gossip.update(content: params[:gossip][:content], moussaillon_id: current_moussaillon.id)
  end

  def destroy
    @gossip.destroy
  end

  private

  def set_gossip
    @gossip = Gossip.find(params[:id])
  end

end
