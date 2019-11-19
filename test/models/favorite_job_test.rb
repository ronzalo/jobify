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

require 'test_helper'

class FavoriteJobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
