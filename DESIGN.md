---
name: Rivaldy Dwi Satria — DevOps Portfolio
description: A deploy log set as a printed page: rack-grey paper, console-black instrument panels, and a green lamp that lights only for what is live.
colors:
  rack-grey: "#E5E8EA"
  rack-grey-deep: "#D8DDE0"
  signal-ink: "#0F1418"
  slate-ink: "#38434B"
  muted-slate: "#54616A"
  hairline: "#AAB3B9"
  console-black: "#0E1317"
  console-rule: "#2B363D"
  console-line: "#5B6B75"
  console-text: "#E1E7EB"
  console-body: "#C3CDD3"
  console-muted: "#9BA7AF"
  console-white: "#FFFFFF"
  lamp-green: "#1FD18B"
  lamp-green-on-console: "#3DDC97"
  lamp-green-deep: "#0A6B43"
  code-wash: "rgba(15, 20, 24, 0.08)"
typography:
  display:
    fontFamily: "Schibsted Grotesk, Helvetica Neue, Arial, system-ui, sans-serif"
    fontSize: "clamp(52px, 10.5vw, 96px)"
    fontWeight: 800
    lineHeight: 0.95
    letterSpacing: "-0.03em"
  headline:
    fontFamily: "Schibsted Grotesk, Helvetica Neue, Arial, system-ui, sans-serif"
    fontSize: "clamp(34px, 4.6vw, 56px)"
    fontWeight: 700
    lineHeight: 1.02
    letterSpacing: "-0.025em"
  title:
    fontFamily: "Schibsted Grotesk, Helvetica Neue, Arial, system-ui, sans-serif"
    fontSize: "26px"
    fontWeight: 700
    lineHeight: 1.15
    letterSpacing: "-0.02em"
  lede:
    fontFamily: "Schibsted Grotesk, Helvetica Neue, Arial, system-ui, sans-serif"
    fontSize: "clamp(18px, 2.2vw, 22px)"
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: "normal"
  body:
    fontFamily: "Schibsted Grotesk, Helvetica Neue, Arial, system-ui, sans-serif"
    fontSize: "16px"
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: "normal"
  label:
    fontFamily: "Geist Mono, ui-monospace, SF Mono, Cascadia Mono, Menlo, Consolas, monospace"
    fontSize: "13px"
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: "0.04em"
  numeral:
    fontFamily: "Geist Mono, ui-monospace, SF Mono, Cascadia Mono, Menlo, Consolas, monospace"
    fontSize: "clamp(56px, 6vw, 76px)"
    fontWeight: 500
    lineHeight: 1
    letterSpacing: "-0.04em"
rounded:
  none: "0"
  sm: "2px"
  full: "50%"
spacing:
  xs: "4px"
  sm: "8px"
  md: "16px"
  lg: "24px"
  xl: "32px"
  2xl: "48px"
  3xl: "64px"
  section: "96px"
components:
  button-primary:
    backgroundColor: "{colors.signal-ink}"
    textColor: "{colors.rack-grey}"
    typography: "{typography.label}"
    rounded: "{rounded.sm}"
    padding: "12px 18px"
    height: "56px"
  button-primary-hover:
    backgroundColor: "{colors.lamp-green-deep}"
    textColor: "{colors.rack-grey}"
  button-ghost:
    backgroundColor: "transparent"
    textColor: "{colors.slate-ink}"
    typography: "{typography.label}"
    rounded: "{rounded.sm}"
    padding: "12px 18px"
    height: "48px"
  button-ghost-hover:
    backgroundColor: "{colors.signal-ink}"
    textColor: "{colors.rack-grey}"
  nav-strip:
    backgroundColor: "{colors.console-black}"
    textColor: "{colors.console-text}"
    typography: "{typography.label}"
    height: "56px"
  nav-contact:
    backgroundColor: "transparent"
    textColor: "{colors.lamp-green-on-console}"
    typography: "{typography.label}"
    rounded: "{rounded.sm}"
    padding: "0 18px"
    height: "44px"
  nav-contact-hover:
    backgroundColor: "{colors.lamp-green-on-console}"
    textColor: "{colors.console-black}"
  status-bar:
    backgroundColor: "transparent"
    textColor: "{colors.lamp-green-deep}"
    typography: "{typography.label}"
    rounded: "{rounded.sm}"
    padding: "14px 16px"
  console-panel:
    backgroundColor: "{colors.console-black}"
    textColor: "{colors.console-text}"
    rounded: "{rounded.none}"
  current-phase-slab:
    backgroundColor: "{colors.rack-grey-deep}"
    textColor: "{colors.slate-ink}"
    rounded: "{rounded.none}"
---

# Design System: Rivaldy Dwi Satria — DevOps Portfolio

## Overview

**Creative North Star: "The Run Log"**

The site reads as a deploy log set as a printed page. A rack-grey sheet carries ruled rows, a left margin of mono labels, and a few dark instrument panels cut into it. Nothing is decorative: type, rules and one lamp colour do the work, and every claim sits next to something a visitor can verify. The voice is plain and exact, matter-of-fact and evidence-led, with no flourish.

Structure comes from the ledger. Sections hang from a 200px margin column that holds the `// SECTION` label, with content to its right; the four pipeline phases form a numbered rail down the page, and the pipeline readout in the hero is the one place where state is shown as hardware (lamps lit in sequence). Depth is flat. Dark panels, hairline rules and a tinted slab for the current phase replace shadows entirely.

The terminal identity is binding: the `rivaldy@devops:~$` prompt in the nav and the monospace `// SECTION` labels are part of the brand, not a styling choice, and any new surface keeps them.

**Key Characteristics:**
- Cool rack-grey paper with near-black instrument panels; one green that means "live" or "the next action".
- Grotesk for reading and headlines, mono for data, labels, numerals and the prompt.
- Ruled, ledger-like rows instead of cards; borders are hairlines, never shadows.
- Near-square corners (2px maximum) and square markers; circles are reserved for status lamps.
- 44px minimum touch targets and a visible keyboard focus ring on every link.

## Colors

A restrained cool palette: two paper greys, a near-black ink scale, a dark console family for panels, and a single green in three jobs.

### Primary
- **Lamp Green** (#1FD18B): the lit marker on light surfaces: status dot, tag markers, journey nodes, the current-job square, the underline beneath the email. Never used as text on paper (1.6:1 contrast).
- **Lamp Green on Console** (#3DDC97): the same lamp on dark panels, also used as text there (10.6:1): the nav prompt, the Contact outline, lit pipeline stages, project stat values.
- **Lamp Green Deep** (#0A6B43): green as text on paper (5.3:1): the status bar text, "NOW", the status line in Contact, link hover.

### Neutral
- **Rack Grey** (#E5E8EA): the page surface. A cool grey, deliberately not cream or white.
- **Rack Grey Deep** (#D8DDE0): the tinted slab behind the current phase (Phase 04, NOW) and nothing else.
- **Signal Ink** (#0F1418): primary text, heavy rules, the solid primary button.
- **Slate Ink** (#38434B): body copy, secondary buttons and nav-adjacent text (8.2:1 on Rack Grey).
- **Muted Slate** (#54616A): metadata, mono labels, section tags (5.2:1; thinnest passing margin is 4.7:1 on Rack Grey Deep).
- **Hairline** (#AAB3B9): row dividers and decorative rules only; too light to carry meaning alone.
- **Console Black** (#0E1317): instrument panels: the nav strip, pipeline readout and project block.
- **Console Rule** (#2B363D), **Console Line** (#5B6B75): dividers and control borders inside panels.
- **Console Text** (#E1E7EB), **Console Body** (#C3CDD3), **Console Muted** (#9BA7AF), **Console White** (#FFFFFF): the four text steps on dark; white is only for the project title.
- **Code Wash** (rgba(15, 20, 24, 0.08)): the faint tint behind inline `code`.

### Named Rules
**The Lamp Rule.** Green means "live" or "the next action". It marks what is active now (status dot, NOW, the current job, lit pipeline stages) or the primary way to reach out (Contact, the email). It is never used as decoration, and never for emphasis on unrelated content.

**The Two Greens Rule.** Light lamp green is for fills and dots only; deep green is for text on paper. Light green as text on a light surface fails contrast and is not used.

## Typography

**Display Font:** Schibsted Grotesk (with Helvetica Neue, Arial, system-ui)
**Body Font:** Schibsted Grotesk (same family, lighter weights)
**Label/Mono Font:** Geist Mono (with ui-monospace, SF Mono, Cascadia Mono, Menlo, Consolas)

**Character:** A newspaper-descended grotesk at heavy weights for the name and headlines, set tight; a clean mono for everything that is data, label or command. The pairing keeps the terminal voice in the small print and lets the headlines read as print.

### Hierarchy
- **Display** (800, clamp(52px, 10.5vw, 96px), 0.95): the name in the hero, tracking -0.03em, allowed to wrap anywhere.
- **Headline** (700, clamp(34px, 4.6vw, 56px), 1.02): section headings (h2), tracking -0.025em, balanced.
- **Title** (700, 26px, 1.15): phase titles, the project title (up to 40px), the current role (up to 34px); past roles step down to 18px at weight 600.
- **Lede** (400, clamp(18px, 2.2vw, 22px), 1.5): the hero paragraph, capped near 34em.
- **Body** (400, 16px, 1.6): descriptions and bullets, capped at 64–68ch.
- **Label** (500, 12–14px, 0.04–0.1em tracking): the prompt, `// SECTION` tags, tags and readouts, buttons. Mono, sentence case or the case the content uses.
- **Numeral** (500, clamp(56px, 6vw, 76px), 1, -0.04em): the phase numbers 01–04, tabular figures.

### Named Rules
**The Two Voices Rule.** Grotesk is for reading and for headlines; mono is for data, labels, numerals and commands. A heading is never mono, and a label is never grotesk.

**The Floor Rule.** Nothing is set below 12px.

## Layout

A ledger. Content sits in a 1180px container with 32px gutters (20px under 600px). Every section is a two-column grid: a 200px margin column holding the `// SECTION` label, a 48px gap, and the content column. The label is sticky on desktop and static on mobile. Below 900px the grid collapses to one column.

The Stack section is the one full-width exception: its heading stays in the content column, but the skills table spans both columns beneath it, with a static label. Use a full-width section sparingly, to vary rhythm, not as the default.

Sections are separated by a 1px ink rule and 96px of vertical padding (64px under 600px). The hero is left-aligned: a framed status bar, the display name, a role line, then a two-column grid where the intro paragraph sits left and the button cluster begins at the role line on the right. On phones the order is role, paragraph, primary button with the email under it, then secondary buttons.

Spacing follows a loose 4px rhythm (4, 8, 12, 16, 24, 32, 48, 64, 96 recur), with a few local values at 6, 10, 14, 18, 22 and 38px in compact controls. The nav is a 56px strip on desktop and two rows (about 100px) on phones, with the prompt and Contact on row one and the links on row two. Breakpoints: 900px (ledger collapses, hero stacks, pipeline becomes a 3×3 grid) and 600px (tighter gutters and padding, two-row nav).

## Elevation & Depth

Flat by design. There are no shadows anywhere. Depth comes from three things: 1px hairline rules and 2px ink rules that divide the page, dark console panels set against the grey sheet, and a single tinted slab (Rack Grey Deep) with a 3px green top rule for the current phase. State changes (hover, press, focus) are shown by fill, underline and a 1px nudge, never by lift.

### Named Rules
**The Flat Rule.** Surfaces are flat at rest and in motion. No shadow, glow, blur or gradient is added to signal hierarchy or state.

## Shapes

Near-square. Buttons, the status bar and the nav Contact outline use a 2px radius; panels and slabs use none. Circles appear only as status lamps (the hero status dot and unlit pipeline stages). Markers are squares: tag markers, journey nodes and lit pipeline stages are small squares, so a filled square reads as "emphasised/lit" and a hollow circle as "idle".

Rules are the form language: a 2px ink rule opens each table, 1px hairlines separate rows, and a 3px green rule caps the current phase. Pipeline connectors are 1px dim lines for idle stages and 2px lamp-green lines for lit ones, so state survives without colour.

### Named Rules
**The Square Rule.** No corner exceeds 2px. Roundness belongs to lamps, nowhere else.

## Components

Square and exact: near-square corners, hairline borders, and state shown by fill and underline, never by shadow.

### Buttons
- **Shape:** 2px radius, 1.5px border, mono label, 48px minimum height (56px for the primary).
- **Primary:** solid Signal Ink with Rack Grey text. One per view; in the hero it is "Get in Touch" with the existing email shown beneath it in mono.
- **Hover / Active:** primary turns Lamp Green Deep; ghost fills with Signal Ink. Pressed states shift 1px down and darken one step. Transitions are 0.15s on colour only.
- **Secondary / Ghost:** transparent with a Muted Slate border and Slate Ink text; View Project and GitHub sit here so the primary action stays singular.
- **Focus:** a 2px Signal Ink outline offset 3px on light surfaces, Lamp Green on Console inside dark panels and the nav.

### Navigation
- **Style:** a Console Black strip. The prompt is Lamp Green on Console, links are Console Text, Contact is a Lamp Green outline that fills on hover.
- **States:** links underline (2px, 6px offset) on hover and press; every target is at least 44px tall.
- **Mobile:** two rows: prompt and Contact above, the four links below, divided by a Console Rule hairline.

### Status Bar
A framed bar (1.5px ink border, 2px radius, transparent fill) with a lamp dot and the availability line in Lamp Green Deep. It is paired with, not stacked on, a dark nav: only one dark band sits at the top of the page.

### Pipeline Readout
A Console Black panel of nine stages, each a lamp with a mono label. Lit stages are filled squares with a 2px lamp connector and bright text; idle stages are hollow circles with a 1px dim connector and muted text. On load the lit lamps switch on in sequence (0.7s each, 140ms apart); reduced motion shows the end state at once.

### Phase Rail
The signature component. Four ledger rows joined by a 2px ink rail with 12px square nodes and large mono numerals. The current phase sits on the Rack Grey Deep slab with a 3px Lamp Green Deep top rule, a filled lamp node and a "NOW" tag, and is marked `aria-current="step"`.

### Tags and Inventory Rows
Tags are mono text with a small square marker; emphasised tags carry a filled lamp-green marker and idle tags a hollow muted one. The Stack section is an inventory table: a grotesk group name at left, mono items flowing right, hairline row dividers, a 2px ink rule on top.

### Project Panel
A Console Black block: a title bar with the project label and a 44px GitHub link, then the title in white, body copy in Console Body, a two-column stat readout (values in Lamp Green on Console, labels in Console Muted) and tags.

### Contact
The email is the largest tappable text on the page (clamp 17–52px, bold, 3px lamp underline, 44px minimum target). Supporting fields sit below as ruled rows with sentence-case mono labels.

## Do's and Don'ts

### Do:
- **Do** keep the `rivaldy@devops:~$` prompt and the `// SECTION` labels on every surface; they are binding identity.
- **Do** use Lamp Green Deep (#0A6B43) for green text on paper and Lamp Green (#1FD18B) only for fills, dots and underlines.
- **Do** show state by shape and line weight as well as colour (filled square vs hollow circle, 2px vs 1px connector).
- **Do** keep every interactive target at 44px or taller and give every link a visible focus ring.
- **Do** hold body copy to 64–68ch and set nothing below 12px.
- **Do** honour `prefers-reduced-motion` and keep a `forced-colors` fallback for lamps and markers.

### Don't:
- **Don't** add shadows, glows, blur or gradients; depth is rules and panels.
- **Don't** round any corner past 2px, or use a circle for anything but a status lamp.
- **Don't** use light lamp green as text on a light surface, or green for emphasis unrelated to live state or the next action.
- **Don't** use emoji or Unicode glyphs as icons, or set a heading in mono.
- **Don't** stack two dark bands at the top of the page; the nav strip is the only one.
- **Don't** invent claims, metrics or logos to fill a panel; every figure must be real and sourced from the page or the repo.
