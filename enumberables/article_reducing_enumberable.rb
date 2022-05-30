# Reducing Enumerable article by Brandon Weaver
# https://medium.com/@baweaver/reducing-enumerable-part-one-the-journey-begins-ddc1d4108490

# mapping
p([1, 2, 3].map { |v| v * 2 })

def map(list, &function)
  list.reduce([]) do |a, v|
    a.push function.call(v)
  end
end

p map([1, 2, 3]) { |v| v * 2 }

# select
p([1, 2, 3].select { |v| v.even? } )

def select(list, &function)
  list.reduce([]) { |a, v|
    a.push(v) if function.call(v)
    a # need to return the accumulator for reduce else will return a nil
    # or can refactor with rubocop using each_with_object instead
  }
end

p select([1, 2, 3]) { |v| v.even? }

# find
p([1, 2, 3].find { |v| v.even?})

def find(list, &function)
  list.reduce(nil) { |_, v|
    break v if function.call(v)
  }
end

p find([1, 2, 3]) { |v| v.even? }

