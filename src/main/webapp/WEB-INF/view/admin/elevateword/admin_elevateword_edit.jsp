<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><la:message key="labels.admin_brand_title" /> | <la:message
		key="labels.elevate_word_configuration" /></title>
<jsp:include page="/WEB-INF/view/common/admin/head.jsp"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="/WEB-INF/view/common/admin/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/common/admin/sidebar.jsp">
			<jsp:param name="menuCategoryType" value="suggest" />
			<jsp:param name="menuType" value="elevateWord" />
		</jsp:include>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					<la:message key="labels.elevate_word_title_details" />
				</h1>
				<ol class="breadcrumb">
					<li class="active"><la:link href="/admin/elevateword">
							<la:message key="labels.elevate_word_link_list" />
						</la:link></li>
					<c:if test="${crudMode == 1}">
						<li class="active"><la:message
								key="labels.elevate_word_link_create" /></li>
					</c:if>
					<c:if test="${crudMode == 2}">
						<li class="active"><la:message
								key="labels.elevate_word_link_edit" /></li>
					</c:if>
				</ol>
			</section>
			<section class="content">
				<la:form action="/admin/elevateword/" styleClass="form-horizontal">
					<la:hidden property="crudMode" />
					<c:if test="${crudMode==2}">
						<la:hidden property="id" />
						<la:hidden property="versionNo" />
					</c:if>
					<la:hidden property="createdBy" />
					<la:hidden property="createdTime" />
					<div class="row">
						<div class="col-md-12">
							<div
								class="box <c:if test="${crudMode == 1}">box-success</c:if><c:if test="${crudMode == 2}">box-warning</c:if>">
								<div class="box-header with-border">
									<h3 class="box-title">
										<c:if test="${crudMode == 1}">
											<la:message key="labels.elevate_word_link_create" />
										</c:if>
										<c:if test="${crudMode == 2}">
											<la:message key="labels.elevate_word_link_edit" />
										</c:if>
									</h3>
									<div class="btn-group pull-right">
										<la:link href="/admin/elevateword"
											styleClass="btn btn-default btn-xs">
											<em class="fa fa-th-list"></em>
											<la:message key="labels.elevate_word_link_list" />
										</la:link>
										<la:link href="../createnew"
											styleClass="btn btn-success btn-xs">
											<em class="fa fa-plus"></em>
											<la:message key="labels.elevate_word_link_create" />
										</la:link>
										<la:link href="../downloadpage"
											styleClass="btn btn-primary btn-xs">
											<em class="fa fa-download"></em>
											<la:message key="labels.elevate_word_link_download" />
										</la:link>
										<la:link href="../uploadpage"
											styleClass="btn btn-success btn-xs">
											<em class="fa fa-upload"></em>
											<la:message key="labels.elevate_word_link_upload" />
										</la:link>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<div>
										<la:info id="msg" message="true">
											<div class="alert alert-info">${msg}</div>
										</la:info>
										<la:errors property="_global" />
									</div>
									<div class="form-group">
										<label for="word" class="col-sm-3 control-label"><la:message
												key="labels.elevate_word_suggest_word" /></label>
										<div class="col-sm-9">
											<la:errors property="suggestWord" />
											<la:text styleId="suggestWord" property="suggestWord" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="reading" class="col-sm-3 control-label"><la:message
												key="labels.elevate_word_reading" /></label>
										<div class="col-sm-9">
											<la:errors property="reading" />
											<la:text styleId="reading" property="reading" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="permissions" class="col-sm-3 control-label"><la:message
												key="labels.elevate_word_permissions" /></label>
										<div class="col-sm-9">
											<la:errors property="permissions" />
											<la:textarea styleId="permissions" property="permissions" styleClass="form-control" rows="5" />
										</div>
									</div>
									<div class="form-group">
										<label for="labelTypeIds" class="col-sm-3 control-label"><la:message
												key="labels.label_type" /></label>
										<div class="col-sm-9">
											<la:errors property="labelTypeIds" />
											<la:select styleId="labelTypeIds" property="labelTypeIds" multiple="true"
												styleClass="form-control">
												<c:forEach var="l" varStatus="s" items="${labelTypeItems}">
													<la:option value="${f:u(l.id)}">${f:h(l.name)}</la:option>
												</c:forEach>
											</la:select>
										</div>
									</div>
									<div class="form-group">
										<label for="boost" class="col-sm-3 control-label"><la:message
												key="labels.elevate_word_boost" /></label>
										<div class="col-sm-9">
											<la:errors property="boost" />
											<la:text styleId="boost" property="boost" styleClass="form-control" />
										</div>
									</div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<jsp:include page="/WEB-INF/view/common/admin/crud/buttons.jsp"></jsp:include>
								</div>
								<!-- /.box-footer -->
							</div>
							<!-- /.box -->
						</div>
					</div>
				</la:form>
			</section>
		</div>
		<jsp:include page="/WEB-INF/view/common/admin/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="/WEB-INF/view/common/admin/foot.jsp"></jsp:include>
</body>
</html>

