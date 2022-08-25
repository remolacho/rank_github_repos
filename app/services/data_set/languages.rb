module DataSet
  class Languages < Base
    def rows
      @rows ||= table.select{|r| r["item"] != "top-100-stars" && r["item"] !="top-100-forks"}
    end
  end
end

