# == Schema Information
#
# Table name: favorite_jobs
#
#  id         :integer          not null, primary key
#  slug       :string
#  url        :string
#  metadata   :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FavoriteJob < ApplicationRecord
  validates :slug, :url, presence: :true
  validates_uniqueness_of :slug, on: :create, message: "is already taken"
end
