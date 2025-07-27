Since I don't know how you will identify me in SoftUni, because my username there is already taken on GitHub, I will write my SoftUni username here – lefty, my real name (Todor Lefterov), and my email lefter@abv.bg.

# Exam-Automating-Workflow-with-Git-Hooks-and-CI-CD-Integration

 Git Hooks

- **Pre-commit hook**:
  - Enforces commit message format: `TASK-123: Your message`
  - Checks Java code formatting using [google-java-format](https://github.com/google/google-java-format)

- **Pre-push hook**:
  - Runs all unit tests via Maven (`mvn test`)
  - Blocks push if any test fails

> Hooks are located in `.git/hooks` and are symlinked or manually copied.

---

### ⚙️ CI/CD Integration

- GitHub Actions (`.github/workflows/ci.yml`) automatically runs:
  - On every pull request to `main`
  - Unit tests with Maven and JUnit 5
- CI must pass before merging

---

## 🧪 Sample Code & Tests

- Java class and unit tests located in:
  - `src/main/java/com/example/HelloWorld.java`
  - `src/test/java/com/example/HelloWorldTest.java`
- Tests include:
  - Addition
  - Subtraction
  - String concatenation

---

## 📦 Technologies

- Java 17
- Maven
- JUnit 5
- Git Hooks (Bash scripts)
- GitHub Actions

---

## 🚀 How to Run Locally

```bash
# Format check
./scripts/check-format.sh

# Run tests
mvn test
