
class Event< ApplicationRecord

    has_many :comments, dependent: :destroy

    
    def datetime
        self.created_at.strftime("%Y-%m-%d / %H:%M:%S") if self.created_at
    end

end