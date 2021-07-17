$(function() {
    $("#intervention_buildingid").prop("hidden", true);
    $("#intervention_batteryid").prop("hidden", true);
    $("#intervention_columnid").prop("hidden", true);
    $("#intervention_elevatorid").prop("hidden", true);

    $("#intervention_customerid").change(function(){
          var customer = $(this).val();
          if(customer == ''){
              $("#intervention_buildingid").prop("hidden", true);
          }else{
              $("#intervention_buildingid").prop("hidden", false);
          }
          $.ajax({
            url: "/get_building/" + customer,
            method: "GET",  
            dataType: "json",
            error: function (xhr, status, error) {
                  console.error('AJAX Error: ' + status + error);
            },
            success: function (response) {
                  console.log(response);
                  var building = response;
                  $("#intervention_buildingid").empty();
    
                  $("#intervention_buildingid").append('<option>Select Building</option>');
                  for(var i = 0; i < building.length; i++){
                      $("#intervention_buildingid").append('<option value="' + building[i]["id"] + '">' +building[i]["id"] + '</option>');
                      console.log("hello 1");
                  }
            }
          });
    });

    $("#intervention_buildingid").change(function(){
        var building = $(this).val();
        if(building == ''){
            $("#intervention_batteryid").prop("hidden", true);
        }else{
            $("#intervention_batteryid").prop("hidden", false);
        }
        $.ajax({
          url: "/get_battery/" + building,
          method: "GET",  
          dataType: "json",
          error: function (xhr, status, error) {
                console.error('AJAX Error: ' + status + error);
          },
          success: function (response) {
                console.log(response);
                var battery = response;
                $("#intervention_batteryid").empty();
  
                $("#intervention_batteryid").append('<option>Select Battery</option>');
                for(var i = 0; i < battery.length; i++){
                    $("#intervention_batteryid").append('<option value="' + battery[i]["id"] + '">' +battery[i]["id"] + '</option>');
                    console.log("hello 2");
                }
          }
        });
    });

    $("#intervention_batteryid").change(function(){
        var battery = $(this).val();
        console.log("hello 3");
        if(battery == ''){
            console.log("hidden");
            $("#intervention_columnid").prop("hidden", true);
        }else{
            $("#intervention_columnid").prop("hidden", false);
            console.log("show");
        }
        $.ajax({
          url: "/get_column/" + battery,
          method: "GET",  
          dataType: "json",
          error: function (xhr, status, error) {
                console.error('AJAX Error: ' + status + error);
          },
          success: function (response) {
                console.log(response);
                var column = response;
                $("#intervention_columnid").empty();
  
                $("#intervention_columnid").append('<option>Select Column</option>');
                for(var i = 0; i < column.length; i++){
                    $("#intervention_columnid").append('<option value="' + column[i]["id"] + '">' +column[i]["id"] + '</option>');
                    console.log("hello 3");
                }
          }
        });
    });

    $("#intervention_columnid").change(function(){
        var column = $(this).val();
        if(column == ''){
            $("#intervention_elevatorid").prop("hidden", true);
        }else{
            $("#intervention_elevatorid").prop("hidden", false);
        }
        $.ajax({
          url: "/get_elevator/" + column,
          method: "GET",  
          dataType: "json",
          error: function (xhr, status, error) {
                console.error('AJAX Error: ' + status + error);
          },
          success: function (response) {
                console.log(response);
                var elevator = response;
                $("#intervention_elevatorid").empty();
  
                $("#intervention_elevatorid").append('<option>Select Elevator</option>');
                console.log("hello 4");
                for(var i = 0; i < elevator.length; i++){
                    $("#intervention_elevatorid").append('<option value="' + elevator[i]["id"] + '">' +elevator[i]["id"] + '</option>');
                }
          }
        });
    });
});