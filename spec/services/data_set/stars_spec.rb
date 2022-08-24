# frozen_string_literal: true

require 'rails_helper'

describe DataSet::Stars, type: :service do
  context 'Create data set anly top-100-stars' do
    it 'List all the top-100-stars' do
      data_set = DataSet::Stars.instance
      expect(data_set.rows.all?{|r| r["item"] == 'top-100-stars'}).to eq true
    end
  end
end

