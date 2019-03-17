require 'rails_helper'

RSpec.describe Tag, type: :model do
	describe '#name' do
   		it { should validate_presence_of(:name) }
	end
end
