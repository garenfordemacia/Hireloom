# Changelog

All notable changes to JobSeeker · Career-Ops are documented here. The format
follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the
project adheres to [Semantic Versioning](https://semver.org/).

## [1.7.0] — 2026-05-06

The "WOW + fork-friendly" release. Career-Ops jumps from 1.3 → 1.7 by
backporting four minor versions of upstream features in one pass:
LaTeX CV export, Gemini evaluator, full-featured wizard schema,
governance docs, and 7 README translations. Plus 5 quality fixes
surfaced by a fresh-clone simulation.

### Added

#### LaTeX CV pipeline (was: 1.7 upstream feature)
- `generate-latex.mjs` — validates a generated `.tex` resume against the
  required sections (Education, Work Experience, Personal Projects,
  Technical Skills) and required commands (`\resumeSubheading`,
  `\resumeItem`, `\resumeProjectHeading`), then compiles via `tectonic`
  (preferred) or `pdflatex`. Exits non-zero on schema errors.
- `templates/cv-template.tex` — Jake-Gutierrez-style ATS-friendly LaTeX CV
  template with `\resumeSubheading` / `\resumeItem` macros.
- `modes/latex.md` — agent mode that produces a `.tex` from `cv.md`
  conforming to the template.
- `npm run latex` script.

#### Gemini-powered evaluator
- `gemini-eval.mjs` — free-tier Claude alternative. Reads `modes/oferta.md`
  + `modes/_shared.md` + `cv.md` and evaluates a JD via `gemini-2.0-flash`.
  Requires `GEMINI_API_KEY` (free tier has 15 RPM / 1M tokens/day).
- `npm run eval:gemini` script.
- `GEMINI.md` — Gemini Code Assist contributor guide.

#### Profile schema (ApplyPilot-inspired)
Three sections every serious job-search tool eventually needs:
- `work_authorization` (legally_authorized, sponsorship, permit_type) —
  every US/CA application asks these two questions
- `eeo_voluntary` (gender, race_ethnicity, veteran_status,
  disability_status) — defaulted to "Decline to self-identify" so
  EEO renderers always have a valid value
- `resume_facts` (preserved_companies, preserved_projects,
  preserved_school, real_metrics) — the immutable identity guard.
  Tailoring/cover-letter modes MUST treat these as ground truth;
  prevents AI from inventing companies, projects, or metrics.

`dashboard-web/lib/onboard.mjs` serializeProfileYaml emits all three
with sensible defaults; `validateOnboardPayload` accepts/validates all
three (skip-friendly). 11 new unit tests covering each path + edges.
E2E verified: POST /api/onboard/finalize round-trip persists all three
sections to `config/profile.yml` correctly.

#### Restored upstream scripts (CLAUDE.md referenced these but local was missing them)
- `scan.mjs` — zero-token portal scanner (Greenhouse/Ashby/Lever direct
  API hits, ~0 LLM cost). Verified pulls 10+ live Anthropic listings.
- `check-liveness.mjs` + `liveness-core.mjs` — verifies postings still
  accept applicants (expired signals win over generic Apply text).
- `analyze-patterns.mjs` — rejection-pattern analyzer (JSON output for CI).
- `followup-cadence.mjs` — follow-up cadence calculator (JSON output).
- `doctor.mjs` — JSON-output system diagnostic (parallel to
  `install.sh --doctor`; CI-friendly).
- `npm run scan / liveness / patterns / followup / doctor` scripts.

#### Modes (3 missing locally)
- `modes/patterns.md` — wires up `analyze-patterns.mjs`
- `modes/followup.md` — wires up `followup-cadence.mjs`
- `modes/interview-prep.md` — company-specific interview intel mode

#### Governance + community
- `CODE_OF_CONDUCT.md` — Contributor Covenant 2.1 with enforcement
- `GOVERNANCE.md` — BDFL model with contributor ladder
- `SECURITY.md` — private vulnerability reporting
- `SUPPORT.md` — help-question routing (Discord/Discussions, not issues)
- `TRADEMARK.md` — naming + logo usage policy
- `LEGAL_DISCLAIMER.md` — auto-apply legal coverage
- `CONTRIBUTORS.md` — recognition policy

#### Internationalization
- `README.cn.md` (zh-CN), `README.es.md` (Spanish), `README.ja.md`
  (Japanese), `README.ko-KR.md` (Korean), `README.pt-BR.md` (Brazilian
  Portuguese), `README.ru.md` (Russian), `README.zh-TW.md` (Traditional
  Chinese). 7 new languages.

#### Nix devshell
- `flake.nix` + `flake.lock` — Nix-flake devshell with Playwright support.
  `nix develop` brings up Node 22 + Chromium + all build deps reproducibly.

### Fixed

- **Finalize ENOENT**: `dashboard-web/server.mjs` now `mkdir -p`'s
  CONFIG_DIR before writing `profile.yml`. Fresh tmpfs / custom
  CONFIG_DIR no longer fail finalize with a generic "finalize failed".
- **Back→Continue blanks step-2**: when a user goes back to step 1 and
  re-extracts, manual edits in step 2 are preserved instead of being
  overwritten by an empty extraction.
- **Generic finalize errors**: now maps `err.code` to specific public
  messages (ENOENT/EACCES/EROFS/ENOSPC) and returns 500 (was 400).
- **Windows `install.sh --uninstall` didn't kill the local server**:
  `pkill -f` doesn't exist on Git Bash. Added `ps -ef | grep | awk |
  kill` fallback. Verified end-to-end on Git Bash.
- **Privacy hardening**: 4 PII leaks repaired
  (`docs/product-strategy.md` untracked, `MISTAKES.md` placeholders,
  `tests/onboard.test.mjs` "Tony Walteur" → "Jane Doe", comp regex
  generalized in `dashboard-web/server.mjs:188`).
- **`interview-prep/story-bank.md` was tracked** — accumulates personal
  STAR+R stories. Gitignored, extracted template to
  `templates/story-bank.template.md`, install.sh `ensure_user_files()`
  seeds it on fresh install.

### Tests

- 140 tests across 12 suites (was 116, then 122, now 140)
- 11 new tests for the ApplyPilot-inspired schema sections
- 6 new integration tests for `/api/health`

### Migration notes

If you were on 1.3 with a working profile.yml:

1. `git pull` the latest.
2. **Your profile.yml is forward-compatible** — the new sections are
   optional. Re-running the wizard will append `work_authorization`,
   `eeo_voluntary`, and `resume_facts` blocks, but your existing
   candidate/target_roles/narrative/compensation are preserved.
3. The wizard auto-creates a `profile.yml.bak.{timestamp}` snapshot
   before any rewrite, so rollback is one `cp` away.
4. No data migration required for `data/`, `reports/`, or `cv.md`.

[1.7.0]: https://github.com/santifer/career-ops/releases/tag/v1.7.0

## [1.3.0] — 2026-05-05

The "easy install + amazing onboarding" release. Career-Ops is now installable
in 60 seconds with a single command on any platform, ships a single-file
executable for users who'd rather not touch a terminal, and the 6-step
resume-driven onboarding wizard now reads as a conversation with the AI.

### Added

#### Packaging & install
- `install.sh` — bash installer with `--docker | --local | --update | --uninstall | --doctor` modes. Auto-generates `SESSION_SECRET`, copies `.env.example` to `.env`, opens the dashboard URL in your default browser, polls `/api/health` for boot.
- `install.ps1` — PowerShell mirror for native Windows install. Same UX, same modes.
- `Makefile` — 16 targets (`install`, `docker`, `docker-prod`, `local`, `start`, `stop`, `logs`, `shell`, `test`, `doctor`, `update`, `backup`, `clean`, `rebuild`, `wipe-cache`). Self-documenting via bare `make`.
- `scripts/build-exe.sh` — esbuild bundle + Node SEA pipeline that produces a single-file `career-ops.exe` (Windows) / `career-ops` (macOS, Linux) — ~88 MiB, no Node install needed by the end user.
- `scripts/launcher.mjs` — the EXE entrypoint: auto-detects free port, opens browser, finds project root, falls back to `~/CareerOps` if no project nearby.
- `scripts/publish-release.sh` — `gh repo create` + push + tag + release with EXE attached, all idempotent. Refuses to publish if it detects API keys in tracked files.
- `packaging/career-ops.service` — systemd unit with sandboxing for Linux servers / WSL2.
- `packaging/io.santifer.career-ops.plist` — launchd agent for macOS auto-start at login.
- `docker-compose.hardened.yml` — production overlay with read-only fs + capability drop + ulimits + log rotation.

#### Backend
- `GET /api/health` — lightweight liveness probe `{ ok, uptime, version, now }` with `Cache-Control: no-store`. Used by Docker `HEALTHCHECK`, the install boot probe, and external monitors.
- Pure-Node Docker `HEALTHCHECK` (replaces `wget` which isn't in `node:22-slim`).
- `tini` as the container entrypoint for proper PID-1 signal handling and zombie reaping (Playwright spawns Chromium subprocesses).

#### Onboarding UX
- Conversational subtitles on every wizard step ("Hi — let's start with your resume", "Did I get these right?", "Anything that's a hard no?", "Tell me what makes you, you", "Ready when you are"). Reads like the AI is talking to you, not a form wizard.
- Post-finalize celebration: 36 prismatic confetti dots burst from the brand mark when the user ships the wizard. Respects `prefers-reduced-motion`. Lasts ~1.4 s.
- Toast on finalize is now "Profile saved · rendering your CV — I'll handle it from here" (was "Profile saved · CV PDF generating…").

#### CI
- New `.github/workflows/release.yml`:
  - **smoke-install** matrix on Ubuntu / macOS / Windows runs `install.sh --doctor` + `npm test` + syntax-checks all shell scripts.
  - **docker-build** builds the image and probes `/api/health` from a live container.
  - **build-exe** matrix produces signed-ready binaries for the 3 platforms on every `v*` tag.
  - **publish-release** drafts a GitHub Release, attaches all binaries + a source tarball, then un-drafts.

### Changed

- **Dockerfile**: multi-layer rebuild — `npm ci` when lockfile present, env defaults for `PORT`/`HOST`, `tini` entrypoint, exposes 4747, `EXPOSE 4747`, `HEALTHCHECK` baked in (no longer requires `docker-compose.yaml` to add it).
- **docker-compose.yaml**: now exposes `4747:4747`, default command runs the dashboard (was `/bin/bash`), `restart: unless-stopped`, healthcheck via pure Node, OCI image labels.
- **package.json**: `"type": "module"`, `"engines": { "node": ">=20" }`, `"bin": { "career-ops": "dashboard-web/server.mjs" }`. New scripts: `start`, `dev` (with `--watch`), `preview` (isolated tmp dirs), `test:watch`. Bumped 1.0.0 → 1.3.0.
- **README**: new "Install in 60 seconds" section at top covers macOS / Linux / WSL / Windows / Make / curl-pipe-bash / auto-start templates. Original manual-install steps preserved as a fallback.
- **`.gitignore`**: hardened against accidental secret leaks (`.env*`, `*.pem`, `*.key`, `secrets.json`), excludes `cv.md` (PII), `data/follow-ups.md`, build artifacts (`dist/`, `*.exe`, `backups/`), worktree scratch.

### Tests

- 122 total (was 116) — 6 new integration tests for `/api/health` that boot a real server on a random port and assert the contract: status 200, JSON shape, `Cache-Control: no-store`, monotonic uptime, 20 concurrent probes < 2 s.
- `buildGmailStatus` (12) and `readJsonBody` (8) suites unchanged; all still passing.

### Security

- `scripts/publish-release.sh` includes a pre-flight scan that refuses to publish if any tracked file matches Anthropic / OpenRouter / Kimi / Google / GitHub token patterns. Belt-and-suspenders next to `.gitignore`.
- Healthcheck uses a portable Node oneliner — eliminates the need for `wget` / `curl` in the container image.

### Migration notes

If you were already running the dashboard from this repo:

1. `git pull` the latest.
2. Restart your dashboard so `/api/health` becomes available (the Docker healthcheck depends on it).
3. (Docker users) `docker compose down && docker compose up -d --build` to pick up the multi-layer Dockerfile + new healthcheck.

Your data (`cv.md`, `config/profile.yml`, `data/`, `reports/`, `interview-prep/`) is untouched by any of these changes — they live outside the system layer per `DATA_CONTRACT.md`.

[1.3.0]: https://github.com/santifer/career-ops/releases/tag/v1.3.0
