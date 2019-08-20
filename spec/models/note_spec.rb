require 'rails_helper'

RSpec.describe Note, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
    it { should validate_uniqueness_of(:title) }
  end
end
