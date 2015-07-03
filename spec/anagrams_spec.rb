require 'anagrams'

describe Anagrams do

  describe "#generate_words" do

    let(:mock_words){["RETOOL", "ROOTLE", "TOOLER"]}
    let(:anagrams){Anagrams.new}

    it 'should use a mock file' do
      allow(File).to receive(:readlines).and_return(mock_words)
      anagrams.generate_words
      expect(anagrams.instance_variable_get(:@words)).to eq(mock_words)
    end

  end

  describe "#anagrams" do
    let(:mock_words){["RETOOL", "ROOTLE", "TOOLER",
                      "TEST","SHOULD","NOT","RETURN"]}
    let(:a){Anagrams.new}
    before do
      allow(File).to receive(:readlines).and_return(mock_words)
      a.generate_words
    end

    it 'should return proper anagrams of words (looter)' do
      expect(a.anagrams('looter')).to eq(["RETOOL", "ROOTLE", "TOOLER"])
    end

    it 'should return empty array for word with no anagram (zygote)' do
      expect(a.anagrams('zygote')).to eq([])
    end

    it 'should return 1 entry array for word with 1 anagram (test)' do
      expect(a.anagrams('test')).to eq(["TEST"])
    end
  end

end