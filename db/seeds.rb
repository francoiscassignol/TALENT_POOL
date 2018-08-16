# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Application.destroy_all
JobOffer.destroy_all
User.destroy_all

francois = User.create(first_name: "francois", last_name: "cassignol", role: "DRH", email: "cassignol.fr@gmail.com", password: "misterfreeze")

chef_de_rayon_mb = JobOffer.create(job_title: "chef de rayon", division: "Mr.Bricolage", start_date: Time.parse("18 decembre 2018"), location: "Castres", contract_type: "CDI", division_description: "Mr Bricolage est un groupe de distribution français de Bricolage, 435 magasins en France (2.16 milliards de CA en 2015)", job_description: "En tant que Responsable de Rayon, votre mission principale sera d’élaborer et de mettre en œuvre la politique commerciale de votre rayon pour satisfaire les clients tout en garantissant le développement de vos équipes.", expected_profile: "Passionné par le commerce et le service client, vous avez des notions claires de gestion et êtes reconnu pour vos qualités managériales, votre leadership, votre sens du contact et votre bon relationnel. Rigoureux et organisé, à l’écoute de la clientèle, vous savez mettre en valeur votre rayon grâce à une tenue impeccable et à un approvisionnement optimal. De formation commerciale Bac+2 minimum, vous avez une expérience significative dans les domaines de la vente et du management idéalement acquise dans le secteur de la distribution", category: "SALES", user: francois)

chef_de_rayon_its = JobOffer.create(job_title: "Chef de rayon", division: "Intersport", start_date: Time.parse("18 december 2018"), location: "Montauban", contract_type: "CDI", division_description: "Intersport est le 1er groupe mondial de distribution d'articles de sport avec 550 magasins en France (2 milliards d'euros de CA en 2017, 22 pourcents de part de marché sur le marché du sport en France)", job_description: "En tant que Responsable de Rayon, votre mission principale sera d’élaborer et de mettre en œuvre la politique commerciale de votre rayon pour satisfaire les clients tout en garantissant le développement de vos équipes.", expected_profile: "Titulaire d’une formation supérieure Bac + 2 à Bac + 5 à dominante commerciale ou dans le sport, vous êtes obligatoirement un sportif actif. Vous justifiez d’une expérience d’au moins 2 ans sur une fonction similaire ou dans le management d’équipe commerciale. Passionné par la satisfaction de vos clients, vous êtes reconnu pour vos qualités de commerçant, votre sens des responsabilités et de l’organisation. En véritable manager de centre de profit, vous garantissez la réussite de vos objectifs, développez et gérez vos ressources. Doté d'un fort esprit d'équipe, attentif, convaincant, vous êtes capable de manager et de fédérer une équipe autour d’objectifs communs. Dynamique et disponible, homme ou femme d’action, vous savez prendre des décisions.", category: "SALES", user: francois)

caissier_mb = JobOffer.create(job_title: "Hôte de Caisse", division: "Mr.Bricolage", start_date: Time.parse("18 december 2018"), location: "Pamiers", contract_type: "CDD", division_description: "Mr Bricolage est un groupe de distribution français de Bricolage, 435 magasins en France (2.16 milliards de CA en 2015)", job_description: "Vous contribuez à l’encaissement des produits achetés par le client en conciliant le respect des procédures et les règles de politesse afin de contribuer à la fidélisation de la clientèle."<br>"Vous réalisez les règles d’accueil et de politesse propre à l’entreprise avec l’accueil personnalisé."<br>"Vous appliquez les règles de sécurité et contrôler d’éventuels articles restés dans le caddie"<br>"Vous vérifiez les prix et rangez les articles non achetés en rayon"<br>"Vous contribuez à la fidélisation de la clientèle et transmettez à vos responsables les remarques et les suggestions des clients"<br>"Vous contribuez à développer l’image de notre enseigne en garantissant un accueil clients de qualité", expected_profile: "Etudiant H/F, obligatoirement en cours de formation (présentation d’un certificat de scolarité obligatoire), vous souhaitez financer vos études et obtenir une première expérience professionnelle."<br>"Vous avez le sens de l’engagement et êtes prêt à vous investir tant au niveau de vos études que dans une activité professionnelle."<br>"Votre dynamisme, votre réactivité, vos capacités relationnelles et votre goût du service client et du commerce sont autant de qualités qui vous permettront de réussir dans vos fonctions."<br>"Les étudiants en contrats 12h par semaine sont généralement présents le week-end (samedi et dimanche) et bénéficient d’un cycle de travail adapté à leurs études.", category: "SALES", user: francois)

caissier_its = JobOffer.create(job_title: "Hôte de Caisse", division: "Intersport", start_date: Time.parse("18 december 2018"), location: "Toulouse Fenouillet", contract_type: "CDD", division_description: "Intersport est le 1er groupe mondial de distribution d'articles de sport avec 550 magasins en France (2 milliards d'euros de CA en 2017, 22 pourcents de part de marché sur le marché du sport en France)", job_description: "Vous contribuez à l’encaissement des produits achetés par le client en conciliant le respect des procédures et les règles de politesse afin de contribuer à la fidélisation de la clientèle."<br>"Vous réalisez les règles d’accueil et de politesse propre à l’entreprise avec l’accueil personnalisé."<br>"Vous appliquez les règles de sécurité et contrôler d’éventuels articles restés dans le caddie"<br>"Vous vérifiez les prix et rangez les articles non achetés en rayon"<br>"Vous contribuez à la fidélisation de la clientèle et transmettez à vos responsables les remarques et les suggestions des clients"<br>"Vous contribuez à développer l’image de notre enseigne en garantissant un accueil clients de qualité", expected_profile: "Etudiant H/F, obligatoirement en cours de formation (présentation d’un certificat de scolarité obligatoire), vous souhaitez financer vos études et obtenir une première expérience professionnelle."<br>"Vous avez le sens de l’engagement et êtes prêt à vous investir tant au niveau de vos études que dans une activité professionnelle."<br>"Votre dynamisme, votre réactivité, vos capacités relationnelles et votre goût du service client et du commerce sont autant de qualités qui vous permettront de réussir dans vos fonctions."<br>"Les étudiants en contrats 12h par semaine sont généralement présents le week-end (samedi et dimanche) et bénéficient d’un cycle de travail adapté à leurs études.", category: "Executive", user: francois)

directeur_mb = JobOffer.create(job_title: "Directeur", division: "Mr.Bricolage", start_date: Time.parse("18 december 2018"), location: "Castelsarrasin", contract_type: "CDI", division_description: "Mr Bricolage est un groupe de distribution français de Bricolage, 435 magasins en France (2.16 milliards de CA en 2015)", job_description: "En votre qualité de Directeur, vous aurez pour mission de définir et de mettre en œuvre la politique commerciale du magasin, afin d’optimiser les résultats, le fonctionnement et l’image de l’établissement."<br>"Homme/Femme de terrain, à l'écoute de vos équipes, vous managez un encadrement d’une trentaine de collaborateurs en visant la meilleure satisfaction client tout en contribuant à l’amélioration constante  du dialogue social."<br>"Vous pilotez l’activité économique en analysant les données chiffrées dans une logique de rentabilité."<br>"Vous développez la stratégie commerciale du magasin, dans le respect des politiques du Groupe, et êtes acteur de son attractivité, tant sur la surface de vente que dans son environnement local."<br>"Ainsi, vous avez la responsabilité complète du développement commercial du magasin en définissant les orientations stratégiques, en supervisant la politique marketing et les achats, en respectant la politique d'assortiment et de marge de l'enseigne, en maîtrisant les spécificités liées à la situation géographique."<br>"Rompu à l’animation du dialogue social, vous animerez les réunions avec les instances représentatives du personnel et définirez la stratégie RH de votre magasin.", expected_profile: "Diplômé d’une Ecole Supérieure de Commerce, d’un Master Grande Distribution ou d’une formation de type ECAL, Licence Distrisup  ou équivalent, vous justifiez d’une expérience significative de 5 à 8 ans à des fonctions d’encadrement commercial dans la grande distribution ou la distribution spécialisée."<br>"Passionné par la grande distribution et doté d’un grand sens de la négociation, vous êtes reconnu pour votre capacité à manager et fédérer des équipes autour d’objectifs communs. Possédant de grandes qualités d’écoute et d’observation, vous êtes dynamique, réactif et faîtes preuve d’une grande disponibilité."<br>"Si vous souhaitez mettre en valeur votre potentiel d’évolution dans un groupe dynamique, n’hésitez pas et rejoignez nos équipes !", category: "Executive", user: francois)

directeur_its = JobOffer.create(job_title: "Directeur", division: "Intersport", start_date: Time.parse("18 december 2018"), location: "Montauban", contract_type: "CDI", division_description: "Intersport est le 1er groupe mondial de distribution d'articles de sport avec 550 magasins en France (2 milliards d'euros de CA en 2017, 22 pourcents de part de marché sur le marché du sport en France)", job_description: "En votre qualité de Directeur, vous aurez pour mission de définir et de mettre en œuvre la politique commerciale du magasin, afin d’optimiser les résultats, le fonctionnement et l’image de l’établissement."<br>"Homme/Femme de terrain, à l'écoute de vos équipes, vous managez un encadrement d’une trentaine de collaborateurs en visant la meilleure satisfaction client tout en contribuant à l’amélioration constante  du dialogue social."<br>"Vous pilotez l’activité économique en analysant les données chiffrées dans une logique de rentabilité."<br>"Vous développez la stratégie commerciale du magasin, dans le respect des politiques du Groupe, et êtes acteur de son attractivité, tant sur la surface de vente que dans son environnement local."<br>"Ainsi, vous avez la responsabilité complète du développement commercial du magasin en définissant les orientations stratégiques, en supervisant la politique marketing et les achats, en respectant la politique d'assortiment et de marge de l'enseigne, en maîtrisant les spécificités liées à la situation géographique."<br>"Rompu à l’animation du dialogue social, vous animerez les réunions avec les instances représentatives du personnel et définirez la stratégie RH de votre magasin.", expected_profile: "Diplômé d’une Ecole Supérieure de Commerce, d’un Master Grande Distribution ou d’une formation de type ECAL, Licence Distrisup  ou équivalent, vous justifiez d’une expérience significative de 5 à 8 ans à des fonctions d’encadrement commercial dans la grande distribution ou la distribution spécialisée."<br>"Passionné par la grande distribution et doté d’un grand sens de la négociation, vous êtes reconnu pour votre capacité à manager et fédérer des équipes autour d’objectifs communs. Possédant de grandes qualités d’écoute et d’observation, vous êtes dynamique, réactif et faîtes preuve d’une grande disponibilité."<br>"Si vous souhaitez mettre en valeur votre potentiel d’évolution dans un groupe dynamique, n’hésitez pas et rejoignez nos équipes !", category: "SALES", user: francois)

controleur_gestion_mb = JobOffer.create(job_title: "Controleur de Gestion", division: "Mr.Bricolage", start_date: Time.parse("18 december 2018"), location: "Montauban", contract_type: "CDI", division_description: "Mr Bricolage est un groupe de distribution français de Bricolage, 435 magasins en France (2.16 milliards de CA en 2015)", job_description: "", expected_profile: "De formation supérieure (BAC+5) en contrôle de gestion/finance, vous possédez une première expérience réussie en contrôle de gestion. Organisé et réactif, vous êtes doté d’un esprit d’analyse, synthèse et d’un sens critique."<br>"Vous êtes reconnu pour votre personnalité dynamique, votre bonne communication écrite et orale. Curieux, rigoureux, vous savez vous adapter, vous avez le sens du contact et de l’intérêt commun."<br>"Sens du service, gestion des priorités, esprit d’équipe sont également des qualités qui vous caractérisent."<br>"Enfin, la maîtrise d’excel est indispensable, la connaissance d’Hyperion serait un plus.", category: "Finance", user: francois)

controleur_gestion_its = JobOffer.create(job_title: "Controleur de Gestion", division: "Intersport", start_date: Time.parse("18 december 2018"), location: "Pamiers", contract_type: "CDI", division_description: "Intersport est le 1er groupe mondial de distribution d'articles de sport avec 550 magasins en France (2 milliards d'euros de CA en 2017, 22 pourcents de part de marché sur le marché du sport en France)", job_description: "Participer à l’élaboration des budgets et des reprévisions de son périmètre"<br>"Effectuer le suivi des stocks et des inventaires et réaliser le contrôle des inventaires mensuels et annuels"<br>"Réaliser un reporting mensuel selon les normes groupe"<br>"Effectuer le suivi des tableaux de bord de gestion mensuels, commentaires, analyse des écarts"<br>"Effectuer le suivi et le cadrage des marges en relation avec le service comptabilité", expected_profile: "De formation supérieure (BAC+5) en contrôle de gestion/finance, vous possédez une première expérience réussie en contrôle de gestion. Organisé et réactif, vous êtes doté d’un esprit d’analyse, synthèse et d’un sens critique."<br>"Vous êtes reconnu pour votre personnalité dynamique, votre bonne communication écrite et orale. Curieux, rigoureux, vous savez vous adapter, vous avez le sens du contact et de l’intérêt commun."<br>"Sens du service, gestion des priorités, esprit d’équipe sont également des qualités qui vous caractérisent."<br>"Enfin, la maîtrise d’excel est indispensable, la connaissance d’Hyperion serait un plus.", category: "Finance", user: francois)

comptable_mb = JobOffer.create(job_title: "Comptable", division: "Mr.Bricolage", start_date: Time.parse("18 december 2018"), location: "Bias", contract_type: "CDI", division_description: "Mr Bricolage est un groupe de distribution français de Bricolage, 435 magasins en France (2.16 milliards de CA en 2015)", job_description: "Participer à l’élaboration des budgets et des reprévisions de son périmètre"<br>"Effectuer le suivi des stocks et des inventaires et réaliser le contrôle des inventaires mensuels et annuels"<br>"Réaliser un reporting mensuel selon les normes groupe"<br>"Effectuer le suivi des tableaux de bord de gestion mensuels, commentaires, analyse des écarts"<br>"Effectuer le suivi et le cadrage des marges en relation avec le service comptabilité", expected_profile: "Idéalement titulaire d'un DCG ou d'un BTS comptabilité, vous justifiez d'une expérience significative de 2 à 3 ans sur une fonction similaire."<br>"Organisé, rigoureux, ordonné, logique, méthodique, dynamique, ayant le respect de la confidentialité, vous avez une bonne maîtrise de l'outil informatique.", category: "SALES", user: francois)

comptable_its = JobOffer.create(job_title: "Comptable", division: "Intersport", start_date: Time.parse("18 december 2018"), location: "Montauban", contract_type: "CDI", division_description: "Intersport est le 1er groupe mondial de distribution d'articles de sport avec 550 magasins en France (2 milliards d'euros de CA en 2017, 22 pourcents de part de marché sur le marché du sport en France)", job_description: "Participer à l’élaboration des budgets et des reprévisions de son périmètre"<br>"Effectuer le suivi des stocks et des inventaires et réaliser le contrôle des inventaires mensuels et annuels"<br>"Réaliser un reporting mensuel selon les normes groupe"<br>"Effectuer le suivi des tableaux de bord de gestion mensuels, commentaires, analyse des écarts"<br>"Effectuer le suivi et le cadrage des marges en relation avec le service comptabilité", expected_profile: "Idéalement titulaire d'un DCG ou d'un BTS comptabilité, vous justifiez d'une expérience significative de 2 à 3 ans sur une fonction similaire."<br>"Organisé, rigoureux, ordonné, logique, méthodique, dynamique, ayant le respect de la confidentialité, vous avez une bonne maîtrise de l'outil informatique.", category: "HR", user: francois)

gestionnaire_rh_mb = JobOffer.create(job_title: "Gestionnaire RH", division: "Mr.Bricolage", start_date: Time.parse("18 december 2018"), location: "Bias", contract_type: "CDI", division_description: "Mr Bricolage est un groupe de distribution français de Bricolage, 435 magasins en France (2.16 milliards de CA en 2015)", job_description: "Sous la responsabilité du Responsable des Ressources Humaines, il/elle contribue à la qualité de la gestion des ressources humaines et est responsable de la paie et du développement d’outils d’analyse pertinents."<br>"Vos compétences, vos capacités :"<br>"Assurer la préparation d’outils d’analyse pertinent"<br>"Maîtriser la législation en vigueur"<br>"Travailler en équipe", expected_profile: "BAC+2/3 minimum, avec une spécialisation paye / droit du travail, vous justifiez impérativement d'une première expérience sur le poste.", category: "HR", user: francois)

gestionnaire_rh_its = JobOffer.create(job_title: "Gestionnaire RH", division: "Intersport", start_date: Time.parse("18 december 2018"), location: "Pamiers", contract_type: "CDI", division_description: "Intersport est le 1er groupe mondial de distribution d'articles de sport avec 550 magasins en France (2 milliards d'euros de CA en 2017, 22 pourcents de part de marché sur le marché du sport en France)", job_description: " BAC+2/3 minimum, avec une spécialisation paye / droit du travail, vous justifiez impérativement d'une première expérience sur le poste.", expected_profile: "BAC+2/3 minimum, avec une spécialisation paye / droit du travail, vous justifiez impérativement d'une première expérience sur le poste.", category: "Legal", user: francois)

juriste_mb = JobOffer.create(job_title: "Juriste", division: "Mr.Bricolage", start_date: Time.parse("18 december 2018"), location: "Castres", contract_type: "CDI", division_description: "Mr Bricolage est un groupe de distribution français de Bricolage, 435 magasins en France (2.16 milliards de CA en 2015)", job_description: "Rattaché hiérarchiquement à la Directrice du service juridique Société,  vous interviendrez sur les missions suivantes :"<br>" Préparer et prendre en charge la rédaction de documents concernant pour l’essentiel le droit des sociétés, de la constitution à la dissolution et liquidation des sociétés ; (Statuts, procès-verbaux d'assemblées générales et de conseil d’administration et documents annexes, traités de fusion, traités d’apport partiels d’actifs, scissions…)"<br>"Effectuer l'ensemble des formalités juridiques ; (Annonces légales, enregistrement des actes, dépôts au greffe, réquisition d’extrait K bis et contrôle, demande d’état des nantissements, demandes de matrices cadastrales et contrôle…)"<br>"Contribuer à la bonne transmission des informations et dossiers aux interlocuteurs internes et externes (comptables, commissaires aux comptes, services financiers, notaires, avocats, actionnaires)", expected_profile: "Titulaire d’un Master 2 en droit des affaires, vous justifiez de stages significatifs ou d’une première expérience réussie sur un poste similaire.<br>Vous maîtrisez le Pack Office.<br>Méthodique, organisé, votre rigueur, votre aptitude à travailler en équipe, votre sens de la discrétion et de la confidentialité seront les qualités essentielles à mettre en œuvre pour réussir dans cette fonction.", category: "Legal", user: francois)

juriste_its = JobOffer.create(job_title: "Juriste", division: "Intersport", start_date: Time.parse("18 december 2018"), location: "Montauban", contract_type: "CDI", division_description: "Intersport est le 1er groupe mondial de distribution d'articles de sport avec 550 magasins en France (2 milliards d'euros de CA en 2017, 22 pourcents de part de marché sur le marché du sport en France)", job_description: "Rattaché hiérarchiquement à la Directrice du service juridique Société,  vous interviendrez sur les missions suivantes :"<br>" Préparer et prendre en charge la rédaction de documents concernant pour l’essentiel le droit des sociétés, de la constitution à la dissolution et liquidation des sociétés ; (Statuts, procès-verbaux d'assemblées générales et de conseil d’administration et documents annexes, traités de fusion, traités d’apport partiels d’actifs, scissions…)"<br>"Effectuer l'ensemble des formalités juridiques ; (Annonces légales, enregistrement des actes, dépôts au greffe, réquisition d’extrait K bis et contrôle, demande d’état des nantissements, demandes de matrices cadastrales et contrôle…)"<br>"Contribuer à la bonne transmission des informations et dossiers aux interlocuteurs internes et externes (comptables, commissaires aux comptes, services financiers, notaires, avocats, actionnaires)", expected_profile: "Titulaire d’un Master 2 en droit des affaires, vous justifiez de stages significatifs ou d’une première expérience réussie sur un poste similaire.<br>Vous maîtrisez le Pack Office.<br>Méthodique, organisé, votre rigueur, votre aptitude à travailler en équipe, votre sens de la discrétion et de la confidentialité seront les qualités essentielles à mettre en œuvre pour réussir dans cette fonction.", category: "HR", user: francois)

chef_de_gamme_mb = JobOffer.create(job_title: "Chef de Gamme", division: "Mr.Bricolage", start_date: Time.parse("18 december 2018"), location: "Castres", contract_type: "CDI", division_description: "Mr Bricolage est un groupe de distribution français de Bricolage, 435 magasins en France (2.16 milliards de CA en 2015)", job_description: "Contribuer à la performance commerciale de l'enseigne, notamment en termes de prix d'achat et de marge sur les gammes de produits dont il a la charge, en collaboration avec le (ou les) adhérent(s), avec le chef produits marketing et les ingénieurs qualité produits et packaging"<br>"Négocier avec les fabricants et lancer les appels d'offres, chaque fois que nécessaire, dans le respect des procédures et des politiques commerciales et qualité de l’entreprise"<br>"Analyser et recommander les prix de vente en conformité avec la politique commerciale de l’enseigne"<br>"Contribuer à la réduction du taux de rupture et assurer un approvisionnement régulier des centrales et des magasins", expected_profile: "Bac +5 école de commerce ou ingénieur agroalimentaire avec une spécialisation dans les achats"<br>"5 ans minimum d'expérience dans le retail<br>Maîtrise des outils bureautiques, en particulier excel.", category: "Marketing", user: francois)

chef_de_gamme_its = JobOffer.create(job_title: "Chef de Gamme", division: "Intersport", start_date: Time.parse("18 december 2018"), location: "Toulouse Fenouillet", contract_type: "CDI", division_description: "Intersport est le 1er groupe mondial de distribution d'articles de sport avec 550 magasins en France (2 milliards d'euros de CA en 2017, 22 pourcents de part de marché sur le marché du sport en France)", job_description:  "Contribuer à la performance commerciale de l'enseigne, notamment en termes de prix d'achat et de marge sur les gammes de produits dont il a la charge, en collaboration avec le (ou les) adhérent(s), avec le chef produits marketing et les ingénieurs qualité produits et packaging"<br>"Négocier avec les fabricants et lancer les appels d'offres, chaque fois que nécessaire, dans le respect des procédures et des politiques commerciales et qualité de l’entreprise"<br>"Analyser et recommander les prix de vente en conformité avec la politique commerciale de l’enseigne"<br>"Contribuer à la réduction du taux de rupture et assurer un approvisionnement régulier des centrales et des magasins", expected_profile: "Bac +5 école de commerce ou ingénieur agroalimentaire avec une spécialisation dans les achats"<br>"5 ans minimum d'expérience dans le retail<br>Maîtrise des outils bureautiques, en particulier excel.", category: "Marketing", user: francois)

johnny_hallyday = chef_de_rayon_mb.applications.create(first_name: "Johnny", last_name: "Hallyday", email: "jpsmet@stadedefrance.com", phone_number: "0677578090", street: "17, rue Gabrielle", post_code: "31000", city: "Toulouse", country: "France", status: "Rejected")

michel_delpech = chef_de_rayon_mb.applications.create(first_name: "Michel", last_name: "Delpech", email: "mdelpech@marianne.com", phone_number: "0677578089", street: "rue du Loire et Cher", post_code: "32000", city: "Auch", country: "France", status: "Accepted")

claude_francois = chef_de_rayon_its.applications.create(first_name: "Claude", last_name: "Francois", email: "cfrancois@alexandrie.com", phone_number: "0677578088", street: "rue d'Alexandrie", post_code: "75000", city: "Paris", country: "France", status: "In process")

herve_villard = chef_de_rayon_its.applications.create(first_name: "Herve", last_name: "Villard", email: "hvillard@nous.com", phone_number: "0677578087", street: "rue de Capri", post_code: "64000", city: "Pau", country: "France", status: "Accepted")

michel_sardou = caissier_mb.applications.create(first_name: "Michel", last_name: "Sardou", email: "msardou@broadway.com", phone_number: "0677578086", street: "rue des vieux mariés", post_code: "75000", city: "Paris", country: "France", status: "")

mike_brand = caissier_mb.applications.create(first_name: "Mike", last_name: "Brand", email: "mbrand@quisaura.com", phone_number: "0677578085", street: "rue de l'amour", post_code: "69000", city: "Lyon", country: "France", status: "In process")

joe_dassin = chef_de_gamme_its.applications.create(first_name: "Joe", last_name: "Dassin", email: "jdassin@eteindien.com", phone_number: "0677578084", street: "rue d'Emilie", post_code: "09100", city: "Pamiers", country: "France", status: "Accepted")

alain_souchon = chef_de_gamme_its.applications.create(first_name: "Alain", last_name: "Souchon", email: "asouchon@bidon.com", phone_number: "0677578083", street: "rue des sentiments", post_code: "75000", city: "Paris", country: "France", status: "In process")

laurent_voulsy = chef_de_gamme_its.applications.create(first_name: "Laurent", last_name: "Voulsy", email: "lvoulsy@belleile.com", phone_number: "0677578082", street: "rue du Rock Collection", post_code: "11000", city: "Carcassonne", country: "France", status: "")

barry_white = juriste_mb.applications.create(first_name: "Barry", last_name: "White", email: "bwhite@everything.com", phone_number: "0677578081", street: "rue de mon premier amour", post_code: "75000", city: "Paris", country: "France", status: "In process")

billy_paul = juriste_its.applications.create(first_name: "Billy", last_name: "Paul", email: "bpaul@yoursong.com", phone_number: "0677578080", street: "rue Madame Jones", post_code: "75000", city: "Paris", country: "France", status: "Rejected")

carla_bruni = gestionnaire_rh_its.applications.create(first_name: "Carla", last_name: "Bruni", email: "cbruni@quelqun.com", phone_number: "0677578079", street: "rue de mon Nicolas", post_code: "75000", city: "Neuilly", country: "France", status: "In process")

celine_dion = gestionnaire_rh_its.applications.create(first_name: "Celine", last_name: "Dion", email: "cdion@rene.com", phone_number: "0677578078", street: "rue du Caribou", post_code: "11000", city: "Montreal", country: "France", status: "In process")


