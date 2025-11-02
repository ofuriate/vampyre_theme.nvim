-- Vampyre Theme Example
-- This file demonstrates the color scheme

-- TODO: Add more vampire features
-- NOTE: Blood red, scarlet, and gold colors only

local vampyre = {}

-- Functions are in royal purple/gold
function vampyre.setup(config)
    -- Keywords and statements in blood red/scarlet
    if config.enable then
        for i = 1, 10 do
            -- Strings in green
            local message = "The vampire awakens at midnight"
            
            -- Numbers in blood orange
            local count = 666
            local price = 13.37
            
            -- Booleans in blood red
            local is_vampire = true
            local has_fangs = false
            
            -- Operators in crimson
            local result = count + price * 2
        end
    end
    
    return {
        status = "active",
        power = 9000
    }
end

-- Comments in misty gray
vampyre.setup({ enable = true })
