<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
          

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E=" crossorigin="anonymous"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
	$(document).ready(() => {
		$('#dataTables-example').DataTable({
			responsive: true
		});
		$('.sidebar-nav')
			.attr("class", "sidebar-nav navbar-collapse collapse")
			.attr("aria-expanded", "false")
			.attr("style", "height:1px");
	});
    </script>

</body>

</html>
