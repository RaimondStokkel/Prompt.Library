# AL Performance Skills

A collection of VS Code GitHub Copilot prompt files (`.prompt.md`) for analyzing and optimizing **Business Central AL development performance**. Each file follows the [VS Code Copilot prompt file standard](https://code.visualstudio.com/docs/copilot/customization/prompt-files) with YAML frontmatter and structured prompt content.

## Usage in VS Code

Copy the `.prompt.md` files you need into your project's `.github/prompts/` folder. They will appear as slash commands in GitHub Copilot Chat (e.g. `/ALQueryOptimizer`).

```
your-project/
└── .github/
    └── prompts/
        ├── ALQueryOptimizer.prompt.md
        ├── ALFlowfieldPerformance.prompt.md
        └── ...
```

Then in Copilot Chat, type `/` to see available prompts, select one, and paste the AL code or profiler output you want analyzed.

## Skills

| Prompt File | Focus Area | Key Problem Solved |
|------------|------------|-------------------|
| [ALQueryOptimizer.prompt.md](./ALQueryOptimizer.prompt.md) | Data access & queries | SETRANGE/SETFILTER mismatches, missing SETLOADFIELDS, N+1 reads |
| [ALFlowfieldPerformance.prompt.md](./ALFlowfieldPerformance.prompt.md) | FlowFields & SIFT | CALCFIELDS in loops, SIFT write overhead, SETAUTOCALCFIELDS |
| [ALBulkOperations.prompt.md](./ALBulkOperations.prompt.md) | Bulk data processing | Row-by-row MODIFY/DELETE → MODIFYALL/DELETEALL, batch commit design |
| [ALIndexDesignAdvisor.prompt.md](./ALIndexDesignAdvisor.prompt.md) | Table keys & indexes | Missing keys, wrong column order, SIFT index design |
| [ALLockAnalyzer.prompt.md](./ALLockAnalyzer.prompt.md) | Concurrency & locking | Deadlocks, premature LOCKTABLE, long transactions, blocking |
| [ALReportPerformance.prompt.md](./ALReportPerformance.prompt.md) | Reports & analytics | DataItem join problems, per-row CALCFIELDS, layout overhead |
| [ALAPIOptimizer.prompt.md](./ALAPIOptimizer.prompt.md) | APIs & web services | OData filter pushdown, FlowField exposure, HttpClient patterns |
| [ALBackgroundTaskAdvisor.prompt.md](./ALBackgroundTaskAdvisor.prompt.md) | Job Queue & async | Unbounded batch jobs, missing COMMIT intervals, parallelism |
| [ALUIPerformance.prompt.md](./ALUIPerformance.prompt.md) | Pages & UI | OnAfterGetRecord DB calls, list scroll lag, round-trips |
| [ALCodeProfiler.prompt.md](./ALCodeProfiler.prompt.md) | Profiling & hotspots | Profiler interpretation, O(N²) patterns, caching opportunities |

## File Format

Each file follows the VS Code Copilot `.prompt.md` standard:

```markdown
---
mode: 'agent'
description: 'What this prompt does and when to use it'
tools: ['codebase']
---

# Skill Title

[Expert persona, methodology, output format, constraints]
```

- **`mode: 'agent'`** — Runs with full tool access so Copilot can read and analyze your codebase
- **`description`** — Shown in the prompt picker; includes trigger keywords for discoverability
- **`tools: ['codebase']`** — Grants access to search and read files in the workspace

## Severity Scale

All skills use a consistent four-level severity rating:

| Severity | Definition |
|----------|-----------|
| **Critical** | Causes timeouts, deadlocks, or data loss in production |
| **High** | Measurable slowdown >500ms; affects user productivity |
| **Medium** | Noticeable delay <500ms; affects user experience |
| **Low** | Best-practice violation; minimal runtime impact |

## Coverage Map

```
AL Performance
├── Data Layer
│   ├── ALQueryOptimizer        ← FIND/FINDSET/GET patterns
│   ├── ALFlowfieldPerformance  ← CALCFIELDS/SIFT/FlowFilter
│   ├── ALBulkOperations        ← MODIFYALL/DELETEALL/batch
│   └── ALIndexDesignAdvisor    ← Keys/SIFT/ColumnStore
├── Concurrency
│   └── ALLockAnalyzer          ← LOCKTABLE/deadlocks/transactions
├── Presentation
│   ├── ALReportPerformance     ← DataItem/OnAfterGetRecord/RDLC
│   └── ALUIPerformance         ← Pages/FactBoxes/round-trips
├── Integration
│   └── ALAPIOptimizer          ← OData/API pages/HttpClient
├── Async Processing
│   └── ALBackgroundTaskAdvisor ← Job Queue/TaskScheduler
└── Cross-cutting
    └── ALCodeProfiler          ← Profiler/hotspots/algorithmic
```
