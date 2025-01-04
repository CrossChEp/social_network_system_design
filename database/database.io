Table users {
  user_id bigint [primary key]
  name text
  surname text
  patronymic text [null]
  email text
  password text
  pfp_url text
  created_at timestamp
  last_online_at timestamp
}

Table followers {
  followee_id bigint
  follower_id bigint
}

Table posts {
  post_id bigint [primary key]
  content text
  author_id bigint
  location_id bigint
  attachments json
  crated_at timestamp
}

Table likes {
  post_id bigint
  liker_id bigint
  liked_at timestamp
}

Table locations {
  location_id bigint [primary key]
  name text
  longitude_min float
  longitude_max float
  latitude_min float
  latitude_max float
  posts_quantity bigint
}

Table comments {
  comment_id bigint [primary key]
  repply_comment_id bigint
  content text
  post_id bigint
  author_id bigint
  created_at timestamp
}

Ref: followers.follower_id > users.user_id
Ref: followers.followee_id > users.user_id

Ref: posts.author_id > users.user_id
Ref: posts.location_id > locations.location_id

Ref: likes.post_id > posts.post_id
Ref: likes.liker_id > users.user_id

Ref: comments.post_id > posts.post_id
Ref: comments.author_id > users.user_id
Ref: comments.repply_comment_id > comments.comment_id
