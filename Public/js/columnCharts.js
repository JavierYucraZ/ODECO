import { reqData, allOperatorsSame, countClaimsByOperator } from "./helper.js";

const Main = async () => {
  const data = await reqData();

  // console.log(data.length);

  const allAXS = allOperatorsSame(data, "AXS");
  const allVIVA = allOperatorsSame(data, "VIVA");
  const allENTEL = allOperatorsSame(data, "ENTEL");
  const allTIGO = allOperatorsSame(data, "TIGO");

  let values = [],
    categories = [];

  if (allAXS || allVIVA || allENTEL || allTIGO) {
    values = [data.length];
    const nameOperator = data.find((item) => {
      return item.operador;
    });
    categories = [nameOperator.operador];
  } else {
    const countAXS = countClaimsByOperator(data, "AXS");
    const countVIVA = countClaimsByOperator(data, "VIVA");
    const countTIGO = countClaimsByOperator(data, "TIGO");
    const countENTEL = countClaimsByOperator(data, "ENTEL");
    values = [
      countAXS[countAXS.length - 1],
      countVIVA[countVIVA.length - 1],
      countENTEL[countENTEL.length - 1],
      countTIGO[countTIGO.length - 1],
    ];
    categories = ["AXS", "VIVA", "ENTEL", "TIGO"];
  }

  var options = {
    series: [
      {
        name: "Reclamos",
        data: values,
      },
    ],
    chart: {
      height: 350,
      type: "bar",
    },
    colors: ["#abc", "#dda", "#12d", "#aab147"],
    plotOptions: {
      bar: {
        columnWidth: "45%",
        distributed: true,
      },
    },
    dataLabels: {
      enabled: false,
    },
    legend: {
      show: false,
    },
    xaxis: {
      categories: categories,
      labels: {
        style: {
          fontSize: "12px",
        },
      },
    },
  };

  var chart = new ApexCharts(document.querySelector("#columns"), options);
  chart.render();
};

Main();
