module Rank
  class Get

    def self.factory(data)
      return Rank::Filters::Stars.new(data) if data[:kind] == 'stars'
      return Rank::Filters::Forks.new(data) if data[:kind] == 'forks'
      return Rank::Filters::Languages.new(data) if data[:kind] == 'languages'

      raise NotImplementedError, 'you can not implement this search'
    end

  end
end
