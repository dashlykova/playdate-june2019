require 'rails_helper'

RSpec.describe Playdate, type: :model do
    describe 'DB table' do
        it { is_expected.to have_db_column :name}
        it { is_expected.to have_db_column :email }
        it { is_expected.to have_db_column :date }
        it { is_expected.to have_db_column :letter }
      end
    
      describe 'Validations' do
        it { is_expected.to validate_presence_of :name }
        it { is_expected.to validate_presence_of :email }
        it { is_expected.to validate_presence_of :date } 
        it { is_expected.to validate_presence_of :letter } 
      end
    
      describe 'Factory' do
        it 'should have valid Factory' do
          expect(FactoryBot.create(:playdate)).to be_valid 
        end
      end
end
