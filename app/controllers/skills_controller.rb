class SkillsController < ApiController
  before_action :set_skill, only: [:show, :update, :destroy]

  # GET /skills
  def index
    @skills = Skill.all
    json_response(@skills)
  end

  # POST /skills
  def create
    @skill = Skill.create!(skill_params)
    json_response(@skill, :created)
  end

  # GET /skills/:id
  def show
    json_response(@skill)
  end

  # PUT /skills/:id
  def update
    @skill.update(skill_params)
    head :no_content
  end

  # DELETE /skills/:id
  def destroy
    @skill.destroy
    head :no_content
  end

  private

  def skill_params
    params.permit(
      :name_en,
      :name_ja
      )
  end

  def set_skill
    @skill = Skill.find(params[:id])
  end
end