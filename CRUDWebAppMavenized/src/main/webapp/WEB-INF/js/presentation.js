

$('#test').click(function() {
    find();
})

function findAll() {
  alert("test");
}

function renderList(data) {

    $('#display').append("'<li>" + data + "</li>'");
}
function findById(id) {
    console.log('findById: ' + id);
    $.ajax({
        type: 'GET',
        url: rootUrl+"test",
        dataType: "json",
        success: function(data) {
            console.log('findById success: ' + data.name);
            currentFriend = data;
            renderDetails(currentFriend);
        }
    });
}

