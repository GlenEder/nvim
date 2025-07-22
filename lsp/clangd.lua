return {
  cmd = {
    "clangd",
    "--background-index",
    "--suggest-missing-includes",
    "--pch-storage=memory",
    "--clang-tidy",
    "--completion-style=detailed",
  },
  filetypes = {
    "c",
    "cpp",
    "objc",
    "objcpp",
    "cuda",
    "proto",
  },
  root_markers = {
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac',
    '.git'
  },
  single_file_support = true,
}
