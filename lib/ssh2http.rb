require "ssh2http/version"

class Ssh2http
  def initialize(cmd)
    @cmd = cmd
  end
  
  def run!
    debug
  end

  def debug
    var('@cmd')
    var('RUBY_VERSION')
    var('::Ssh2http::VERSION')
    ENV.each do |k,v|
      var("ENV[#{k.inspect}]")
    end
  end

  def var(var)
    STDERR.puts "#{var}=#{eval(var).inspect}"
  end
end
