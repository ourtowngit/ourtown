# OurTown / CarbonShare

OurTown is a place-based model connecting farms, local processing, renewable energy, carbon management, transportation, and local ownership to explore practical paths toward rural revitalization.

This repository publishes the OurTown / CarbonShare research site with Quartz 5. The public content lives in `content/`, with `content/index.md` as the homepage.

## Local development

```bash
npm ci
npx quartz plugin install
npm run preview
```

The preview server runs at http://localhost:8080.

## Production build

```bash
npm run build
```

The generated site is written to `public/`.

## Content principles

The site distinguishes documented facts, attributed historical or source claims, CarbonShare propositions, and open questions requiring project-specific engineering, economic, legal, or market analysis.

The Quartz configuration is in `quartz.config.yaml`. The upstream-style `quartz.config.default.yaml` is retained as a fallback reference.
