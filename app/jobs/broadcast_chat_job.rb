class BroadcastCommentJob < Application
queue_as :default

def perform(chats_obj)
  ActionCable.server.broadcast "chat_channel",
    add_comment: comment_obj.content
end

end

