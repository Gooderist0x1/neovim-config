local java = require("java")

java.java_debug_adapter = {
  enable = false,
}

java.notifications = {
  dap = false,
}

java.setup()
