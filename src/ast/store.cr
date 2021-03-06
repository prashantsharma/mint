module Mint
  class Ast
    class Store < Node
      getter states, functions, name, gets, comment, comments

      def initialize(@functions : Array(Function),
                     @comments : Array(Comment),
                     @states : Array(State),
                     @comment : Comment?,
                     @gets : Array(Get),
                     @name : String,
                     @input : Data,
                     @from : Int32,
                     @to : Int32)
      end
    end
  end
end
