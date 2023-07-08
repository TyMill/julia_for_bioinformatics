using PhyloNetworks

# Load a phylogenetic tree from a Newick file
snet = readTopology("tree.newick")

# Manipulate the tree (e.g., rerooting, pruning)
# Reroot the tree at node 5
rerooted_snet = reroot(snet, 5)

# Prune the tree by removing taxon 4
pruned_snet = prune(snet, 4)

# Calculate tree statistics
tree_length = treeLength(snet)
tree_height = treeHeight(snet)

println("Tree length: ", tree_length)
println("Tree height: ", tree_height)

# Visualize the tree
# The PhyloNetworks package doesn't provide built-in tree visualization,
# so here we just print the Newick string of the manipulated trees.
println("Original tree: ", writeTopology(snet))
println("Rerooted tree: ", writeTopology(rerooted_snet))
println("Pruned tree: ", writeTopology(pruned_snet))
