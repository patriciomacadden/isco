class IscoSecondLevelGroupsController < ApplicationController
  before_filter :find_isco_first_level_group
  
  # GET /isco_second_level_groups
  # GET /isco_second_level_groups.json
  def index
    @isco_second_level_groups = @isco_first_level_group.isco_second_level_groups

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @isco_second_level_groups }
    end
  end
  
  private
  
  def find_isco_first_level_group
    @isco_first_level_group = IscoFirstLevelGroup.find(params[:isco_first_level_group_id])
  end
end
