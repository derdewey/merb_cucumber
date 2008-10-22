$main = self # This must be included in the env.rb file!

module Merb
  module Test
    module Helpers
      module DataMapper
        
        def self.included(base)

          $main.Before do
            repository(:default) do
              transaction = DataMapper::Transaction.new(repository)
              transaction.begin
              repository.adapter.push_transaction(transaction)
            end
          end

          $main.After do
            repository(:default) do
              while repository.adapter.current_transaction
                repository.adapter.current_transaction.rollback
                repository.adapter.pop_transaction
              end
            end
          end

        end
        
      end
    end
    
    module World
      module Base
        include Helpers::DataMapper
      end
    end
  end
end
