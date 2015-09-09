

$(document).ready(function() {

    // $('nav li a').hover(function() {

    //             $(this).attr('class', 'fa fa-bolt')

    //     }, function() {

    //             $(this).attr('class', '')

    //     });
	
	//INIT SLIDER
	$(".bxslider").bxSlider({auto: true});

	//REMOVE BoxShadow From Slider
	
	$('.bx-wrapper .bx-viewport').css('box-shadow', '0 0 5px white');
	$('.bx-wrapper .bx-viewport').css('text-align', 'center');
	
	$('img').css('margin-left', 'auto');
	$('img').css('margin-right', 'auto');

    console.log("loaded")

});


// $.ajax({
//            type: "GET",
//            contentType: "application/json; charset=utf-8",
//            url: 'data',
//            dataType: 'json',
//            success: function (data) {
//                draw(data);
//            },
//            error: function (result) {
//                error();
//            }
//        });
 

// var x = d3.scale.linear()
//     .domain([0, d3.max(data)])
//     .range([0, 420]);

// d3.select(".chart")
//   .selectAll("div")
//     .data(data)
//   .enter().append("div")
//     .style("width", function(d) { return x(d) + "px"; })
//     .text(function(d) { return d; });

// function draw(data) {
//     var color = d3.scale.category20b();
//     var width = 500,
//         barHeight = 30;
 
//     var x = d3.scale.linear()
//         .range([0, width])
//         .domain([0, d3.max(data)]);
 
//     var chart = d3.select("#graph")
//         .attr("width", width)
//         .attr("height", barHeight * data.length);
 
//     var bar = chart.selectAll("g")
//         .data(data)
//         .enter().append("g")
//         .attr("transform", function (d, i) {
//                   return "translate(0," + i * barHeight + ")";
//               });
 
//     bar.append("rect")
//         .attr("width", x)
//         .attr("height", barHeight - 1)
//         .style("fill", function (d) {
//                    return color(d)
//                })
 
//     bar.append("text")
//         .attr("x", function (d) {
//                   return x(d) - 20;
//               })
//         .attr("y", barHeight / 2)
//         .attr("dy", ".35em")
//         .style("fill", "white")
//         .text(function (d) {
//                   return d;
//               });
// }

function error() {
    console.log("error")
}
 

