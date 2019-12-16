# Assists in extracting complex logic out of the views so
# that code may be organised better

module ApplicationHelper

  # Links the user to the overall application
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
