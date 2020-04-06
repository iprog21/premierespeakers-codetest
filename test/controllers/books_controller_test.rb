require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { author: @book.author, bisac_code: @book.bisac_code, bisac_code2: @book.bisac_code2, bisac_code3: @book.bisac_code3, description: @book.description, height: @book.height, isbn: @book.isbn, language: @book.language, length: @book.length, media_file: @book.media_file, number_of_pages: @book.number_of_pages, price: @book.price, product_form: @book.product_form, publication_date: @book.publication_date, publisher_name: @book.publisher_name, publishing_status: @book.publishing_status, subtitle: @book.subtitle, title: @book.title, weight: @book.weight, width: @book.width } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { author: @book.author, bisac_code: @book.bisac_code, bisac_code2: @book.bisac_code2, bisac_code3: @book.bisac_code3, description: @book.description, height: @book.height, isbn: @book.isbn, language: @book.language, length: @book.length, media_file: @book.media_file, number_of_pages: @book.number_of_pages, price: @book.price, product_form: @book.product_form, publication_date: @book.publication_date, publisher_name: @book.publisher_name, publishing_status: @book.publishing_status, subtitle: @book.subtitle, title: @book.title, weight: @book.weight, width: @book.width } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
