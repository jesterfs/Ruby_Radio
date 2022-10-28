#!/usr/bin/env ruby

require_relative 'classes/radio'

radio = Radio.new({band: 'AM'})

radio.freq=(6000)
radio.volume=(10)


puts radio.status
