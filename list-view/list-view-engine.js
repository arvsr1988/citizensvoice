function listIssues() {
    var json = "[{ \"issueType\": \"Street Light\", \"location\": \"Vadapalani\", \"time\": \"5 hour ago\", \"imageUrl\": \"\", \"status\": \"Open\", \"votingcount\": \"1\", \"id\": \"1\", \"ImageUrl\": \"image\/test.jpg\" }, { \"issueType\": \"Street Light\", \"location\": \"Vadapalani\", \"time\": \"5 hour ago\", \"imageUrl\": \"\", \"status\": \"Open\", \"votingcount\": \"1\", \"id\": \"1\", \"ImageUrl\": \"image\/test.jpg\"}]";
    return JSON.parse(json);
    //    var string = { location: "All", issuetype: "All" };
    //    var dataString = "json=" + JSON.stringify(string);
    //    $.ajax({
    //        type: 'POST',
    //        url: 'http://ec2-54-242-157-231.compute-1.amazonaws.com/citizensvoice/trunk/server/getListIssues.php',
    //        data: dataString,
    //        dataType: 'json',
    //        success: function (data) {
    //            alert(data);
    //        }
    //    });
}
 