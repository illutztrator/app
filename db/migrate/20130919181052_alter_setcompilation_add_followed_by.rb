class AlterSetcompilationAddFollowedBy < ActiveRecord::Migration
  def change
		add_column :set_compilation_links, :followed_by, :integer
  end
end
