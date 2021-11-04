
class Event< ApplicationRecord

    
    def datetime
        self.created_at.strftime("%Y-%m-%d / %H:%M:%S") if self.created_at
    end

end