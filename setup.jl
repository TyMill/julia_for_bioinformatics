using Pkg

function setup_environment()
    Pkg.activate(".")
    packages = [
        "BioSequences",
        "BioStructures",
        "BioSymbols",
        "Mitosis",
        "PhyloNetworks",
        "Microbiome",
    ]

    Pkg.add(packages)

    println("Installation of packages complete.")
end

setup_environment()
