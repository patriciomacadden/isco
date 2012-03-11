class IscoFirstLevelGroupsController < ApplicationController
  # GET /isco_first_level_groups
  # GET /isco_first_level_groups.json
  def index
    @isco_first_level_groups = IscoFirstLevelGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @isco_first_level_groups }
    end
  end
end
