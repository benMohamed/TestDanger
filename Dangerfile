
# Ensure the PR has a description
fail("Please provide a summary in the Pull Request description") if github.pr_body.length < 5

# Warn if there are any TODOs in the code
warn("There are TODOs in the codebase") if git.modified_files.any? { |file| File.read(file).include?("TODO") }

# Ensure files changed
message("Files changed in this PR: #{git.modified_files.join(', ')}")

# Warn if the PR is too large
warn("This PR is too large. Consider breaking it into smaller PRs.") if git.lines_of_code > 500

# Warn if there are debugging statements
warn("Remove debugging statements like `print`, `console.log`, or `puts`.") if git.modified_files.any? { |file| File.read(file).match(/(print|console\.log|puts)/) }

# Fail if PR title does not start with a capital letter
fail("PR title should start with a capital letter.") unless github.pr_title =~ /^[A-Z]/

# Warn if there is no changelog entry
warn("Consider adding a changelog entry for this PR.") unless git.modified_files.include?("CHANGELOG.md")

# Fail if PR description does not contain a ticket number
fail("PR description should contain a ticket number.") unless github.pr_body =~ /TICKET-\d+/
