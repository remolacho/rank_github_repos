module Rank
  module Filters
    class Base
      attr_accessor :item, :field, :top

      def initialize(field:, item:, top:)
        @field = field
        @item = item
        @top = top.to_i
      end

      def call
        search[0..top-1]
      end

      private

      def data_set
        raise NotImplementedError
      end

      def group
        @group ||= data_set.rows.group_by{ |r| r[field] }
      end

      def records
        @records ||= group[item] || []
      end

      def search
        @search ||= records.sort_by{|r| r['rank']}
      end
    end
  end
end
