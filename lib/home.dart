import 'package:einfach_stillen/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.color4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Einfach Stillen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Stillberatung & Support',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: AppColors.color4),
              title:
                  const Text('Home', style: TextStyle(color: AppColors.color4)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: AppColors.color4),
              title: const Text('Über mich',
                  style: TextStyle(color: AppColors.color4)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.school, color: AppColors.color4),
              title: const Text('Beratung',
                  style: TextStyle(color: AppColors.color4)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_drink, color: AppColors.color4),
              title: const Text('Zungenband',
                  style: TextStyle(color: AppColors.color4)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.event_note, color: AppColors.color4),
              title: const Text('Workshops, Kurse & Milchschnack',
                  style: TextStyle(color: AppColors.color4)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72, top: 8, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Beikost',
                      style: TextStyle(
                        color: AppColors.color4,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Stillkurse',
                      style: TextStyle(
                        color: AppColors.color4,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.people, color: AppColors.color4),
              title: const Text('Mein Netzwerk',
                  style: TextStyle(color: AppColors.color4)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.description, color: AppColors.color4),
              title:
                  const Text('AGB', style: TextStyle(color: AppColors.color4)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.article, color: AppColors.color4),
              title: const Text('Impressum',
                  style: TextStyle(color: AppColors.color4)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip, color: AppColors.color4),
              title: const Text('Datenschutz',
                  style: TextStyle(color: AppColors.color4)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Einfach Stillen'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // News Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NEWS:',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.color4,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stillvorbereitung 16.05.2026',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: AppColors.accent,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.color4,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'noch freie Plätze verfügbar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Services Grid
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ich begleite euch',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 12),
                  const SizedBox(height: 32),
                  Text(
                    'Beratungsangebote',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 20),
                  const ConsultationCard(
                    icon: Icons.favorite,
                    title: 'Stillberatung',
                    description:
                        'Professionelle Unterstützung zu Stillpositionen, Milchgewinnung und vielem mehr',
                    topics: [
                      'Richtiges Anlegen an der Brust',
                      'Stillhütchen abgewöhnen',
                      'Milchstau & Tipps',
                      'Bedürfnisorientiertes Stillen',
                    ],
                  ),
                  const SizedBox(height: 16),
                  const ConsultationCard(
                    icon: Icons.local_drink,
                    title: 'Formula Ernährung für Säuglinge',
                    description:
                        'Beratung zur Säuglingsernährung mit der Flasche',
                    topics: [
                      'Richtige Zubereitung',
                      'Flasche & Sauger Auswahl',
                      'Bindungsorientiertes Füttern',
                      'Verdauungsprobleme',
                    ],
                  ),
                  const SizedBox(height: 16),
                  const ConsultationCard(
                    icon: Icons.health_and_safety,
                    title: 'Zungenband Beratung',
                    description:
                        'Spezialisierte Begleitung bei Zungenband-Problemen',
                    topics: [
                      'Vorbereitung Frenotomie',
                      'Nachbegleitung',
                      'Stillposition Anpassung',
                    ],
                  ),
                ],
              ),
            ),

            // Important Info Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.accent, width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gut zu wissen!',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.color4,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Alle Beratungen finden unter Einhaltung des WHO-Kodex statt. Es werden weder konkrete Marken empfohlen, noch werden Werbemittel von Unternehmen entgegengenommen oder weitergegeben.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Sprachen: Deutsch & English',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Pricing Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Preise',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  const PricingCard(
                    title: 'Beratung vor Ort',
                    prices: [
                      'Erstberatung: 75€/Stunde',
                      'Folgeberatung: 55€/Stunde',
                      'Weitere 15 Minuten: 10€',
                      'Anfahrt (5km): Inklusive',
                      'Über 5km: 0,70€/km',
                    ],
                  ),
                  const SizedBox(height: 12),
                  const PricingCard(
                    title: 'Beratung per Telefon/Videochat',
                    prices: [
                      'Erste Stunde: 65€',
                      'Weitere 15 Minuten: 10€',
                      'Kurze Rückfragen: Meist kostenlos',
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // CTA Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.color4,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Jetzt Beratung buchen',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Footer
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kontakt',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'E-Mail: info@einfach-stillen.de',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Tel: +49 XXX XXXXXXX',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '© 2026 Einfach Stillen. Alle Rechte vorbehalten.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConsultationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final List<String> topics;

  const ConsultationCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.topics,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: AppColors.accent,
                  size: 32,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.accent,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.color4,
                  ),
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: topics
                  .map((topic) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.check_circle,
                              color: AppColors.color4,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                topic,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: AppColors.color4,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class PricingCard extends StatelessWidget {
  final String title;
  final List<String> prices;

  const PricingCard({
    required this.title,
    required this.prices,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.accent,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: prices
                  .map((price) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          '• $price',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
