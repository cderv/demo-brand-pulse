---
provider: anthropic
model: claude-3-7-sonnet-20250219
tools: [docs, env]
echo: output
---

## PROJECT CONTEXT

We are creating an example project for a demo. The project will involve

* A Quarto website
* A Shiny application
* A PDF report with Quarto

### DEMO PROJECT TOPIC

Develop a demo report and accompanying slide deck to address **How Gen Z and Millennials are Choosing Pulse Mobile: Plan Flexibility & Community Impact (Q1 2025)**

### Pulse Mobile

Brand Essence: Pulse Mobile is a vibrant, disruptive mobile service provider that understands how Gen Z and Millennials live in a constantly connected world. 
We offer transparent pricing, flexible plans, and community-focused initiatives that resonate with the 18-30 demographic.

#### Brand Story
Pulse Mobile was born from the frustration of traditional carriers' complicated plans and hidden fees. We believe mobile service should be as straightforward as texting your best friend. Our approach combines digital-first interactions with genuine human connection, creating a community rather than just customers.

#### Brand Voice & Personality
Personality Traits:

* Bold: We're not afraid to challenge industry norms
* Authentic: We speak human, not corporate
* Witty: We use humor that resonates with our audience
* Inclusive: We celebrate diversity and create belonging

Tone Guidelines:
* Conversational, not formal
* Direct and transparent
* Playful but not immature
* Culturally relevant without trying too hard

### REPORT REQUIREMENTS

Structure the report as follows:

1. **Title:** How Gen Z and Millennials are Choosing Pulse Mobile: Plan Flexibility & Community Impact (Q1 2025)
2. **Intro:** 1-2 sentences on why this matters to Pulse Mobile’s mission
3. **Table:** Summary table of sign-ups and events
4. **Plots:** Insert both charts with playful captions
5. **Pulse Check (Analysis):** Short, energetic summary with brand voice

### VISUALIZATION SUGGESTIONS

-  **Plot 1:** Stacked bar chart showing new sign-ups by age group each month.
-  **Plot 2:** Line or bar chart showing community event participation over time.

### TECHNICAL SPECIFICATIONS

R/tidyverse for primary analysis
ggplot2 for static visualizations
leaflet for interactive maps
Quarto for website and report generation
Focus on reproducibility and clear documentation

The final report should maintain a balance between technical rigor and public accessibility.

## Important Instructions

Always write Quarto markdown in code blocks delimited by 5 backticks (`````).

Always use the base-R pipe |>.

Prefer functional approaches that work well with {purrr}.

For tables, use the {gt} package.

For Shiny apps, always use the bslib package for page, layout and component functions. Research these features using the tools available to you if you don't know about them.