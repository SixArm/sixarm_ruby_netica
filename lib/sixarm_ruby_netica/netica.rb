require 'java'
require 'sixarm_ramp'
import "norsys.netica.Environ"
import "norsys.netica.Net"
import "norsys.netica.NeticaException"
import "norsys.netica.Node"
import "norsys.netica.NodeList"
import "norsys.netica.State"
import "norsys.netica.Streamer"
import "norsys.netica.Value"

module Netica

  # Initialize the Netica environment with default settings.

  def environ(options=nil)
   return Java::NorsysNetica::Environ.new(options)
  end


  # Read a net file and compile it.
  # The net file extensions is typically '.dne' or '.neta'.

  def load_net(filepath)
   streamer = Java::NorsysNetica::Streamer.new(filepath)
   net = Java::NorsysNetica::Net.new(streamer)
   net.compile()
   return net
  end


  # Read rows of a typical file of cases.
  # The cases are tab delimited format.
  # The IO.readrows method is in the sixarm_ramp gem.

  def load_cases(filepath)
   return IO.readrows(filepath)
  end


  # Free an object then finalize it.
  # This is typically for JRuby objects.

  def finalizer(x)
   return if !defined?(x) or x==nil
   begin
    x.respond_to?('free') and x.free()
   rescue
   end
   begin
    x.respond_to?('finalize') and x.finalize()
   rescue
   end
  end


end

