<canvas
  id="myChart"
  style="max-width: 80vw; max-height: 40vh"
  width="400"
  height="400"
></canvas>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>

  let datas = {$datas|json_encode};


  let periods = datas.map(data => data.periodo);
  let frequencies = datas.map(data => data.frequencia);


  let ctx = document.getElementById('myChart').getContext('2d');
  let myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: periods,
          datasets: [{
              label: '',
              data: frequencies,
              borderColor: 'rgba(54, 162, 235, 1)',
              fill: true,
              fillColor: "rgba(220,220,220,0.2)",
              borderWidth: 2,
              tension: 0.1,
              legend: false
          }]
      },
      options: {
          legend: {
              display: false
          },
          plugins: {
            legend: {
                display: false
            },
        },
          scales: {
            x: {
              grid:{
                drawOnChartArea: false
              },
              ticks: {
                textStrokeWidth: 3,
                textStrokeColor: '#FFFFFF',
                color: '#6BB9F6'
              }
            },
            y: {
              grid:{
                drawOnChartArea: false
              },
              ticks: {
                textStrokeWidth: 3,
                textStrokeColor: '#FFFFFF',
                color: '#6BB9F6'
              }
            },
          },
      },
  });
</script>

{literal}
<style>
  canvas {
    margin: 0 calc(60% - 45vw);
  }
</style>
{/literal}
