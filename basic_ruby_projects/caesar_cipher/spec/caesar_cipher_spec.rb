require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'caesar cipher exercise' do
  describe 'should encrypt messages' do
    it 'works with small positive shift' do
      expect(caesar_cipher('Zz', 5)).to eql('Ee')
    end

    it 'works with small negative shift' do
      expect(caesar_cipher('Ee', -5)).to eql('Zz')
    end

    it 'works with large positive shift' do
      expect(caesar_cipher('Zz', 83)).to eql('Ee')
    end

    it 'right shifts by 5' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end
  end
end
