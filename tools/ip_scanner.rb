require 'celluloid'
require 'socket'
class ScanPort
  include Celluloid
  def initialize(start_port, end_port, host)
    @start_port = start_port
    @end_port = end_port
    @host = host
  end
  def run
    until @start_port == @end_port do
      scan @start_port
      @start_port += 1
    end
  end
  def scan(port)
      begin
        sock = Socket.new(:INET, :STREAM)        #build the socket
        raw = Socket.sockaddr_in(port, @host)
        puts "#{port} open." if sock.connect(raw)
      rescue
        if sock != nil
          sock.close
        end
      end
    end
end
def main
  host = ARGV[0]
  start_port = ARGV[1].to_i
  end_port = ARGV[2].to_i
  segment_size = 100
  until start_port >= end_port do
    sp = ScanPort.new start_port, start_port + segment_size, host
    sp.async.run
    start_port += segment_size
  end
end
main

