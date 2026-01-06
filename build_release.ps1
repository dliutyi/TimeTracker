Write-Host "👉 Cleaning old builds..."
flutter clean

Write-Host "📦 Getting dependencies..."
flutter pub get

$timestamp = Get-Date -Format "yyMMddHHmm"
$buildNumber = ([System.Int64]$timestamp - 2509160000) % 2100000000

Write-Host "🚧 Building release app bundle (.aab)..."
Write-Host "🔄 Build number: $buildNumber"

# flutter build apk `
#     --release `
#     --build-number=$buildNumber `
#     --tree-shake-icons `
#     --obfuscate `
#     --split-debug-info=build/symbols/android/$buildNumber

flutter build appbundle `
    --release `
    --tree-shake-icons `
    --obfuscate `
    --build-number=$buildNumber `
    --split-debug-info=build/debug-info

$line = (Select-String -Path pubspec.yaml -Pattern '^version:\s*(.+)$').Matches.Value
$version = $line.Split(':')[1].Trim()
$vname,$vcode = $version -split '\+'

Get-ChildItem build/app/outputs/flutter-apk/app-release*.apk -ErrorAction SilentlyContinue |
  ForEach-Object {
    Rename-Item $_.FullName -NewName ("app-v{0}-{1}.apk" -f $vname,$buildNumber)
  }

Get-ChildItem build/app/outputs/bundle/release/*.aab -ErrorAction SilentlyContinue |
  ForEach-Object {
    Rename-Item $_.FullName -NewName ("app-v{0}-{1}.aab" -f $vname,$buildNumber)
  }

Write-Host "✅ Build complete!"
Write-Host ("📁 Output: build\app\outputs\bundle\release\app-v{0}-{1}.aab" -f $vname,$buildNumber)

Pause