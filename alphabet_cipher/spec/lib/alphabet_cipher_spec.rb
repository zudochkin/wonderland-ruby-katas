require_relative '../../lib/alphabet_cipher'

RSpec.describe AlphabetCipher do
  describe '.encode' do
    it 'returns valid encoded message' do
      encoded_message = AlphabetCipher.encode('vigilance', 'meetmeontuesdayeveningatseven')

      expect(encoded_message).to eq('hmkbxebpxpmyllyrxiiqtoltfgzzv')
    end
  end

  describe '.decode' do
    it 'returns valid decoded message' do
      decoded_message = AlphabetCipher.decode('vigilance', 'hmkbxebpxpmyllyrxiiqtoltfgzzv')

      expect(decoded_message).to eq('meetmeontuesdayeveningatseven')
    end
  end
end
