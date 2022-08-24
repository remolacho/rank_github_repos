# frozen_string_literal: true

require 'rails_helper'

describe DataSet::Forks, type: :service do
  context 'Create data set anly top-100-forks' do
    it 'List all the top-100-forks' do
      data_set = DataSet::Forks.instance
      expect(data_set.rows.all?{|r| r["item"] == 'top-100-forks'}).to eq true
    end
  end
end

