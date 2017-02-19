require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build :user }
  subject { user }

  describe 'validations' do
    context 'when admin = true' do
      before(:each) { user.admin = true }
      it { is_expected.to validate_uniqueness_of(:admin)  }
    end
  end
end
