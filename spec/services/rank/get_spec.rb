# frozen_string_literal: true

require 'rails_helper'

describe Rank::Get, type: :service do
  context 'Validate allowed instances' do
    it 'the instance not found' do
      expect{Rank::Get.factory({kind: "test"})}.to raise_error(NotImplementedError)
    end

    it 'The rank filter stars' do
      data = {kind: "stars", field: 'language', item: 'JavaScript',  top: 2 }
      service = Rank::Get.factory(data)
      expect(service.kind_of? Rank::Filters::Stars).to eq true

    end

    it 'The rank filter forks' do
      data = {kind: "forks", field: 'language', item: 'JavaScript',  top: 2 }
      service = Rank::Get.factory(data)
      expect(service.kind_of? Rank::Filters::Forks).to eq true

    end

    it 'The rank filter languages JavaScript' do
      data = {kind: "languages", field: 'language', item: 'JavaScript',  top: 2 }
      service = Rank::Get.factory(data)
      expect(service.kind_of? Rank::Filters::Languages).to eq true
    end
  end
end