local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-texlipse') {
  settings+: {
    blog: "https://projects.eclipse.org/projects/science.texlipse",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "The Eclipse TeXlipse™ project provides an Eclipse extension to support LaTeX projects, so that document preparation can be incorporated into the normal Eclipse ",
    email: "webmaster@eclipse-foundation.org",
    members_can_change_project_visibility: false,
    name: "Eclipse TeXlipse™",
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('texlipse') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Texlipse",
      homepage: "https://projects.eclipse.org/projects/science.texlipse",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "eclipse-ide",
        "eclipse-science",
        "latex"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
      secrets: [
        orgs.newRepoSecret('GITLAB_API_TOKEN') {
          value: "********",
        },
      ],
    },
  ],
}
