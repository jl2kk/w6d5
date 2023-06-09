class Cat < ActiveRecord::Base
    CAT_COLORS = ['gray', 'black', 'brown']
    SEX_OPT = ['M', 'F']

    validates :birth_date, presence: true
    validates :name, presence: true

    validates :color, presence: true, inclusion: { in: CAT_COLORS, message: "%{value} is not a valid" }
    validates :sex, presence: true, inclusion: { in: SEX_OPT, message: "%{value} is not a valid" }
    validates :description, presence: true
    validate :birth_date_cannot_be_future

    def birth_date_cannot_be_future
        if birth_date.present? && birth_date > Date.today
          errors.add(:birth_date, "can't be in the future")
        end
    end

    def age
        year = Date.today.year - birth_date.year
    end
end
  