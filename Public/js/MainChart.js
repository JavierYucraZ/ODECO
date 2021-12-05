var options = {
  series: [
    {
      name: "VIVA",
      data: [45, 52, 38, 24, 33, 26, 21, 20, 6, 15, 101],
    },
    {
      name: "ENTEL",
      data: [35, 41, 62, 42, 13, 18, 29, 37, 51, 32, 35],
    },
    {
      name: "TIGO",
      data: [87, 57, 74, 99, 75, 38, 62, 82, 56, 45, 47],
    },
    {
      name: "AXS",
      data: [10, 17, 34, 59, 75, 18, 27, 12, 46, 75, 97],
    },
  ],
  chart: {
    height: 400,
    type: "line",
    zoom: {
      enabled: false,
    },
  },
  dataLabels: {
    enabled: true,
  },
  stroke: {
    width: [2, 2, 2, 2],
    curve: "straight",
  },
  title: {
    text: "Reclamos por operador",
    align: "left",
  },
  legend: {
    tooltipHoverFormatter: function (val, opts) {
      return (
        val +
        " - " +
        opts.w.globals.series[opts.seriesIndex][opts.dataPointIndex] +
        ""
      );
    },
  },
  markers: {
    size: 0,
    hover: {
      sizeOffset: 6,
    },
  },
  xaxis: {
    categories: [
      "Enero",
      "Febrero",
      "Marzo",
      "Abril",
      "Junio",
      "Julio",
      "Agosto",
      "Septiembre",
      "Octubre",
      "Noviembre",
      "Diciembre",
    ],
  },
  tooltip: {
    y: [
      {
        title: {
          formatter: function (val) {
            return val;
          },
        },
      },
      {
        title: {
          formatter: function (val) {
            return val;
          },
        },
      },
      {
        title: {
          formatter: function (val) {
            return val;
          },
        },
      },
    ],
  },
  grid: {
    borderColor: "#f1f1f1",
  },
};

var chart = new ApexCharts(document.querySelector("#chart"), options);
chart.render();
