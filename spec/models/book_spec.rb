require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title)}

    it { should validate_presence_of(:isbn)}
    it { should validate_uniqueness_of(:isbn)}
  end

  describe 'relationships' do
    it { should have_many :book_users }
    it { should have_many(:users).through(:book_users)}
  end
end