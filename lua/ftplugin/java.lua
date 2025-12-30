local jdtls = require('jdtls')

local config = {
  cmd = { '/usr/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw', 'pom.xml' }, { upward = true })[1]),
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "JavaSE-21",
            path = "/usr/lib/jvm/default",
          }
        }
      }
    }
  },
  init_options = {
    bundles = {}
  },
}

jdtls.start_or_attach(config)
