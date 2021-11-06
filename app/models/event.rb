
class Event< ApplicationRecord
    
    has_many :comments, dependent: :destroy
    # dependent: :destroy means the comments related
    #to the specific post in mention get deleted if the post does
    
    validates_presence_of :data
    validates_format_of :data, with: /src=((\d{1,3}\.){3}\d{1,3})/, on: :create, message: "must include Source IP address"
    validates_format_of :data, with: /dst=((\d{1,3}\.){3}\d{1,3})/, on: :create, message: "must include Destination ip address"
    
    # log creation time formatting
    def datetime
        self.created_at.strftime("%Y-%m-%d / %H:%M:%S") if self.created_at
    end

end