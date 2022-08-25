module DataSet
  class Base

    def rows
      raise NotImplementedError
    end

    private

    def table
      @table ||= Csv::Read.table
    end
  end
end
