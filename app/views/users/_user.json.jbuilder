json.extract! user, :id, :username, :email, :password, :company_name, :website, :company_email, :name_on_card, :card_number, :expiration, :created_at, :updated_at
json.url user_url(user, format: :json)
