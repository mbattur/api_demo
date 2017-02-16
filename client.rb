require 'rest-client'
require 'oj'
require 'bundler'
require 'json'

posts_url = 'https://jsonplaceholder.typicode.com/posts'
comments_url = 'https://jsonplaceholder.typicode.com/comments'
posts_api = RestClient.get(posts_url, headers={})
comments_api = RestClient.get(comments_url, headers={})

posts_json = JSON.parse(posts_api)
comments_json = JSON.parse(comments_api)

commentsByPost = {}
comments_json.each do |comment|
  commentsByPost[comment["postId"]] ||= []
  commentsByPost[comment["postId"]].push(comment)
end

posts_json.each do |post|
  comments = commentsByPost[post["id"]]
  post["comments"] = comments
end

puts posts_json
