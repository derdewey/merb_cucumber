$main = self # This must be included in the env.rb file!

module Merb
  module Test
    module Helpers
      module Sequel
        module ClassMethods
          def use_transactional_fixtures
            # # Let's set a transaction on the ActiveRecord connection when starting a new scenario
            # $main.Before do
            #   Ruh roh, can only do transactions using blocks. Does not work with this style!
            # end
            # 
            # # Going with a rollback after every step in the scenario is executed
            # $main.After do
            #   Ruh roh, can only do transactions using blocks. Does not work with this style!
            # end
          end
        end
      end
    end
    
    module World
      module Base
        extend Helpers::Sequel::ClassMethods
      end
    end
  end
end
