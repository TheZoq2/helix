((identifier) @type
  (#match? @type "[A-Z]"))

((identifier) @constant
 (#match? @constant "^[A-Z][A-Z%d_]*$"))

(self) @variable.builtin

(unit_definition (identifier) @function)

(parameter (identifier) @variable.parameter)

((pipeline_reg_marker) @keyword)

(scoped_identifier
  path: (identifier) @namespace)
(scoped_identifier
 (scoped_identifier
  name: (identifier) @namespace))
((scoped_identifier
    name: (identifier) @type)
 (#match? @type "^[A-Z]"))

((builtin_type) @type.builtin)

((identifier) @type.builtin
 (#any-of?
    @type.builtin
    "Option"
    "Memory"))

((identifier) @constant.builtin
 (#any-of? @constant.builtin "Some" "None"))

((pipeline_stage_name) @label)

((stage_reference
    stage: (identifier) @label))

[
    "pipeline"
    "let"
    "set"
    "entity"
    "fn"
    "reg"
    "reset"
    "inst"
    "use"
    "assert"
    "struct"
    "enum"
    "stage"
    "impl"
    "port"
    "decl"
] @keyword

[
    "$if"
    "$else"
    "$config"
] @keyword.directive

((comptime_if  ["{" "}"] @keyword.directive))
((comptime_else  ["{" "}"] @keyword.directive))

[
  "else"
  "if"
  "match"
] @conditional

(bool_literal) @constant.builtin.boolean
(int_literal) @constant.numeric

[
  "&"
  "mut"
  "-"
  "=>"
  ">"
  "<"
  "="
  "->"
] @operator


((op_add) @operator)
((op_sub) @operator)
((op_mul) @operator)
((op_equals) @operator)
((op_lt) @operator)
((op_gt) @operator)
((op_le) @operator)
((op_ge) @operator)
((op_lshift) @operator)
((op_rshift) @operator)
((op_bitwise_and) @operator)
((op_bitwise_xor) @operator)
((op_bitwise_or) @operator)
((op_logical_and) @operator)
((op_logical_or) @operator)


[
  (line_comment)
] @comment @spell
