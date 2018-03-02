# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  title      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Poll < ApplicationRecord

  validations :user_id, presence: true
  validations :title, presence: true

  belongs_to :author,
             primary_key: :id,
             foreign_key: :user_id,
             class_name: :User

  has_many :questions,
           primary_key: :id,
           foreign_key: :poll_id,
           class_name: :Question

end
