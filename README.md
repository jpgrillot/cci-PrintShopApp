# PrintShopApp
Print Shop App built on the Force.com platform using Cumulus CI

## Branching
  * feature/ - feature branch
  * beta/ - beta branch
  * release/ Release branch

## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
2. Run `cci flow run dev_org --org dev` to deploy this project.
3. Run `cci org browser dev` to open the org in your browser.
4. Run `cci task run retrieve_changes --org dev` to pull the changes from your scratch org to the local repo.

## CI/CD
This is the flow for CI/CD

1. Changes are pushed to a feature/ branch
1. Features are merged to main
1. Run the dependency flow `cci flow run dependencies --org dev`
1. Create a beta package `cci flow run release_unlocked_beta --org dev`
1. Install the beta package on a scratch org `cci flow run ci_beta --org beta`
1. Promote the package `cci flow run release_unlocked_production --org devhub`
1. Install the package on Staging `cci flow run ci_release --org staging`
1. Install the package on Production `cci flow run ci_release --org devhub`