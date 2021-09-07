class StudentController < ApplicationController

  
  #Show all the students in database.
    def index 
        
        @students = Student.all.order(:name)
        
    end
    #Show specific id Student.
    def show
          
        @student = Student.find(params[:id])

    end
  #Add New Student to database.
    def new
        @student = Student.new
    end

    #Create New User
    def create
        @student = Student.new(student_params)

        if @student.save
            flash[:notice] = "Student Added Successfully"
            redirect_to root_path
        else
            flash[:error] = "Failed to Add New Student"
            render :new
        end

    end
    
    #Get student editing based on id
    def edit   
        @student = Student.find(params[:id])   
    end 
  

  # PUT method for updating in database a Student based on id   
  def update   
    @student = Student.find(params[:id])   
    if @student.update(student_params)   
      flash[:notice] = 'Student updated!'   
      redirect_to student_index_path   
    else   
      flash[:error] = 'Failed to edit Student!'   
      render :edit   
    end   
  end 

 # DELETE method for deleting a Student from database based on id   
 def destroy   
    @student = Student.find(params[:id])   
    if @student.delete   
      flash[:notice] =  'Student deleted!'   
     redirect_to student_index_path  
    else   
      flash[:error] = 'Failed to delete this student!'   
      render :destroy   
    end   
  end   
   
  # we used strong parameters for the validation of params  
  private 
  def student_params   
    params.require(:student).permit(:name, :School, :phone, :instagram, :degree)   
  end  

end