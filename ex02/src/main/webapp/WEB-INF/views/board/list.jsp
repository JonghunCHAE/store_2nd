<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@include file="../includes/header.jsp" %>

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board List Page
                            
                            <button id='regBtn' type="button" class="btn btn-xs pull-right">Register New Board</button>
                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#��ȣ</th>
                                        <th>����</th>
                                        <th>�ۼ���</th>
                                        <th>�ۼ���</th>
                                        <th>������</th>
                                    </tr>
                                </thead>
                                
                                <c:forEach items="${list }" var="board">
                                	<tr>
                                		<td><c:out value="${board.bno }" /></td>
                                		<td><a href='/board/get?bno=<c:out value="${board.bno }"/>'><c:out value="${board.title }" /></a></td>
                                		<td><c:out value="${board.writer }" /></td>
                                		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></td>
                                		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }" /></td>                                		
                                	</tr>
                                </c:forEach>
                                
                            </table>
                            
                            <!-- modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            	<div class="modal-dialog">
                            		<div class="modal-content">
                            			<div class="modal-header">
                            				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            				<h4 class="modal-title" id="myModalLabel">Modal title</h4>
                            			</div>
                            			<div class="modal-body">ó���� �Ϸ�Ǿ����ϴ�.</div>
                            			<div class="modal-footer">
                            				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            				<button type="button" class="btn btn-primary">Save changes</button>
                            			</div>
                            		</div>
                            		<!-- modal-content -->
                            	</div>
                            	<!-- modal-dialog -->
                            </div>
                            <!-- modal-fade -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
<script type="text/javascript">
	$(document).ready(() => {
		
		let result = '<c:out value="${result}"/>';
		
		checkModal(result);
		
		function checkModal(result) {
			
			if(result === '') {
				return;
			}
			
			if(parseInt(result) > 0) {
				$(".modal-body").html("�Խñ� " + parseInt(result) + "���� ��ϵǾ����ϴ�.");
			}
			
			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", () => {
			self.location = "/board/register";
		});
		
	});

</script>
            
            
            
<%@include file="../includes/footer.jsp" %>