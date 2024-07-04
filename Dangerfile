
# Ensure the PR has a description
fail("Please provide a summary in the Pull Request description") if github.pr_body.length < 5

# Warn if there are any TODOs in the code
warn("There are TODOs in the codebase") if git.modified_files.any? { |file| File.read(file).include?("TODO") }

# Ensure files changed
message("Files changed in this PR: #{git.modified_files.join(', ')}")
