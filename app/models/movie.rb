class Movie < ActiveRecord::Base
  validates_presence_of :name, :director
  validates_numericality_of :year, :length, :greater_than => 0
  validates_uniqueness_of :name, :message => "is already used"
  validates_length_of :format, :maximum => 5, :minimum => 2

  paginates_per 5

  def proper_name
    name.titleize
  end


end
