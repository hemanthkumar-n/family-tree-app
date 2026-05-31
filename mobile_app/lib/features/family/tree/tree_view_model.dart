import 'tree_person.dart';
import 'tree_family_unit.dart';

class TreeViewModel {
  final List<TreePerson> people;
  final List<TreeFamilyUnit> familyUnits;

  const TreeViewModel({
    required this.people,
    required this.familyUnits,
  });
}
