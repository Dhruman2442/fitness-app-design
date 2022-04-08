import 'package:fitness_app_example/data/exercise_sets.dart';
import 'package:fitness_app_example/model/exercise_set.dart';
import 'package:fitness_app_example/widget/exercise_set_widget.dart';
import 'package:flutter/material.dart';

class ExercisesWidget extends StatefulWidget {
  @override
  _ExercisesWidgetState createState() => _ExercisesWidgetState();
}

class _ExercisesWidgetState extends State<ExercisesWidget> {
  ExerciseType selectedType = ExerciseType.low;

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.all(16),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(height: 8),
              Text(
                'Good Morning, \nJane',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Card(
                margin: EdgeInsets.only(right: 10, left: 10, top: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.rotate_right,
                        color: Colors.green,
                        size: 50,
                      ),
                      title: Text(
                        "Today's Progress",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: LinearProgressIndicator(
                        value: 0.5,
                      ),
                      trailing: Image.asset('assets/yoga.png'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Card(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                           Container(

                               margin: EdgeInsets.only(right: 20),
                               child:
                              Row(
                                children: [
                                  Icon(Icons.check_box),
                                  Text("Completed Sessions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                ],
                              )),
                              Row(
                                children: [
                                  Icon(Icons.check_box),
                                  Text("Pending Sessions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 8),
              buildDifficultyLevel(),
              SizedBox(height: 8),
              buildWorkouts(),
            ],
          ),
        ),
      );

  Widget buildWorkouts() => GestureDetector(
        onHorizontalDragEnd: swipeFunction,
        child: Column(
          children: exerciseSets
              .where((element) => element.exerciseType == selectedType)
              .map(
                (exerciseSet) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ExerciseSetWidget(exerciseSet: exerciseSet)),
              )
              .toList(),
        ),
      );

  Widget buildDifficultyLevel() => Row(
        children: ExerciseType.values.map(
          (type) {
            final name = getExerciseName(type);
            final fontWeight =
                selectedType == type ? FontWeight.bold : FontWeight.normal;

            return Expanded(
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => setState(() => selectedType = type),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      name,
                      style: TextStyle(fontWeight: fontWeight, fontSize: 16),
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      );

  void swipeFunction(DragEndDetails dragEndDetails) {
    final selectedIndex = ExerciseType.values.indexOf(selectedType);
    final hasNext = selectedIndex < ExerciseType.values.length;
    final hasPrevious = selectedIndex > 0;

    setState(() {
      if (dragEndDetails.primaryVelocity < 0 && hasNext) {
        final nextType = ExerciseType.values[selectedIndex + 1];
        selectedType = nextType;
      }
      if (dragEndDetails.primaryVelocity > 0 && hasPrevious) {
        final previousType = ExerciseType.values[selectedIndex - 1];
        selectedType = previousType;
      }
    });
  }
}
