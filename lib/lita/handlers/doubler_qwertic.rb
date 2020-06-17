module Lita
  module Handlers
    class DoublerQwertic < Handler
      #double route
      route /^double\s+(\d+)$/i,
      :double,
      command: true,
      help: { 'double N' => 'prints N + N' }
      #double method
      def double_number(n)
         n+n
      end
      Lita.register_handler(self)
    end
  end
end
