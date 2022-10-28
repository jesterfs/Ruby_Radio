class Radio
  
  attr_accessor :volume
  attr_reader :band
  attr_accessor :freq

  def initialize(options={})
      @volume = volume=(options[:volume]) || volume=(5)
      @band = options[:band] || 'FM'
      @freq = freq=(options[:freq]) || freq=(88.1)
      
      
      puts "You're listening to #{freq} #{band} at volume #{volume}"
  end

  def freq=(value)
    if @band == 'AM'
        if value < 541
          @freq = 541
        elsif value > 1699
          @freq = 1699
        else
          @freq = value
        end
    else
      if value < 88.1
        @freq = 88.1
      elsif value > 108.1
        @freq = 108.1
      else
        @freq = value
      end

    end
  end

  def volume=(value)
    return if value < 1 || value > 10
    @volume = value
  end

  def crank_it_up
    @volume = 11
  end

  def status
    "Current volume: #{@volume}, Current station #{@freq} #{@band}"
  end
  
end