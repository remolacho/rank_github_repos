# frozen_string_literal: true

require 'rails_helper'

describe DataSet::Forks, type: :service do
  context 'Create data set anly top-100-forks' do
    it 'List all the top-100-forks' do
      data_set = DataSet::Languages.new
      expect(data_set.rows.empty?).to eq false
      expect(data_set.rows.any?{|r| r["item"] == 'top-100-forks'}).to eq false
    end

    it 'List all the top-100-stars' do
      data_set = DataSet::Languages.new
      expect(data_set.rows.empty?).to eq false
      expect(data_set.rows.any?{|r| r["item"] == 'top-100-stars'}).to eq false
    end
  end
end

