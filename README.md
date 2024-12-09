# 🎯 ITThink - Gestion de Base de Données

## 📝 Contexte du Projet
Le projet ITThink consiste à concevoir une base de données robuste et bien structurée pour répondre aux besoins d'une plateforme mettant en relation des utilisateurs, des projets, des catégories, des freelances, des offres, et des témoignages. Ce système permettra une gestion optimale des données et une extensibilité pour des fonctionnalités futures.

## 🎯 Objectifs
- Concevoir un schéma de base de données respectant les bonnes pratiques (normalisation, intégrité des données).
- Documenter les relations via des diagrammes UML et un diagramme relationnel (ERD).
- Développer les scripts SQL pour créer et gérer la base de données.
- Assurer une optimisation des performances et une extensibilité pour la croissance future de la plateforme.

---

## 🗂️ Structure de la Base de Données

### Tables Principales :
1. **Utilisateurs**
   - Gestion des utilisateurs inscrits sur la plateforme.
   - **Attributs** : `id_utilisateur`, `nom_utilisateur`, `mot_de_passe` (haché), `email`, etc.

2. **Catégories**
   - Catégorisation principale des projets.
   - **Attributs** : `id_categorie`, `nom_categorie`.

3. **Sous-Catégories**
   - Sous-divisions des catégories principales.
   - **Attributs** : `id_sous_categorie`, `nom_sous_categorie`, `id_categorie` (clé étrangère).

4. **Projets**
   - Projets créés par les utilisateurs.
   - **Attributs** : `id_projet`, `titre_projet`, `description`, `id_utilisateur`, `id_categorie`, `id_sous_categorie`.

5. **Freelances**
   - Informations sur les freelances disponibles.
   - **Attributs** : `id_freelance`, `nom_freelance`, `competences`, `id_utilisateur`.

6. **Offres**
   - Offres soumises par des freelances pour des projets.
   - **Attributs** : `id_offre`, `montant`, `delai`, `id_freelance`, `id_projet`.

7. **Témoignages**
   - Avis laissés par les utilisateurs.
   - **Attributs** : `id_temoignage`, `commentaire`, `id_utilisateur`.

---

## 📊 Diagrammes et Documentation

- **Diagrammes UML et ERD** : Les relations entre les entités sont illustrées à l’aide de diagrammes UML et d’un diagramme relationnel (ERD).
- Diagrammes inclus :
  - Diagramme de classes UML.
  - Diagramme de cas d’utilisation.
  - Diagramme relationnel de la base de données.

---

## ⚙️ Fonctionnalités Principales

- **Création de Tables** : Scripts SQL pour générer les tables avec les contraintes nécessaires (clés primaires, clés étrangères, etc.).
- **Opérations CRUD** :
  - Ajout, mise à jour et suppression des données.
  - Requêtes complexes avec jointures (ex. : récupérer les projets par catégorie).
- **Gestion des Performances** :
  - Ajout d'index pour accélérer les recherches.
  - Optimisation des scripts SQL pour garantir des performances élevées.
- **Extensibilité** : Structure prête pour accueillir de nouvelles fonctionnalités.
