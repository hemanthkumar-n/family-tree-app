import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/theme/app_colors.dart';

class FamilyTreeScreen extends StatelessWidget {
  const FamilyTreeScreen({super.key});

  Widget personNode(String name, {bool center = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        gradient: center
            ? const LinearGradient(colors: [Colors.deepPurple, Colors.blue])
            : null,
        color: center ? null : Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.black12)],
      ),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: center ? Colors.white : Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
    ).animate().fadeIn().scale();
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

    graph.addEdge(father, center);
    graph.addEdge(mother, center);
    graph.addEdge(center, spouse);
    graph.addEdge(center, child);
    graph.addEdge(center, sibling);

    final builder = BuchheimWalkerConfiguration()
      ..siblingSeparation = 40
      ..levelSeparation = 60
      ..subtreeSeparation = 50;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('Vansha Founder Graph')),
      body: InteractiveViewer(
        constrained: false,
        boundaryMargin: const EdgeInsets.all(200),
        minScale: 0.5,
        maxScale: 2.5,
        child: GraphView(
          graph: graph,
          algorithm: BuchheimWalkerAlgorithm(builder, TreeEdgeRenderer(builder)),
          builder: (Node node) {
            switch (node.key?.value) {
              case 'father':
                return personNode('Natakam Malakonda Prasad');
              case 'mother':
                return personNode('Natakam Sudharani');
              case 'center':
                return personNode('Natakam Hemanth Kumar', center: true);
              case 'spouse':
                return personNode('Keerthi Doguparti');
              case 'child':
                return personNode('Natakam Yuvan Simha');
              case 'sibling':
                return personNode('Divya Bharati');
              default:
                return personNode('Unknown');
            }
          },
        ),
      ),
    );
  }
}
