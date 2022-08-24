require 'csv'

module Csv
  class Read
    include Singleton

    def rows
      @rows ||= get_rows
    end

    private

    def get_rows
      records = []

      CSV.foreach(Rails.root.join('storage/rank.csv').to_s,
                  col_sep: ',',
                  headers: true,
                  encoding: "ISO8859-1:utf-8") do |row|
        hash = {}
        header.each { |h| hash[h] = row[h] }
        records << hash
      end

      records
    end

    private

    def header
      %w[rank item repo_name stars forks language repo_url username issues last_commit description]
    end
  end
end
