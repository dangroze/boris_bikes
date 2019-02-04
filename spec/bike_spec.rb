require "bike"
describe Bike do
  subject { Bike.new }

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end
