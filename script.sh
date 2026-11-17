for i in 1 2 3 4; do
    rm -rf Testcase${i}Diff
    mkdir Testcase${i}Diff
    for f in Testcase$i/*.1.txt; do
        n=$(basename $f .1.txt)
        if diff -u $f Testcase$i/$n.2.txt > Testcase${i}Diff/${n}Diff.txt; then rm Testcase${i}Diff/${n}Diff.txt; fi
    done
    rmdir Testcase${i}Diff 2> /dev/null
done
