# frozen_string_literal: true

class Admin::CategoriesController < Admin::BaseController
  # before_action :load_category, only: [:edit, :update, :destroy]

  # def index
  #   @q = Category.ransack(params[:q])
  #   @categories = @q.result.order(created_at: :desc).page(params[:page]).per Settings.pagination.default
  #   @header_category = true
  # end

  # def new
  #   @category = Category.new
  # end

  # def create
  #   @category = Category.new category_params

  #   if @category.save
  #     flash[:success] = "The save was successful."
  #     redirect_to admin_categories_path
  #   else
  #     render :new
  #   end
  # end

  # def edit
  # end

  # def update
  #   if @category.update category_params
  #     flash[:success] = "The save was successful."
  #     redirect_to admin_categories_path
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   flash[:success] = "The delete was successful." if @category.destroy
  # end

  # def delete_image_attachment
  #   @image = ActiveStorage::Attachment.find(params[:id])
  #   @image.purge_later
  # end

  # private

  # def load_category
  #   @category = Category.find(params[:id])
  # end

  # def category_params
  #   params.require(:category).permit Category::ATTRS
  # end
end
