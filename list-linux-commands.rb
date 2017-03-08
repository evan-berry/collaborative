#!/usr/bin/env ruby
spath = `echo $PATH`
paths = spath.split(":")
commands = paths.map do |path|
  `ls #{path}`.split("\n")
end.flatten

puts commands.count
