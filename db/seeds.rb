# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Application.destroy_all
JobOffer.destroy_all
User.destroy_all

francois = User.create(first_name: "francois", last_name: "cassignol", role: "DRH", email: "cassignol.fr@gmail.com", password: "misterfreeze")

chef_de_rayon_mb = JobOffer.create!(job_title: "chef de rayon", division: "Mr.Bricolage", start_date: Time.parse("18 december 2018"), location: "Castres", contract_type: "CDI", division_description: "Mr Bricolage est un groupe de distribution français de Bricolage, 435 magasins en France (2.16 milliards de CA en 2015)", job_description: "En tant que Responsable de Rayon, votre mission principale sera d’élaborer et de mettre en œuvre la politique commerciale de votre rayon pour satisfaire les clients tout en garantissant le développement de vos équipes.", expected_profile: "Passionné par le commerce et le service client, vous avez des notions claires de gestion et êtes reconnu pour vos qualités managériales, votre leadership, votre sens du contact et votre bon relationnel. Rigoureux et organisé, à l’écoute de la clientèle, vous savez mettre en valeur votre rayon grâce à une tenue impeccable et à un approvisionnement optimal. De formation commerciale Bac+2 minimum, vous avez une expérience significative dans les domaines de la vente et du management idéalement acquise dans le secteur de la distribution", category: "SALES", user: francois)
chef_de_rayon_its = JobOffer.create(job_title: "chef de rayon", division: "Intersport", start_date: Time.parse("18 december 2018"), location: "Montauban", contract_type: "CDI", division_description: "Intersport est le 1er groupe mondial de distribution d'articles de sport avec 550 magasins en France (2 milliards d'euros de CA en 2017, 22 pourcents de part de marché sur le marché du sport en France)", job_description: "En tant que Responsable de Rayon, votre mission principale sera d’élaborer et de mettre en œuvre la politique commerciale de votre rayon pour satisfaire les clients tout en garantissant le développement de vos équipes.", expected_profile: "Titulaire d’une formation supérieure Bac + 2 à Bac + 5 à dominante commerciale ou dans le sport, vous êtes obligatoirement un sportif actif. Vous justifiez d’une expérience d’au moins 2 ans sur une fonction similaire ou dans le management d’équipe commerciale. Passionné par la satisfaction de vos clients, vous êtes reconnu pour vos qualités de commerçant, votre sens des responsabilités et de l’organisation. En véritable manager de centre de profit, vous garantissez la réussite de vos objectifs, développez et gérez vos ressources. Doté d'un fort esprit d'équipe, attentif, convaincant, vous êtes capable de manager et de fédérer une équipe autour d’objectifs communs. Dynamique et disponible, homme ou femme d’action, vous savez prendre des décisions.", category: "SALES", user: francois)

johnny_hallyday = chef_de_rayon_mb.applications.create(first_name: "Johnny", last_name: "Hallyday", email: "jojo@gmail.com", phone_number: "0677578090", street: "rue de Cambon", post_code: "31000", city: "Toulouse", country: "France", status: "rejected")
michel_delpech = chef_de_rayon_mb.applications.create(first_name: "Michel", last_name: "Delpech", email: "chasseur@gmail.com", phone_number: "0677578089", street: "rue de Marianne", post_code: "32000", city: "Auch", country: "France", status: "accepted")
claude_francois = chef_de_rayon_its.applications.create(first_name: "Claude", last_name: "Francois", email: "bellebellebelle@gmail.com", phone_number: "0677578088", street: "rue de la liberté", post_code: "75000", city: "Paris", country: "France", status: "in process")

