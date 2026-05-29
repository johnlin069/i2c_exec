# =====================================================
# Pass Log show or not 
# =====================================================

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
# Decode values
# =====================================================

Decode-All

#switch($Mode)
#{
#    "1"
#    {
#        Decode-All
#    }
#
#    "2"
#    {
#        Compare-All
#    }
#
#    "3"
#    {
#        Compare-All
#    }
#
#    default
#    {
#        Write-Host "[ERROR] Invalid Mode" -ForegroundColor Red
#    }
#}
