# Code Instructions

We would like to see how you collaborate with other engineers and how you write and think about code. We have provided you with a repo containing a simple Rails API. An engineer has committed and merged some changes in a way that leaves room for improvement. In this exercise, we would like you to open a PR with updates to this code. We would also like you to add comments to your PR that communicate to the other engineer why you recommend these changes.

The goal is to make incremental improvements and create a learning opportunity; not to find and correct every problem with this code base. Please limit your time spent on this task to 30 minutes.

## Step 1: Improve the code and open a PR

Another engineer added a few features to this API.

* They updated the `/vagetables` json response to include the average rating for each vegetable. You can find that change in the Vegetable class.

* They wanted to make user emails unique and downcase them before storing them in the database. You can find that change in the User class.

* They wanted to be able to mark ratings as "flagged." They added a column to the Ratings table in order to do this. You can consult the migration file to see how that change was implemented.

Please open a PR with updates to one or more of these features as if this were a contribution to a work project. This may require making changes in other parts of the code base, but we ask that you not build additional features or attempt to improve other areas of the code. We value incremental improvements and small PRs.

The usual app readme is available in the [APP_README.MD](APP_README.md).

## Step 2: Comment on the PR

In your PR, add comments that explain why you've made the changes you did. Please do this as if the person who wrote the original code will be reviewing your PR. These comments should be written with the intent of sharing knowledge and best practices.
