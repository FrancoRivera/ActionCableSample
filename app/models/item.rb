class Item < ApplicationRecord

  def index
    ItemsChannel.broadcast('somebody got in')
  end
end
