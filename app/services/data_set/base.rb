module DataSet
  class Base

    def rows
      raise NotImplementedError
    end

    private

    def table_items
      @table_items ||= table.rows.group_by{|d| d["item"]}
    end

    def table
      @table ||= Csv::Read.instance
    end
  end
end
