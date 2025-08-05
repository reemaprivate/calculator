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


  it 'add only accepts string argument' do
    calc = Calculator.new
    msg = calc.add([1,3])
    expect(msg).to include("Please pass string as input")
  end

  it 'add with empty string argument' do
    calc = Calculator.new
    val = calc.add("")
    expect(val).to eql(0)
  end

  it 'add with valid numbers separated by comma' do
    calc = Calculator.new
    val = calc.add("3,5")
    expect(val).to eql(8)
  end

end