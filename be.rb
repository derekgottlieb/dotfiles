#!/usr/bin/env ruby

# Smarter be for ruby projects that prioritizes local project binstubs
# - uses zsh when needed, assuming MacOS Catalina or later
# - save on your path
# - drop the .rb
# - chmod +x
# - always type `be <command>` and the right thing should happen
#
# - inspired by Justin Searls (@searls)

require "shellwords"

class Be
  def self.execute(command, all_params)
    if File.exist?("./bin/#{command}")
      system "bin/#{all_params.join(" ")}"
    else
      escaped_command = Shellwords.escape("bundle exec #{all_params.join(" "}")
      system "zsh -c #{escaped_command}"
    end
  end
end

Be.execute(ARGV[0], ARGV)
