import '../models/founder_graph.dart';
import 'relationship_edge.dart';

class GraphBuilderService {
  static List<Map<String, dynamic>> buildNodes() {
    return FounderGraph.people.map((p) {
      return {
        'id': p.id,
        'name': p.name,
        'knownAs': p.knownAs,
        'relationship': p.relationship,
      };
    }).toList();
  }

  static List<RelationshipEdge> buildEdges() {
    return FounderGraph.edges;
  }
}
