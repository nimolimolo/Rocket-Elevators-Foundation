$(function() {
    $("#intervention_buildingid").prop("hidden", true); // second dropdown is disable while first dropdown is empty
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
                  }
            }
          });
    });
    });