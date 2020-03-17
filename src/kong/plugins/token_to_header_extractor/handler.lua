local BasePlugin = require "kong.plugins.base_plugin"
local TokenToHeaderExtractorHandler = BasePlugin:extend()

function TokenToHeaderExtractorHandler:new()
    TokenToHeaderExtractorHandler.super.new(self, "token-to-header-extractor")
end

function TokenToHeaderExtractorHandler:rewrite(config)
    -- Eventually, execute the parent implementation
    -- (will log that your plugin is entering this context)
    TokenToHeaderExtractorHandler.super.rewrite(self)
  
    -- Implement any custom logic here
    error.log("Hello FROM LUA!!!")
end