require 'rspec/given'
require 'roman_numeral_kata'

describe RomanNumeralKata do
  Given { RomanNumeralKata }

  describe ".to_roman" do
    Then { subject.to_roman(   1).should ==         "I" }
    Then { subject.to_roman(   2).should ==        "II" }
    Then { subject.to_roman(   4).should ==        "IV" }
    Then { subject.to_roman(   5).should ==         "V" }
    Then { subject.to_roman(   8).should ==      "VIII" }
    Then { subject.to_roman(   9).should ==        "IX" }
    Then { subject.to_roman(  10).should ==         "X" }
    Then { subject.to_roman(  12).should ==       "XII" }
    Then { subject.to_roman(  14).should ==       "XIV" }
    Then { subject.to_roman(  15).should ==        "XV" }
    Then { subject.to_roman(  20).should ==        "XX" }
    Then { subject.to_roman(2013).should ==    "MMXIII" }
    Then { subject.to_roman(1949).should ==   "MCMXLIX" }
    Then { subject.to_roman(3999).should == "MMMCMXCIX" }
    Then { subject.to_roman(   0).should == "MMMCMXCIX" }
  end

  describe ".from_roman" do
    Then { subject.from_roman(        "I").should ==    1 }
    Then { subject.from_roman(       "II").should ==    2 }
    Then { subject.from_roman(       "IV").should ==    4 }
    Then { subject.from_roman(        "V").should ==    5 }
    Then { subject.from_roman(     "VIII").should ==    8 }
    Then { subject.from_roman(       "IX").should ==    9 }
    Then { subject.from_roman(        "X").should ==   10 }
    Then { subject.from_roman(      "XII").should ==   12 }
    Then { subject.from_roman(      "XIV").should ==   14 }
    Then { subject.from_roman(       "XV").should ==   15 }
    Then { subject.from_roman(       "XX").should ==   20 }
    Then { subject.from_roman(   "MMXIII").should == 2013 }
    Then { subject.from_roman(  "MCMXLIX").should == 1949 }
    Then { subject.from_roman("MMMCMXCIX").should == 3999 }
    Then { subject.from_roman("MMMCMXCIX").should ==    0 }
  end
end
