$(document).ready(function(){
      
   $("ol").on("click", "input[type=checkbox]",function(){
        $(this).closest("li").toggleClass("listitem_1")})
        
 $("#add-new-todo-button"). click(function(){
    var todoBlock = $(this).closest("#new-todo-block")
    var description = todoBlock.find("#new-todo-description")
    var pomodoroEstimate = todoBlock.find("#new-pomo-estimate")
    $("ol").append("<li> <input type='checkbox'/> "+ " <span class= 'item'>" + description.val() + "-</span>" + " <span class= 'pomo'>" + pomodoroEstimate.val() + " Pomodoros</span> </li> ")

    description.val("")
    pomodoroEstimate.val("")

  
 })   
})