---
tags: [dashboard]
---
# 🧵 Hireloom — Pipeline Dashboard

> Vue temps réel de tes évaluations. Chaque rapport dans `reports/` qui contient
> un frontmatter YAML (`company`, `score`, `status`…) apparaît automatiquement
> ci-dessous. Plus tu évalues d'offres, plus ces tableaux se remplissent.
>
> *Requiert le plugin **Dataview** (déjà installé). Si les tableaux n'apparaissent
> pas, active "Dataview" dans Réglages → Plugins tiers.*

## 🎯 Top offres (score décroissant)

```dataview
TABLE WITHOUT ID
  link(file.link, company) AS "Entreprise",
  role AS "Rôle",
  score AS "Score",
  status AS "Statut",
  comp AS "Rémunération",
  date AS "Date"
FROM "reports"
WHERE score
SORT score DESC
```

## ✅ À postuler en priorité (score ≥ 4.0, non postulé)

```dataview
TABLE WITHOUT ID
  link(file.link, company) AS "Entreprise",
  role AS "Rôle",
  score AS "Score",
  legitimacy AS "Légitimité"
FROM "reports"
WHERE score >= 4.0 AND status = "Evaluated"
SORT score DESC
```

## 📊 Pipeline par statut

```dataview
TABLE WITHOUT ID
  rows.file.link AS "Rapports",
  length(rows) AS "Nb"
FROM "reports"
WHERE status
GROUP BY status AS "Statut"
SORT length(rows) DESC
```

## 🗓️ Évaluations récentes

```dataview
TABLE WITHOUT ID
  link(file.link, company) AS "Entreprise",
  role AS "Rôle",
  score AS "Score",
  date AS "Date"
FROM "reports"
WHERE date
SORT date DESC
LIMIT 10
```

## ⚠️ À vérifier (légitimité douteuse)

```dataview
TABLE WITHOUT ID
  link(file.link, company) AS "Entreprise",
  role AS "Rôle",
  legitimacy AS "Légitimité"
FROM "reports"
WHERE legitimacy != "High Confidence" AND legitimacy
SORT score DESC
```

---

### Liens utiles
- [[data/applications.md|📋 Tracker des candidatures]]
- [[data/pipeline.md|📥 Inbox des URLs à traiter]]
- [[cv.md|📄 Mon CV]]
- [[interview-prep/story-bank.md|🎤 Story bank (STAR+R)]]
