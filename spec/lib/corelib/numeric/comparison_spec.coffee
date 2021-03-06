describe "Numeric#<=>", ->
  beforeEach ->
    @obj = NumericSpecs.Subclass.new()

  it "returns 0 if self equals other", ->
    expect(@obj['<=>'] @obj).toEqual 0

  it "returns nil if self does not equal other", ->
    expect(@obj['<=>'] NumericSpecs.Subclass.new()).toEqual null
    expect(@obj['<=>'] 10).toEqual null
    expect(@obj['<=>'] -3.5).toEqual null
    # expect(@obj['<=>'] bignum_value).toEqual null

  # describe "with subclasses of Numeric", ->
  #   before :each do
  #     @a = NumericSpecs.Comparison.new()
  #     @b = NumericSpecs.Comparison.new()

  #     ScratchPad.clear
  
  #   it "is called when instances are compared with #<", ->
  #     (@a < @b).should be_false
  #     ScratchPad.recorded.should == :numeric_comparison
  
  #   it "is called when instances are compared with #<=", ->
  #     (@a <= @b).should be_false
  #     ScratchPad.recorded.should == :numeric_comparison
  
  #   it "is called when instances are compared with #>", ->
  #     (@a > @b).should be_true
  #     ScratchPad.recorded.should == :numeric_comparison
  
  #   it "is called when instances are compared with #>=", ->
  #     (@a >= @b).should be_true
  #     ScratchPad.recorded.should == :numeric_comparison
