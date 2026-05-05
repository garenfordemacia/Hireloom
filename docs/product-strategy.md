# JobSeeker — Product Strategy Pack

> Single source of truth for the JobSeeker mobile companion to the existing Career-Ops web dashboard. Generated from the Apple Design Prompt v2 framework. **Audience modeled directly on the founding user's resume + profile** (Tony Walteur, Senior Solution Director, AI Transformation), not a generic senior-IC composite. Every persona here is an actual archetype found inside Tony's network or his target companies.

**App:** JobSeeker · **Primary persona:** Senior strategic operators at the AI × business × tech intersection — the "Chief of Staff (AI/Tech) / Head of AI Innovation / VP AI Strategy" tier. Currently employed at consulting firms, AI-first startups, or large enterprises with mature transformation programs. 8–15 yrs experience, $180–500k current TC, picky and patient. · **Secondary persona:** Director-tier professional services / customer success leaders (advisory, no cold quota) and AI Practice Leads at Big 4 firms. · **Stack:** SwiftUI iOS 18 (companion) → Node.js Career-Ops server (backend) · **Style:** Liquid glass + prismatic glow, Apple HIG, dark-first · **Languages at v1:** English + French (Montreal/EU) + German + Japanese — already shipped in the existing modes/.

---

## 1 · App Blueprint

### Personas — modeled on Tony's actual resume + profile + adjacent network

| Persona | Real-world archetype (drawn from Tony's profile) | Daily reality | What they want from JobSeeker |
|---|---|---|---|
| **Tony — The Hybrid Operator** *(primary, founding user)* | Senior Solution Director / Head of AI Innovation at a consulting firm. 8+ yrs enterprise IT transformation. Sole executive for AI across 12,000 ppl, 60+ countries. Built an agentic platform projecting $40M+ savings. $200–300k+ TC, no upper limit. Native FR/EN, Anthropic-certified. **Targeting:** Chief of Staff (AI/Tech), Head of AI Innovation, VP AI Strategy, AI Practice Lead at Big 4. **Avoiding:** P&L ownership, cold-quota, non-tech, 5-day onsite. | Currently employed, scanning passively while running a $100M+ innovation strategy. 30-min commute, lunch breaks, late evenings. Hates "spray and pray." Reads JDs at executive depth — wants to know if the role has *actual decision authority* before investing 4 hrs in a tailored package. | A daily curated 3–5 roles where the system has already verified: (a) AI-first or AI-mature company, (b) hybrid scope (strategy + delivery + tech), (c) no cold-outreach quota, (d) not a former employer, (e) comp band ≥ $200k. Plus: McKinsey/BCG-grade cover letter drafts, not generic. |
| **Sophie — The Big-4 AI Practice Lead candidate** | Senior Manager / Director at McKinsey QuantumBlack, BCG X, Deloitte AI Institute, or EY.ai. 10–14 yrs. Wants to move from Big 4 to an AI-first product company OR ascend within Big 4 to Partner-track. | Bills 60+ hrs/week to clients; job search happens between flights. WhatsApp + LinkedIn DMs are the primary channels. Brand-conscious — won't apply to anything that looks like a downgrade. | Native iOS app she can use during a 90-min flight; comp-band confidentiality (no public scraping); referral routing through partners; calendar holds for interviews respecting her client load. |
| **Marc — The Strategic CS / Professional Services Director** | Director Customer Success or Director Professional Services at a Series B–D SaaS. Wants the *advisory* CS role (QBRs, EBCs, executive sponsorship) NOT the IC-facing renewal-quota CS Director path. | Loves the advisory motion, hates pipeline pressure. Reads JDs paragraph by paragraph looking for the words "expansion quota" or "renewal target" — those are instant disqualifiers. | A deal-breaker filter that auto-skips any posting mentioning quota, renewal targets, or churn-as-primary-OKR. Score weighting that elevates "advisory," "executive sponsor," "trusted advisor." |
| **Elena — The Returning Operator** | Former CoS or VP Strategy who took 18 months out (parental leave, sabbatical, side venture) and is reentering. 12+ yrs. Mid-career narrative reset. | Confidence dip, gap-explanation fatigue. Network-first job search. Limited time daily (childcare, partner schedule). Needs *encouragement* signal, not just task lists. | Returning-to-work narrative templates; gap-positioning in CV; recruiter-thread tone calibration that frames the gap as a feature; a streak that pauses gracefully on weekends. |

> **Note**: I deliberately removed the generic "senior-IC engineer," "career-switching PM," and "recently RIF'd" personas from the prior draft. Those are large markets but they're not in Tony's actual orbit and the product would dilute. The four above are all **archetypes Tony has personally encountered** — colleagues, candidates he's hired, peers he's interviewed with, or competitors for roles he's targeting. TAM is smaller but conversion intent is much higher.

### Pain points (ranked by frequency × pain — calibrated to the hybrid-operator persona)

1. **Title-vs-substance ambiguity at the senior level** — every JD with "VP" or "Head of" reads grand at the top, then bullet 4 reveals it's an IC role with a fancy title, or has a hidden $5M cold-pipeline quota. Tony's real resume reflects this: he flags "Director title without direct reports" as an explicit deal-breaker. Spending 30+ min reading to discover this is infuriating.
2. **Evaluation fatigue** — at 740+ postings/year, every role takes 20–40 min to triage. The hybrid operator role is rare enough that you can't filter by title alone.
3. **CV drift across 9+ archetypes** — Tony's profile lists 9 distinct target roles (CoS, Head of AI, VP AI Strategy, Director PS, AI Practice Lead, etc.). Each archetype needs a different CV emphasis. Manually managing 9 base variants × dozens of tailored versions is a system collapse waiting to happen.
4. **Recruiter follow-up shame loop** — at $200k+ comp the recruiter pool is small and tight-knit. Forgetting to reply for 3 weeks is reputation-damaging. Most CRMs are over-engineered for sales; nothing exists for the candidate side.
5. **Comp opacity at the band where it matters most** — public ranges for $200–500k roles either lie ("competitive") or omit. The $14/hr glassdoor data is useless for $300k decisions.
6. **Anti-target tracking** — Tony explicitly excludes Amaris/Mantu, DiLiTrust, Jamf (former employers). Every job board re-surfaces these endlessly. There's no clean way to maintain a "DO NOT TARGET" list across LinkedIn, recruiters, scrapers.
7. **Visa + relocation logistics** — "Open to global relocation, would need H-1B for US." Most postings don't say "we sponsor" or "we don't" up front. Filtering this manually is slow.
8. **Interview prep cold start at the executive depth** — by the time on-site is scheduled, you've forgotten what excited you about this company. At the CoS/VP tier, "I read your S-1 yesterday" is table stakes.
9. **Cover-letter quality cliff** — generic AI-written letters scream "AI-written." McKinsey/BCG-grade letters open with the company's problem, not self-intro (per Tony's documented standard). Most tools generate the wrong style.

### Value prop

> **JobSeeker is the operating system for the rare-role job search.** Built for senior strategic operators chasing scarce, hybrid roles (Chief of Staff, Head of AI Innovation, VP AI Strategy, AI Practice Lead) — where 740+ postings yield only ~30 real fits, and each one deserves McKinsey/BCG-grade preparation.
>
> Drop a URL or paste a JD; the system reads it the way *you* would: looking for hidden quotas, fake titles, P&L gotchas, former-employer flags, visa stance, comp band. It scores against your archetypes (not generic "seniority"), drafts a tailored CV that matches your hybrid narrative, and writes the cover letter in your documented voice (problem-first, no em-dashes, surgical). On the go, swipe to triage between meetings. At your desk, the web dashboard handles batch ops. Everything stays in your private repo — your data, your portability.

### MVP / v1 / v2 (rebalanced for the hybrid-operator audience)

| Tier | Features | Ship target |
|---|---|---|
| **MVP (8 weeks)** | iOS app reads from existing Career-Ops repo (read-only); push when a 4.0+ role appears against the user's archetypes; swipe-to-dismiss / swipe-to-shortlist; **anti-target list** that hard-blocks former employers; **deal-breaker filter** (no-quota, no-onsite-5d, etc.); deep-link to web dashboard for full eval. | Week 8 — TestFlight (50 senior operators from Tony's network) |
| **v1 (16 weeks)** | Full CRUD on tracker; JD paste sheet → cloud eval → push back with hidden-quota / fake-title / visa-stance flags; CV PDF preview with 6 templates; **recruiter-thread Gmail integration with McKinsey/BCG-grade reply drafts** (problem-first opening, no em-dashes, Tony's documented standard); Spotlight search; bilingual EN+FR at launch (Montreal-local). | Week 16 — App Store launch |
| **v2 (28 weeks)** | DE + JA mode shipped; Operator-tier private Slack; on-demand coach-call scheduling; ATS audit; negotiation script generator; interview-day intel pack as Apple Watch glance; visionOS spatial tracker (demo-only, marketing). | Week 28 — Operator + Sprint tiers launch |

> **What I cut from the prior MVP**: Apple Watch glance and visionOS dashboard (defer to v2; they don't earn their build cost for this audience). What I added: anti-target list, deal-breaker hard filter, McKinsey-grade cover-letter generator. These map directly to Tony's profile (former-employer exclusions, no-quota requirement, McKinsey/BCG cover-letter standard) and would be table-stakes for him to use this product daily.

### User flow (golden path)

```
Push notification          Open app → Triage stack    Tap "Generate CV"
"Anthropic · 4.6/5  →  →   Swipe right (apply queue) →  Background job tailors CV
new posting"               Swipe left (dismiss)         + drafts cover letter
                                                        + writes report
        ↓                                                       ↓
Recruiter responds         Today screen shows: 2 active     Apply tap → Safari
push: "Reply within 3d"  ← interviews · 1 follow-up      ←  opens posting with
                          due · 1 ready-to-apply             form pre-filled
```

### Monetization (recalibrated for the $200–500k earner audience)

| Tier | Price | Gating |
|---|---|---|
| **Free** | $0 | Read-only sync from your repo. View, search, swipe-triage. 5 evals/day. No CV generation. No deep-link to former-employer filter. |
| **Pro** | $19/mo or $180/yr | Unlimited evals, push, CV generation (6 templates), Gmail thread integration, follow-up drafts, multi-device sync, anti-target list, visa-stance filter. |
| **Operator** | $99/mo or $900/yr | Everything in Pro + on-demand 30-min call with a senior operator-coach (1×/quarter) + custom archetype tuning + recruiter-thread tone calibration ("McKinsey voice," "founder voice," "CoS voice") + private Slack with other Operator-tier users. |
| **Sprint** | $499 one-time | 90-day Operator tier + 90-min strategy session + ATS audit of base CV + interview prep packet for top 3 target companies + 1×/wk async review of any draft. |

> **Pricing rationale (revised based on real persona)**: Tony's profile = $200–500k earner who pays $14/mo for a coffee subscription without thinking. The price-anchor question isn't "$14 vs $25" — it's "is this worth one billable consulting hour?" $19/mo is below the noise threshold; $99/mo Operator tier captures the hybrid operators who treat job search like an investment strategy and want concierge service; $499 Sprint replaces the executive recruiter retainer (typically $5–25k) for users who want to self-direct with help. The previous $14 / $299 plan undersold the audience by 30–40%.

### Risks

| Risk | Severity | Mitigation |
|---|---|---|
| **Apple rejects "automated apply" framing** as TOS gray area | High | Position as an *assistant*, not a bot; final submit is always human-tapped; never auto-clicks Apply on third-party sites. |
| **Anthropic API costs spike** with paid users | Medium | Per-user daily token budget (1M); fallback to local llama for non-critical eval; surface cost in Pro analytics. |
| **Privacy panic** ("they read my email") | High | On-device Gmail OAuth, server only proxies the token, no storage of message bodies past 7 days; SOC-2 path on roadmap. |
| **CV templates feel generic** | Medium | Ship 6 templates at launch; let users fork the HTML. Marketing leans on "your data, your repo." |
| **Recruiters detect AI-tailored CVs** | Low | Tone calibration per role seniority; user-editable on every send; explicit "sounds-like-a-human" guardrail in prompt. |
| **Web/mobile sync drift** corrupts user state | High | Conflict resolver in CRDT-style merge; mobile is read-mostly with explicit "push" actions; weekly snapshot to user's local repo. |

### Summary

JobSeeker is the **mobile triage layer** on top of the existing Career-Ops desktop pipeline. It doesn't replace the dashboard — it makes the dashboard *ambient* in your day. The killer demo is: "Push lands → 4 swipes → 3 minutes later you've evaluated, dismissed, generated a CV for the keeper, and the recruiter outreach drafts itself." Free tier acquires; Pro tier monetizes; Career Sprint captures the urgent niche.

---

## 2 · App Structure (SwiftUI iOS)

### Folder layout

```
JobSeeker/
├── App/
│   ├── JobSeekerApp.swift              # @main + scene phase
│   ├── AppEnvironment.swift            # DI root
│   └── RootCoordinator.swift           # tab coordinator + deep-link router
├── Features/
│   ├── Triage/                         # swipeable role stack
│   │   ├── TriageView.swift
│   │   ├── TriageViewModel.swift
│   │   ├── RoleCard.swift
│   │   └── SwipeAction.swift
│   ├── Today/                          # home screen widget-grade summary
│   │   ├── TodayView.swift
│   │   ├── TodayViewModel.swift
│   │   ├── ActivityRing.swift
│   │   └── NextActionPill.swift
│   ├── Tracker/                        # full applications list
│   │   ├── TrackerView.swift
│   │   ├── TrackerFiltersView.swift
│   │   ├── ApplicationDetailView.swift
│   │   └── StatusTransitionSheet.swift
│   ├── Pipeline/                       # paste JD / drop URL
│   │   ├── PipelineView.swift
│   │   ├── PasteSheet.swift
│   │   └── EvalProgressView.swift
│   ├── CV/                             # CV preview + share
│   │   ├── CVPreviewView.swift
│   │   ├── TemplatePicker.swift
│   │   └── PDFExporter.swift
│   ├── FollowUps/                      # inbox + recruiter threads
│   │   ├── FollowUpsView.swift
│   │   ├── ThreadView.swift
│   │   └── ReplyDraftSheet.swift
│   ├── Profile/                        # onboarding wizard, settings
│   │   ├── OnboardingFlow.swift
│   │   ├── ProfileView.swift
│   │   └── DealBreakersEditor.swift
│   └── Paywall/
│       ├── PaywallView.swift
│       └── EntitlementGate.swift
├── Components/                         # shared UI
│   ├── Buttons/PrismaticButton.swift
│   ├── Cards/GlassCard.swift           # backdrop-blur, accent ring
│   ├── States/EmptyState.swift
│   ├── States/ErrorState.swift
│   ├── States/SkeletonRow.swift
│   ├── Indicators/ScorePill.swift
│   ├── Indicators/CompPill.swift
│   ├── Modifiers/HapticFeedback.swift
│   └── Toast.swift
├── Domain/                             # pure model + use cases
│   ├── Models/
│   │   ├── Application.swift
│   │   ├── Role.swift
│   │   ├── Score.swift
│   │   ├── DealBreaker.swift
│   │   └── Profile.swift
│   ├── UseCases/
│   │   ├── EvaluateRoleUseCase.swift
│   │   ├── GenerateCVUseCase.swift
│   │   ├── DraftFollowUpUseCase.swift
│   │   └── SyncTrackerUseCase.swift
│   └── Validation/InputValidator.swift
├── Data/                               # API + cache + persistence
│   ├── API/
│   │   ├── APIClient.swift             # async/await URLSession
│   │   ├── Endpoints.swift
│   │   ├── AuthMiddleware.swift
│   │   └── RetryPolicy.swift
│   ├── Repositories/
│   │   ├── ApplicationRepository.swift
│   │   ├── PipelineRepository.swift
│   │   └── ProfileRepository.swift
│   ├── Storage/
│   │   ├── KeychainStore.swift         # tokens, OAuth refresh
│   │   ├── SwiftDataStack.swift        # local cache (iOS 17+)
│   │   └── FileVault.swift             # CV PDFs, JD attachments
│   └── Sync/
│       ├── BackgroundRefresh.swift     # BGAppRefreshTask
│       └── ConflictResolver.swift
├── Services/
│   ├── Auth/                           # passkey + Apple SSO
│   ├── Notifications/                  # APNs + local
│   ├── Analytics/                      # PostHog (privacy-respecting)
│   ├── Telemetry/                      # crash + perf via MetricKit
│   └── DeepLink/                       # universal links + Spotlight
├── Resources/
│   ├── Assets.xcassets
│   ├── Localizable.xcstrings           # iOS 17+ string catalog
│   └── Fonts/SFPro-*.otf
└── Tests/
    ├── DomainTests/                    # unit
    ├── DataTests/                      # mocked API
    ├── UITests/                        # XCUITest snapshots
    └── PerformanceTests/
```

### Key architecture decisions

| Concern | Choice | Rationale |
|---|---|---|
| State management | **Observable** + `@Environment` for DI; no Redux | Apple's modern primitive; no third-party churn. |
| Navigation | **NavigationStack** with `Hashable` route enum | Type-safe deep links; survives state restoration. |
| Persistence | **SwiftData** for tracker cache; **Keychain** for tokens; **filesystem** for PDFs | SwiftData replaces Core Data; PDFs >5 MB don't belong in SwiftData. |
| Networking | **URLSession + async/await**; no Alamofire | Zero deps. Custom `APIClient` with `Endpoint` enum. |
| Auth | **Apple Sign-In** primary; **Passkey** for return; OAuth proxy via Career-Ops server for Gmail | Senior earners hate passwords; Sign-In with Apple is App Store hospitable. |
| Push | **APNs** via the Node server's existing push integration; on-device local notifications for streaks | One channel, server is single source of truth. |
| Background work | **BGAppRefreshTask** every 4–6h to pull new pipeline items | Battery-friendly; avoids polling. |
| Error handling | Typed `AppError` enum + `ErrorBoundary` view modifier; user-visible vs silent (telemetry only) split | No raw `Error?` leaking into UI. |
| Analytics | **PostHog self-hosted** (no Google) + **MetricKit** for perf | Privacy story holds; users can opt out. |
| Feature flags | **Local plist + remote override** via `/api/flags` | No LaunchDarkly bill at MVP. |

### API layer contract

```swift
// Data/API/APIClient.swift — sketch
protocol APIClient: Sendable {
    func fetch<T: Decodable>(_ endpoint: Endpoint) async throws -> T
    func upload(_ endpoint: Endpoint, body: Data) async throws
    func stream<T: Decodable>(_ endpoint: Endpoint) -> AsyncThrowingStream<T, Error>
}

enum Endpoint {
    case data                                    // GET /api/data
    case onboardFinalize(payload: OnboardPayload) // POST /api/onboard/finalize
    case evaluate(jd: String)                     // POST /api/onboard
    case updateStatus(num: String, status: String)
    case applyOne(num: String)
    // ... mirrors the Node server routes 1:1
}
```

### Auth flow

1. First launch → Sign in with Apple (sub: stable Apple userID).
2. App POSTs `{ apple_id, identity_token }` to `/api/auth/apple` on the Career-Ops server.
3. Server verifies token with Apple's JWKS, mints a session cookie + 30-day refresh JWT.
4. Refresh JWT stored in Keychain (`accessControl: .userPresence`).
5. Optional Gmail upgrade → in-app browser to OAuth2 consent → server stores token.
6. Logout → Keychain wipe + server `/api/auth/revoke`.

### Navigation

```
RootCoordinator
└── TabView
    ├── Today          (home; deep-link target for push)
    ├── Triage         (swipeable stack of fresh roles)
    ├── Tracker        (full searchable list; deep-links to Detail)
    ├── Pipeline       (paste / scan / queue)
    └── More
        ├── Profile / Wizard
        ├── CV / Templates
        ├── Follow-ups
        ├── Subscription
        └── Settings
```

Deep-link routes: `jobseeker://app/123` → ApplicationDetail · `jobseeker://eval?jd=...` → Pipeline paste sheet · `jobseeker://triage` → Triage stack.

### Storage strategy

| Data | Where | TTL |
|---|---|---|
| Auth tokens | Keychain (userPresence) | refresh = 30d |
| Tracker rows | SwiftData | invalidated on every backend sync |
| CV PDFs | App Group container | until user deletes |
| JD pastes | SwiftData (encrypted at rest via FileProtectionType.complete) | 90d |
| Push tokens | Keychain + server | refresh quarterly |
| User prefs | UserDefaults (suiteName for App Group) | n/a |

### Error handling matrix

| Class | Surface | User sees |
|---|---|---|
| Network reachability | Banner + retry | "You're offline — last synced 12 min ago" |
| 401 unauthorized | Auto-refresh; 2nd 401 = re-auth modal | "Session expired — sign in again" |
| 5xx server | Exponential backoff, max 3 retries | Toast: "Server hiccup. We'll keep trying." |
| 429 rate limit | Honor `Retry-After` | Toast: "Slow down — back in {n}s" |
| Validation | Inline aria-style helper text on the offending field | Field-specific copy |
| Crash | MetricKit → PostHog | Silent; we surface a recovery banner on next launch |

### Analytics events (taxonomy)

`role.viewed`, `role.dismissed`, `role.shortlisted`, `cv.generated`, `cv.shared`, `apply.tapped`, `followup.drafted`, `followup.sent`, `wizard.started`, `wizard.completed`, `wizard.abandoned_at_step:{n}`, `subscription.viewed`, `subscription.started`, `subscription.canceled`. All events carry `{user_tier, app_version, locale}`.

---

## 3 · UX Flow (screen-by-screen)

Style: Liquid glass + prismatic glow. Every glass surface uses backdrop-blur(40px) saturate(180%); accent rings render as conic-gradients. Dark-first. Reduce-Motion respected — glass falls back to flat surfaces.

### Screen 1 · Onboarding — Drop Resume

- **Goal**: extract everything we can from a single document so the user types as little as possible.
- **Main action**: drag-drop or paste resume; for PDF, deep-link to Files → "Copy text" assist.
- **UI elements**: 1 large dropzone, paste-detection banner, file-format hint, "Skip and fill manually" link.
- **States**:
  - Empty: dropzone glowing breath animation
  - Loading: prismatic conic spinner over the resume preview
  - Error: "We couldn't read that — try .txt, .md, or paste"
  - Success: extracted fields preview + Continue button
- **CTA**: `Continue →` (primary, fills as fields detected).
- **Microcopy**: "Drop your CV. We'll do the boring part." Helper: "We never store this on our servers without your tap-confirm."
- **Retention hook**: nothing leaves device until step 6 finalize.

### Screen 2 · Onboarding — Confirm Basics

- **Goal**: validate auto-extracted fields; let user fix.
- **Main action**: edit name / email / phone / location / LinkedIn / headline.
- **UI elements**: 6 inline fields with right-side detect badge ("from CV"), inline aria-invalid feedback.
- **States**: as user types, badge fades from "from CV" to "edited".
- **CTA**: `Continue →` (disabled until name + email valid).
- **Microcopy**: "We got these from your CV. Tap any to fix."
- **Retention**: shows confidence: "5 of 6 detected" — gives credit for less typing.

### Screen 3 · Onboarding — Roles + Comp

- **Goal**: capture target archetypes and walk-away comp.
- **Main action**: chip multi-select + free-text additions; comp range + minimum.
- **UI elements**: 16 preset role chips, "+ Add custom" input, 2 comp text fields, currency picker, location-flex picker. **"X selected" pill counter** mirroring the web dashboard polish.
- **States**: empty (none selected), normal, "too many roles" warning at >10.
- **CTA**: `Continue →`.
- **Microcopy**: "Tap any that fit. We'll filter postings against this." · Comp helper: "Walk-away minimum stays private — used only for filtering."
- **Retention**: locking in comp creates personalization that compounds value across every future eval.

### Screen 4 · Onboarding — Deal-Breakers (optional)

- **Goal**: capture non-negotiables.
- **Main action**: chip multi-select; "Skip" button visible.
- **UI elements**: 9 preset chips ("No relocation", "No on-call", etc.), "+ Add custom".
- **CTA**: `Skip →` (tertiary) and `Continue →` (primary).
- **Microcopy**: "What would make you say no? We'll auto-skip postings that match."
- **Retention**: every deal-breaker = a micro-saved future hour.

### Screen 5 · Onboarding — Narrative (optional)

- **Goal**: capture 3 superpowers + 1 best achievement + proof points.
- **Main action**: 3 inline inputs + 1 textarea + repeatable proof rows.
- **CTA**: `Skip →` and `Generate →`.
- **Microcopy**: "Optional but high-leverage — these go into every tailored CV."
- **Retention**: the more they put in, the more valuable subsequent CVs are; sunk-cost effect.

### Screen 6 · Onboarding — Review & Generate

- **Goal**: confirm and ship.
- **Main action**: tap `🚀 Generate My Pipeline`.
- **UI elements**: bullet summary, edit-any-field affordance, big primary CTA.
- **States**: loading (CV PDF generating), success (toast + tab switch), error (toast + retry).
- **CTA**: `🚀 Generate My Pipeline`.
- **Microcopy**: "We'll save your profile, render your CV, and arm the pipeline. Edit anytime in Settings."
- **Retention**: success state immediately deep-links into Today screen with a fresh sample role.

### Screen 7 · Today (home)

- **Goal**: 5-second answer to "what should I do right now?"
- **Main action**: tap a Next-Action pill.
- **UI elements**: Activity ring (apps this week / target), 3 stacked next-action pills (e.g., "Reply to Anthropic recruiter — 2d overdue", "1 role at 4.6/5 ready to apply", "Interview prep for Vercel @ Thu"), Streak count.
- **States**: empty (zero-state hero with CTA "Drop a JD link"); loading (skeleton ring); error (banner).
- **CTA**: pills lead directly to relevant screen.
- **Microcopy**: "Your day, one tap at a time."
- **Retention**: streak + ring = daily-open habit hook; push if no open in 36h.

### Screen 8 · Triage Stack

- **Goal**: process new roles in 5 seconds each.
- **Main action**: swipe right (shortlist), swipe left (dismiss), tap (open detail).
- **UI elements**: card stack, prismatic ring colored by score (red <2.5, amber 2.5–3.9, green 4.0+), comp pill, top-3 reasons, "Why this score?" disclosure.
- **States**: empty ("Inbox zero — nice. New roles in ~6h."); loading (3 skeleton cards); end-of-stack ("That's everything for now").
- **CTA**: card-bottom "Open posting" button + swipe gestures.
- **Microcopy**: card top: company · role · location · score · comp; subtle "Tap for full eval".
- **Retention**: gamified rhythm; haptic confirmation on each swipe.

### Screen 9 · Tracker (full list)

- **Goal**: searchable status of every application.
- **Main action**: search + filter; tap row → detail.
- **UI elements**: search bar (sticky), filter pills (All · High-Paying · Follow-up · Applied · Interview · Offer · Evaluated · Rejected), table-style rows with score pill, comp pill, age, follow-up tag.
- **States**: empty (contextual: pre-CV vs post-CV — same logic as web dashboard); loading (skeleton rows); offline ("Showing cached data, last sync 12m ago"); error.
- **CTA**: row tap → detail; sticky FAB → Pipeline paste.
- **Microcopy**: "742 roles · 18 active · 3 awaiting reply"
- **Retention**: search history surfaces forgotten companies.

### Screen 10 · Application Detail

- **Goal**: every fact about this role on one screen.
- **Main action**: tap CTA based on status (Apply → / Mark Applied / Draft Reply / Mark Interview).
- **UI elements**: hero header (company logo, role, status badge), score breakdown card (A–F + legitimacy), comp card, deal-breaker check, recruiter thread snippet, CV preview thumbnail, notes section, history timeline.
- **States**: enriching (skeleton on score card while server eval runs); error per section, never the whole screen.
- **CTA**: dynamic primary button based on status.
- **Microcopy**: contextual to status.
- **Retention**: timeline shows progress; the screen feels like *a record of work done*, not a form.

### Screen 11 · Pipeline (paste / scan)

- **Goal**: get a JD into the pipeline in one tap.
- **Main action**: paste link; iOS share-sheet target.
- **UI elements**: paste sheet, recent pastes, "Scan portals" toggle (Pro), live progress ring during eval.
- **States**: paste-detected glow; eval-running (multi-step indicator); done (CTA "View report").
- **CTA**: `Evaluate` → animated progress → `View report`.
- **Microcopy**: "Paste a link or share to JobSeeker from anywhere."
- **Retention**: every paste creates a tracker row; visible momentum.

### Screen 12 · CV Preview + Share

- **Goal**: see the tailored CV; ship to recruiter.
- **Main action**: scroll preview; tap Share.
- **UI elements**: PDF preview (PDFKit), template picker carousel, regenerate button, share sheet.
- **States**: rendering (progress ring on top of last cached PDF); error (toast + retry).
- **CTA**: `Share PDF` → iOS share sheet.
- **Microcopy**: "Tailored to {company} · {role} · regenerated 2 min ago."
- **Retention**: each generation reinforces "this app saved me 45 min."

### Screen 13 · Follow-Ups

- **Goal**: never lose a recruiter thread.
- **Main action**: review pending replies; tap to draft.
- **UI elements**: thread list grouped by company, "needs reply" tag with overdue countdown, draft sheet (tone selector, send-as-Gmail toggle).
- **States**: empty ("Inbox zero · nice"); loading; offline.
- **CTA**: `Draft Reply` (Pro) or copy-to-clipboard (Free).
- **Microcopy**: "3 replies overdue. Tap to draft — we'll match the recruiter's tone."
- **Retention**: Pro upgrade prompt at first overdue reply.

### Screen 14 · Profile / Settings

- **Goal**: edit anything; manage subscription.
- **Main action**: tap any field group.
- **UI elements**: identity card, target roles editor, deal-breakers editor, comp editor, narrative editor, sub status, data export, delete account.
- **States**: standard list rows.
- **CTA**: per row.
- **Microcopy**: "Edit any field — your repo updates within seconds."
- **Retention**: Data export earns trust; "you can leave at any time" reduces lock-in anxiety.

### Screen 15 · Paywall

- **Goal**: convert free users at the moment of value.
- **Main action**: subscribe.
- **UI elements**: 3-card pricing, social proof ("Avg user lands in 6.4 weeks"), feature comparison, restore button.
- **States**: success (entitlement update, dismiss); failure (toast).
- **CTA**: `Start Pro` → StoreKit sheet.
- **Microcopy**: contextual triggers — "You've evaluated 5 roles today. Pro is unlimited."
- **Retention**: 7-day free trial; reminder push 2 days before bill.

---

## 4 · PRD

### Product overview

JobSeeker is an iOS companion to the Career-Ops desktop pipeline. It turns a senior-level job search into a 5-minute daily ritual: triage new postings, generate tailored CVs, draft recruiter follow-ups, and never lose track of a status. All data stays in the user's own Career-Ops repo (or our managed sync if they opt in); the app is a *view* and *trigger* layer, not a vendor lock-in.

### User problem

Senior-level job seekers spend 8–15 hours/week on triage, CV tailoring, status tracking, and follow-up coordination — work that is high-cognitive, error-prone, and demoralizing. Tools optimized for volume (LinkedIn Easy Apply) push exactly the wrong behavior at this tier. There's no "Superhuman for job search."

### Goals

1. **Time-to-evaluate** ≤ 90 seconds per role from notification to decision.
2. **Tailored-CV time** ≤ 60 seconds (server-side render).
3. **Daily active rate** ≥ 60% of paying users open the app at least once per workday.
4. **Land rate** — paying users land a role within 12 weeks at 35%+ rate (vs ~22% LinkedIn baseline).

### Non-goals

- Build a job board. We pull from existing sources.
- Build an ATS. We help users *send* into ATSes.
- Replace LinkedIn networking. We coordinate around it.
- Mass-apply automation. Final submit is always a human tap.

### Audience

**Primary** (modeled directly on the founding user's resume): senior strategic operators in hybrid AI × business × tech roles. Specifically: Chief of Staff (AI/Tech), Head of AI Innovation, VP AI Strategy, AI Practice Lead at Big 4, Director Professional Services / Customer Success (advisory), Director Digital Transformation. 8–15 yrs experience, currently $180–500k TC, multilingual (FR/EN/ES/DE/JA matter — not all senior search is English-only), based in US/CA/EU with global mobility (often visa-relevant: H-1B, EU Blue Card, Canada PR pathways). Anthropic-certified or equivalent AI fluency a common signal.

**Secondary**: returning operators (post-leave, post-sabbatical, post-side-venture) reentering at senior level; Big 4 consulting Senior Managers / Directors moving to AI-first product companies.

**Explicitly NOT in audience** (cut to focus): generic senior software ICs, mass-market early-career, startup founders looking for CTO roles, fractional/contract-only seekers (different needs), C-level (CEO/CFO — different acquisition channel: executive recruiters, not apps).

### Core features (MVP)

1. **Sign in with Apple** + Career-Ops repo link.
2. **6-step onboarding wizard** (mirrors web).
3. **Today screen** with next-action pills + activity ring + streak.
4. **Triage stack** with swipe gestures + haptics.
5. **Tracker** with search + filter + status updates.
6. **Application detail** with score breakdown + comp + recruiter thread.
7. **Pipeline paste sheet** (iOS share-sheet target).
8. **CV preview + share** (PDFKit, regenerate trigger).
9. **Push notifications** for new high-fit roles + overdue follow-ups.
10. **Background refresh** every 4–6h.
11. **Subscription** via StoreKit 2 (free / Pro / Sprint).

### Requirements

- **Performance**: cold start < 1.2s on iPhone 13; Triage swipe < 100ms; P95 list scroll = 60 fps.
- **Reliability**: offline-first read; mutations queued and replayed on reconnect.
- **Accessibility**: WCAG 2.2 AA; Dynamic Type up to AX5; VoiceOver; Reduce Motion respected; minimum 44×44 pt tap targets.
- **Privacy**: no third-party SDKs that fingerprint; PostHog self-hosted; Sign in with Apple primary; data export via JSON/zip.
- **Localization**: English at MVP; Spanish + German + French + Japanese at v1 (matches existing modes/).
- **Security**: TLS 1.3, certificate pinning, OWASP MASVS L1, Keychain for tokens, FileProtectionType.complete for PDFs.

### Edge cases

- Repo not found / not initialized → onboarding fallback creates one.
- Concurrent edit on web + mobile → last-write-wins with conflict toast and undo.
- StoreKit refund → entitlement downgraded within next refresh cycle.
- Push token rotation → APNs feedback handled silently.
- Apple ID changes → re-auth flow doesn't lose local cache.
- Resume PDF too large for paste → assist user to convert to text.
- Multi-device same Apple ID → CRDT merge of swipe decisions; no double-counted streaks.
- Recruiter sends signal in non-English → tone detection picks correct mode.

### Technical considerations

- **Backend reuse**: existing Node.js Career-Ops server gets `/api/auth/apple`, `/api/sync`, `/api/push/register` endpoints. No new infra.
- **Sync strategy**: server stores canonical `applications.md` derivation in SQLite; mobile keeps SwiftData mirror with `lastSyncedAt`.
- **CV generation cost**: ~2–4s per render via Playwright; cache aggressively keyed on `(profile_hash, jd_hash, template)`.
- **Push delivery**: APNs. Server batches once per scan cycle to avoid spam.
- **Apple review risk**: framing must avoid "auto-apply" language; always require human-tap submit.
- **Offline scope**: read-only access to last-synced tracker; mutations queued in `OutboxEntity`.

### Success metrics

| Metric | MVP target | v1 target | v2 target |
|---|---|---|---|
| TestFlight retention D1 / D7 / D30 | 70 / 45 / 28 % | 75 / 55 / 35 % | 80 / 60 / 40 % |
| Free → Pro conversion | n/a | 6 % within 14d | 9 % |
| Pro monthly churn | n/a | < 8 % | < 5 % |
| Median time-to-evaluate | n/a | < 90s | < 60s |
| Crash-free sessions | > 99.5 % | > 99.7 % | > 99.9 % |
| App Store rating | n/a | ≥ 4.4 | ≥ 4.6 |

### Launch scope

**MVP (week 8)** — TestFlight closed beta of 50 senior tech professionals from Tony's network, 4 weeks of data collection.
**v1 (week 16)** — App Store soft launch in US/CA only, Product Hunt, HN Show post.
**v2 (week 28)** — Pro tier launch, content campaign, referral program, App Store featuring pitch.

### Roadmap

| Phase | Weeks | Outcome |
|---|---|---|
| **Phase 0 — Foundation** | -2 to 0 | Backend endpoints, design system, brand polish |
| **Phase 1 — MVP** | 1–8 | Triage + tracker + push + onboarding |
| **Phase 2 — Pipeline + CV** | 9–16 | Paste sheet, CV gen on mobile, share |
| **Phase 3 — Pro launch** | 17–24 | Paywall, follow-up automation, multi-device sync |
| **Phase 4 — Polish + visionOS prototype** | 25–28 | Watch glance, Siri intents, visionOS volumetric tracker |
| **Phase 5 — Paid scale** | 29+ | Localization, B2B tier, integrations marketplace |

---

## 5 · Backend Logic

The Node.js Career-Ops server already exists at `dashboard-web/server.mjs`. The mobile-companion adds a thin auth + sync layer.

### Database schema (SQLite + WAL, file-backed in user's repo)

```sql
-- New / extended for mobile companion

CREATE TABLE users (
  id            TEXT PRIMARY KEY,                 -- Apple sub or generated UUID
  apple_id      TEXT UNIQUE,
  email         TEXT,
  tier          TEXT NOT NULL DEFAULT 'free',     -- free | pro | sprint
  created_at    INTEGER NOT NULL,
  last_active_at INTEGER NOT NULL
);

CREATE TABLE devices (
  id            TEXT PRIMARY KEY,
  user_id       TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  platform      TEXT NOT NULL,                     -- ios | web
  push_token    TEXT,
  app_version   TEXT,
  last_seen_at  INTEGER NOT NULL
);

CREATE TABLE applications (
  num           INTEGER PRIMARY KEY,
  user_id       TEXT NOT NULL REFERENCES users(id),
  company       TEXT NOT NULL,
  role          TEXT NOT NULL,
  url           TEXT,
  status        TEXT NOT NULL,
  score         REAL,
  comp          TEXT,
  date          TEXT NOT NULL,
  notes         TEXT,
  pdf_path      TEXT,
  report_path   TEXT,
  legitimacy    TEXT,
  updated_at    INTEGER NOT NULL,
  -- CRDT vector clock for multi-device merge
  vclock        TEXT NOT NULL DEFAULT '{}'
);

CREATE INDEX idx_applications_user_status ON applications(user_id, status);
CREATE INDEX idx_applications_user_date   ON applications(user_id, date DESC);

CREATE TABLE follow_ups (
  id          TEXT PRIMARY KEY,
  app_num     INTEGER NOT NULL REFERENCES applications(num),
  user_id     TEXT NOT NULL REFERENCES users(id),
  thread_id   TEXT,                                -- Gmail thread when linked
  due_at      INTEGER NOT NULL,
  status      TEXT NOT NULL,                       -- pending | drafted | sent | done
  draft_text  TEXT,
  created_at  INTEGER NOT NULL
);

CREATE TABLE eval_cache (
  jd_hash         TEXT NOT NULL,
  profile_hash    TEXT NOT NULL,
  result_json     TEXT NOT NULL,
  created_at      INTEGER NOT NULL,
  PRIMARY KEY (jd_hash, profile_hash)
);

CREATE TABLE outbox (
  id          TEXT PRIMARY KEY,                    -- ULID
  user_id     TEXT NOT NULL REFERENCES users(id),
  device_id   TEXT NOT NULL,
  op          TEXT NOT NULL,                       -- updateStatus | applyOne | etc.
  payload     TEXT NOT NULL,                       -- JSON
  attempted   INTEGER NOT NULL DEFAULT 0,
  applied_at  INTEGER,
  error       TEXT
);

CREATE TABLE audit_log (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id     TEXT,
  device_id   TEXT,
  ip          TEXT,
  event       TEXT NOT NULL,
  meta_json   TEXT,
  created_at  INTEGER NOT NULL
);
```

### Auth + roles

- **Auth**: Sign in with Apple (server-side JWT verification against Apple's JWKS) → server-issued access (15min) + refresh (30d) JWTs.
- **Roles**: `free`, `pro`, `sprint`, `admin`. Stored on `users.tier`. Enforced in route middleware: `requireTier('pro')`.
- **Refresh**: `POST /api/auth/refresh` rotates refresh JWT every use; old token blacklisted in 60s window for replay tolerance.
- **Revocation**: `POST /api/auth/revoke` deletes refresh, blacklist scattered across 5min cache.

### APIs (additions to existing server.mjs)

| Method | Path | Tier | Purpose |
|---|---|---|---|
| POST | `/api/auth/apple` | public | Exchange Apple identity_token → access + refresh |
| POST | `/api/auth/refresh` | public | Refresh access token |
| POST | `/api/auth/revoke` | authed | Logout |
| POST | `/api/push/register` | authed | Register APNs token |
| POST | `/api/push/unregister` | authed | Unregister |
| GET | `/api/sync` | authed | Pull state since `?since=ts` |
| POST | `/api/sync` | authed | Push outbox batch |
| GET | `/api/me` | authed | Tier + entitlements |
| POST | `/api/storekit/notify` | webhook | Apple StoreKit Server Notifications V2 → tier transitions |
| GET | `/api/flags` | authed | Feature flag bitmap for client |
| POST | `/api/cv/generate` | pro | Trigger PDF render with mobile-friendly response |
| GET | `/api/cv/{num}.pdf` | authed | Stream cached PDF |
| GET | `/api/follow-ups` | authed | Open follow-up threads |
| POST | `/api/follow-ups/{id}/draft` | pro | Generate AI draft |
| POST | `/api/follow-ups/{id}/send` | pro | Send via Gmail (proxy) |

### Integrations

- **Apple Sign-In** — verify identity_token JWT against `https://appleid.apple.com/auth/keys`; cache JWKS for 1h.
- **APNs** — token-based JWT auth; teamID + keyID + p8; one HTTP/2 connection pool.
- **StoreKit Server Notifications V2** — webhook validates JWS, decodes `signedPayload`, updates `users.tier`; replay protection via `notificationUUID`.
- **Gmail** — OAuth2 with offline access; refresh token in encrypted SQLite; minimal scopes (`gmail.modify` for thread replies, `gmail.readonly` for ingestion).
- **Anthropic API** — for eval + CV tailoring + follow-up drafts; per-user daily token budget; circuit breaker on 5xx.
- **PostHog** — self-hosted; events posted server-side after auth check (mobile sends identifier-free events, server attaches user_id).
- **Sentry** (optional) — only if PostHog perf data insufficient.

### Notifications

| Trigger | Channel | Payload | Throttle |
|---|---|---|---|
| New role ≥ 4.0 score | APNs | `{type:'role.high', num, score, company}` | Max 5/day, batched at scan-end |
| Follow-up overdue | APNs | `{type:'followup.due', num}` | Quiet hours 22:00–07:00 local |
| Streak at risk | APNs (local) | `{type:'streak.at_risk', count}` | Once per evening |
| Eval complete | APNs | `{type:'eval.done', num}` | Per eval |
| Subscription expiring | APNs (local) | `{type:'sub.expiring', date}` | T-2 days |

### Storage

- **Database**: SQLite WAL, ~10 MB typical user footprint. Backup to user's git repo daily as serialized JSON.
- **PDFs**: filesystem under `output/cv/{num}.pdf`. CDN-ready URLs signed for 5min.
- **Reports**: `reports/{num}-{slug}-{date}.md` (existing convention).
- **Profile**: `config/profile.yml` (existing).
- **Tracker**: `data/applications.md` is the markdown human-readable form; SQLite is the canonical store; sync is bidirectional.

### Payments

StoreKit 2 native + StoreKit Server Notifications V2. No Stripe at MVP. Sprint tier ($299 one-time) is consumable IAP, not subscription. Monthly/yearly Pro is auto-renewing. Receipt validation is server-side using Apple's verifyReceipt → App Store Server API for receipts ≥ iOS 16.

### Admin panel

Reuses existing `dashboard-web/` at a `/admin` mount, gated by `requireTier('admin')`. Surfaces:
- Recent signups + tier distribution
- StoreKit notification audit log
- Per-user token usage (Anthropic spend)
- Crash + error rates from MetricKit ingestion
- Notification delivery success rate
- A/B experiment exposure tables

### Rate limits

| Endpoint | Free | Pro | Sprint |
|---|---|---|---|
| `/api/onboard` (eval) | 5/day | 100/day | 500/day |
| `/api/cv/generate` | 0 | 20/day | 100/day |
| `/api/follow-ups/draft` | 0 | 50/day | 200/day |
| `/api/sync` | 60/min | 120/min | 240/min |
| All other authed | 30/min | 60/min | 120/min |

Implementation: in-memory token bucket on the Node server keyed by `user_id + endpoint`, with Redis persistence at scale (post-MVP).

### Security risks + mitigations

| Risk | Mitigation |
|---|---|
| Stolen refresh JWT | Short access-token TTL (15m); refresh rotation; device binding via `device_id`; revocation API. |
| Replay of StoreKit notification | `notificationUUID` dedup table with 30d retention. |
| User-controlled JD text injection into eval prompts | Strip system-instruction lookalikes; eval prompt frames JD as untrusted data block. |
| Path-traversal on CV download | Existing `makeSafeResolver` (already unit-tested). |
| Token leakage in logs | Structured logger redacts `Authorization`, `apple_*`, `gmail_*` keys. |
| OAuth phishing | Use Apple's native flow only; Gmail consent only via SFSafariViewController. |
| Gmail token over-permission | Request only `gmail.modify` + `gmail.readonly`; document in privacy policy. |
| DoS on `/api/onboard` | 256 KiB body cap (already shipped); rate limits above; circuit breaker on Anthropic. |
| MITM on token refresh | Certificate pinning in iOS app; HSTS preload on backend domain. |
| Account takeover via lost device | Sign in with Apple's "private email relay" prevents harvesting; 2FA via Apple ID by default. |

---

## 6 · UI Design System

### Brand position

JobSeeker's visual signal: **calm authority with a touch of magic.** The user is making the most important decision of their year — the UI must feel reliable. Liquid-glass + prismatic-glow accents say "premium tool, not a toy."

### Color tokens (dark-first; semantic, not absolute)

```
Background scale (dark)
  --bg-base    #000000
  --bg-elev-1  #0a0a0c
  --bg-elev-2  #141417
  --bg-elev-3  #1c1c1f
  --bg-glass   rgba(28,28,32,0.72)   ← backdrop-blur(40px) saturate(180%)

Background scale (light)
  --bg-base    #ffffff
  --bg-elev-1  #f7f7f9
  --bg-elev-2  #ececef
  --bg-elev-3  #e2e2e6
  --bg-glass   rgba(247,247,249,0.78)

Text scale
  --text       (dark) #f5f5f7   /  (light) #1c1c1e
  --text-sec   (dark) #a1a1a6   /  (light) #6e6e73
  --text-ter   (dark) #6e6e73   /  (light) #a1a1a6

Accent / brand
  --accent     #28b8ff           ← primary blue, brand mark gradient stop A
  --accent-2   #30d158           ← brand mark gradient stop B
  --accent-ring rgba(40,184,255,.18)

Semantic
  --success    #30d158
  --warning    #ff9f0a
  --error      #ff453a
  --info       #5ac8fa

Score bands
  --score-low  #ff453a   (< 2.5)
  --score-mid  #ff9f0a   (2.5–3.9)
  --score-high #30d158   (≥ 4.0)

Prismatic
  --prism-1    #28b8ff
  --prism-2    #30d158
  --prism-3    #ffd60a
  --prism-4    #ff9f0a
  --prism-5    #ff375f
  --prism-6    #bf5af2
  Used in conic-gradient rings, never as solid fills.
```

### Typography

- **Display**: SF Pro Display, weights 700 / 600. Sizes: 34 / 28 / 22.
- **Text**: SF Pro Text, weights 600 / 500 / 400. Sizes: 17 / 15 / 13 / 11.
- **Mono**: SF Mono, weight 400. Sizes: 13 / 11. (Comp values, code refs.)
- **Numerals**: tabular always (`fontFeatures([.numberSpacing(.monospaced)])`).
- 9-step scale: 11 · 12 · 13 · 15 · 17 · 19 · 22 · 28 · 34. Line-height = 1.4× for body, 1.15× for display.

### Spacing — 8 px grid

`xs 4` · `sm 8` · `md 12` · `lg 16` · `xl 24` · `2xl 32` · `3xl 48` · `4xl 64`. Touch padding never < 12.

### Buttons

| Variant | Use | Style |
|---|---|---|
| **Primary (prismatic)** | Single decisive CTA | Gradient fill `linear-gradient(135deg, accent, accent-2)`; 12 radius; 14×24 padding; haptic medium on tap. |
| **Secondary glass** | Alt action | Glass surface; 1px inner ring `rgba(255,255,255,.06)`; backdrop-blur(20px). |
| **Ghost** | Tertiary | No background; text accent; min 44×44 hit area. |
| **Destructive** | Delete / Cancel | `--error` text; haptic warning; confirmation sheet for permanent ops. |
| **FAB** | Sticky pipeline paste | 56×56 circle; shadow `0 8px 24px rgba(40,184,255,.30)`; pulse on first onboarding. |

States required for every button: default · hover (web mirror) · pressed · focused (2pt accent ring, AAA contrast) · disabled · loading (replace label with prismatic spinner).

### Inputs

- Filled style (Material does not apply): `--bg-elev-2`, `--separator` 0.5pt border. Focus = `--accent` border + `--accent-ring` 3pt halo.
- Inline validation: aria-invalid sets red border + helper text appears below.
- Min height 44pt. Right-side affordances (clear, paste, mic) sized 24×24 within tap target.

### Cards

- Default `GlassCard`: 16 radius, `--bg-glass` background, 0.5pt `--separator` border, optional accent-ring on the top edge (2pt, conic-gradient for prismatic emphasis on hero rows).
- Hover/press: 1.02× scale + shadow lift (200ms cubic-bezier(0.22, 1, 0.36, 1)).
- Empty / loading / error states are first-class subviews of the card.

### Navigation patterns

- **Tab bar** at bottom (5 tabs); haptic light on switch; active tab uses prismatic conic-gradient indicator dot.
- **Push** from list to detail uses `NavigationStack`; titles transition large→inline on scroll (Apple HIG default).
- **Sheets** (paste, paywall, share) use `.presentationDetents([.medium, .large])`.
- **Inspector** (iPad) replaces sheet for detail.

### Iconography

SF Symbols 5+ exclusively at MVP. Custom icons only for the brand mark (✦) and the activity ring. Symbol weights: `.light` for navigation, `.medium` for actions, `.semibold` for filled states.

### Onboarding style

6-step modal wizard, mirrors web. Each step:
- Title (Display/22), subtitle (Text/13 secondary), body fields, footer with Back / Skip / Continue.
- Step indicator: 6 dots connected by a prismatic gradient line that fills as user progresses.
- Each step has a subtle scene change (background glow shifts color through prism).

### Premium UI direction (Pro tier)

- Animated app icon (motion icon API, iOS 18) — slow prismatic shimmer.
- Tab bar replaces ghost-active tab with a conic-gradient stroke.
- Hero rows use a subtle parallax tilt on device motion (respects Reduce Motion).
- CV preview gains a real-time "score" overlay that pulses gently as the eval refreshes.
- Free tier sees a static brand mark; Pro tier sees the live prismatic version.

---

## 7 · Code Starter (SwiftUI)

This is the spine. Drop it into a new Xcode project and build.

### `App/JobSeekerApp.swift`

```swift
import SwiftUI

@main
struct JobSeekerApp: App {
    @State private var env = AppEnvironment.live()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(env)
                .preferredColorScheme(.dark)
                .task { await env.bootstrap() }
        }
    }
}
```

### `App/AppEnvironment.swift`

```swift
import SwiftUI

@Observable
final class AppEnvironment {
    let api: APIClient
    let auth: AuthService
    let entitlements: EntitlementService
    let analytics: AnalyticsService
    let notifications: NotificationService
    var currentUser: User?

    private init(api: APIClient, auth: AuthService, entitlements: EntitlementService,
                 analytics: AnalyticsService, notifications: NotificationService) {
        self.api = api
        self.auth = auth
        self.entitlements = entitlements
        self.analytics = analytics
        self.notifications = notifications
    }

    static func live() -> AppEnvironment {
        let api = LiveAPIClient(baseURL: AppConfig.apiBaseURL)
        return .init(
            api: api,
            auth: AuthService(api: api),
            entitlements: EntitlementService(),
            analytics: PostHogAnalytics(),
            notifications: NotificationService()
        )
    }

    static func mock() -> AppEnvironment {
        .init(
            api: MockAPIClient(),
            auth: AuthService.mock(),
            entitlements: EntitlementService.mock(),
            analytics: NoopAnalytics(),
            notifications: NotificationService.mock()
        )
    }

    func bootstrap() async {
        await entitlements.refresh()
        currentUser = await auth.restoreSession()
        await notifications.requestAuthorizationIfNeeded()
    }
}
```

### `App/RootCoordinator.swift`

```swift
import SwiftUI

enum Tab: Hashable { case today, triage, tracker, pipeline, more }

struct RootView: View {
    @Environment(AppEnvironment.self) private var env
    @State private var tab: Tab = .today
    @State private var deepLink: DeepLinkRoute?

    var body: some View {
        Group {
            if env.currentUser == nil {
                AuthGate()
            } else {
                TabView(selection: $tab) {
                    TodayView().tag(Tab.today).tabItem { Label("Today", systemImage: "rays") }
                    TriageView().tag(Tab.triage).tabItem { Label("Triage", systemImage: "rectangle.stack") }
                    TrackerView().tag(Tab.tracker).tabItem { Label("Tracker", systemImage: "list.bullet") }
                    PipelineView().tag(Tab.pipeline).tabItem { Label("Pipeline", systemImage: "tray.and.arrow.down") }
                    MoreView().tag(Tab.more).tabItem { Label("More", systemImage: "ellipsis.circle") }
                }
                .onOpenURL { url in
                    if let route = DeepLinkRoute(url: url) { handle(route) }
                }
            }
        }
    }

    private func handle(_ route: DeepLinkRoute) {
        switch route {
        case .application(let num):
            tab = .tracker
            deepLink = route
        case .triage:
            tab = .triage
        case .pasteJD(let text):
            tab = .pipeline
            deepLink = route
        }
    }
}
```

### `Data/API/APIClient.swift`

```swift
import Foundation

protocol APIClient: Sendable {
    func fetch<T: Decodable>(_ endpoint: Endpoint) async throws -> T
    func send(_ endpoint: Endpoint, body: Encodable?) async throws
}

enum Endpoint {
    case me
    case sync(since: Date?)
    case appleAuth(token: String)
    case refresh
    case onboardEvaluate(text: String)
    case onboardFinalize(payload: OnboardPayload)
    case updateStatus(num: String, status: String)
    case applyOne(num: String)
    case cvGenerate(num: String)
    case followUpsList
    case followUpDraft(id: String)
    case followUpSend(id: String)
    case storeKitNotify

    var path: String { /* maps to server route */ "" }
    var method: String { /* GET/POST */ "" }
    var requiresAuth: Bool { /* gate */ true }
}

actor LiveAPIClient: APIClient {
    private let baseURL: URL
    private let session: URLSession
    private let auth: AuthService

    init(baseURL: URL, auth: AuthService) {
        self.baseURL = baseURL
        self.auth = auth
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 15
        config.tlsMinimumSupportedProtocolVersion = .TLSv13
        self.session = URLSession(configuration: config)
    }

    func fetch<T: Decodable>(_ endpoint: Endpoint) async throws -> T {
        var request = try buildRequest(endpoint, body: nil)
        if endpoint.requiresAuth { try await attachAuth(&request) }
        let (data, response) = try await session.data(for: request)
        try validate(response, data: data)
        return try JSONDecoder.iso8601.decode(T.self, from: data)
    }

    func send(_ endpoint: Endpoint, body: Encodable?) async throws {
        var request = try buildRequest(endpoint, body: body)
        if endpoint.requiresAuth { try await attachAuth(&request) }
        let (data, response) = try await session.data(for: request)
        try validate(response, data: data)
    }

    private func attachAuth(_ request: inout URLRequest) async throws {
        let token = try await auth.accessToken()
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    }

    private func validate(_ response: URLResponse, data: Data) throws {
        guard let http = response as? HTTPURLResponse else { throw AppError.network }
        switch http.statusCode {
        case 200..<300: return
        case 401: throw AppError.unauthorized
        case 429:
            let retry = http.value(forHTTPHeaderField: "Retry-After").flatMap(TimeInterval.init) ?? 5
            throw AppError.rateLimited(retryAfter: retry)
        case 500..<600: throw AppError.server(status: http.statusCode)
        default: throw AppError.unexpected(status: http.statusCode)
        }
    }

    private func buildRequest(_ endpoint: Endpoint, body: Encodable?) throws -> URLRequest {
        var request = URLRequest(url: baseURL.appendingPathComponent(endpoint.path))
        request.httpMethod = endpoint.method
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        if let body { request.httpBody = try JSONEncoder.iso8601.encode(body) }
        return request
    }
}

enum AppError: Error {
    case network
    case unauthorized
    case rateLimited(retryAfter: TimeInterval)
    case server(status: Int)
    case unexpected(status: Int)
}
```

### `Features/Today/TodayView.swift`

```swift
import SwiftUI

struct TodayView: View {
    @Environment(AppEnvironment.self) private var env
    @State private var vm = TodayViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    switch vm.state {
                    case .loading: SkeletonGrid()
                    case .empty: EmptyStateHero(action: { /* navigate */ })
                    case .ready(let snapshot): readyContent(snapshot)
                    case .error(let err): ErrorState(error: err, retry: { Task { await vm.load() } })
                    }
                }
                .padding(.horizontal, 16)
            }
            .navigationTitle("Today")
            .refreshable { await vm.load() }
            .task { await vm.load() }
        }
    }

    @ViewBuilder
    private func readyContent(_ s: TodaySnapshot) -> some View {
        ActivityRing(applied: s.appliedThisWeek, target: s.weeklyTarget)
        ForEach(s.nextActions) { action in
            NextActionPill(action: action) { handle(action) }
        }
        StreakCard(days: s.streak)
    }

    private func handle(_ action: NextAction) { /* nav routing */ }
}
```

### `Components/Cards/GlassCard.swift`

```swift
import SwiftUI

struct GlassCard<Content: View>: View {
    let prismatic: Bool
    @ViewBuilder var content: () -> Content
    @Environment(\.colorScheme) private var scheme
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    var body: some View {
        content()
            .padding(16)
            .background {
                ZStack {
                    if !reduceMotion {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(.ultraThinMaterial)
                    } else {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(scheme == .dark ? Color(.systemGray6) : Color(.systemBackground))
                    }
                    if prismatic {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .strokeBorder(prismaticGradient, lineWidth: 1.5)
                            .opacity(0.55)
                    } else {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .strokeBorder(Color.white.opacity(0.06), lineWidth: 0.5)
                    }
                }
            }
    }

    private var prismaticGradient: AngularGradient {
        AngularGradient(
            colors: [.cyan, .green, .yellow, .orange, .pink, .purple, .cyan],
            center: .center
        )
    }
}
```

### `Components/States/EmptyState.swift`

```swift
import SwiftUI

struct EmptyState: View {
    let icon: String
    let title: String
    let subtitle: String
    let primaryActionLabel: String?
    let primaryAction: (() -> Void)?

    var body: some View {
        VStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 44, weight: .light))
                .foregroundStyle(.secondary)
            Text(title)
                .font(.title3.weight(.semibold))
                .multilineTextAlignment(.center)
            Text(subtitle)
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 320)
            if let label = primaryActionLabel, let action = primaryAction {
                Button(label, action: action)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
            }
        }
        .padding(.vertical, 32)
        .frame(maxWidth: .infinity)
    }
}
```

### `Domain/UseCases/EvaluateRoleUseCase.swift`

```swift
import Foundation

struct EvaluateRoleUseCase {
    let api: APIClient

    func callAsFunction(jd: String) async throws -> EvaluatedRole {
        struct Response: Decodable { let role: EvaluatedRole }
        let resp: Response = try await api.fetch(.onboardEvaluate(text: jd))
        return resp.role
    }
}
```

### Mocks

```swift
// Data/API/MockAPIClient.swift
final class MockAPIClient: APIClient {
    func fetch<T: Decodable>(_ endpoint: Endpoint) async throws -> T {
        try await Task.sleep(for: .milliseconds(200))
        let data = MockFixtures.payload(for: endpoint)
        return try JSONDecoder.iso8601.decode(T.self, from: data)
    }
    func send(_ endpoint: Endpoint, body: Encodable?) async throws {
        try await Task.sleep(for: .milliseconds(200))
    }
}
```

### Loading / error scaffolding pattern

Every async-heavy view follows the same enum-state pattern: `.loading` · `.empty` · `.ready(T)` · `.error(AppError)`. Eliminates ad-hoc `if isLoading { ... } else if data == nil { ... }` chains.

### Build steps

1. `xcodegen` from `project.yml` (or hand-built Xcode 16 project, iOS 18 minimum).
2. `Package.swift` adds `posthog-ios`, `KeychainAccess` (only deps).
3. CI: `xcodebuild test -scheme JobSeeker -destination 'platform=iOS Simulator,name=iPhone 16'`.
4. Fastlane lane `beta` ships to TestFlight; lane `release` to App Store Connect.

---

## 8 · App Audit (brutal)

### Weak UX

1. **Six-step onboarding is too long.** Step 4 + 5 are skippable but the user still sees them. Cut to 4 steps for free tier; defer narrative + deal-breakers until first real eval forces the question. **Fix**: add an "express setup" path that ends after step 3 with a "complete later" prompt on the Today screen.
2. **Triage stack lacks undo.** Swipe-left dismiss is permanent until the user finds Tracker. Swipe regret = abandonment. **Fix**: 3-second undo toast on every swipe, tappable AND swipe-right-from-edge to recover.
3. **Score breakdown buries the most important number.** Block-A "fit" matters more than D-F. **Fix**: hero score, then a one-line "why" sentence, with the full A–F breakdown collapsed by default.
4. **CV preview is read-only on mobile.** Users want to nudge a bullet before sending. **Fix**: tap a bullet → inline edit sheet → regenerate downstream. v1.5 acceptable.
5. **"Liquid glass" can crush legibility.** On bright wallpapers (lock-screen previews) the blur fails. **Fix**: enforce min contrast ratio 4.5:1 on all glass surfaces; unit-test contrast against a 16-color background grid.

### Confusing flows

6. **Free tier vs Pro tier is invisible until a paywall.** Users hit a wall, friction. **Fix**: subtle Pro-locked badges throughout; never gate a feature without showing the unlock cost.
7. **Push from "new role" → Today screen, not the role.** That's the wrong mental model. **Fix**: deep-link straight to ApplicationDetail.
8. **"Mark Applied" creates ambiguity** — does it just update status, or did you actually apply? **Fix**: split into two states: `Applied (we sent)` vs `Marked applied (you did it elsewhere)`.

### Retention risks

9. **No moment-of-magic in week 1.** Onboarding ends, then... nothing magical happens until pipeline runs. **Fix**: Day 1 mock eval of a sample role using the user's profile so they see the system *think*. Day 2 push with first real role.
10. **Streak punishes vacations.** A 30-day streak that breaks because you went on a 3-day trip = uninstall. **Fix**: weekly streak (5/7 = on track), pause-streak feature (Pro), no streak shame.
11. **No reciprocity loop.** Users get value but can't share without leaking sensitive data. **Fix**: "Share my interview prep notes for {Company}" flow with auto-anonymization → grows reputation + funnel.

### Monetization mistakes

12. **$14/mo without trial = friction.** Show value first. **Fix**: 7-day free trial of Pro, cancellable inside settings, no payment to start.
13. **Sprint tier ($299) is on the paywall but has no obvious trigger.** **Fix**: show Sprint only after detecting an "urgent" signal (recent layoff phrasing in onboarding, or first follow-up overdue).
14. **No annual prompt.** $120/yr saves users $48 vs monthly; under-emphasized. **Fix**: every 30d on monthly, soft-prompt the annual.

### App Store risks

15. **"Auto-apply" or "AI-applied" framing in screenshots = rejection.** **Fix**: marketing language always says "assisted" or "tailored." Demo videos show a finger tapping the final Apply button.
16. **Gmail integration → privacy nutrition label scrutiny.** **Fix**: ship with read-only at MVP; reply send is v1; explicit per-tap consent for sending.
17. **AI-generated CVs → 4.0 review board scrutiny under "AI policy."** **Fix**: ensure all user-facing AI output is editable; surface a "review before sending" gate.

### Privacy issues

18. **PostHog events with user_id can be cross-referenced.** **Fix**: client never sends user_id; server attaches after policy filter (drop sensitive event types from logs).
19. **CV PDFs in iCloud-backed App Group container.** Users may not realize this. **Fix**: explicit toggle in Settings → "Keep PDFs in iCloud (allows multi-device)."
20. **JD text often contains employer-confidential language.** **Fix**: 90-day TTL; encrypt at rest; Settings → "Wipe all JD pastes."

### Tech debt traps

21. **Putting the SQLite file in the user's repo means collisions** if they edit it manually or commit to git on a different machine. **Fix**: keep canonical SQLite in app sandbox; export to git-friendly markdown only on explicit "snapshot" action.
22. **Mixing CRDT logic across clients early gets ugly.** **Fix**: server is single source of truth at MVP; CRDT only for swipe decisions (low-stakes); upgrade to full CRDT in v2.
23. **Inline HTML template in `dashboard-web/server.mjs`** is now ~6300 lines. Mobile reuses backend; if we keep extending the same file, refactor pressure compounds. **Fix**: scheduled extraction sprint after MVP — split server.mjs into routes/, render/, services/.
24. **One Anthropic key for all users.** Cost spike attack vector. **Fix**: per-user budget, hard ceiling, alerting at 70% / 90%.

### Unnecessary features

25. **Apple Watch glance at v1.** Battery + watch app review overhead doesn't earn its keep until paid scale. **Fix**: defer to v2.
26. **visionOS dashboard at v1.** Cool demo, vanishingly small market. **Fix**: defer to v2.5+.
27. **In-app interview prep video player.** Better as a deep-link to existing reports. **Fix**: cut from MVP.
28. **Multi-language at MVP.** Onboarding flow is English in pilot demographic. **Fix**: ship EN at MVP; add ES/DE/FR/JA at v1.5 (matches existing modes/).

### Top 5 fixes (do these first — re-prioritized for the operator audience)

1. **Anti-target list as a first-class onboarding step.** Tony's profile flags Amaris/Mantu, DiLiTrust, Jamf — these auto-recur on every job board. Adding a 30-sec onboarding question "Companies you don't want to see, ever" + permanent filter is high-leverage, low-build. (S, 1d)
2. **Hidden-quota / fake-title detector** that surfaces on the role detail before the user invests in CV tailoring. Scan JD for "quota," "renewal target," "individual contributor," "no direct reports" and flag with a one-line warning. (M, 2d)
3. **McKinsey/BCG-grade cover-letter prompt template** distinct from the generic one. Problem-first opening, no em-dashes, surgical tone. Captures Tony's documented voice rule. Toggle in CV generation flow. (S, 1d)
4. **Visa-stance flag on every role**: scan for "we sponsor," "must be authorized," "EU citizen required," and surface a 1-line capsule on the card. (M, 2d)
5. **Deep-link push notifications to ApplicationDetail, not Today** (carry-over from prior list — still important). (S, 0.5d)

---

## 9 · Launch Plan (GTM)

### Pre-launch checklist (week 0–8)

| Item | Owner | Done when |
|---|---|---|
| App Store Connect record | PM | "Ready for Submission" status |
| Privacy nutrition label | Eng + Legal | All categories filled, declarations match code |
| Privacy policy + ToS | Legal | Live URLs, linked in app footer |
| Brand assets (icon, OG, screenshots) | Design | Light/dark variants, 6.7" + 6.1" + iPad |
| App preview video (15–30s) | Design + PM | Tells one story: paste → eval → apply |
| Analytics taxonomy | Eng | Events firing, dashboards built |
| Crash + perf instrumentation | Eng | MetricKit + PostHog ingesting |
| StoreKit products configured | PM | Pro monthly, Pro yearly, Sprint, sandbox tested |
| Accessibility audit | QA | VoiceOver + Dynamic Type AX5 + Reduce Motion all pass |
| Localization | Eng | EN at MVP; bundle others stubbed |
| Beta NDAs | Legal | E-signed for 50 testers |

### Beta plan (week 4–8)

- **TestFlight closed beta**, 50 invitees from Tony's network (senior tech, AI, startup ops).
- Two cohort waves: 25 at week 4, 25 at week 6.
- Each tester onboarded with a 15-min Loom + 1-pager + Slack channel.
- Weekly survey (5 questions, NPS + 3 open).
- Hard exit criteria → public launch:
  - Crash-free sessions ≥ 99.5%
  - Onboarding completion ≥ 75%
  - D7 retention ≥ 50%
  - At least 5 testers reach "Applied" status

### Onboarding improvements during beta

- Watch a 30-sec demo video before step 1 (Loom embed).
- Sample resume preloaded for "explore mode" without putting in your own.
- A/B test: 4-step vs 6-step wizard (track completion + activation).
- Day-1 push: "Your first sample eval is ready."

### App Store strategy

- **Title**: `JobSeeker — Senior Job OS`
- **Subtitle (30 char)**: `For rare, hybrid roles.`
- **Promotional text (170 char)**: Updateable. "Built for Chief of Staff, Head of AI, and VP Strategy candidates. Not another LinkedIn skin." (revise quarterly with social proof.)
- **Description**: Lead with the audience filter ("Built for senior strategic operators…"), then the value prop, then 6 bullets that name the *exact* features competitive job apps don't have (anti-target list, hidden-quota detector, archetype scoring, McKinsey-grade cover letters), then "what makes this different" (your data your repo, multilingual, Apple-first), then pricing, then privacy block.
- **Keywords**: `chief of staff, head of ai, vp strategy, ai practice, professional services, customer success, executive job, senior role, recruiter` (100 char target, no generic "resume" / "ats" — those compete with mass-market apps and dilute the listing).
- **Screenshots**: 6 hero shots — Today / Triage / Detail / Pipeline / CV preview / Tracker. Light + Dark variants. Tagline overlay using brand fonts.
- **App preview video**: 22-sec end-to-end, no voice, captioned.
- **Category**: Productivity (primary) + Business (secondary).
- **Age rating**: 4+.
- **Pricing matrix**: Free + Pro Monthly $14 + Pro Yearly $120 + Sprint $299; localize to PPP tiers later.

### Launch content

- **Show HN post** ("JobSeeker — Senior-level job-search assistant, your data stays in your repo"). Lead with technical novelty (CRDT, vanilla Node, no scraping), not benefits.
- **Product Hunt** launch on a Tuesday.
- **Tony's LinkedIn announcement post** — 8 paragraphs, includes the personal story + one screenshot.
- **Twitter/X thread** — 7 tweets, each a screenshot + one-liner; pinned for 30d.
- **Reddit**: r/cscareerquestions, r/ExperiencedDevs, r/jobs, r/recruitinghell — *value posts*, never product drops. Mention only if asked.
- **Substack/Medium guest post** — "I evaluated 740 jobs with AI. Here's what I learned" (real data).
- **Indie Hackers + Maker Forums** post-launch deep-dive with build numbers.

### Influencer / community ideas (re-targeted to the actual audience)

The audience does NOT live on TikTok or r/cscareerquestions. They live in:

- **Anthropic developer ecosystem** — JobSeeker is built on Claude; Tony is Anthropic-certified. Pitch a case study to Anthropic dev advocates and the Anthropic Developer Day audience. Aim for a feature in the official Claude apps gallery.
- **Big 4 alumni networks** — McKinsey alumni Slack, BCG X alumni LinkedIn group, Deloitte AI Institute alumni list. Each has 1–10k senior-operator subscribers. One curated post per quarter is more valuable than 100 cold posts elsewhere.
- **Y Combinator W25 / S25 batch + alumni #jobs channel** — post-IPO and post-acquisition founders often hire CoS/Head-of-AI here. Ask for an intro through any current YC founder Tony knows.
- **Lenny's Newsletter** + **First Round Review** — paid placement is too expensive but a guest post on "How I evaluated 740 senior-level roles with AI" is exactly their audience.
- **Reforge / Lenny's Job Board / Pallet communities** — peer-to-peer senior PM/CoS networks. Pallet hosts dozens of niche job boards for senior strategic roles; offer to be the *application-side* layer (mutually non-competitive).
- **AI-first VC slack groups** (a16z internal portfolio Slack, Index, Founders Fund founder lists) — VCs are constantly asked "do you know any CoS-AI candidates?" — JobSeeker becomes the answer they share.
- **Global / non-English audiences** — French (Montreal + Paris): post in *La French Tech* group. German (Berlin/Munich): *AI Founders DACH* meetup. Japanese (Tokyo): the *AI Talent Japan* LinkedIn group. The existing modes/de, modes/fr, modes/ja already speak these markets — the app just needs to ship there.
- **Career-coach partnerships** — 5 senior career coaches (specifically those serving the $200k+ tier — e.g., Lori Polachi, Susan Peppercorn alumni, Pathrise senior-track coaches) get free Operator tier in exchange for an authentic post.
- **Conferences**: Andreessen Horowitz "Modern AI" summit, Reforge Summit, SaaStr (CS Director track). Sponsor a small breakfast for 30 senior operators at each.

What we are *not* doing: generic LinkedIn growth-hacking, college-career-center deals, mass-market app-install ads, TikTok creators. The audience treats those channels as noise.

### Push notification plan

| Day | Trigger | Copy |
|---|---|---|
| Install | Welcome | "Drop your CV when you're ready. We do the boring part." |
| Day 1 | First sample eval | "Your first eval is ready — see how we'd score Anthropic." |
| Day 2 | Real role lands | "Anthropic · Director of AI · 4.6/5 — open to triage" |
| Day 3 | Streak | "2 days strong. Tap to keep it going." |
| Day 7 | Pro nudge (if free) | "You've evaluated 8 roles. Pro = unlimited + tailored CVs. 7-day free trial." |
| Day 10 | Follow-up overdue | "Anthropic recruiter — last reply 4d ago. Draft reply?" |
| Day 14 | Activation review | "Your first 14 days: 12 evals, 3 applies, 1 reply pending." |

Quiet hours always honored; user can disable any category.

### Referral loop

- Pro users get a unique invite code.
- Inviter: free month for each successful referral (capped at 12 months).
- Invitee: 7-day extended trial (vs 7-day standard).
- Sharing surface: native iOS share sheet from Settings.
- Network effect: senior earners cluster; one referral often becomes 3 within a team.

### 30-day retention metrics

| Metric | MVP target | v1 target |
|---|---|---|
| D1 / D7 / D30 retention | 70 / 45 / 28 % | 75 / 55 / 35 % |
| WAU / MAU ratio | 0.55 | 0.65 |
| Sessions per active user / day | 1.8 | 2.5 |
| Free → Pro conversion within 14d | n/a | 6 % |
| Median apps evaluated per active user / week | 6 | 10 |
| % users completing onboarding | 75 % | 85 % |
| App Store rating | n/a | ≥ 4.4 |
| NPS at D14 | ≥ 30 | ≥ 50 |

---

## 10 · Full App Lead — Phased Build

| Phase | Weeks | Deliverables | Key decisions | Risks | Next prompts to run |
|---|---|---|---|---|---|
| **1 · Strategy** | -2 to 0 | Blueprint (§1), PRD (§4), audit (§8), GTM (§9), roadmap, beta NDA pack | Confirm SwiftUI iOS-first vs cross-platform; lock free/Pro/Sprint pricing; choose self-hosted PostHog vs hosted; bake in privacy framing | Pricing too aggressive for paid; framing triggers Apple review; building wrong feature first | "Validate pricing with 12 senior users via 5-min calls" |
| **2 · UX** | 1–3 | Screen flow (§3), wireframes for all 15 screens, motion specs, accessibility audit checklist, test fixtures for 5 personas | Lock the 5-tab navigation; commit to liquid glass + prismatic glow as differentiator; choose dark-first | Visual differentiation eats clarity; Reduce Motion fallback feels sterile | "Generate 6 hero screenshots for App Store Connect" |
| **3 · Architecture** | 1–4 | Folder layout (§2), API client (§7), data layer, state model, navigation router | Confirm Observable + NavigationStack; SwiftData for cache; Keychain for tokens; URLSession + async/await | iOS 18 minimum locks out 30%+ of pre-iPhone-12 users; SwiftData edge cases | "Create migration strategy if iOS 17 minimum is preferred" |
| **4 · Backend** | 1–6 | Schema (§5), endpoints, Apple SSO, APNs, StoreKit notification handler, rate limits, eval cache | One Node server vs split out auth service; canonical SQLite vs markdown; CRDT scope | Per-user Anthropic spend; Gmail OAuth review delays; StoreKit refund handling | "Generate load-testing script for 1000 concurrent eval requests" |
| **5 · Code** | 4–14 | All MVP screens, end-to-end auth, push, sub, sync; mocked + live API parity | Single Xcode project; XCStringCatalog for i18n; XCTest + XCUITest; fastlane | Scope creep; design-vs-shipping debt; perf regressions | "Write XCUITest for the 6-step onboarding happy path" |
| **6 · QA** | 12–16 | Accessibility pass, perf budget enforcement, beta cohort 1 + 2, privacy review | Crash-free 99.5%+ gate; close-beta NPS 30+ gate; Apple review prep | Apple review rejection cycle; iOS 18.x bug | "Generate Apple review response template covering Q3 + Q4 reviewer concerns" |
| **7 · Launch** | 14–18 | App Store Connect submission, GTM activation, content drop, push enabled, paywall live | Soft launch markets (US/CA only) vs global; HN day vs PH day | Trough of sorrow; press blackout; conversion miss | "Draft week-1 retention save campaign for users who dropped after onboarding" |

### Definition of done (per phase)

| Phase | Done = |
|---|---|
| 1 | Approved PRD + roadmap on file; 5 senior-tech founder/lead pre-pledges |
| 2 | Figma file frozen; Reduce-Motion tested; AX5 Dynamic Type tested |
| 3 | All API endpoints stubbed; navigation graph compiles |
| 4 | Server endpoints behind feature flag; staging stable for 7d |
| 5 | All MVP screens reachable; 95%+ test coverage on Domain layer; 80%+ on Data layer |
| 6 | Crash-free 99.5%+ over 50 testers × 7d; NPS 30+; zero P0 / P1 bugs open |
| 7 | App Store live; 100+ installs; D7 retention ≥ 50%; ≥ 1 5-star review with substantive content |

### Risks across the journey

| Risk | Phase | Severity | Mitigation owner |
|---|---|---|---|
| Apple rejection on "auto-apply" framing | 7 | Critical | PM + Legal — review every screen + screenshot |
| Anthropic cost spikes at 1000 users | 4–7 | High | Eng — per-user daily budget + alerts |
| StoreKit refund flow drops entitlement late | 7 | Medium | Eng — webhook + 4h reconciliation cron |
| Onboarding completion <60% | 5–6 | High | Design — A/B test 4-step variant |
| Build > 100 MB makes update friction | 5 | Low | Eng — strip simulator slices, asset on-demand for templates |
| Tony burnout doing all founder + maker roles | all | High | Founder — weekly schedule cap, contract a designer for screen polish |

---

## Appendix · 14-Day Kickoff Sprint

The above is a 28+ week plan. The next 14 days unlock or kill it.

### Days 1–3 — Validate

- Run 12 user interviews (5×senior IC, 5×senior PM/CoS, 2×recently RIF'd). 30-min Loom + structured script. Goal: 70%+ rate the value prop ≥ 8/10.
- Lock pricing assumptions or revise.

### Days 4–7 — Backend foundation

- Add `/api/auth/apple`, `/api/sync`, `/api/push/register` to existing `dashboard-web/server.mjs`.
- Wire StoreKit Server Notifications V2 webhook (test mode with sandbox receipts).
- Create `users`, `devices`, `outbox` SQLite tables with migrations.
- Unit + integration tests for new endpoints (target 90%+ coverage).

### Days 8–11 — iOS skeleton

- New Xcode project: SwiftUI, iOS 18, single target.
- Folder layout + Observable env + Auth gate + 5-tab shell + GlassCard + 3 state components.
- Sign in with Apple end-to-end against staging.
- One screen fully built: Today (with mocked data).

### Days 12–14 — Spine connect + first screenshot

- Triage stack with 1 mock card + swipe gesture + haptic.
- Pipeline paste sheet (no eval yet, just queue).
- Replace Today mock data with live `/api/sync` response.
- Take first set of in-design Figma screenshots; pin to TestFlight description.

### Decision point at day 14

- If user-interview signal is strong AND iOS skeleton runs smoothly → continue full plan.
- If signal is weak OR Apple SDK friction is severe → pivot to web-app-on-mobile (PWA) at 30% of effort.

### What success looks like at day 14

- Working build on a real device.
- 1 of the 12 interview participants installed it and gave feedback.
- Backend stable for 5 days uninterrupted.
- PRD revised once based on interview learnings.
- Tony confirmed daily-use habit forming.

---

*This pack lives at `docs/product-strategy.md`. Edit any section directly — it's source of truth from here on.*
