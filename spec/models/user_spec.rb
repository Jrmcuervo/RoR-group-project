require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'steev', email: 'josphat@example.com', password: '123456')
  end
  before { subject.save }

  it 'name should not be nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should valid the name' do
    subject.name = 'Josphat'
    expect(subject).to be_valid
  end
end
