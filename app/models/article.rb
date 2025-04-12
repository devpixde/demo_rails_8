class Article < ApplicationRecord
  # enum :status, [ :draft, :published, :archived, :deleted ]
  # enum :status, %i(draft published archived deleted)
  # oben zwei Alternativen. Hash hat den Vorteil, dass die Reihenfolge keine Rolle spielt
  enum :status, { draft: 0, published: 1, archived: 2, deleted: 3 }

end
