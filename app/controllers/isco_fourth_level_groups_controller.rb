class IscoFourthLevelGroupsController < ApplicationController
  before_filter :find_isco_third_level_group
  
  # GET /isco_fourth_level_groups
  # GET /isco_fourth_level_groups.json
  def index
    @isco_fourth_level_groups = @isco_third_level_group.isco_fourth_level_groups

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @isco_fourth_level_groups }
    end
  end
  
  private
  
  def find_isco_third_level_group
    @isco_third_level_group = IscoThirdLevelGroup.find(params[:isco_third_level_group_id])
  end
end
