require 'rspec/given'
require 'roman_numeral_kata'

describe RomanNumeralKata do
  Given { RomanNumeralKata }

  Then { convert(1).should == "I" }
  Then { convert(2).should == "II" }
  Then { convert(4).should == "IV" }
  Then { convert(5).should == "V" }
  Then { convert(8).should == "VIII" }
  Then { convert(9).should == "IX" }
  Then { convert(10).should == "X" }
  Then { convert(12).should == "XII" }
  Then { convert(14).should == "XIV" }
  Then { convert(15).should == "XV" }
  Then { convert(20).should == "XX" }
  Then { convert(2013).should == "MMXIII" }
  Then { convert(1949).should == "MCMXLIX" }
  Then { convert(3999).should == "MMMCMXCIX" }
  Then { convert(0).should == "MMMCMXCIX" }
end
