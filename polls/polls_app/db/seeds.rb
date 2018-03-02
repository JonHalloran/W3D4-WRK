# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times { |i| User.create!(username: "User #{i}") }
# polls = 5.times { |i| Poll.create!(title: "Title #{i}", user_id: i + 1) }

# Poll.all.each do |poll|
#   4.times { |i| Question.create!(question: "What is #{i} + 1", poll_id: poll.id) }
# end

# Question.all.each do |question|
#   4.times { |i| AnswerChoice.create!(text: "#{i + 1}", question_id: question.id) }
# end
AnswerChoice.all.each { |ansch| Response.create!(answer_id: ansch.id, user_id: User.all.sample.id) }
