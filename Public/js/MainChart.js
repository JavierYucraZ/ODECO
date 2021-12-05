const reqAllClaimByOperator = async (operador) => {
  const request = await fetch(
    "http://localhost/ODECO/Admin/controllers/proyecto.php?service=getAllClaimByOperator",
    {
      method: "POST",
      body: JSON.stringify({
        operador: operador,
      }),
    }
  );
  const response = await request.json();
  const arrayClaim = Object.values(response[0]);
  return arrayClaim;
};

const Main = async () => {
  const axs = await reqAllClaimByOperator("AXS");
  const viva = await reqAllClaimByOperator("VIVA");
  const entel = await reqAllClaimByOperator("ENTEL");
  const tigo = await reqAllClaimByOperator("TIGO");

  console.log(tigo)

  var options = {
    series: [
      {
        name: "VIVA",
        data: viva,
      },
      {
        name: "ENTEL",
        data: entel,
      },
      {
        name: "TIGO",
        data: tigo,
      },
      {
        name: "AXS",
        data: axs,
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
        "Mayo",
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
};

Main();
