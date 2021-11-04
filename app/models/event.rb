
class Event< ApplicationRecord
    
    has_many :comments, dependent: :destroy
    # dependent: :destroy means the comments related
    #to the specific post in mention get deleted if the post does
    
    # log creation time formatting
    def datetime
        self.created_at.strftime("%Y-%m-%d / %H:%M:%S") if self.created_at
    end

end