# frozen_string_literal: true

def doubler(start)
  puts start
  doubler(start * 2) if start < 10
end

doubler(2)
