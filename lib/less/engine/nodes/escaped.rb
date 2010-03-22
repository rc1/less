require 'grammar/common'
require 'grammar/entity'

module Less
  module Node
    class Escaped < String
      include Entity
      
      attr_accessor :value
      
      def initialize key, value = nil, parent = nil
        super key, parent
        @value = value
      end
      
      def to_css env = nil
        puts "YEAH"
      end
      
    end
  end
end