# Usage
# trace(:call) do
#   FactoryGirl.create(:account) # call we want to trace
# end
#

def trace(event_type = :call, *matchers)
  points = []

  tracer = TracePoint.new(event_type) do |trace_point|
    if matchers.all? { |match| trace_point.path.match(match) }
      points << { file: trace_point.path, line: trace_point.lineno, }
    end
  end

  result = tracer.enable { yield }

  File.open('/tmp/trace.txt', 'w') do |file|
    points.each do |point|
      file.puts "#{point[:file]}:#{point[:line]}"
    end
  end

  result
end
