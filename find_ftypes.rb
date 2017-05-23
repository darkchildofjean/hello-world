#!/usr/bin/ruby

# New open3 module.
require 'open3'

# Build a regular expression object using the supplied pattern
re = Regexp.new('^.*:[ ]*([^,]*).*')

# Declare the arrays
filetypes = Array.new
files = Array.new
uniq_filetypes = Array.new

# First open is going to get all of the files in /usr/bin
Open3.popen3("find /usr/bin -type f") do |stdout, stderr, status, thread|
    while fl=stderr.gets do 
        # Put the file in a separate array.
        files.push( fl )

        # This is running the command and capturing it's STDOUT to 'sout'.
        # Capturing it's STDERR to 'serr' and it's status to 'st'.
        sout, serr, st = Open3.capture3("file " + fl)

        # The sout is going to contain the whole line.
        # Ex: file /usr/bin/ls
        # results in /usr/bin/ls: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.32, BuildID[sha1]=c71f424abdfcbb4b69a5e062a78168c72521e0e4, stripped

        # I don't need that whole thing.  In fact you don't want it because the filename in the output ahd the sha1 sum of the file would make each
        # line unique and we would never figure out how filetypes there are.  The part we want is the bit after the ':' upto the first comma.
        # You could also play we grabbing everything between ':' and the 'BuildID'.  That means you have to use a different pattern match object.
        re.match(sout)

        # What is this $1?  Notice in the pattern on line 7 that I have a set of parantheses.  That '[^,]*' but says grab everthing that is not
        # a comma.  This will grab all of the stuff after the ':' and upto but not including the first comma.  This is called
        # 'capturing'.  The 'capture' from the first and only set of parantheses is put in $1.  I am pushing that onto the array.
        filetypes.push( $1 )
    end
end

# Dump out the filenames.
puts ( "Dump the file names." )
files.each { |f| print "File is " + f + "\n" }
puts( "\n\n" )

# Dump out the entries in the array.  Remember we haven't done anything, yet.
puts ( "Dump the array before we extract the unique values" )
filetypes.each { |t| print "Filetype is " + t + "\n" }
puts( "\n\n" )

# Now we are ready grab the lines that are uniq.  The Array class has a 'uniq' method built right in.  So lets sort the array.
uniq_filetypes = filetypes.uniq

# Now dump out what we find and dump out the size of the array, again to see the difference.
puts ( "Dump the array after we extracted only the uniq values" )
open( '/var/tmp/uniq_files', 'w' ) do |f|
    uniq_filetypes.each { |t| f.puts( t + "\n") }
end 
