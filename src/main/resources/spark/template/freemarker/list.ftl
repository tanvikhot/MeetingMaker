
<html>
<head>
  <title>List</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <h1>List of People</h1>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <ul>
      <#list names as name>
        <li>${name}</li>
      </#list>
      </ul>
      <a href="/hello">Back to Hello</a>
    </div>
  </div>
</div>
</body>
</html>