class IscoThirdLevelGroup < ActiveRecord::Base
  # associations
  belongs_to :isco_second_level_group
  has_many :isco_fourth_level_groups

  # validations
  validates :code, presence: true, uniqueness: { scope: :isco_second_level_group_id }
  validates :name, presence: true
  validates :isco_second_level_group_id, presence: true
  
  def to_s
    "#{code} - #{name}"
  end
end
