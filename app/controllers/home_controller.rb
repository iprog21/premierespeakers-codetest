class HomeController < ApplicationController
  before_action :initialize_products, only: [:index]

  def index
    
  end

  def initialize_products
    if Book.count == 0
      xml_file = Rails.root.join('data','ACdelta20061pt2.xml')
      xml_data = File.open(xml_file)
      hash = Hash.from_xml(xml_data)['ONIXmessage'];
      xml_header = hash['header']
      xml_products = hash['product']

      
      xml_products.each do |xml_product|
        product = OpenStruct.new
        
        xml_product['productidentifier'].each do |productidentifier|
          if productidentifier['b221'] == '15'
            product.isbn = productidentifier['b244']
          end
        end
        product.title = xml_product['title']['b203']
        product.subtitle = xml_product['b029']

        
        product.publishing_status = xml_product['b394']
        product.language = xml_product['language']['b252']
        product.publisher_name = xml_product['publisher']['b081']
        product.author = xml_product['contributor']['b040']
        product.number_of_pages = xml_product['b061']
        product.publication_date = xml_product['b003']
        product.product_form = xml_product['b012']

        xml_product['supplydetail']['price'].each do |price|
          if price['j152'] == 'USD'
            product.price = price['j151']
          end
        end
        
        product.description = xml_product['othertext'][0]['d104']
        
        xml_product['measure'].each do |measure|
          case measure['c093']
            when '01'
              product.height = measure['c094']
            when '02'
              product.length = measure['c094']
            when '03'
              product.width = measure['c094']
            when '08'
              product.weight = measure['c094']
          end
        end
        
        product.bisac_code = xml_product['b064']
        
        if !xml_product['subject'].nil?
          product.bisac_code2 = xml_product['subject'][0]['b069'] rescue nil
          product.bisac_code3 = xml_product['subject'][1]['b069'] rescue nil
        else
          product.bisac_code2 = nil
          product.bisac_code3 = nil
        end
        product.media_file = xml_product['mediafile']['f117'] rescue nil
        
        model_product = Book.new
        if !Book.exists?(isbn: product.isbn)
          model_product.attributes = product.marshal_dump
          model_product.save
        end
      end
    end

    @books = Book.all
  end

end