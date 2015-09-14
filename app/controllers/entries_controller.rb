class EntriesController < ApplicationController
  respond_to :json
  
  def index
    puts "entries controller respond_with Entry.all"
    respond_with Entry.all
  end
  
  def show
    puts "entries controller respond_with Entry.find(params[:id])"
    respond_with Entry.find(params[:id])
  end
  
  def create
    puts "entries controller respond_with Entry.create(entry_params)"
    respond_with Entry.create(entry_params)
  end
  
  def update
    puts "entries controller respond_with Entry.update(params[:id], entry_params)"
    respond_with Entry.update(params[:id], entry_params)
  end
  
  def destroy
    puts "entries controller respond_with Entry.destroy(params[:id])"
    respond_with Entry.destroy(params[:id])
  end

private
  def entry_params
    params.require(:entry).permit(:name, :winner)
  end
end
