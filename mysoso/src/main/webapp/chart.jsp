<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

          // Create the data table.
          var data = new google.visualization.DataTable();
          data.addColumn('string', '부서');
          data.addColumn('number', '사원수');
          var chartdata = [];
          //이부분을 아이작스로 넣어야함 
          $.ajax({
        	  url: "chartDept.do",
        	  async : false, //동기식
        	  success : function(result){
        		  //result 개수만큼 for문 돌면서
        		  for(i=0; i<result.length; i++) {
// 	      			  chartdata.push([ result[i].name, parseInt(result[i].cnt) ]);
        			  chartdata.push([ result[i].name, result[i].cnt ]);
        		  }
        	  }
          })
          data.addRows(chartdata);

          // Set chart options
          var options = {'title':'부서별 인원수',
                         'width':400,
                         'height':300,
                         is3D: true,
                         vAxis:{ format: '0.000'},
                         colors: ['#e0440e', '#e6693e', '#ec8f6e', '#f3b49f', '#f6c7b6']
                         };

          // Instantiate and draw our chart, passing in some options.
          //차트 객체 만들기
          var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        //옵션에 내용 넣기. 해당 디비젼 태그에 차트가 그려질것.
          chart.draw(data, options);
        
          google.visualization.events.addListener(chart, 'select', selectHandler);

          function selectHandler(e) {
        	  var row = chart.getSelection()[0].row
        	  var column = chart.getSelection()[0].column
        	  console.log(chart.getSelection());
        	}
        }

    </script>
  </head>
  <body>
    <div id="chart_div"></div>
  </body>
</html>
