set -x

git grep -l '"@com_google_googletest'  \
    | xargs sed -i 's%"@com_google_googletest//:%"@log//third_party/cc/gtest:%g'

git grep -l 'com_github_google_benchmark'  \
    | xargs sed -i 's%"@com_github_google_benchmark//:%"@logi//third_party/cc/benchmark:%g'

# "//absl<foo>" => ABSL_ROOT + "<foo>"
#git grep -l '\/\/absl' -- '*/BUILD*' | xargs sed -i 's@"//absl@"//third_party/cc/abseil/absl@g'
