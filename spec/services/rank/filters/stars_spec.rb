# frozen_string_literal: true

require 'rails_helper'

describe Rank::Filters::Stars, type: :service do
  context 'Search in the data set stars' do
    it 'get list empty' do
      service = Rank::Filters::Stars.new({field: 'language', item: 'Error',  top: 2 })
      expect(service.call.empty?).to eq true
    end

    it 'get list the rank 2 by languages JavaScript' do
      service = Rank::Filters::Stars.new({field: 'language', item: 'JavaScript',  top: 2 })
      results = service.call
      expect(results.size == 2).to eq true
      expect(results.all?{|r| r['language'] == 'JavaScript'}).to eq true
      expect(results.all?{|r| r['item'] == 'top-100-stars'}).to eq true
    end
  end
end
