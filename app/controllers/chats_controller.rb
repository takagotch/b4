class ChatsController < ApplicatoinController

def create
	@comment = Comment.create(comment_params)
end

end

