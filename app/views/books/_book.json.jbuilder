json.extract! book, :id, :isbn, :title, :subtitle, :publishing_status, :language, :publisher_name, :author, :number_of_pages, :publication_date, :product_form, :price, :description, :height, :length, :width, :weight, :bisac_code, :bisac_code2, :bisac_code3, :media_file, :created_at, :updated_at
json.url book_url(book, format: :json)
