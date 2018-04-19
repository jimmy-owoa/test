class AddPaperclipToProveedors < ActiveRecord::Migration[5.1]
  def change
    add_attachment :proveedors, :pdf
  end
end
