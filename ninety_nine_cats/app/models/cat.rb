# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
include ActionView::Helpers::DateHelper

class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :sex, presence: true
  validate age
  
  #validates the age if the time is the future 
  def age
    birth_date > Time.now
  end
end
