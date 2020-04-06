require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "creating a Book" do
    visit books_url
    click_on "New Book"

    fill_in "Author", with: @book.author
    fill_in "Bisac code", with: @book.bisac_code
    fill_in "Bisac code2", with: @book.bisac_code2
    fill_in "Bisac code3", with: @book.bisac_code3
    fill_in "Description", with: @book.description
    fill_in "Height", with: @book.height
    fill_in "Isbn", with: @book.isbn
    fill_in "Language", with: @book.language
    fill_in "Length", with: @book.length
    fill_in "Media file", with: @book.media_file
    fill_in "Number of pages", with: @book.number_of_pages
    fill_in "Price", with: @book.price
    fill_in "Product form", with: @book.product_form
    fill_in "Publication date", with: @book.publication_date
    fill_in "Publisher name", with: @book.publisher_name
    fill_in "Publishing status", with: @book.publishing_status
    fill_in "Subtitle", with: @book.subtitle
    fill_in "Title", with: @book.title
    fill_in "Weight", with: @book.weight
    fill_in "Width", with: @book.width
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "updating a Book" do
    visit books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @book.author
    fill_in "Bisac code", with: @book.bisac_code
    fill_in "Bisac code2", with: @book.bisac_code2
    fill_in "Bisac code3", with: @book.bisac_code3
    fill_in "Description", with: @book.description
    fill_in "Height", with: @book.height
    fill_in "Isbn", with: @book.isbn
    fill_in "Language", with: @book.language
    fill_in "Length", with: @book.length
    fill_in "Media file", with: @book.media_file
    fill_in "Number of pages", with: @book.number_of_pages
    fill_in "Price", with: @book.price
    fill_in "Product form", with: @book.product_form
    fill_in "Publication date", with: @book.publication_date
    fill_in "Publisher name", with: @book.publisher_name
    fill_in "Publishing status", with: @book.publishing_status
    fill_in "Subtitle", with: @book.subtitle
    fill_in "Title", with: @book.title
    fill_in "Weight", with: @book.weight
    fill_in "Width", with: @book.width
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "destroying a Book" do
    visit books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book was successfully destroyed"
  end
end
