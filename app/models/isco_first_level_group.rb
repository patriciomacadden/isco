class IscoFirstLevelGroup < ActiveRecord::Base
  # associations
  has_many :isco_second_level_groups

  # validations
  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
  
  def to_s
    "#{code} - #{name}"
  end
end
