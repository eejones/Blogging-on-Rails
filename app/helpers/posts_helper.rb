module PostsHelper
  def join_tags(post)
    post.tags.map { |t| t.name.censor_words }.join(", ")
  end
end
