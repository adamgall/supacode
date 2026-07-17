import Foundation

enum WorktreeTaskStatus: Equatable {
  case idle
  case running
}

/// Shared activity predicate for workspace and tab-title shimmer. Keeping the
/// three contributors here prevents the sidebar and tab bar from drifting.
enum WorkspaceActivity {
  static func isActive(
    isProgressBusy: Bool,
    hasAgentActivity: Bool,
    isLifecycleBusy: Bool = false
  ) -> Bool {
    isProgressBusy || hasAgentActivity || isLifecycleBusy
  }
}
