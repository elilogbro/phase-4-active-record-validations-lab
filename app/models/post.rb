class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    # validate :title_is_clickbaity

    # def title_is_clickbaity
    #     unless title.match?("Won't Believe") || title.match?("Secret") || title.match?("Top") || title.match?("Guess")
    #         errors.add(:title, "not clickbaity")
    #     end
    # end
    
end
