class Test

  def initialize(name, expectedDir = "expected", autogenDir = "autogen")
    @name = name
    @baseDir = "../#{name}"
    @expectedDir = "#{@baseDir}/#{expectedDir}"
    @autogenDir = "#{@baseDir}/#{autogenDir}"
  end

  def run()
    success = true
    puts "[#{@name}]"

    # iterate each Ruby file that was generated
    Dir.glob("#{@autogenDir}/*.rb") do |autogen|

      # correlate autogen code to its expected couterpart
      expected = autogen.gsub(@autogenDir, @expectedDir).gsub(".rb", "Expected.rb")

      if File.exists?(expected)
        generatedCode = File.open(autogen).readlines
        expectedCode = File.open(expected).readlines
        if generatedCode == expectedCode
          puts "  [+] #{File.basename(autogen)} == #{File.basename(expected)}"
        else
          puts "  [-] #{File.basename(autogen)} != #{File.basename(expected)}"
          success = false
        end
      else
        puts "  [-] Could not find expected file #{File.basename(expected)}"
        success = false
      end
    end
    success
  end

end

def main()
  successes = 0
  tests = []
  tests << Test.new("EmptyClassStory")
  tests.each do |test|
    if test.run()
      successes += 1
    end
  end
  puts "\n[*] #{successes}/#{tests.size} tests succeeded."
end

main()
