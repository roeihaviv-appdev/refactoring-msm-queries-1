# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    director_movies = self.id
    matching_movies = Movie.where ({ director_id => d_id})
    movies = matching_movies
    return the_movie
  end
end
