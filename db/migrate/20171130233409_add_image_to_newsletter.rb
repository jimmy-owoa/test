class AddImageToNewsletter < ActiveRecord::Migration[5.1]
  def change
    add_attachment :newsletters, :image
  end
end
