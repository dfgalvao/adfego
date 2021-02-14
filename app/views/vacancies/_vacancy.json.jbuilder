json.extract! vacancy, :id, :code, :title, :description, :schooling, :quantity, :remuneration, :benefit, :workload, :company_id, :created_at, :updated_at
json.url vacancy_url(vacancy, format: :json)
