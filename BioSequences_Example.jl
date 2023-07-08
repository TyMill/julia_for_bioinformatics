using BioSequences

# Function to read a DNA sequence from a FASTA file
function read_sequence(filename)
    reader = FASTA.Reader(open(filename))
    record = first(reader)
    return sequence(record)
end

# Read sequence
seq = read_sequence("sequence.fasta")

# Reverse and complement sequence
rev_comp_seq = reverse_complement(seq)

# Search for a motif
motif = dna"AGTC"
motif_positions = findall(motif, seq)

# Generate k-mer composition
k = 4  # size of k-mers
kmer_counts = count_kmers(seq, k)

println("Original sequence: ", seq)
println("Reverse complement: ", rev_comp_seq)
println("Motif positions: ", motif_positions)
println("4-mer composition: ", kmer_counts)
