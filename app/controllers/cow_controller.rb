class CowController < ApplicationController
  def index
    num = (params[:count] || 20).to_i
    @cows = Cow.all(num)
  end

  def create
    Cow.new(params[:cow][:name]).save

    redirect_to({ :action => :index })
  end

  def delete
    Cow.find_by_name(params[:cow][:name]).destroy

    redirect_to({ :action => :index })
  end
end
