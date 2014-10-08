json.array!(@yearly_infos) do |yearly_info|
  json.extract! yearly_info, :id, :userId, :comments, :year, :role
  json.url yearly_info_url(yearly_info, format: :json)
end
