class IscoSecondLevelGroup < ActiveRecord::Base
  # associations
  belongs_to :isco_first_level_group
  has_many :isco_third_level_groups

  # validations
  validates :code, presence: true, uniqueness: { scope: :isco_first_level_group_id }
  validates :name, presence: true
  validates :isco_first_level_group_id, presence: true
  
  def to_s
    "#{code} - #{name}"
  end
end
