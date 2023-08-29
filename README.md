# Template Repository: Python

<p align="center">
<img alt="dev branch" src="https://img.shields.io/badge/dev--%3E-informational"><a href="https://ap-south-1.console.aws.amazon.com/codesuite/codebuild/projects/python-template-repository?region=ap-south-1#"><img alt="[dev] Build, test and deploy" src="https://codebuild.ap-south-1.amazonaws.com/badges?uuid=PROJECT-ID-HERE&branch=dev"></a>
<img alt="staging branch" src="https://img.shields.io/badge/staging--%3E-informational"><a href="https://ap-south-1.console.aws.amazon.com/codesuite/codebuild/projects/python-template-repository?region=ap-south-1#"><img alt="[staging] Build, test and deploy" src="https://codebuild.ap-south-1.amazonaws.com/badges?uuid=PROJECT-ID-HERE&branch=staging"></a>
<img alt="prod branch" src="https://img.shields.io/badge/prod--%3E-informational"><a href="https://ap-south-1.console.aws.amazon.com/codesuite/codebuild/projects/python-template-repository?region=ap-south-1#"><img alt="[prod] Build, test and deploy" src="https://codebuild.ap-south-1.amazonaws.com/badges?uuid=PROJECT-ID-HERE&branch=prod"></a>
<img alt="dev branch" src="https://img.shields.io/badge/dev--%3E-informational"><a href="https://github.com/samkit-jain/python-template-repository/actions"><img alt="[dev] Build, test and deploy" src="https://github.com/samkit-jain/python-template-repository/workflows/Build,%20test%20and%20deploy/badge.svg?branch=dev"></a>
<img alt="staging branch" src="https://img.shields.io/badge/staging--%3E-informational"><a href="https://github.com/samkit-jain/python-template-repository/actions"><img alt="[staging] Build, test and deploy" src="https://github.com/samkit-jain/python-template-repository/workflows/Build,%20test%20and%20deploy/badge.svg?branch=staging"></a>
<img alt="prod branch" src="https://img.shields.io/badge/prod--%3E-informational"><a href="https://github.com/samkit-jain/python-template-repository/actions"><img alt="[prod] Build, test and deploy" src="https://github.com/samkit-jain/python-template-repository/workflows/Build,%20test%20and%20deploy/badge.svg?branch=prod"></a>
<a href="https://www.python.org/downloads/release/python-3100/"><img alt="Python v3.10" src="https://img.shields.io/badge/python-3.10-blue.svg"></a>
<a href="https://github.com/psf/black"><img alt="Code Style: black" src="https://img.shields.io/badge/code%20style-black-000000.svg"></a>
<a href="https://github.com/PyCQA/bandit"><img alt="Security: bandit" src="https://img.shields.io/badge/security-bandit-yellow.svg"></a>
<a href="https://github.com/pylint-dev/pylint"><img alt="Linting: pylint" src="https://img.shields.io/badge/linting-pylint-yellowgreen"></a>
</p>

This is a template repository for Python projects with Black, Bandit, Pylint and CI-CD with AWS CodeBuild and GitHub Actions. See the respective branches for the same. Also has better merge capabilities for which `GH_TOKEN` secret needs to be set (the token is a GH PAT with read/write capabilities on the repository). Better Merge GitHub Action is used to do a merge on GitHub using the fast-forward option which is currently unsupported.

## Branch Mapping

| Branch                                                                            | Environment | Tag       |
|-----------------------------------------------------------------------------------|-------------|-----------|
| [dev](https://github.com/samkit-jain/python-template-repository/tree/dev)         | Development | `dev`     |
| [staging](https://github.com/samkit-jain/python-template-repository/tree/staging) | Staging     | `staging` |
| [prod](https://github.com/samkit-jain/python-template-repository/tree/prod)       | Production  | `prod`    |

## Setup

1. Install Python 3.10.
2. Create a virtual environment, `python3 -m venv venv`.
3. Activate the virtual environment, `source venv/bin/activate`.
4. Install the core dependencies, `python -m pip install -r requirements.txt`.
5. Install the optional dependencies, `python -m pip install -r extra_requirements.txt`.

## Contributing Guidelines

### How to contribute?

Step 1: Make sure you have the latest changes in your local `dev` branch. Eg: `git checkout dev && git pull origin dev`.<br/>
Step 2: Create a **new** feature branch from the `dev` branch. Eg: `git checkout -b feature/branch`.<br/>
Step 3: Work on your feature branch.<br/>
Step 4: Create a pull request with the **base branch set as the `dev` branch** to have your feature branch merged into the `dev` branch.<br/>
Step 5: Add a reviewer and wait for the PR to be reviewed.<br/>
Step 6: After a merger, delete the local and remote copies of the feature branch.<br/>

### Points to remember

* Force pushes on the feature branch are allowed if there is only one developer working on the branch or all the other developers working on the branch are in agreement.
* Try to not group multiple changes in a single commit. See if you can divide the task into multiple smaller subtasks with one commit for each subtask.
* After raising a PR, make sure that the PR description is self-explanatory and well written.
* All files must end with a new line.

### Comments

* Comments must be upto 80 characters long unless they contain a link.
* Comments must form a complete statement. Start with an uppercase letter and end with a period.

### Commit messages

* Commit messages are in imperative mood and start with an uppercase letter.
* Commit message should describe the change well.
* If a commit references an issue, make sure that the commit message reflects that. For example, if the commit refers an issue #69, your commit message can read like
    ```
    My commit message
    Refs #10
    ```
* If a commit fixes an issue, make sure that the commit message reflects that. For example, if the commit fixes an issue #420, your commit message can read like
    ```
    My commit message
    Fixes #10
    ```

### Merging

Refrain from using the GitHub's provided merge options and instead comment on the PR `/merge`. Commenting this triggers the [Better Merge](.github/workflows/merge.yml) action that merges the PR using the fast-forward option.

### Good reads

* [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)
* [Git documentation on submitting patches](https://git.kernel.org/pub/scm/git/git.git/tree/Documentation/SubmittingPatches?id=HEAD)
* [subsurface-for-dirk/README](https://github.com/torvalds/subsurface-for-dirk/blob/a48494d2fbed58c751e9b7e8fbff88582f9b2d02/README#L88)
