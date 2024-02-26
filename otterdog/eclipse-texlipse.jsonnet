local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-texlipse') {
  settings+: {
    blog: "https://projects.eclipse.org/projects/science.texlipse",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "The Eclipse TeXlipse™ project provides an Eclipse extension to support LaTeX projects, so that document preparation can be incorporated into the normal Eclipse ",
    email: "webmaster@eclipse-foundation.org",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: false,
    members_can_create_teams: false,
    members_can_delete_repositories: false,
    name: "Eclipse TeXlipse™",
    packages_containers_internal: false,
    packages_containers_public: false,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
}
