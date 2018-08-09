class Crypto < ApplicationRecord
    validates :values,presence: true,
    uniqueness: {case_sensitive: false}
end
