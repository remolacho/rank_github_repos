# frozen_string_literal: true

require 'rails_helper'

describe Rank::Get, type: :service do
  context 'Validate allowed instances' do
    it 'the instance not found' do
      expect{Rank::Get.build({kind: "test"})}.to raise_error(NotImplementedError)
    end
  end
end