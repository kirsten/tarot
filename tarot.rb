require_relative 'lib/reading'

args = ARGV[0].to_i
reading_options = args > 0 ? { amount: args } : {}
Reading.new(reading_options).display

