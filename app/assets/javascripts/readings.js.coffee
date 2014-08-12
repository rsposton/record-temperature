# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  data = {
    labels : $('#chart_for_temp').data('label'),
#    labels:  [1,2,3,4,5],
    datasets : [
      {
        fillColor : "rgba(220,220,220,0.5)",
        strokeColor : "rgba(220,220,220,1)",
        pointColor : "rgba(220,220,220,1)",
        pointStrokeColor : "#fff",
        data : $('#chart_for_temp').data('readings')
      }
    ]
  }

  myNewChart = new Chart($("#chart_for_temp").get(0).getContext("2d")).Line(data)
