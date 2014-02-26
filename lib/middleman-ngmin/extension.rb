require 'middleman-ngmin/processor'

module Middleman
  module Ngmin
    class NgminExtension < Extension
      def after_configuration
        app.sprockets.register_postprocessor 'application/javascript', Processor
      end
    end
  end
end
