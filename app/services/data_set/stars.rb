module DataSet
  class Stars < Base
    include Singleton

    def rows
      @rows ||= table.rows.select{|r| r["top-100-stars"]}
    end

  end
end
