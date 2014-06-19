require 'rake'

hash    = `git rev-parse --short HEAD`.chomp
v_part  = ENV['BUILD_NUMBER'] || "0.pre.#{hash}"
version = "0.1.#{v_part}"

Gem::Specification.new do |s|
  s.name          = 'nagios-support'
  s.version       = version
  s.date          = Time.now.strftime("%Y-%m-%d")
  s.summary       = "Nagios Support"
  s.description   = "Nagios exit code status hashes (support for other ruby nagios checks)"
  s.authors       = ["Richard Pearce", "Mehul Shah"]
  s.email         = 'mehul.shah@timgroup.com'
  s.homepage      = "https://github.com/youdevise/ruby-nagios-support"
  s.license       = "GNU"
  s.files         = "lib/nagios-support.rb"
  s.require_paths = ["lib"]
end

