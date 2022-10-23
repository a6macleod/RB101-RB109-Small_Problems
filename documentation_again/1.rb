#Locate the ruby documentation for methods File::path and File#path. How are they different?

# both are found in the documentation for File class in the core API of the docs.
# class methods are called on the class
# instance methods are called on objects
File::path
- this is a class method as denoted by (::)
- File.path("/dev/null") => "/dev/null"
- Returns the string representation of the path

File#path
- this is an instnace method as denoted by (#)
- Returns the pathname used to create file as a string. Does not normalize the name.
- File.new("testfile").path => "testfile"
