function testButton() {
    alert("testing");
}
function getListIssues() {
    var issuesList = listIssues();
    $(function () {
        $.each(issuesList, function (list) {
            $("#list").append('<img src="http://ec2-54-242-157-231.compute-1.amazonaws.com/image/test.jpg" />');
            $("#list").append('<label id="location-label"/>');
        });

    });
}
 <table><tr>
         <a id="issue-type" href="">issueType</a>
        <label id="location-label">
            location</label>
        <label id="time">
            time</label>
        <img src="" />
        <label id="status-label">
            status</label>
        <label id="votes-label">
            Voting Count</label>
         </tr>
        </table>