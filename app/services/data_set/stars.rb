module DataSet
  class Stars < Base
    def rows
      @rows ||= table.select{|r| r["item"] == "top-100-stars" }
    end
  end
end
