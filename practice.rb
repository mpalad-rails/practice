def injector( param )
	total = param.inject(1) { |result, itm| result + itm }
end

puts injector( [ 2, 2, 3] )