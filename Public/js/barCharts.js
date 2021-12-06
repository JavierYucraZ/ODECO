import { countResolutionByCategory, reqData } from "./helper.js";

const Main = async () => {
  const data = await reqData();
  // console.log(data);

  const improcedente = countResolutionByCategory(data, "IMPROCEDENTE");
  const par_proc = countResolutionByCategory(data, "PARCIALMENTE PROCEDENTE");
  const procedente = countResolutionByCategory(data, "PROCEDENTE");

  var options = {
    series: [
      {
        data: [
          improcedente[improcedente.length - 1],
          par_proc[par_proc.length - 1],
          procedente[procedente.length - 1],
        ],
      },
    ],
    chart: {
      type: "bar",
      height: 380,
    },
    plotOptions: {
      bar: {
        barHeight: "100%",
        distributed: true,
        horizontal: true,
        dataLabels: {
          position: "bottom",
        },
      },
    },
    colors: ["#33b2df", "#546E7A", "#d4526e"],
    dataLabels: {
      enabled: true,
      textAnchor: "start",
      style: {
        colors: ["#fff"],
      },
      formatter: function (val, opt) {
        return opt.w.globals.labels[opt.dataPointIndex] + ":  " + val;
      },
      offsetX: 0,
      dropShadow: {
        enabled: true,
      },
    },
    stroke: {
      width: 1,
      colors: ["#fff"],
    },
    xaxis: {
      categories: ["IMPROCEDENTE", "PARCIALMENTE PROCEDENTE", "PROCEDENTE"],
    },
    yaxis: {
      labels: {
        show: false,
      },
    },
    title: {
      text: "Tipo de Resolucion",
      align: "center",
      floating: true,
    },
    tooltip: {
      theme: "dark",
      x: {
        show: false,
      },
      y: {
        title: {
          formatter: function () {
            return "";
          },
        },
      },
    },
  };

  var chart = new ApexCharts(document.querySelector("#bar"), options);
  chart.render();
};

Main();
