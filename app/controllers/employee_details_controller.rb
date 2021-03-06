class EmployeeDetailsController < ApplicationController
  before_filter :set_employee
  before_action :set_employee_detail, only: [:show, :edit, :update, :destroy]

  def set_employee
    @employee = Employee.find(params[:employee_id])
  end

  # GET /employee_details
  # GET /employee_details.json
  def index
    @employee_details = EmployeeDetail.all
  end

  # GET /employee_details/1
  # GET /employee_details/1.json
  def show
  end

  # GET /employee_details/new
  def new
    @employee_detail = EmployeeDetail.new
  end

  # GET /employee_details/1/edit
  def edit
  end

  # POST /employee_details
  # POST /employee_details.json
  def create

    @employee_detail = @employee.build_employee_detail(employee_detail_params)

    respond_to do |format|
      if @employee_detail.save
        format.html { redirect_to employee_employee_detail_path(@employee), notice: 'Employee detail was successfully created.' }
        format.json { render :show, status: :created, location: employee_employee_detail_path(@employee) }
      else
        format.html { render :new }
        format.json { render json: @employee_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_details/1
  # PATCH/PUT /employee_details/1.json
  def update
    respond_to do |format|
      if @employee_detail.update(employee_detail_params)
        format.html { redirect_to employee_employee_detail_path(@employee) , notice: 'Employee detail was successfully updated.' }
        format.json { render :show, status: :ok, location: employee_employee_detail_path(@employee)  }
      else
        format.html { render :edit }
        format.json { render json: @employee_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_details/1
  # DELETE /employee_details/1.json
  def destroy
    @employee_detail.destroy
    respond_to do |format|
      format.html { redirect_to @employee, notice: 'Employee detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_detail
      @employee_detail = @employee.employee_detail
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_detail_params
      params.require(:employee_detail).permit(:city, :address, :house_number, :phone_number, :postal_code, :employee_id)
    end
end
