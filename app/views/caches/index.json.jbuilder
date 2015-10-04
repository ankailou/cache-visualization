json.array!(@caches) do |cach|
  json.extract! cach, :id, :name, :address_space, :cache_size, :block_size, :lines, :sets, :tag_bits, :set_bits, :block_bits
  json.url cach_url(cach, format: :json)
end
