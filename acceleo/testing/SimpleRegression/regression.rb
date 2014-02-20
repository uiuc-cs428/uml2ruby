class Test

  def initialize(name, expectedDir = "expected", autogenDir = "autogen")
    @name = name
    @baseDir = "test/#{name}"
    @expectedDir = "#{@baseDir}/#{expectedDir}"
    @autogenDir = "#{@baseDir}/#{autogenDir}"
  end

  def run()
    success = true
    puts "[#{@name}]"

    # iterate each Ruby file that was generated
    expectedFiles = Dir.glob("#{@expectedDir}/*.rb")

    if expectedFiles.size == 0
      puts "No expected files found"
      raise "No expected files found"
    end
        
    expectedFiles.each do |expected|

      # correlate autogen code to its expected couterpart
      autogen = expected.gsub(@expectedDir, @autogenDir).gsub("Expected", "")

      if File.exists?(autogen)
        generatedCode = File.open(autogen).readlines
        expectedCode = File.open(expected).readlines
        if generatedCode == expectedCode
          puts "  [+] #{File.basename(autogen)} == #{File.basename(expected)}"
        else
          puts "  [-] #{File.basename(autogen)} != #{File.basename(expected)}"
          success = false
        end
      else
        puts "  [-] Could not find autogen file #{File.basename(autogen)}"
        success = false
      end
    end
    success
  end

end

def main()
  testDirectory = ARGV[0]
  successes = 0
  tests = []
  tests << Test.new(testDirectory)
  tests.each do |test|
    if test.run()
      successes += 1
    end
  end
  puts "\n[*] #{successes}/#{tests.size} tests succeeded."
  if successes != tests.size
    puts "Failed tests!"
    raise "Failed tests!"
  end
end

main()
