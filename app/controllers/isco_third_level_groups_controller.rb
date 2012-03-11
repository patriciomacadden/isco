class IscoThirdLevelGroupsController < ApplicationController
  before_filter :find_isco_second_level_group
  
  # GET /isco_third_level_groups
  # GET /isco_third_level_groups.json
  def index
    @isco_third_level_groups = @isco_second_level_group.isco_third_level_groups

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @isco_third_level_groups }
    end
  end
  
  private
  
  def find_isco_second_level_group
    @isco_second_level_group = IscoSecondLevelGroup.find(params[:isco_second_level_group_id])
  end
end
