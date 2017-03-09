require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'who has existing role' do
    fixtures :roles

    let(:role) { Role.first }
    let(:user) { User.new(roles: [role]) }

    context 'when created' do
      subject { user.save }

      it { is_expected.to be true }
    end
  end
end
