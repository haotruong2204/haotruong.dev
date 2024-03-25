# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id              :bigint           not null, primary key
#  content         :text(65535)
#  cover_image     :string(255)
#  description     :text(65535)
#  readtime        :integer
#  seo_description :text(65535)
#  seo_title       :string(255)
#  slug            :string(255)
#  status          :integer          default(1)
#  title           :string(255)
#  view_count      :integer          default(0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  category_id     :bigint
#
class Post < ApplicationRecord
end
