require 'rails_helper'

describe UserAgentDetail, type: :model do
  describe '.submittable?' do
    it 'should be submittable' do
      detail = create(:user_agent_detail, :on_issue)
      expect(detail.submittable?).to be_truthy
    end
  end

  describe '.valid?' do
    it 'should be valid with a subject' do
      detail = create(:user_agent_detail, :on_issue)
      expect(detail).to be_valid
    end

    it 'should not be valid without a subject' do
      detail = build(:user_agent_detail)
      expect(detail).not_to be_valid
    end
  end
end
