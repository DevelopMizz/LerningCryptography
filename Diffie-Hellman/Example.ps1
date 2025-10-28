<#
NOT PRODUCTION CODE!

This code is not cryptographically secure.
The reader is warned not use this in production code
#>

<# Public values #>
[int64]$G = 13
[int64]$N = 449

function simulate-df($G,$N){
    <# Private value userA #>
    [int64]$A = 93
    <# Private value userB #>
    [int64]$B = 373

    <# Generate sharable secreate A->B #>
    [int64]$AG = ([System.Numerics.BigInteger]::Pow($G, $A) % $N)
    <# Generate sharable secreate B->A #>
    [int64]$BG = ([System.Numerics.BigInteger]::Pow($G, $B) % $N)

    <# Generate shared secreate for user A #>
    [int64]$KeyA = ([System.Numerics.BigInteger]::Pow($BG, $A) % $N)
    <# Generate shared secreate for user B #>
    [int64]$KeyB = ([System.Numerics.BigInteger]::Pow($AG, $B) % $N)

    Write-Host "A's Key is $KeyA"
    Write-Host "B's Key is $KeyB"
}

