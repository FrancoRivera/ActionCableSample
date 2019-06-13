class ItemsController < ActionController::Base
    protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def create
    ActionCable.server.broadcast("items_2", {
      name: params["name"]
    })
  end
  def index
    render "index"
  end
end
