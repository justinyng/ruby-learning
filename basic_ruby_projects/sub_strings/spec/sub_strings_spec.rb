# frozen_string_literal: true

require 'spec_helper'
require_relative '../sub_strings'

RSpec.describe 'sub_strings exercise' do
  describe 'single word returns hash listing matching substring counts' do
    it 'works for finding full length string' do
      dictionary = %w[monday tuesday monday wednesday]
      expect(substrings('monday', dictionary)).to eq({ 'monday' => 2 })
    end

    it 'works for finding substrings' do
      dictionary = %w[below down go going horn how howdy it i low own part partner sit]
      expect(substrings('below', dictionary)).to eq({ 'below' => 1, 'low' => 1 })
    end
  end

  describe 'works for multiple words too!' do
    it 'works for finding full length string' do
      dictionary = %w[monday tuesday monday wednesday]
      expect(substrings('monday tuesday', dictionary)).to eq({ 'monday' => 2, 'tuesday' => 1 })
    end

    it 'works for finding substrings' do
      dictionary = %w[below down go going horn how howdy it i low own part partner sit]
      expect(substrings("Howdy partner, sit down! How's it going?",
                        dictionary)).to eq({ 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2,
                                             'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1,
                                             'part' => 1, 'partner' => 1, 'sit' => 1 })
    end
  end
end
