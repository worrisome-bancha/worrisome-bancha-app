class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end


  
  def create

    @list = List.new(name: params[:list][:name], uid: cookies[:uid])

    if @list.save
      redirect_to root_path
    else
      raise ActionController::RoutingError, 'Error saving'
    end
  end

  def show
    @list = List.find(params[:id])
    if @list.uid != cookies[:uid]
      raise ActionController::RoutingError, 'Not Found'
    end
    @list_entries = @list.ListEntries
    @list_entry = ListEntry.new
  end

  def create_entry
    @list = List.find(params[:id])
    if @list.uid != cookies[:uid]
      raise ActionController::RoutingError, 'Not Found'
    end

    @list_entry = ListEntry.new(description: params[:list_entry][:description], list:@list)

    if @list_entry.save
      redirect_back(fallback_location: root_path)

    else
      raise ActionController::RoutingError, 'Error saving'
    end
  end


  def api_get
    
end
