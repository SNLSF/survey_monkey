$(document).ready(function() {
  var question_counter = 0;

  $(".add-question").on("click", function(event){
    event.preventDefault();
    var choice_counter = 0;
    question_counter++;

    $(".questions").append("Question "+question_counter+": <div data-question_id="+question_counter+"><input type='text' name='question["+question_counter+"]'> <button class='add-choice'>Add Choice</button></div><br />")
  })

  $('.questions').delegate('.add-choice','click',function(event) {
    event.preventDefault();
    var choice_counter = $(this).parent().children('input').length;
    var question_id = $(this).parent().attr('data-question_id')
    $(this).after("<input type='text' name='choice["+question_id+"]["+choice_counter+"]'>")
    console.log(this);
  })
});

// grab all the divs with class quesions


// name="question[#{id}]"
// name="question[1]"
// name="question[2]"

// $('.questions').children().length

// params[:question] # { 1: "fewf", 2: "fewf"}

name="choice[1][1]"
name="choice[1][2]"
name="choice[1][3]"

name="choice[2][1]"
name="choice[2][2]"
name="choice[2][3]"
