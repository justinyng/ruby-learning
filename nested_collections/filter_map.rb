vehicles = { alice: { year: 2019, make: 'Toyota', model: 'Corolla' },
             caleb: { year: 2020, make: 'Honda', model: 'Accord' }, dave: { year: 2021, make: 'Ford', model: 'Escape' } }

# use map to get only names (.compact removes nil values)
p vehicles.map { |name, data| name if data[:year] >= 2020 }.compact
# or
p(vehicles.filter_map { |name, data| name if data[:year] >= 2020 })
