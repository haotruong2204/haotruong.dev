# frozen_string_literal: true

class Client::PostsController < Client::BaseController
  def show
    @post = Post.find_by(slug: params[:slug])
  end
end
