<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Make plans</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
        integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js" type="text/javascript"></script>
  <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <h1>What dates work for you?</h1>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <form method="post" action="/savedate">
        <input id="datepicker" name="date" width="276"/>
        <script>
        $('#datepicker').datepicker({
            uiLibrary: 'bootstrap4',
            minDate: '${minDate}',
            maxDate: '${maxDate}'
        });
        </script>
        <br/>
        <input type="submit" class="btn btn-primary" value="Save Date"/>
      </form>
    </div>
  </div>
</div>
</body>
</html>