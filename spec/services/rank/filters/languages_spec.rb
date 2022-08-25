# frozen_string_literal: true

require 'rails_helper'

describe Rank::Filters::Languages, type: :service do
  context 'Search in the data set languages' do
    it 'get list empty' do
      service = Rank::Filters::Languages.new({field: 'language', item: 'Error',  top: 10 })
      expect(service.call.empty?).to eq true
    end

    it 'get list the rank 10 by languages C' do
      service = Rank::Filters::Languages.new({field: 'item', item: 'C',  top: 10 })
      results = service.call
      expect(results.size == 10).to eq true
      expect(results.all?{|r| r['language'] == 'C'}).to eq true
      expect(results.all?{|r| r['item'] == 'C'}).to eq true
    end

    it 'get list the rank 10 by languages ActionScript' do
      service = Rank::Filters::Languages.new({field: 'item', item: 'ActionScript',  top: 10 })
      results = service.call
      expect(results.size == 10).to eq true
      expect(results.all?{|r| r['language'] == 'ActionScript'}).to eq true
      expect(results.all?{|r| r['item'] == 'ActionScript'}).to eq true
    end

    it 'get list the rank 10 by languages CSharp' do
      service = Rank::Filters::Languages.new({field: 'item', item: 'CSharp',  top: 10 })
      results = service.call
      expect(results.size == 10).to eq true
      expect(results.all?{|r| r['language'] == 'C#'}).to eq true
      expect(results.all?{|r| r['item'] == 'CSharp'}).to eq true
    end
  end
end