class Llama < ActiveRecord::Base
    belongs_to :owner
    belongs_to :breed
end
