class JavascriptsController < ApplicationController
  def dynamic_task_types
    @all_task_types = TaskType.all
  end
end
