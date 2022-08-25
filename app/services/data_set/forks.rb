module DataSet
  class Forks < Base
    def rows
      @rows ||= table.select{|r| r["item"] == "top-100-forks" }
    end
  end
end

