
dirname=${PWD##*/}
if ! [ $dirname = "EssenceCatalog-runs" ]; then
    echo "Call from the top of the EssenceCatalog-runs repo!"
    exit 1
fi

grep -R 'These options would generate at least' problems > scripts/table/estimates
LC_ALL=C sort scripts/table/estimates > scripts/table/estimates-sorted
python3 scripts/table/table.py > scripts/table/table.tsv

