require "middleman-core"
require "middleman-ngmin/version"

::Middleman::Extensions.register(:ngmin) do
  require "middleman-ngmin/extension"
  ::Middleman::Ngmin::NgminExtension
end
