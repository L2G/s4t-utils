module S4tUtils

  def self.on_windows?  # :nodoc:
    Config::CONFIG["arch"] =~ /dos|win32/i
  end

  # Lifted this from Rubygems, which is released under the
  # Ruby license.
  def self.find_home    # :nodoc:
    ['HOME', 'USERPROFILE'].each do |homekey|
      return ENV[homekey] if ENV[homekey]
    end
    if ENV['HOMEDRIVE'] && ENV['HOMEPATH']
      return "#{ENV['HOMEDRIVE']}:#{ENV['HOMEPATH']}"
    end
    begin
      File.expand_path("~")
    rescue StandardError => ex
      if File::ALT_SEPARATOR
        "C:/"
      else
        "/"
      end
    end
  end


end
