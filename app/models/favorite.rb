# frozen_string_literal: true

class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :book

  scope :recent, -> { where("craated_at > '#{ 7.days.ago }'") }
end
