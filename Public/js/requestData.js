// http://localhost/ODECO/Admin/controllers/proyecto.php?service=getAll

const tableContent = document.getElementById("tableContent");

const printData = async () => {
  const request = await fetch(
    "http://localhost/ODECO/Admin/controllers/proyecto.php?service=getAll",
  );
  const response = await request.json();
  console.log(response)
};

window.addEventListener("DOMContentLoaded", printData);
