Table locations {
  location_id bigint [primary key]
  name text
  longitude_min float
  longitude_max float
  latitude_min float
  latitude_max float
  posts_quantity bigint
}