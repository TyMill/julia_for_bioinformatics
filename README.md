# Julia Bioinformatics Environment and Examples

This repository contains scripts and information for setting up a Julia environment suitable for bioinformatics. It also provides examples of using various Julia packages for bioinformatics tasks.

## Setting Up the Environment

The `Project.toml` and `Manifest.toml` files provide a snapshot of the packages and their versions used in this environment. 

You can recreate the environment as follows:

1. Clone this repository and navigate to its directory.
2. Start Julia and activate the project with `] activate .`
3. Still within Julia, use `] instantiate` to download and install the correct versions of the packages.

For more information, see the [Julia Pkg documentation](https://docs.julialang.org/en/v1/stdlib/Pkg/).

## Examples

There are several example scripts in the `examples` directory:

- `BioSequences_Example.jl`: Demonstrates how to read a DNA sequence from a FASTA file, perform operations on the sequence, search for a motif, and generate k-mer composition using the BioSequences package.
- `BioStructures_Example.jl`: Demonstrates how to load a protein structure from a PDB file, calculate distances between atoms, and perform a structural alignment using the BioStructures package.
- `PhyloNetworks_Example.jl`: Demonstrates how to load a phylogenetic tree from a Newick file, manipulate the tree, calculate tree statistics, and visualize the tree using the PhyloNetworks package.

To run an example script, you can use the `include` function in Julia, e.g., `include("examples/BioSequences_Example.jl")`.

## Contributing

Contributions are welcome! Please open an issue if you encounter any problems, or a pull request if you make improvements.

## License

This project is licensed under the terms of the MIT license.
