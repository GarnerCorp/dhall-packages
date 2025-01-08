for file in $(find . -name '*.dhall'); do
    echo "${file}"

    dhall --ascii format "${file}"
done
