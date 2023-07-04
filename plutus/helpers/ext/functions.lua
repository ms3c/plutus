function checkBinaryFunctions(binaryPath)
    local command = string.format("readelf -Ws %s", binaryPath)
    local process = io.popen(command)

    local output = process:read('*a')

    process:close()

    print(output) -- Print the output of the command
end

-- Call the function to check binary functions
checkBinaryFunctions(binaryPath)
