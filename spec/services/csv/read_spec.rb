# frozen_string_literal: true

require 'rails_helper'

describe Csv::Read, type: :service do
  context 'Read file CSV' do
    it 'verify if it is not empty' do
      expect(Csv::Read.table.empty?).to eq false
    end
  end
end
