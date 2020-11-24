class SalesController < ApplicationController

    def index
        @sales = Sale.all
        @month_sales = Sale.monthly_sales
        @avg_sales = Sale.avg_sales
        @quantity_sales = Sale.quantity_sales
        @coffee_origin = Sale.coffee_origin
        @coffee_origin2 = Sale.coffee_origin2 
        @coffee_origin3 = Sale.coffee_origin3
        @coffee_blend = Sale.coffee_blend
        @coffee_blend2 = Sale.coffee_blend2
        @coffee_blend3 = Sale.coffee_blend3
    end
end
