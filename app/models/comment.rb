# frozen_string_literal: true

# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :integer          not null
#  comment_id :integer
#  post_id    :integer          not null
#
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :account
  has_many :subcomments, class_name: "Comment", foreign_key: "comment_id", dependent: :destroy

  validates :content, presence: true

  scope :select_parent_comment, -> { where(comment_id: nil) }
  scope :select_sub_comment, ->(id) { where comment_id: id }
end
