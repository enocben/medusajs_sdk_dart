# Cahier des charges – SDK Dart (équivalent @medusajs/js-sdk)

## 1. Contexte & Objectif

L’objectif de ce projet est de concevoir un **SDK Dart** inspiré de **@medusajs/js-sdk**, permettant aux développeurs Dart / Flutter d’interagir facilement avec une API Medusa (ou compatible Medusa).

Le SDK devra être :

* **Typed (strong typing)**
* **Modulaire**
* **Facile à maintenir et à étendre**
* **Orienté développeur produit (DX-first)**

⚠️ **Les tests unitaires et d’intégration sont volontairement exclus de cette phase**. Ils seront ajoutés ultérieurement.

---

## 2. Références fonctionnelles

* Documentation de référence : [https://docs.medusajs.com/resources/js-sdk](https://docs.medusajs.com/resources/js-sdk)
* SDK source d’inspiration : `@medusajs/js-sdk`

Le SDK Dart doit reprendre **les concepts**, **pas le code**.

---

## 3. Périmètre fonctionnel

### 3.1 Initialisation du client

Le SDK doit exposer un client principal, par exemple :

```dart
final client = MedusaClient(
  baseUrl: "https://api.example.com",
  apiKey: "sk_test_xxx", // optionnel
  headers: {}, // optionnel
);
```

#### Configuration requise :

* `baseUrl` (obligatoire)
* `apiKey` (optionnel)
* Headers custom
* Timeout réseau

---

## 4. Architecture générale

### 4.1 Client central

Le client principal est responsable de :

* Gestion HTTP (GET, POST, PUT, DELETE)
* Injection des headers
* Gestion des erreurs
* Sérialisation / désérialisation JSON

---

### 4.2 Ressources (Resources API)

Chaque ressource Medusa est exposée via un module dédié.

Exemples :

```dart
client.products.list();
client.products.retrieve(id);
client.carts.create();
client.customers.login();
```

#### Ressources à implémenter (phase 1)

* Products
* Product Variants
* Collections
* Carts
* Line Items
* Customers
* Auth
* Orders
* Regions
* Shipping Options
* Payments

---

## 5. Design API (Developer Experience)

### 5.1 Pattern d’accès

```dart
client.products.list(
  limit: 10,
  offset: 0,
);

client.products.retrieve("prod_123");
```

### 5.2 Paramètres optionnels

Utiliser des **named parameters** pour garantir la lisibilité et la compatibilité future.

---

## 6. Gestion HTTP

### 6.1 Client HTTP

* Basé sur `http` ou `dio`
* Intercepteurs pour headers
* Support JSON natif

### 6.2 Méthodes supportées

* GET
* POST
* PUT
* DELETE

---

## 7. Gestion des erreurs

### 7.1 Types d’erreurs

Créer des erreurs typées :

* `MedusaException`
* `NetworkException`
* `UnauthorizedException`
* `NotFoundException`
* `ValidationException`

Toutes les erreurs doivent inclure :

* Message
* Code HTTP
* Payload brut (si disponible)

---

## 8. Modélisation des données

### 8.1 Models Dart

Chaque ressource possède ses modèles dédiés.

Exemple :

```dart
class Product {
  final String id;
  final String title;
  final String? description;

  Product({required this.id, required this.title, this.description});

  factory Product.fromJson(Map<String, dynamic> json);
}
```

* Immutabilité par défaut
* `fromJson` / `toJson`
* Null safety stricte

---

## 9. Pagination & Filtres

Supporter :

* `limit`
* `offset`
* Filtres dynamiques

Exemple :

```dart
client.products.list(
  limit: 20,
  offset: 40,
);
```

---

## 10. Authentification

### 10.1 API Key

* Via headers (`Authorization`)

### 10.2 Session (cookies / token)

* Support session-based auth
* Persistance côté client (optionnel)

---

## 11. Versioning

* Respect du **semantic versioning**
* Prévoir compatibilité API Medusa v1

---

## 12. Structure du projet (maintenable)

```text
medusa_dart_sdk/
├── lib/
│   ├── medusa.dart              # Point d’entrée public
│   ├── src/
│   │   ├── client/
│   │   │   ├── medusa_client.dart
│   │   │   ├── http_client.dart
│   │   │   └── interceptors.dart
│   │   ├── resources/
│   │   │   ├── products/
│   │   │   │   ├── products_resource.dart
│   │   │   │   └── models/
│   │   │   ├── carts/
│   │   │   ├── customers/
│   │   │   ├── orders/
│   │   │   └── auth/
│   │   ├── models/
│   │   │   └── common_models.dart
│   │   ├── exceptions/
│   │   │   └── medusa_exceptions.dart
│   │   └── utils/
│   │       ├── json.dart
│   │       └── pagination.dart
│   └── exports.dart
├── example/
│   └── main.dart
├── pubspec.yaml
├── README.md
└── CHANGELOG.md
```

---

## 13. Bonnes pratiques attendues

* Code clean & documenté
* Pas de logique métier dans les modèles
* Séparation claire des responsabilités
* Extensible sans breaking changes

---

## 14. Livrables

* SDK Dart fonctionnel
* Documentation minimale (README)
* Exemples d’utilisation
* Structure prête pour ajout de tests ultérieurs

---

## 15. Hors périmètre (phase actuelle)

* Tests unitaires
* Tests d’intégration
* CI/CD
* Génération automatique OpenAPI

---

**Fin du cahier des charges**
