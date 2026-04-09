# AL Performance Skills

A collection of focused AI skill files for analyzing and optimizing **Business Central AL development performance**. Each skill primes the model with deep domain expertise and enforces structured, actionable output.

## Skills

| Skill File | Focus Area | Key Problem Solved |
|-----------|------------|-------------------|
| [ALQueryOptimizer.md](./ALQueryOptimizer.md) | Data access & queries | SETRANGE/SETFILTER mismatches, missing SETLOADFIELDS, N+1 reads |
| [ALFlowfieldPerformance.md](./ALFlowfieldPerformance.md) | FlowFields & SIFT | CALCFIELDS in loops, SIFT write overhead, SETAUTOCALCFIELDS |
| [ALBulkOperations.md](./ALBulkOperations.md) | Bulk data processing | Row-by-row MODIFY/DELETE → MODIFYALL/DELETEALL, batch commit design |
| [ALIndexDesignAdvisor.md](./ALIndexDesignAdvisor.md) | Table keys & indexes | Missing keys, wrong column order, SIFT index design |
| [ALLockAnalyzer.md](./ALLockAnalyzer.md) | Concurrency & locking | Deadlocks, premature LOCKTABLE, long transactions, blocking |
| [ALReportPerformance.md](./ALReportPerformance.md) | Reports & analytics | DataItem join problems, per-row CALCFIELDS, layout overhead |
| [ALAPIOptimizer.md](./ALAPIOptimizer.md) | APIs & web services | OData filter pushdown, FlowField exposure, HttpClient patterns |
| [ALBackgroundTaskAdvisor.md](./ALBackgroundTaskAdvisor.md) | Job Queue & async | Unbounded batch jobs, missing COMMIT intervals, parallelism |
| [ALUIPerformance.md](./ALUIPerformance.md) | Pages & UI | OnAfterGetRecord DB calls, list scroll lag, round-trips |
| [ALCodeProfiler.md](./ALCodeProfiler.md) | Profiling & hotspots | Profiler interpretation, O(N²) patterns, caching opportunities |

## Usage

Paste the full content of a skill file as a system prompt or at the start of a conversation with your AI assistant. Then provide the AL code, profiler output, or page/table definition you want analyzed.

### Example workflow

```
1. Open ALQueryOptimizer.md
2. Copy entire contents → paste as system prompt
3. Paste your AL codeunit or procedure
4. Ask: "Analyze this for query performance issues"
```

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
