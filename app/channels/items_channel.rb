# frozen_string_literal: true

# app/channels/items_channel.rb

# this is the channel for Items
class ItemsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'items_2'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
