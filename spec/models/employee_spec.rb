require 'rails_helper'

RSpec.describe Employee, type: :model do
	describe '#name' do
   		it { should validate_presence_of(:name) }
	end
	describe '#designation_id' do
		it{ should belong_to(:designation)}
	end
end
