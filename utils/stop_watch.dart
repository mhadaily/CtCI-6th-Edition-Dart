import 'dart:mirrors';

void measureExecutionTime(Function cb) {
  final cm = reflect(cb) as ClosureMirror;
  final name = MirrorSystem.getName(cm.function.simpleName);
  print('--- Start $name executing ---');
  final stopwatch = Stopwatch()..start();
  cb();
  stopwatch.stop();
  print('--- $name executed in ${stopwatch.elapsed}  ---');
}
