namespace :db do
  task :reset_id => :environment do

      ActiveRecord::Base.connection.tables.each do |table|
        result = ActiveRecord::Base.connection.execute("SELECT id FROM #{table} ORDER BY id DESC LIMIT 1") rescue ( puts "Warning: not procesing table #{table}. Id is missing?" ; next )
        ai_val = result.any? ? result.first['id'].to_i + 1 : 1
        puts "Resetting auto increment ID for #{table} to #{ai_val}"
      ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH #{ai_val}")
    end

  end
end

