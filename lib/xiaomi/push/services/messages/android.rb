module Xiaomi
  module Push
    module Message
      class Android < Base
        attr_accessor :title, :description, :badge, :sound, :pass_through, :notify_type,
                      :notify_id, :extras, :payload, :time_to_send, :time_to_live
        def initialize(**params)
          @title = params[:title]
          @description = params[:description]
          @badge = params[:badge] || 1
          @sound = params[:sound] || 'default'
          @pass_through = params[:pass_through] || 0
          @notify_type = params[:notify_type] || 'DEFAULT_ALL'
          @notify_id = params[:notify_id]
          @payload = params[:payload] || ""
          @time_to_send = params[:time_to_send]
          @time_to_live = params[:time_to_live]
          @extras = params[:extras] || {}
        end
      end
    end
  end
end
