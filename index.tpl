<!--
<p>Bethany</p>
<div ng-controller="TaskListCtrl">
  <ul>
    <li ng-repeat="task in tasks">
      {{task.name}}
      <p>{{task.value}}</p>
    </li>
  </ul>
</div>
<p>Total: </p>
<p>Caitlyn</p>
<div ng-controller="TaskListCtrl">
  <ul>
    <li ng-repeat="task in tasks">
      {{task.name}}
      <p>{{task.value}}</p>
    </li>
  </ul>
</div>
<p>Total: 2</p>
-->
<div class="row tasks-list">
<div class="col-md-6 col-md-offset-3">
<div ng-controller="TaskListCtrl">
<p>Bethany</p>
<table class="task">
  <tr><td>Task</td><td></td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td><td>Sun</td></tr>  
  <tr ng-repeat="task in tasks">
      <td><input ng-model="task.name"></td>
      <td><button ng-click="remove(task)">X</button></td>
      <td><select ng-model="task.value1"><option value="1">1</option><option value="0">0</option></select></td>
      <td><select ng-model="task.value2"><option value="1">1</option><option value="0">0</option></select></td>
      <td><select ng-model="task.value3"><option value="1">1</option><option value="0">0</option></select></td>
      <td><select ng-model="task.value4"><option value="1">1</option><option value="0">0</option></select></td>
      <td><select ng-model="task.value5"><option value="1">1</option><option value="0">0</option></select></td>
      <td><select ng-model="task.value6"><option value="1">1</option><option value="0">0</option></select></td>
      <td><select ng-model="task.value7"><option value="1">1</option><option value="0">0</option></select></td>
      <td>{{sumTask(task)}}</td>
  </tr>
  <tr>
    <td><input ng-model="newTask.name"></td>
    <td><button ng-click="add(tasks, newTask); newTask='';" class="btn btn-default">Add</button></td>
  </tr>
  <tr>
    <td><button ng-click="removeAll()">remove all</button></td>
  </tr>  
</table>
<p>Total: {{sum(tasks)}}</p>
<p></p>
<p>Caitlyn</p>
<table class="task">
  <tr><td>Task</td><td></td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td><td>Sun</td></tr>  
  <tr ng-repeat="task in tasks2">
      <td><input ng-model="task.name"></td>
      <td><button ng-click="remove(task)">X</button></td>
      <td><select ng-model="task.value1"><option value=1>1</option><option value=0>0</option></select></td>
      <td><select ng-model="task.value2"><option value=1>1</option><option value=0>0</option></select></td>
      <td><select ng-model="task.value3"><option value=1>1</option><option value=0>0</option></select></td>
      <td><select ng-model="task.value4"><option value=1>1</option><option value=0>0</option></select></td>
      <td><select ng-model="task.value5"><option value=1>1</option><option value=0>0</option></select></td>
      <td><select ng-model="task.value6"><option value=1>1</option><option value=0>0</option></select></td>
      <td><select ng-model="task.value7"><option value=1>1</option><option value=0>0</option></select></td>
      <td>{{sumTask(task)}}</td>
  </tr>
  <tr>
    <td><input ng-model="newTask2.name"></td>
    <td><button ng-click="add(tasks2, newTask2); newTask2='';" class="btn btn-default">Add</button></td>
  </tr>
  <tr>
    <td><button ng-click="removeAll2()">remove all</button></td>
  </tr>  
</table>
<p>Total: {{sum(tasks2)}}</p>
<!--
<form>
  <h2>Create a new task:</h2>
  <label>Task</label>
  <input ng-model="newTask2.name">
  <button ng-click="add(tasks2, newTask2); newTask2='';" class="btn btn-default">Add</button>
</form>
<button ng-click="removeAll2()">remove all</button>
-->
</div>
</div> 
</div> 