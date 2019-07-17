require 'rails_helper'

RSpec.describe Kindergarten, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :kommun }
    it { is_expected.to have_db_column :address }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :kommun }
    it { is_expected.to validate_presence_of :address }    
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:kindergarten)).to be_valid 
    end
  end

  describe 'Associations' do
    it { should have_and_belong_to_many(:users) }
  end
end
