require 'spec_helper'

describe Lesson do
  context '#create' do
    it 'should create a new Lesson' do
      lesson = Lesson.create({:name => 'lesson1', :number => 1})
      lesson.should be_an_instance_of Lesson
    end
  end
  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :number => 1})
      not_next_lesson = Lesson.create({:name => 'lesson3', :number => 3})
      next_lesson = Lesson.create({:name => 'lesson2', :number => 2})
      current_lesson.next.should eq next_lesson
    end
  end
end
