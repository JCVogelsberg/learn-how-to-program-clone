class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :number, :presence => true

  belongs_to :chapters

  def self.all_by_number
    lessons = Lesson.all.order(:number)
  end

  def next
    Lesson.find_by(:number => self.number + 1)
  end

  def previous
    Lesson.find_by(:number => self.number - 1)
  end

end
