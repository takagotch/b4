class Chats < ActiveRecord::Base
after_commit do
  BroadcastCommentJob.perform_later(self)
end

end

