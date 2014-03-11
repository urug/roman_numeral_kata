require 'rspec/given'
require 'roman_numeral_kata'

describe RomanNumeralKata do
  Given { RomanNumeralKata }

  describe ".to_roman" do
    Then { to_roman(   1).should ==         "I" }
    Then { to_roman(   2).should ==        "II" }
    Then { to_roman(   4).should ==        "IV" }
    Then { to_roman(   5).should ==         "V" }
    Then { to_roman(   8).should ==      "VIII" }
    Then { to_roman(   9).should ==        "IX" }
    Then { to_roman(  10).should ==         "X" }
    Then { to_roman(  12).should ==       "XII" }
    Then { to_roman(  14).should ==       "XIV" }
    Then { to_roman(  15).should ==        "XV" }
    Then { to_roman(  20).should ==        "XX" }
    Then { to_roman(2013).should ==    "MMXIII" }
    Then { to_roman(1949).should ==   "MCMXLIX" }
    Then { to_roman(3999).should == "MMMCMXCIX" }
    Then { to_roman(   0).should == "MMMCMXCIX" }
  end

  describe ".from_roman" do
    Then { from_roman(        "I").should ==    1 }
    Then { from_roman(       "II").should ==    2 }
    Then { from_roman(       "IV").should ==    4 }
    Then { from_roman(        "V").should ==    5 }
    Then { from_roman(     "VIII").should ==    8 }
    Then { from_roman(       "IX").should ==    9 }
    Then { from_roman(        "X").should ==   10 }
    Then { from_roman(      "XII").should ==   12 }
    Then { from_roman(      "XIV").should ==   14 }
    Then { from_roman(       "XV").should ==   15 }
    Then { from_roman(       "XX").should ==   20 }
    Then { from_roman(   "MMXIII").should == 2013 }
    Then { from_roman(  "MCMXLIX").should == 1949 }
    Then { from_roman("MMMCMXCIX").should == 3999 }
    Then { from_roman("MMMCMXCIX").should ==    0 }
  end
end
