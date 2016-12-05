json.extract! transit, :id, :id, :date_delivered, :sender_string, :description, :comment, :shipping_weight, :arrived, :created_at, :updated_at
json.url transit_url(transit, format: :json)