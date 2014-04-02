class LessonsController < ApplicationController

  def new
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.new({:name => params[:name], :number => params[:number]})
    if @lesson.save
      redirect_to("/lessons/#{@lesson.number}")
    else
      render('lessons/new.html.erb')
    end
  end

  def index
    @lessons = Lesson.all_by_number
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.where(:number => params[:number]).first
    @next_lesson = @lesson.next
    @prev_lesson = @lesson.previous
    render('lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.where(:number => params[:number]).first
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.where(:number => params[:number]).first
    @lesson.update(params[:lesson])
    @lesson.reload
    redirect_to("/lessons/#{@lesson.number}")
  end

  def destroy
    @lesson = Lesson.where(:number => params[:number]).first
    @lesson.destroy
    render('lessons/destroy.html.erb')
  end

end














