module Rank
  module Filters
    class Forks < Base
      attr_accessor :item, :field, :top

      def initialize(data)
        super(field: data[:field],
              item:  data[:item],
              top:   data[:top])
      end

      private

      # overwrite
      def data_set
        @data_set ||= DataSet::Forks.new
      end

    end
  end
end
