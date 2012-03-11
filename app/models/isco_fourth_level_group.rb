class IscoFourthLevelGroup < ActiveRecord::Base
  # associations
  belongs_to :isco_third_level_group

  # validations
  validates :code, presence: true, uniqueness: { scope: :isco_third_level_group_id }
  validates :name, presence: true
  validates :isco_third_level_group_id, presence: true
  
  def to_s
    "#{code} - #{name}"
  end
end
