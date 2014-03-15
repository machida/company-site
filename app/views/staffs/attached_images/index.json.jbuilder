json.array!(@attached_images) do |attached_image|
  json.extract! attached_image, :id, :image, :alt
  json.url attached_image_url(attached_image, format: :json)
end
