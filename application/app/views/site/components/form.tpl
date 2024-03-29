<form id="NameForm" method="GET">
  <label for="nome">Digite um nome:</label>
  <input type="text" id="nome" name="nome" value="{$smarty.get.name}" />
  <label for="gender">Sexo:</label>
  <select name="gender" id="gender" value="{$smarty.get.gender}">
    <option value="A">Ambos</option>
    <option value="M">Masculino</option>
    <option value="F">Feminino</option>
  </select>
  <button type="submit">Buscar</button>
</form>

<script>
  window.addEventListener(
    "load",
    function () {
      const searchParams = new URLSearchParams(window.location.search);

      document.getElementById("gender").value =
        searchParams.get("gender") || "A";
    },
    false
  );

  document
    .getElementById("NameForm")
    .addEventListener("submit", function (event) {
      event.preventDefault();

      const NomePesquisado = document.getElementById("nome").value;

      const SexoPesquisado = document.getElementById("gender").value;

      if (!NomePesquisado || !NomePesquisado.length) {
        return;
      }

      const NomeHREF = NomePesquisado ?? "Fábio";
      const SexoHREF = SexoPesquisado ?? "A";

      window.location.href = "?name=" + NomeHREF + "&gender=" + SexoHREF;
    });
</script>
