# frozen_string_literal: true

class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
