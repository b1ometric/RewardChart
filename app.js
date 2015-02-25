Tasks = new Mongo.Collection("tasks");
Tasks2 = new Mongo.Collection("tasks2");

if (Meteor.isClient) {
  angular.module('RewardChart',['angular-meteor']);

  angular.module("RewardChart").controller("TaskListCtrl", ['$scope','$meteorCollection',
      function($scope, $meteorCollection){

        $scope.tasks = $meteorCollection(Tasks);
        
        $scope.add = function(tasks, task){
          task.value1 = 0;
          task.value2 = 0;
          task.value3 = 0;
          task.value4 = 0;
          task.value5 = 0;
          task.value6 = 0;
          task.value7 = 0;
          tasks.push(task);
        }
        
        $scope.sum = function(tasks){
          sum = 0;
          for (var i = 0; i < tasks.length; i++){
            sum = sum + parseInt(tasks[i].value1) + parseInt(tasks[i].value2) + parseInt(tasks[i].value3) + parseInt(tasks[i].value4) + parseInt(tasks[i].value5) + parseInt(tasks[i].value6) + parseInt(tasks[i].value7);
          }
          return sum;
        }
        
        $scope.sumTask = function(task){
          sum = 0;
          sum = sum + parseInt(task.value1) + parseInt(task.value2) + parseInt(task.value3) + parseInt(task.value4) + parseInt(task.value5) + parseInt(task.value6) + parseInt(task.value7);
          return sum;
        }
        
        $scope.remove = function(task){
          //$scope.tasks.splice( $scope.tasks.indexOf(task), 1 );
           $scope.tasks.remove(task);
        };
        
        $scope.removeAll = function(){
          $scope.tasks.remove();
        };
        
        
        $scope.tasks2 = $meteorCollection(Tasks2);

        $scope.remove2 = function(task){
          //$scope.tasks.splice( $scope.tasks.indexOf(task), 1 );
           $scope.tasks2.remove(task);
        };
        
        $scope.removeAll2 = function(){
          $scope.tasks2.remove();
        };
        
  }]);
}

if (Meteor.isServer) {
  Meteor.startup(function () {

      var tasks = [
          {'name': 'Brush teeth',
            'value1': '0',
            'value2': '0',
            'value3': '0',
            'value4': '0',
            'value5': '0',
            'value6': '0',
            'value7': '0'
          },
          {'name': 'Set table',
            'value1': '0',
            'value2': '0',
            'value3': '0',
            'value4': '0',
            'value5': '0',
            'value6': '0',
            'value7': '0'
          },
          {'name': 'Be nice to mummy',
            'value1': '0',
            'value2': '0',
            'value3': '0',
            'value4': '0',
            'value5': '0',
            'value6': '0',
            'value7': '0'
          }
        ];
    
    if (Tasks.find().count() === 0) {
        for (var i = 0; i < tasks.length; i++)
          Tasks.insert({name: tasks[i].name, value1: tasks[i].value1, value2: tasks[i].value2, value3: tasks[i].value3, value4: tasks[i].value4, value5: tasks[i].value5, value6: tasks[i].value6, value7: tasks[i].value7});
    }

    if (Tasks2.find().count() === 0) {
      var tasks2 = tasks;
      for (var i = 0; i < tasks2.length; i++)
          Tasks2.insert({name: tasks2[i].name, value1: tasks2[i].value1, value2: tasks2[i].value2, value3: tasks2[i].value3, value4: tasks2[i].value4, value5: tasks2[i].value5, value6: tasks2[i].value6, value7: tasks2[i].value7});
    }
    
  });
}                                 