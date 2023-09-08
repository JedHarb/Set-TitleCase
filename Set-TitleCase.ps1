function Set-TitleCase {
	param(
		[string]$ConvertText
	)
	$ConvertText.split(" ").foreach({
		if ($_ -match '[0-9]st\b|[0-9]nd\b|[0-9]rd\b|[0-9]th\b|\band\b|\bas\b|\bbut\b|\bfor\b|\bif\b|\bnor\b|\bor\b|\bso\b|\byet\b|\ba\b|\ban\b|\bthe\b|\bas\b|\bat\b|\bby\b|\bfor\b|\bin\b|\bof\b|\boff\b|\bon\b|\bper\b|\bto\b|\bup\b|\bvia\b') {
			$_.ToLower()
		}
		else {
			(Get-Culture).TextInfo.ToTitleCase($_.ToLower())
		}
	}) -join " "
}
