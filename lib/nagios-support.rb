module NagiosSupport
  def output_status_and_exit(status_hash)
    puts status_hash[:message]
    exit status_hash[:exit_code]
  end

  def WARNING(msg)
    {
      :exit_code => 1,
      :message => "WARNING: #{msg}"
    }
  end

  def CRITICAL(msg)
    {
      :exit_code => 2,
      :message => "CRITICAL: #{msg}"
    }
  end

  def OK(msg='')
    {
      :exit_code => 0,
      :message => "OK: #{msg}"
    }
  end
end

