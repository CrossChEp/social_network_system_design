Table user_activity {
  activity_id bigint
  user_id bigint
  action_type bigint // тип действия (пост, лайк, комментарий, подписка и т. д.).
  target_id bigint // идентификатор целевого объекта (например, поста или комментария).
  created_at timestamp
}