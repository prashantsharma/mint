module Mint
  class TypeChecker
    type_error RecordNotFoundMatchingRecord

    def check(node : Ast::Record) : Checkable
      fields =
        node
          .fields
          .map { |field| {field.key.value, resolve field} }
          .to_h

      record = records.find(&.==(fields))

      raise RecordNotFoundMatchingRecord, {
        "structure" => Record.new("", fields),
        "node"      => node,
      } unless record

      types[node] = record

      record
    end
  end
end
