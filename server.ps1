# Server đơn giản chạy bằng PowerShell tích hợp sẵn trong Windows (Không cần cài Node hay Python)
$port = 8080
$folder = $PSScriptRoot

# Lấy địa chỉ IP mạng nội bộ (Wi-Fi)
$localIP = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { 
    $_.InterfaceAlias -notlike "*Loopback*" -and $_.IPAddress -notlike "169.254*" 
} | Select-Object -ExpandProperty IPAddress | Select-Object -First 1)

if (-not $localIP) { $localIP = "localhost" }

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://*:$port/")

try {
    $listener.Start()
} catch {
    # Nếu bị quyền chặn http://*, chuyển sang http://localhost
    $listener = New-Object System.Net.HttpListener
    $listener.Prefixes.Add("http://localhost:$port/")
    $listener.Start()
}

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  ỨNG DỤNG SỔ THU HỌC PHÍ ĐANG CHẠY!" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " 1. Trên máy tính: Mở trình duyệt vào:" -ForegroundColor Yellow
Write-Host "    http://localhost:$port" -ForegroundColor White
Write-Host ""
Write-Host " 2. Trên điện thoại (cùng mạng Wi-Fi): Mở trình duyệt vào:" -ForegroundColor Yellow
Write-Host "    http://${localIP}:$port" -ForegroundColor Green -NoNewline
Write-Host " (hoặc quét mã / nhập địa chỉ này)" -ForegroundColor DarkGray
Write-Host ""
Write-Host " Nhấn Ctrl+C để dừng server." -ForegroundColor DarkYellow
Write-Host "==========================================================" -ForegroundColor Cyan

# Mở trình duyệt mặc định trên máy tính
Start-Process "http://localhost:$port"

while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $urlPath = $request.Url.LocalPath.TrimStart('/')
        if ([string]::IsNullOrEmpty($urlPath)) {
            $urlPath = "index.html"
        }

        $filePath = Join-Path $folder $urlPath

        if (Test-Path $filePath -PathType Leaf) {
            $bytes = [System.IO.File]::ReadAllBytes($filePath)
            
            # Content Type
            $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
            switch ($ext) {
                ".html" { $response.ContentType = "text/html; charset=utf-8" }
                ".js"   { $response.ContentType = "application/javascript; charset=utf-8" }
                ".json" { $response.ContentType = "application/json; charset=utf-8" }
                ".svg"  { $response.ContentType = "image/svg+xml" }
                ".css"  { $response.ContentType = "text/css; charset=utf-8" }
                ".png"  { $response.ContentType = "image/png" }
                default { $response.ContentType = "application/octet-stream" }
            }

            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $response.StatusCode = 404
            $errBytes = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
            $response.OutputStream.Write($errBytes, 0, $errBytes.Length)
        }
        $response.Close()
    } catch {
        # Bỏ qua lỗi ngắt kết nối
    }
}
