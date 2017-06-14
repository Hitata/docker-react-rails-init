require 'rails_helper'

RSpec.describe Skill, type: :model do
  it {should belong_to(:job_category)}

  it {should have_many(:skillables).dependent(:destroy)}

  it {should validate_presence_of(:name_en)}
  it {should validate_presence_of(:name_ja)}
end
