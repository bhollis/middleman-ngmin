require 'ngmin/processor'
require 'execjs'

module Middleman
  module Ngmin
    class NgminExtension < Extension
      def after_configuration
        app.sprockets.register_postprocessor 'application/javascript', ::Ngmin::Processor
      end
    end
  end
end
