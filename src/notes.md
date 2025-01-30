
# Rapport Rencontres NumaHOP.
## Roadmap des feature les plus bloquantes pour les Mousquetaires.
### Amelioration des workflow.
**Description**: 
- Les workflow sont trop rigides et des étapes obligatoires sont dans certains cas non applicables.
- Permet aux établissements de gérer leurs passif et d'ouvrir le champ des possible pour les cas d'utilisations.
- L'interface des workflow est vraiment pas intuitive.

**Taches**:
- Rendre les étapes du workflow optionnelles.
- Permettre de faire un retour arrière sur une UD dans le workflow.
- Redesigner l'interface des workflow.

### Navigation.
**Description**: La navigation entre les UD est très inconvenante. Généralement il faut beaucoup de clics pour trouver, éditer, naviguer entre les UD. Plusieurs pages ne sont pas ouvrables dans un nouvel onglet.

**Taches**:
- Faire que les liens soit plus consistant dans leurs fonctionnement.
- Ajouter un moyen de naviguer entre les UD avec un filtre actif.

### Gestion de fichiers et espace disque:
**Objectif**: Avoir une gestion plus flexible des fichiers présent sur l'espace disque permettant ainsi de réduire l'impacte d'un projet sur l'espace utilisé. 
**Taches**: 
- ne pas a avoir a attendre que l'ensemble d'un lot soit arrive en fin de workflow pour libérer l'espace disque.
- avoir un bouton permettant de manuellement retirer des fichiers attachés a une UD.

### Ordre des priorités:
**SCPO**:
1. Workflow.
1. Gestion fichiers.
1. Navigation.

**BULAC**:
1. Workflow.
1. Navigation.
1. Gestion fichiers.

**BSG**:
1. Workflow.
1. Gestion fichiers.
1. Navigation.

## UX
Module import cochage systématique des cases pour changer le statut automatiquement en archivable.

Problème général de contrastes.

En visualisant une UD on ne peut pas voir les détails de l'UD dans un nouvel onglet.
Le bouton ne propose pas de visualiser dans un nouvel onglet avec un clic droit et le clic molette ne fonctionne pas non plus.

Des inconsistances entre les zones survolable et cliquables.

La recherche est vraiment pas utile. A inspecter pour comprendre l'algorithme utilisé pour trier les résultats.

Des tooltips ne sont pas correctes voir inversés.
Cancel sur le bouton enregistrer et enregistrer sur le bouton cancel par exemple.

Améliorer la gestion des erreurs du module livraison.

## Bugs

Formulaire d'édition des méta données sur l'écran d'export n'enregistre pas les modification.

L'ajout de champs personnalisés dans les méta données ne préserve pas l'ordre des champs.

UD pdf mal formé PGCN_ID: MS.PERS.125 

Erreur de génération du pdf ???? Arrêt imprévu MS.PERS.121

Modification en masse Clarifier ajout/modification d'un champ.

## Réponse a mes questions.
Le comte admin configure dans le fichier yaml a bien été designer pour être un comte destiner a uniquement crée des comptes pour les utilisateurs. Cependant cela a été fait dans l'optique ou NumaHOP ait été hébergé chez un des 3 Mousquetaires et que les librairies n'ai pas a voir les fichier d'une autre. Ce qui n'a plus raison d'être.

## Question Sans réponses.
Les mappings sont au format json. Est-ce que ce json est vérifié par un schéma?

## Modules par les 3 Mousquetaires peut être déprécié.
Jamais utilisé ou brièvement testés: OIA-PMH, Z39.50.

Peu utilisés: Statistiques.

## Amélioration futures
Support de nouveaux formats d'archivages:
- Audiovisuel
- Modèles 3d

Ajout d'opérations individuelles sur les trains.

Améliorer l'UX en général.

Mieux gérer les UD non libre de droit pour la diffusion.

Intégration 3IF ?

Choix du format d'image pour les diffusions (Voir si ce qu'il y a sur la version 2.3 ...)

# Nouvelle questions
json Mapping schema ?
