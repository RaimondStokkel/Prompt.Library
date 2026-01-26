# Prompt Library

> **Preview** - This is a personal collection of AI prompts in active development. Use at your own risk. Prompts may change, break, or be removed without notice.

---

## Overview

A curated collection of AI prompts for coding tasks, code review, debugging, and creative work. Originally focused on Dynamics 365 Business Central and AL development, now expanding to general software engineering use cases.

---

## Prompts

### AL-Coding (Business Central)

| Prompt | Description |
|--------|-------------|
| [VScode.Review.Claude.md](AL-Coding/code-review/VScode.Review.Claude.md) | Senior AL code reviewer for Dynamics 365 Business Central |
| [performance-test.al](AL-Coding/code-generation/performance-test.al) | Performance test suite generation for BC Performance Toolkit |

### General Coding

| Prompt | Description |
|--------|-------------|
| [CodeExplainer.md](general-coding/CodeExplainer.md) | Explain code at beginner, intermediate, or advanced levels |
| [APIDesignReview.md](general-coding/APIDesignReview.md) | REST API design review with scoring and recommendations |
| [SecurityReview.md](general-coding/SecurityReview.md) | Security vulnerability analysis (OWASP Top 10) |
| [SQLOptimizer.md](general-coding/SQLOptimizer.md) | SQL query optimization with index recommendations |
| [RefactoringAdvisor.md](general-coding/RefactoringAdvisor.md) | Code smell detection and refactoring guidance |
| [GitCommitCraft.md](general-coding/GitCommitCraft.md) | Conventional commit message generation |

### Testing & Debugging

| Prompt | Description |
|--------|-------------|
| [UnitTestGenerator.md](testing-debugging/UnitTestGenerator.md) | Comprehensive unit test generation (AAA pattern) |
| [DebuggingDetective.md](testing-debugging/DebuggingDetective.md) | Systematic debugging using SEARCH methodology |

### Creative Prompts

| Prompt | Description |
|--------|-------------|
| [PhotoRealistic.md](creative-prompts/PhotoRealistic.md) | AI image generation prompt engineering (Midjourney, DALL-E, SD) |

### Miscellaneous

| Prompt | Description |
|--------|-------------|
| [Lyra.md](misc/Lyra.md) | AI prompt optimization specialist |
| [BCTDDReviewer.md](misc/BCTDDReviewer.md) | Business Central architectural document reviewer |
| [ReviewTechDoc.md](misc/ReviewTechDoc.md) | Technical architecture document auditor |
| [GoalSetting.md](misc/GoalSetting.md) | Personal goal-setting coach (Dutch) |

---

## Structure

```
├── AL-Coding/
│   ├── code-generation/
│   └── code-review/
├── general-coding/
├── testing-debugging/
├── creative-prompts/
└── misc/
```

---

## Usage

1. Clone or fork this repository:
   ```bash
   git clone https://github.com/RaimondStokkel/Prompt.Library.git
   ```

2. Browse prompts within the desired category.

3. Copy and adapt prompts for your specific context or AI model.

---

## Disclaimer

This is a **preview release** of a personal prompt library.

- Prompts are provided "as is" with no guarantees
- Results may vary depending on AI model and context
- Prompts may be modified or removed at any time
- Test thoroughly before using in production workflows

---

## Contributing

Contributions welcome. Please ensure prompts are clear, well-structured, and placed in the appropriate category.

---

## License

[MIT License](LICENSE)
