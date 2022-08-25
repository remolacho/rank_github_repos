module Rank
  module Filters
    class Languages < Base
      attr_accessor :item, :field, :top

      def initialize(data)
        super(field: data[:field],
              item:  data[:item],
              top:   data[:top])
      end

      private

      # overwrite
      def data_set
        @data_set ||= DataSet::Languages.new
      end

    end
  end
end
