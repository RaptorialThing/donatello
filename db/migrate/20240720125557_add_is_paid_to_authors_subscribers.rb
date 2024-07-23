class AddIsPaidToAuthorsSubscribers < ActiveRecord::Migration[7.1]
  def change
    add_column :author_subscribers, :is_paid, :boolean
  end
end
