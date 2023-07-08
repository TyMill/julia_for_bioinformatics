using BioStructures

# Function to load a protein structure from a PDB file
function load_structure(filename)
    return read(filename, PDB)
end

# Load structures
structure1 = load_structure("protein1.pdb")
structure2 = load_structure("protein2.pdb")

# Calculate distances between atoms in the first model of the first protein
model1 = collectmodels(structure1)[1]
atom1 = model1["A", 1, "CA"]  # alpha-carbon of the first residue in chain A
atom2 = model1["A", 2, "CA"]  # alpha-carbon of the second residue in chain A
dist = distance(atom1, atom2)

println("Distance between CA atoms of first two residues: ", dist, " Å")

# Perform a structural alignment
aligned_indices, rmsd = superimpose!(model1, model2)

println("RMSD of structural alignment: ", rmsd, " Å")
