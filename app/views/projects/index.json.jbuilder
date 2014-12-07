json.array!(@projects) do |project|
  json.extract! project, :id, :code, :title, :series, :isbn, :copyright, :number, :author, :level, :imprint, :edition, :acronym, :product_type, :imprint_id, :budget, :image_assets, :media_assets, :text_assets, :start, :revised_start, :close, :revised_close, :printer, :revised_printer, :color, :print_run, :trim_size, :price, :free_text
  json.url project_url(project, format: :json)
end
