json.extract! resource, :id, :code, :name, :resourcetype, :created_at, :updated_at
json.url resource_url(resource, format: :json)
