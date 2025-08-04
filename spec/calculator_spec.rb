require 'calculator.rb'

RSpec.describe Calculator do
  it 'creates a Calculator class' do
    calc = Calculator.new
    expect(calc).to be_kind_of(Calculator)
  end
end