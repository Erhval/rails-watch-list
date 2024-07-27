class BookmarksController < ApplicationController
  def index
    @bookmark = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new

  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
  end

  def delete
    @bookmark = Bookmark.delete

  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
