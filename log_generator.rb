require 'date'

LOG_LEVELS = ["ERROR", "WARN", "INFO", "DEBUG"]

def load_words
  if File.exist?('/usr/share/dict/words')
    File.readlines('/usr/share/dict/words').map(&:strip).reject { |w| w.length < 3 }
  else
    %w[apple banana cherry system database connection timeout failed success
       user request response server cluster cloud routine process thread]
  end
end

words_bank = load_words
filename = "logs_to_upload.txt"

# Open the file for writing ("w" mode overwrites existing content)
File.open(filename, "w") do |file|
  10000.times do
    timestamp = Time.now.strftime("%Y-%m-%d %H:%M:%S.%L")
    level = LOG_LEVELS.sample
    random_words = Array.new(5) { words_bank.sample }.join(' ')

    # Write the formatted line directly into the file
    file.puts "#{timestamp} #{level} #{random_words}"

    sleep(0.001)
  end
end

puts "Successfully generated 10000 log lines in '#{filename}'."