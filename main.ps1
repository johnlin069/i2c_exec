$Mode = Read-Host @"

Select Compare Mode

1 = C41AB  (Compare with Exp)
2 = C43AB  (SLED1 vs SLED2)
3 = C46AB  (SLED1/2/3/4 consistency)

Input
"@

$ShowPass = (Read-Host "Show PASS message? (Y/N)").ToUpper()

# =====================================================
# Import Parser
# =====================================================

. .\parser\parser.ps1
. .\parser\decode.ps1
. .\parser\compare.ps1


# =====================================================
# Input
# =====================================================

$INPUT = ".\log_output\normalized_dump.txt"

# =====================================================
# Parse
# =====================================================

Parse-NormalizedDump $INPUT

# =====================================================
# Import Register DB
# =====================================================

$REGMAP = @{}
. .\regdb\dc_scm.ps1
. .\regdb\global_cpld.ps1
. .\regdb\hpm_cpld1.ps1
. .\regdb\hpm_cpld2.ps1


# =====================================================
# Decode && Compare
# =====================================================

switch($Mode)
{
    "1"
    {
        Decode-All
    }

    "2"
    {
        Compare-All
    }

    "3"
    {
        Compare-All
    }

    default
    {
        Write-Host "[ERROR] Invalid Mode" -ForegroundColor Red
    }
}
