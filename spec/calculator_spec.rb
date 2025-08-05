require 'calculator.rb'

RSpec.describe Calculator do
  it 'creates a Calculator class' do
    calc = Calculator.new
    expect(calc).to be_kind_of(Calculator)
  end

  it 'adds nothing' do
    calc = Calculator.new
    expect(calc).to respond_to("add")
  end

  ## argument should always be 1.
  it 'adds allows argument' do
    expect(Calculator.new.method(:add).arity).to eq(1)
  end

end