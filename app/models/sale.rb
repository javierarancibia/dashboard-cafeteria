class Sale < ApplicationRecord

    def self.monthly_sales
        group_by_month(:date_sale, last: 12, current: false)
        .sum('total')
    end

    def self.avg_sales
        group_by_month(:date_sale, last: 12, current: false)
        .average('total')
    end

    def self.quantity_sales
        group_by_month(:date_sale, last: 12, current: false)
        .count('total')
    end

    def self.coffee_origin
        group_by_month(:date_sale, last: 12, current: false)
        .count('origin')
    end

    def self.coffee_origin2
        group_by_month(:date_sale, last: 6, current: false)
        .count('origin')
    end

    def self.coffee_origin3
        group_by_month(:date_sale, last: 3, current: false)
        .count('origin')
    end

    def self.coffee_blend
        group_by_month(:date_sale, last: 12, current: false)
        .count('blend')
    end

    def self.coffee_blend2
        group_by_month(:date_sale, last: 6, current: false)
        .count('blend')
    end

    def self.coffee_blend3
        group_by_month(:date_sale, last: 3, current: false)
        .count('blend')
    end
end
