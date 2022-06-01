require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'caesar cipher exercise' do
  describe 'should encrypt messages' do
    it 'right shifts by 5' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end
  end
end
