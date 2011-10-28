# encoding: utf-8
module Origin
  module Selection
    module Strategies
      module Append

        def _append(criterion, operator)
          assimilate(criterion) do |selector, field, value|
            selector.store(
              field,
              selector[field]._add({ operator => value })
            )
          end
        end
      end
    end
  end
end
