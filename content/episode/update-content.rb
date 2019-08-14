require 'fileutils'

Dir.glob('201*') do |subDir|
    Dir.foreach(subDir) do |monthSubDir|
        next if monthSubDir == '.' || monthSubDir == '..'
        
        puts subDir + "\\" + monthSubDir
        
        Dir.foreach(subDir + "\\" + monthSubDir) do |file|
            next if file == '.' || file == '..'
            
            filepath = subDir + "\\" + monthSubDir + "\\" + file
            lines = Array.new
            text = File.read(filepath)
            episodeNum = ""
            text.each_line do |line|
                if line.start_with?("podcast_file = ")
                    lines.push(line.gsub("http://traffic.libsyn.com/cppcast/",""))
                else
                    lines.push(line)
                end
            end

            fh = File.open(filepath, "w")
            lines.each do |line|
                fh.puts line
            end
            fh.close()
        end
    end
end