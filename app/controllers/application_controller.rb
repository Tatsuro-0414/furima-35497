class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
end


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:first_name_zenkaku,:last_name_zenkaku,:first_name_furigana,:last_name_furigana,:birth_date])
  end



# validates :nickname, presence: true
# validates :email, presence: true
# validates :encrypted_password, presence: true
# validates :first_name_zenkaku, presence: true
# validates :last_name_zenkaku, presence: true
# validates :first_name_furigana, presence: true
# validates :last_name_furigana, presence: true
# validates :bithday, presence: true