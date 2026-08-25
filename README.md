# DeepSeek Harness — Architecture Atlas

Une **carte interactive en 3D** qui explique l'architecture du *DeepSeek Harness* —
un runtime agentique modulaire où **tout est un plugin** — et le voyage d'une phrase
depuis votre clavier jusqu'à la réponse du modèle.

> Un seul fichier HTML. Aucune installation. Tout est embarqué.

---

## 🚀 Lancer

```sh
./serve.sh            # sert le fichier + ouvre le navigateur
./serve.sh 9000       # port au choix
```

Ou à la main :

```sh
python3 -m http.server 8787
# puis ouvrir http://localhost:8787/index.html
```

(une connexion internet est utile au premier chargement : Three.js arrive via CDN,
tout le reste — les données complètes de l'architecture — vit dans le fichier)

---

## 🗺️ Une carte, trois règles de lecture

| Signal visuel | Signification |
|---|---|
| **Angle** (secteur coloré au sol) | Domaine : colonne vertébrale · monde d'exécution · modèles & réseau · état durable · interaction & flux · orchestration & auto-modification · interface web · livraison & support |
| **Distance au centre** (anneau) | Rôle : ① noyau Cordis → ② définitions (les coutures `ctx.*`) → ③ fournisseurs → ④ outils côté modèle → ⑤ interface humaine → ⑥ livraison & support |
| **Taille des points** | Volume de code (√ des lignes) |

Les **fils lumineux** tracent les vraies dépendances du paquet sélectionné ;
l'**orbe blanc central**, c'est le runtime lui-même.
Basculez `vue rôles` / `vue domaines` pour recolorer toute la carte.

## 🧭 Comment explorer

- **☰ Chemins** — le sommaire s'ouvre au lancement : **9 domaines × 12 parcours guidés,
  86 étapes de concept**. Chaque étape empile quatre couches :
  - l'*idée*, expliquée simplement
  - un encadré **« Concret »** (ce que ça donne dans la vraie vie : compaction de contexte,
    refus de sandbox, port 3080…)
  - un encadré **« Dans le code »** (les fichiers réels et comment les données circulent)
  - quand c'est utile : des **extraits de code verbatim** et la **forme exacte des données**
    qui traversent la frontière
- **▶ Visite guidée** — 11 étapes qui racontent l'histoire : tout est plugin, les coutures
  `ctx.*`, les fournisseurs interchangeables, comment une phrase devient une réponse,
  et où l'humain garde le contrôle
- **Recherche `/` ou ⌘K** — noms, chemins, clés `ctx.*`, coutures, et même le texte des dossiers
- **Dossier de chaque nœud** — ce que c'est, pourquoi ça existe, son anneau, ses fichiers
  notables, et des listes *depends-on* / *used-by* cliquables qui allument les fils sur la carte
- **Légende** — cliquer une ligne isole un domaine entier

## 🎓 Ce que vous y apprendrez

- Pourquoi « **tout est plugin** » n'est pas un slogan mais une décision d'architecture
- Comment des **coutures stables** (`ctx.*`) permettent de remplacer un fournisseur
  (modèle, stockage, credentials) sans toucher au reste
- Le **cycle de vie complet d'un message** : orchestration, appels d'outils,
  état durable, rendu web
- Comment un système peut **déléguer à des sous-agents… et se modifier lui-même**
  en gardant l'humain aux commandes
- Des patterns réutilisables pour vos propres systèmes : seams/backends,
  checkpoints sémantiques, projections d'état, permissions par outil

## 🥾 Par où commencer

1. **Les bases → Anatomie d'un paquet** — on ouvre un vrai paquet dossier par dossier
   avant toute théorie
2. **Colonne vertébrale → Le voyage d'un message** — la spine de bout en bout
3. Puis libre : suivez les fils qui vous intriguent, ou reprenez le sommaire ☰

## 👥 Pour qui ?

- Le dev curieux qui veut voir **une architecture à plugins à grande échelle**
- Celui qui construit un système agentique et cherche des **réponses concrètes**
  (permissions, état, providers swappables)
- L'équipe qui doit **onboarder** quelqu'un sur un monorepo sans lui faire lire
  585 000 lignes

---

*La carte reflète l'état du monorepo au moment de sa génération ; les comptages
exacts (paquets, liens) sont visibles dans la légende de l'atlas.*
