json.array!(@headers) do |header|
  json.extract! header, :title, :caption, :company_id
  json.url header_url(header, format: :json)
end
