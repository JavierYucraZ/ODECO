export const reqData = async () => {
  const request = await fetch(
    "http://localhost/ODECO/Public/sql/sessionData.php"
  );
  const response = await request.json();
  return response.data;
};

export const allOperatorsSame = (arr, operator) => {
  return arr.every((item) => {
    return item.operador === operator;
  });
};

export const countClaimsByOperator = (arr, operator) => {
  let i = 0;
  return arr.map((item) => {
    if (item.operador === operator) {
      i += 1;
    }
    return i;
  });
};

export const countResolutionByCategory = (arr, category) => {
  let i = 0;
  return arr.map((item) => {
    if (item.tipo_resolucion === category) {
      i += 1;
    }
    return i;
  });
};

export const dictionaryServices = (arr) => {
  const service = arr.map((item) => {
    return item.servicio;
  });

  return [...new Set(service)];
};

export const countService = (services, arr) => {
  return services.map((item) => {
    return arr.reduce((acc, cur) => (cur.servicio === item ? ++acc : acc), 0);
  });
};
