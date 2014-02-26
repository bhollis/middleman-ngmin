require 'sprockets/processor'
require 'execjs'

# Taken from https://github.com/jasonm/ngmin-rails/blob/master/lib/ngmin/processor.rb
module Middleman
  module Ngmin
    class Processor < ::Sprockets::Processor
      def self.name
        'Middleman::Ngmin::Processor'
      end

      def prepare
        ngmin_source = File.open(File.join(File.dirname(__FILE__), '../../vendor/ngmin.js')).read
        @context = ExecJS.compile "window = {};" + ngmin_source
      end

      def evaluate(context, locals)
        @context.call 'window.annotate', data
      end
    end
  end
end
