# frozen_string_literal: true

class Client::DashboardController < Client::BaseController
  def index
    @q = Post.ransack params[:q]
    @pagy, @posts = pagy(@q.result.where(status: true).order(created_at: :desc))
  end
end
