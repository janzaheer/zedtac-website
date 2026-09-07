# ZedTac Website — Section by Section Guide

A plain-English walkthrough of every page and every section on the website, in the order a visitor meets them. For each section: what it is, and what it is there to do.

---

## PART 1 — THE LANDING PAGE

This is the page visitors land on first. It has eight sections, top to bottom. (An earlier version had nine — the empty *Trusted By* strip has since been taken out.)

### 1. Hero
**Headline:** "Run your entire operation then let it run itself"

The opening statement. It positions ZedTac as two things working together: an ERP that records what happens in the business, and an automation engine that acts on those records. The supporting text names the departments covered — finance, inventory, supply chain, manufacturing, HR and customer operations.

Two buttons sit here: **Book a Free Consultation** (the main action) and **See the ERP demo** (for people who want to look before they talk). Three short labels underneath summarise the three pillars: AI, ERP, Automation.

Behind the text there is a slow-moving 3D animation showing an ERP core with module cards orbiting it and data moving between them. It is decorative and sits behind the words.

*Purpose: state what the product is and give the visitor two ways forward — talk to us, or see it.*

### 2. Three Layers, One Ledger
**Headline:** "Three layers, one ledger"

Explains the architecture of the product in business terms, using three cards: vertical modules, the shared kernel, and the automation platform.

**The cards have been rebuilt.** Each one is now a dark illustration drawn for that layer — stacked verticals, a kernel with its satellites, an event flowing into an action. The layer name and its tag sit on the card at all times; the description and the bullet points stay folded away and open when the card is hovered or reached by keyboard. The cards are focusable for exactly that reason, so the copy is not hidden from anyone not using a mouse. On touch screens the panels are open by default.

The whole section also drifts as it scrolls: it starts slightly small and low, rises to its true size as it comes into view, holds completely still for the stretch where the cards are actually read, then eases back as it leaves. It is driven by scroll position only — no hover, no cursor tracking — so a phone and a desktop behave identically.

The message is that industry-specific features are a thin layer over one shared core — not separate products.

*Purpose: reassure a technical buyer that this is one coherent system, not bolted-together parts.*

### 3. Trusted By — removed
This was a narrow strip intended to hold client logos. It had no entries and rendered as blank space, so it has been taken out of the page. Its styling is still in the stylesheet, so it can be brought back once there are real client names to put in it.

**Do not fill this with logos of companies that are not clients.**

### 4. ERP Keeps the Record, Automation Takes the Action
**Headline:** "ERP keeps the record. Automation takes the action"

A two-panel comparison. The left side explains the ERP as the system of record; the right explains the automation engine as the thing that acts on those records. Each side has its own button through to the relevant service page.

*Purpose: clarify the single most important distinction in the product, and split traffic toward the two service areas.*

### 5. Depth Where It Matters
**Headline:** "Depth where it matters, a shared engine underneath"

A moving carousel of six cards covering industry verticals — Real Estate, Education, Construction, Distribution, Healthcare and similar.

These cards now use the **same component as Three Layers above**: the card is the picture, the name is always visible, and the explanation opens on hover or keyboard focus. Sharing one component is deliberate — the two sections used to carry near-identical styling written twice.

The cards slide sideways automatically, one per second.

*Purpose: show industry credibility without implying a separate product per industry.*

### 6. Eight Sectors on the Same Platform
**Headline:** "Eight sectors running on the same platform"

**This section has been rebuilt.** Above 1000px it is two columns:

- **Left — a fixed rail card.** The heading, all eight sector names as small chips, and the back/forward arrows. Between them sits a small 3D scene built entirely in CSS: a tilted platform turning slowly, an engine core floating above it, and eight pads around the rim — one per sector. No 3D library is involved.
- **Right — the carousel**, which deliberately runs off the right edge of the screen so it reads as continuing rather than ending.

The carousel is **paged**: two cards are shown, they slide together, then the next two. How many move at a time is measured from the layout rather than hard-coded — two on a desktop, one on a phone — so it stays correct at any width.

Each card carries its own dark illustration drawn for that deployment's own story, a flat outlined surface, and alternating baselines so the row does not read as a grid of identical boxes.

*Purpose: prove breadth — the same platform serves very different businesses — and show the shared engine underneath doing it.*

### 7. ERP Deployments and the Results
**Headline:** "ERP deployments and the results they delivered"

Eight case study cards. Each has an illustration, an industry tag, the operational problem, the ERP solution applied, and a highlighted result (for example "Stock accuracy at 99.2%").

All cards are the same height with the result badge pinned to the bottom, so they line up cleanly.

*Purpose: turn claims into evidence.*

### 8. Notes on Enterprise Systems
**Headline:** "Notes on enterprise systems that actually get adopted"

Six article cards — the insights/blog area. Topics cover implementation failure causes, cloud versus on-premise, data migration, and user adoption.

**Note:** these are article previews only. There are no full articles behind them.

*Purpose: demonstrate expertise and give the site something to publish into.*

### 9. About
**Headline:** "An ERP partner built around your operations"

The closing section. An image alongside three paragraphs describing ZedTac as an ERP consultancy and software company, plus four statistics: 12+ years, 120+ implementations, 98% client retention, 8 industries served.

This is where the **About** link in the top menu takes you.

*Purpose: establish credibility and close the page on who the company is.*

---

## PART 2 — THE SERVICES MENU

The top menu has a **Services** dropdown with two entries.

### Services → ERP Services
**Headline:** "One governed system of record for the whole operation"

The main ERP sales page. It contains:

- **Hero** — the positioning statement, with buttons for **Book a Free Consultation** and **Explore 14 ERPs**.
- **What the ERP core covers** — nine feature areas explaining that every module posts into the same set of books.
- **End-to-end ERP delivery** — the fourteen specialist services, covering the full lifecycle from advisory through implementation, integration, migration and long-term support. Six are shown initially with a "See All 14" expander.
- **Automation cross-sell** — a panel pointing toward the automation side of the product.

*Purpose: the main destination for anyone shopping for an ERP.*

### Services → Automation Services
**Headline:** "Your ERP holds the data. Automation makes it act"

The automation sales page. It contains:

- **Hero** — with **Book a Free Consultation** and **Explore 11 Modules**.
- **A system of record, and a system of action** — explains that the two halves were designed together rather than integrated afterwards.
- **Events, rules, actions** — a four-step explanation of how the engine works.
- **Eleven modules, one event engine** — the eleven automation modules (collections, approvals, payroll, CRM, scheduled reporting and so on). Each is clickable and opens its own detail page.
- **ERP cross-sell** — a panel pointing back to the ERP side.

*Purpose: sell the automation half and route visitors into individual module detail.*

### Automation Module Detail
Opened by clicking any of the eleven modules. Shows that single module in depth — what triggers it, what it does, and what it connects to.

---

## PART 3 — THE RESOURCES MENU

The **Resources** dropdown has five entries.

### Resources → Features & Capabilities
**Headline:** "Everything the platform does"

The complete capability list across ERP and automation — 38 grouped capability areas covering modules, integration points and governance controls.

It also carries **"Every feature, side by side"** — a comparison table setting the capability list against what a buyer would otherwise be comparing.

*Purpose: the reference page for a buyer doing detailed comparison.*

### Resources → Integrations
**Headline:** "Connected to the systems you already run"

Seventeen integration groups — messaging, accounting, banking, document capture and similar. The message is that ZedTac becomes the system of record without replacing everything at once.

*Purpose: remove the "we already use X" objection.*

### Resources → Documentation
**Headline:** "How the platform works, written down"

Six documentation groups covering architecture, the money workflow, the automation event catalogue and the REST API. Also includes a table of fourteen platform events — what raises each one and what it typically triggers.

*Purpose: technical due diligence material for a buyer's IT team.*

### Resources → FAQs
Three tabs of questions: **ERP FAQs**, **Automation FAQs**, and **General FAQ**. Around ten questions per tab, covering implementation, timelines, data migration, customisation, multi-entity support and post-launch support.

*Purpose: answer the common objections before a sales call.*

### Resources → Client Outcomes
**Headline:** "The numbers that moved after go-live"

The proof page. It contains:

- **Three places an ERP pays for itself** — financial control, operational efficiency, growth and scale.
- **What actually changes, measure by measure** — a before-and-after comparison table.
- **What operations leaders say** — six client testimonials across manufacturing, distribution, retail, healthcare, construction and education.
- **Outcomes across eight sectors** — headline results per deployment.
- **Why these numbers are defensible** — four steps explaining how the figures are baselined and verified.

*Purpose: the evidence page for a buyer building an internal business case.*

---

## PART 4 — THE REMAINING MENU ITEMS

### Pricing
**Headline:** "ERP pricing that starts with your process, not a license count"

Contains three implementation packages, a full side-by-side feature comparison, six things included on every engagement regardless of package, and six optional add-ons that can be bought after launch.

*Purpose: qualify budget without a sales call.*

### Contact (Consultation)
**Headline:** "Start with a conversation, not a contract"

The main conversion page. It contains:

- **Three consultation formats** — a 30-minute discovery call, a 90-minute process deep-dive, and a full onsite process audit.
- **Side-by-side comparison** of what each format covers.
- **From request to written proposal in four steps.**
- **The enquiry form** — name, email, company, industry, team size, current systems, timeline and message.
- **Six things worth knowing before we talk.**

**Important:** the form does not send anywhere. It shows a success message and clears itself, but no enquiry is delivered. This needs connecting before launch.

*Purpose: the destination for every "Book a Free Consultation" button on the site.*

---

## PART 5 — THE ERP DEMO

Reached from **See the ERP demo** in the hero.

**Headline:** "One ERP platform to run your entire operation"

An interactive product walkthrough that plays automatically. It shows a simulated ERP screen cycling through four scenes:

1. **Dashboard** — live operations overview with key figures and a chart
2. **Inventory** — stock on hand across warehouses
3. **Procurement** — a purchase order going through three-way matching
4. **Reports** — a consolidated profit and loss view

Visitors can click any module in the sidebar to jump straight to that scene. Below the demo are the core module list and a closing invitation to book a walkthrough on your own data.

*Purpose: let a visitor see the product working without a sales call.*

---

## PART 6 — SHARED ELEMENTS

These appear on every page.

### Loading Screen
The first thing a visitor sees. A full-screen panel with the ZedTac monogram, three rings expanding from behind it, the company name, a progress bar and the line "Initializing platform". It clears itself once the page is ready.

Worth knowing: it is shown on **every** visit, not only the first, and it delays the moment the visitor reaches the actual content. If the site ever feels slow to open, this is the first thing to look at.

### Scroll Progress Bar
A thin bar across the very top of the window that fills as the visitor moves down a page. Decorative — it indicates position only.

### Skip to Content Link
A link that stays invisible until a keyboard user presses Tab on arrival, then appears and jumps straight past the navigation to the main content. It exists so that someone navigating by keyboard does not have to tab through the whole menu on every page. Nothing to maintain; it is noted here so it is not mistaken for a stray element.

### Top Navigation
Company name on the left. Menu items: **Services** (dropdown), **Pricing**, **Resources** (dropdown), **About**, **Contact**. On the right: **Login** and **Get started**.

The bar stays visible while scrolling, hides when scrolling down and returns when scrolling up. On phones and tablets it collapses into a menu button.

### Footer
Company name, a newsletter sign-up, and five link columns: Product, Company, Download, Connect and Legal. Below that, the copyright line and the company address in Lahore, Pakistan.

**Notes:** the newsletter does not send anywhere.

The **Download** column was taken out for a while and has been put back on the `update-ui` branch in an honest form. App Store and Play Store are shown with their store icons but are **not links** — they carry a "Coming soon" caption instead. Previously both pointed at the consultation form, so a visitor who clicked "App Store" expecting a store listing landed on a contact page. When real listings exist, the two entries become links and the caption goes.

### Sign-up and Login
Both open as pop-up windows from the top-right buttons. Both are visual only — no account is created and no one can log in.

### Cookie Notice
Appears on a first visit and remembers the choice. This is the only feature on the site that saves anything.

It now survives a browser that refuses to store anything at all (private windows, or site data blocked in settings). Previously the Accept button tried to save the choice *before* hiding the banner, so when saving failed the banner never went away and there was no way to dismiss it. It now hides first and saves second; if saving is not possible the visitor is simply asked again next time.

### Legal Pages
Privacy Policy, Terms of Service and Cookies Policy open as pop-ups from the footer. All three are placeholder text.

---

## PART 7 — THINGS TO FIX BEFORE LAUNCH

### Must fix
1. **The site is not deployed, and HTTPS does not work.** `zedtac.com` currently serves a parked registrar page. The secure address fails on both `zedtac.com` and `www.zedtac.com` — the certificate does not match the name. Until that is sorted the address tags in the page (`canonical`, `og:url` and the search-engine data) point at a page no search engine can fetch. The domain itself is yours: the name servers and the company email both run on it.
2. **No form works.** The contact form, newsletter, sign-up and login all look like they work but send nothing. Every route to becoming a customer currently ends in a dead end.
3. **Pricing and reviews are demonstration content.** The three plan prices and every five-star review with a name attached are placeholders. The reviews in particular must be real people, or removed, before the site is public.

### Should fix
4. **Two finished pages cannot be reached.** A full About page and an Industries page are both built but have no link pointing to them anywhere on the site.
5. **Small orange tags are hard to read** — white text on the orange background measures 2.0:1, against a 4.5:1 standard for text this size. The site's main buttons use the same pairing, so this is a decision to make once for both.
6. **Every page shares one web address.** Pages cannot be bookmarked, shared or found individually by search engines, and refreshing the browser always returns to the landing page.
7. **The hero loads a 3D library from an outside service.** If that service is slow or blocked, the hero background does not appear. It also logs two errors on every visit.

### Worth knowing
8. **Blog articles do not exist** — only the six preview cards.
9. **The site has no backend.** All content is written directly into the page. Nothing is stored, sent or retrieved from a server.
10. **Turn on compression at the host.** The page is one 680 KB file; served compressed it is roughly a fifth of that.

### Fixed since the first version of this guide
- The empty Trusted By strip has been removed.
- App Store and Play Store no longer point at the consultation form.
- The cookie banner can no longer become impossible to dismiss.

---

## PART 8 — WHAT CHANGED SINCE THIS GUIDE WAS FIRST WRITTEN

The guide above now describes the site as it stands. This part records what moved, so anyone reading an older copy can see what is different.

### Already merged
- **Search-engine and sharing information** added: page description, social sharing card, and structured company data.
- **Three Layers and Depth Where It Matters** rebuilt onto one shared card component, and Three Layers given its scroll-linked movement.
- **Eight Sectors** rebuilt as a rail card with a CSS 3D scene beside a paged carousel.

### Waiting on the `update-ui` branch
Not yet merged at the time of writing. Open it before merging anything else that touches the page, because the whole site is a single file and two branches editing it will collide.

- **Speed.** Twenty-six background-blur effects were being drawn and then completely covered by something opaque on top — pure cost, no picture. They are gone. Forty-six animations were running permanently whether or not anyone could see them, including twenty-four in the footer while the visitor was still at the top of the page; these now pause when their section is off screen and resume where they stopped. At the top of the page that is forty-six running animations down to eight.
- **The Three Layers movement was stuttering.** Its position was being measured from the very element it was moving, so its own movement fed back into the measurement. It now measures a fixed reference. The nine blur effects inside it that were being redrawn on every frame were also the reason it felt heavy.
- **Eight Sectors cards** no longer carry the 01–08 numerals.
- **The footer Download column** is back, in the honest form described in Part 6.
- **The company name in the header** gained a small hover treatment.
- **A note at the top of the page file** records that the web address appears in six places, not four, and that it must not go live until HTTPS works.

*A short note on the 3D hero: the background scene does work. It had been set to half strength and masked out of the left half of the screen, so it was only ever visible as a strip down the right edge.*

---

*First prepared from a full review of the live website code. Updated after the work recorded in Part 8; the descriptions above were re-checked against the page rather than carried over.*
