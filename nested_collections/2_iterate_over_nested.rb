companies = [{ 'id' => '1',
               'property_data' =>
{ 'name' => 'Google', 'stock_symbol' => 'GOOG', 'primary_role' => 'company' } },
             { 'id' => '2',
               'property_data' =>
               { 'name' => 'Facebook', 'stock_symbol' => 'FB', 'primary_role' => 'company' } }]

companies.each do |company|
  id = company['id']
  name = company.dig('property_data', 'name')
  stock_symbol = company.dig('property_data', 'stock_symbol')
  puts "#{name} - #{id} - #{stock_symbol}"
end
