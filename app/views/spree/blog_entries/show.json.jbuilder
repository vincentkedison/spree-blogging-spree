json.set! :data do
  # json.array!(@exhibitions) do |exhibition|
  #   json.extract! exhibition, :cover_image, :curator, :date_formatted, :location_vetted
  #   json.exhibition_path exhibition_path(exhibition)
  #   json.artists_count exhibition.artist_exhibitions.count
  #   json.title exhibition.title.present? ? exhibition.title : (exhibition.artist_exhibitions.count > 6 ? "Group Exhibition" : nil)
  #   json.artists_listing exhibition.artists_listing_landing
  # end
end

json.set! :blog_entry do
  json.title @blog_entry.title
  json.title @blog_entry.subtitle
  json.body @blog_entry.body
  json.permalink @blog_entry.permalink
  json.created_at @blog_entry.created_at
  json.updated_at @blog_entry.updated_at
  json.visible @blog_entry.visible
  json.published_at @blog_entry.published_at
  json.summary @blog_entry.summary
  json.author_id @blog_entry.author_id
end

json.set! :meta do
  json.code response.status
end