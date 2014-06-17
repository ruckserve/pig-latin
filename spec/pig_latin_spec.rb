require './lib/pig_latin'
require 'pry-debugger'

describe 'PigLatin::PigLatin' do
  describe '.self.translate' do
    it "Parses pig latin with no 'y's correctly" do
      word = "nix"
      piggy_word = "ixnay"

      expect(PigLatin::PigLatin.translate(word)).to eq(piggy_word)
    end

    it "Parses pig latin with 'y's as consonants" do
      word = "yellow"
      piggy_word = "ellowyay"

      expect(PigLatin::PigLatin.translate(word)).to eq(piggy_word)
    end

    it "Parses pig latin with 'y's as vowels" do
      word = "rhythm"
      piggy_word = "ythmrhay"

      expect(PigLatin::PigLatin.translate(word)).to eq(piggy_word)
    end

    it "Parses pig latin with first letter vowels" do
      word = "apple"
      piggy_word = "appleway"

      expect(PigLatin::PigLatin.translate(word)).to eq(piggy_word)
    end

  end
end
