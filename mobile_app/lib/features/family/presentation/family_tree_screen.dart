import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/theme/app_colors.dart';

class FamilyTreeScreen extends StatelessWidget {
  const FamilyTreeScreen({super.key});

  Widget personNode(String name,
      {bool center = false, IconData icon = Icons.person, bool locked = false}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          gradient: center
              ? const LinearGradient(colors: [Colors.deepPurple, Colors.blue])
              : const LinearGradient(colors: [Colors.white, Color(0xFFF8F9FF)]),
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [BoxShadow(blurRadius: 16, color: Colors.black12)],
          border: Border.all(color: Colors.white70),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: center ? 26 : 20,
              child: Icon(locked ? Icons.lock : icon),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: center ? Colors.white : Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ).animate().fadeIn(duration: 500.ms).scale(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final graph = Graph()..isTree = true;

    final father = Node.Id('father');
    final mother = Node.Id('mother');
    final center = Node.Id('center');
    final spouse = Node.Id('spouse');
    final child = Node.Id('child');
    final sibling = Node.Id('sibling');
    final locked = Node.Id('locked');

    graph.addEdge(father, center);
    graph.addEdge(mother, center);
    graph.addEdge(center, spouse);
    graph.addEdge(center, child);
    graph.addEdge(center, sibling);
    graph.addEdge(spouse, locked);

    final builder = BuchheimWalkerConfiguration()
      ..siblingSeparation = 60
      ..levelSeparation = 90
      ..subtreeSeparation = 70;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Vansha Founder Experience'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person_add)),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add Relative'),
        icon: const Icon(Icons.add),
      ),
      body: InteractiveViewer(
        constrained: false,
        boundaryMargin: const EdgeInsets.all(300),
        minScale: 0.4,
        maxScale: 3,
        child: GraphView(
          graph: graph,
          algorithm: BuchheimWalkerAlgorithm(builder, TreeEdgeRenderer(builder)),
          builder: (Node node) {
            switch (node.key?.value) {
              case 'father':
                return personNode('Natakam Malakonda Prasad', icon: Icons.man);
              case 'mother':
                return personNode('Natakam Sudharani', icon: Icons.woman);
              case 'center':
                return personNode('Natakam Hemanth Kumar', center: true, icon: Icons.star);
              case 'spouse':
                return personNode('Keerthi Doguparti', icon: Icons.favorite);
              case 'child':
                return personNode('Natakam Yuvan Simha', icon: Icons.child_care);
              case 'sibling':
                return personNode('Divya Bharati', icon: Icons.people);
              case 'locked':
                return personNode('Private Branch', locked: true);
              default:
                return personNode('Unknown');
            }
          },
        ),
      ),
    );
  }
}
