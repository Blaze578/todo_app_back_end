// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

/*global $*/

$(document).ready(function(){
    $("#add-new-todo-button").click(function(){
        var todoBlock = $(this).closest("#to-do-block")
        var description = todoBlock.find("#add-a-new-to-do")
        var pomodoroEstimate = todoBlock.find("#add-new-pomodoros")
        $("ul").append("<li> <input type ='checkbox'/><a href='#'>" + description.val() + "</a><span class='pomodoro-estimate'> " + pomodoroEstimate.val() + " pomodoros </span> </li>")
       description.val(" ")
       pomodoroEstimate.val(" ")
    })
})

$(document).ready(function(){
    $("ul").on("click","input[type = checkbox]",
    function(){
        $(this).closest("li").toggleClass("completed-todo")
    })
})

