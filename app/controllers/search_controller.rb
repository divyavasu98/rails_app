class SearchController < ApplicationController
  def search_students
    if params["q"].present?
      abc = params["q"].downcase
      # Person.where("LOWER(first_name) = ? OR LOWER(last_name) = ?", abc, abc)
      # @person_search = Person.where("first_name ILIKE ? OR last_name ILIKE ?", abc, abc)
      @students = Student.where(Student.arel_table[:first_name].lower.matches("%#{abc.downcase}%")).or(Student.where(Student.arel_table[:last_name].lower.matches("%#{abc.downcase}%")))
      respond_to do |format|
        format.js { render layout: false, content_type: "text/javascript", collection: @students}
      end
    else
      flash[:error] = "Search cannot be blank!"
      redirect_to root_path
    end
  end
end