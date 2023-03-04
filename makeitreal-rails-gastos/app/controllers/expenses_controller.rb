class ExpensesController < ApplicationController
  def index
    if params[:category_id].present?
      @expenses = Expense.where('concept LIKE ?', "%#{params[:concept]}%").where(category: Category.find(params[:category_id]))
    else
      @expenses = Expense.where('concept LIKE ?', "%#{params[:concept]}%")
    end
  end
end
