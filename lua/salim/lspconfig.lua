vim.lsp.config['lua_ls'] = {
  cmd = { 'lua-language-server' },

  filetypes = { 'lua' },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },

      diagnostics = { globals = { 'vim' } },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
}

vim.lsp.config['kotlin_lsp'] = {
  cmd = { 'intellij-server', '--stdio' },
  filetypes = { 'kotlin' },
  root_markers = {
    { 'settings.gradle.kts', 'settings.gradle', 'build.gradle.kts', 'build.gradle' },
    '.git',
  },
  cmd_env = {
    ANDROID_HOME = '/home/salim/Android/Sdk',
    JAVA_HOME = '/usr/lib/jvm/java-26-openjdk',
  },
}

vim.lsp.enable('kotlin_lsp')
