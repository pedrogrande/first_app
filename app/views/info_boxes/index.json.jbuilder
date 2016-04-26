json.array!(@info_boxes) do |info_box|
  json.extract! info_box, :id, :icon, :title, :content, :active
  json.url info_box_url(info_box, format: :json)
end
