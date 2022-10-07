require './string_analyzer'

describe StringAnalyzer do
  before :each do
    @str_analyzer = StringAnalyzer.new
  end
  context "With valid input" do
    it "should detect when a string contains vowels" do
      test_string = 'aei'
      expect(@str_analyzer.has_vowels?(test_string)).to be true
    end

    it "should detect when a string doesn't contain vowels" do
      test_string = 'sdmk'
      expect(@str_analyzer.has_vowels?(test_string)).to be false
    end

    it "should work with just one letter" do
      test_string = 'a'
      expect(@str_analyzer.has_vowels?(test_string)).to be true
    end

    it "should return true if it has at least one vowel and some consonants" do
      test_string = 'abcde'
      expect(@str_analyzer.has_vowels?(test_string)).to be true
    end

    it "should return false if it's an empty string" do
      expect(@str_analyzer.has_vowels?("")).to be false
    end

    it "should return true if it has vowels, consonants, numbers and other characters" do
      test_string = "abcd123.?"
      expect(@str_analyzer.has_vowels?(test_string)).to be true
    end

    it "should return false if it only contains numbers and other characters" do
      test_string = "123.??"
      expect(@str_analyzer.has_vowels?(test_string)).to be false
    end

    it "should return true if it only has upper case vowels" do
      test_string = "ABCD"
      expect(@str_analyzer.has_vowels?(test_string)).to be true
    end

    it "should return true if it has both upper case and lower case vowels" do
      test_string = "abCDe"
      expect(@str_analyzer.has_vowels?(test_string)).to be true
    end

    it "should return true if it has both upper and lower case vowels and consonants" do
      test_string = "brgfaiSWOU"
      expect(@str_analyzer.has_vowels?(test_string)).to be true
    end

    it "should return false if it has only upper case consonants" do
      test_string = "MWFT"
      expect(@str_analyzer.has_vowels?(test_string)).to be false
    end

    it "should return false for only whitespace characters" do
      expect(@str_analyzer.has_vowels?(" ")). to be false
    end
  end
end

