module DataSet
  class Languages < Base
    include Singleton

    def rows
      @rows ||= table.rows.select{|r| !r["top-100-forks"] && !r["top-100-forks"]}
    end

  end
end

