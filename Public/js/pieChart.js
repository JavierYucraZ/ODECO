import { countService, dictionaryServices, reqData } from "./helper.js";

const Main = async () => {
  const data = await reqData();

  const services = dictionaryServices(data);

  const count = countService(services, data);

  var options = {
    series: count,
    chart: {
      width: 450,
      type: "pie",
    },
    labels: services,
    responsive: [
      {
        breakpoint: 480,
        options: {
          chart: {
            width: 200,
          },
          legend: {
            position: "bottom",
          },
        },
      },
    ],
  };

  var chart = new ApexCharts(document.querySelector("#pie"), options);
  chart.render();
};
Main();
