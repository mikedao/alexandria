require 'rails_helper'

RSpec.describe BookUser, type: :model do
  describe 'relationships' do
    it { should belong_to :book }
    it { should belong_to :user }
  end
end