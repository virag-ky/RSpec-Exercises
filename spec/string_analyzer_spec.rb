require './string_analyzer'

describe StringAnalyzer do
  context "With valid input" do
    it "should detect when a string contains vowels" do
      str_analyzer = StringAnalyzer.new
      test_string = 'aei'
      expect(str_analyzer.has_vowels?(test_string)).to be true
    end

    it "should detect when a string doesn't contain vowels" do
      str_analyzer = StringAnalyzer.new
      test_string = 'sdmk'
      expect(str_analyzer.has_vowels?(test_string)).to be false
    end
  end
end

