# frozen_string_literal: true

module API
  module V2
    module Admin
      # helper module
      module Utils
        def search(field: nil, value: nil)
          case field
          when 'email'
            where("users.#{field} LIKE ?", "#{value}%")
          ## TODO search by profile
          else
            all
          end.order("#{field} DESC")
        end
      end
    end
  end
end
