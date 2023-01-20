import Lake
open Lake DSL

package autograder where
  precompileModules := true

lean_lib AutograderTests where
  globs := #[.submodules `AutograderTests]

@[default_target]
lean_exe autograder where
  root := `Main
  supportInterpreter := true
