return {
  cmd = { "harper-ls", "--stdio" },
  root_markers = {
    ".git",
  },

  settings = {
    userDictPath = "~/.config/nvim/spellcheck/user_dict.txt",
    workspaceDictPath = "",
    fileDictPath = "",
    linters = {
      SpellCheck = true,
      SpelledNumbers = false,
      AnA = true,
      SentenceCapitalization = true,
      UnclosedQuotes = true,
      WrongQuotes = false,
      LongSentences = true,
      RepeatedWords = true,
      Spaces = true,
      Matcher = true,
      CorrectNumberSuffix = true
    },
    markdown = {
      IgnoreLinkTitle = false
    },
    diagnosticSeverity = "hint",
    isolateEnglish = true,
    dialect = "American",
    maxFileLength = 120000
  }
}
