class HomeController < ApplicationController
    
    # impressionist :actions=>[:index]
    
    def index
        @visitor = Visitor.find(1)
        # impressionist(@visitor, "message...") # 2nd argument is optional
        @visitor.impressions_count = @visitor.impressions_count + 1
        @visitor.save
        
        @time = Time.current
        @standard = @time.strftime("%Y년 %m월 %d일 기준 | ")
        @standard_day = @time.strftime("%d")
        
        # @today = Visitor.find(2)
        # @today.impressions_count = @today.impressions_count + 1
        # @today.save
        
        #@test = Visitor.where("updated_at >= ? AND id = ?", Date.today.to_time.in_time_zone('Asia/Seoul').beginning_of_day, 2)
        @today = Visitor.find(2)
        @criteria = Date.today.to_time.in_time_zone('Asia/Seoul').beginning_of_day
        
        if @today.updated_at <= Date.today.to_time.beginning_of_day
            @today.impressions_count = 1
            @today.save
            
        else
            @today.impressions_count = @today.impressions_count + 1
            @today.save
        end
        
        @hour = @today.updated_at.strftime("%H")
        @min = @today.updated_at.strftime("%M")
        
        @standard_hour = @time.strftime("%H")
        @standard_min = @time.strftime("%M")
        
        if @standard_hour >= @hour
            @today.impressions_count = @today.impressions_count + 1
            @today.save
            @visitor.impressions_count = @visitor.impressions_count + 1
            @visitor.save
        end
        
        if @standard_min >= @min
            @today.impressions_count = @today.impressions_count + 1
            @today.save
            @visitor.impressions_count = @visitor.impressions_count + 1
            @visitor.save
        else
            
        end
        
        
        # @test = Date.today.to_time.beginning_of_day
        #@test = Date.today.to_time.in_time_zone('Asia/Seoul').beginning_of_day
        
        
        
        
        # @today.impressions_count = @today.impressions_count + 1
        # @today.save
        
        # @today_updated = @today.updated_at
        # @today_day = @today_updated.strftime("%d")
        # if @standard_day > @today_day
        #     @today.impressions_count = 1
        #     @today.save
        # else
        #     @today.impressions_count = @today.impressions_count + 1
        #     @today.save
        # end
        
        
        # @day = @today.updated_at.strftime("%d")
        # @month = @today.updated_at.strftime("%m")
        
        # @test = Visitor.where("updated_at <= ? AND id = ?", Date.today.to_time.beginning_of_day, 2)
        
        
        # @test = Visitor.where("id == 2")
        # if @test.name == "today_visitor"
        #     @test.impressions_count = 1
        #     @test.save
        # else
        #     @today.impressions_count = @today.impressions_count + 1
        #     @today.save
        # end
        
        
    end
    
    def show
         
    end
    
    def advertisement
        @visitor = Visitor.find(1)
    end

end
