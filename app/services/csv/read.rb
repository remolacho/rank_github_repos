require 'csv'

module Csv
  class Read

    def self.table
      @table ||= get_rows
    end

    private

    def self.get_rows
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

    def self.header
      %w[rank item repo_name stars forks language repo_url username issues last_commit description]
    end
  end
end
