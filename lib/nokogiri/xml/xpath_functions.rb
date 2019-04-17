module Nokogiri
  module XML
    class XPathFunctions < SimpleDelegator
      def self.wrap(handler)
        if handler.nil?
          @wrap_nil ||= self.new(Object.new)
        else
          self.new(handler)
        end
      end
    end
  end
end
