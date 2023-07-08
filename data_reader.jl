using JuliaDB

# Load the CSV files
expression_data = loadtable("gene_expression.csv")
annotation_data = loadtable("gene_annotations.csv")

# Join the two tables on the gene_id column
joined_data = join(expression_data, annotation_data, lkey = :gene_id, rkey = :gene_id)

# Group by the annotation column, and calculate the mean expression level for each group
grouped_data = groupby(mean, joined_data, :annotation, select = :expression_level)

# Sort the grouped data by the mean expression level
sorted_data = sort(grouped_data, by = row -> row[2], rev = true)

# Print the top 5 annotations by mean expression level
println("Top 5 annotations by mean expression level:")
for row in first(sorted_data, 5)
    println("Annotation: ", row[1], ", Mean expression level: ", row[2])
end
