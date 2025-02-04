for file in $(find . -path ./src -prune -o -name '*.dhall' -print | perl -n -e '$x = $_; $x =~ tr%/%%cd; print length($x), " $_";' | sort -rn -k 1 | awk '{print $2}'); do
    echo "${file}"

    dhall --ascii freeze --all --cache "${file}"
done
