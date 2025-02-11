<%@page import="com.config.FaceConfig"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java"
	import="java.util.*,com.config.ConnectionFactory,com.config.I18nUtility,com.customLog.Logger,com.faces.VO_Face"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
String dbConnVar = "BAKESHACk";
try {
%>
<head>
<head>
<jsp:include page="../common/cssfiles.jsp"></jsp:include>
<jsp:include page="../common/navbar.jsp"></jsp:include>
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.js"></script>
</head>
<body id="kt_body"
	style="background-image: url(<%=VO_Face.getContainerDeployPath()%>/ResourceBundles/Resources/assets/BakeShack_IM/gif/BakeShack003.jpg)"
	class="quick-panel-right demo-panel-right offcanvas-right header-fixed subheader-enabled page-loading">

	<div id="kt_header_mobile" class="header-mobile">
		<!--begin::Toolbar-->
		<div class="d-flex align-items-center">
			<button class="btn p-0 burger-icon burger-icon-left ml-4"
				id="kt_header_mobile_toggle"></button>
			<button class="btn btn-icon btn-hover-transparent-white p-0 ml-3"
				id="kt_header_mobile_topbar_toggle">
				<span class="svg-icon svg-icon-xl"> <!--begin::Svg Icon | path:assets/BakeShack_IM/media/svg/icons/General/User.svg-->
					<svg xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
						height="24px" viewBox="0 0 24 24" version="1.1">
							<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
								<polygon points="0 0 24 0 24 24 0 24" />
								<path
							d="M12,11 C9.790861,11 8,9.209139 8,7 C8,4.790861 9.790861,3 12,3 C14.209139,3 16,4.790861 16,7 C16,9.209139 14.209139,11 12,11 Z"
							fill="#000000" fill-rule="nonzero" opacity="0.3" />
								<path
							d="M3.00065168,20.1992055 C3.38825852,15.4265159 7.26191235,13 11.9833413,13 C16.7712164,13 20.7048837,15.2931929 20.9979143,20.2 C21.0095879,20.3954741 20.9979143,21 20.2466999,21 C16.541124,21 11.0347247,21 3.72750223,21 C3.47671215,21 2.97953825,20.45918 3.00065168,20.1992055 Z"
							fill="#000000" fill-rule="nonzero" />
							</g>
						</svg> <!--end::Svg Icon-->
				</span>
			</button>
		</div>
		<!--end::Toolbar-->
	</div>
	<!--end::Header Mobile-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Page-->
		<div class="d-flex flex-row flex-column-fluid page">
			<!--begin::Wrapper-->
			<div class="d-flex flex-column flex-row-fluid wrapper"
				id="kt_wrapper">

				<!--begin::Content-->
				<div class="content d-flex flex-column flex-column-fluid"
					id="kt_content">
					<!--begin::Subheader-->
					<div class="subheader py-2 py-lg-12 subheader-transparent"
						id="kt_subheader">
						<div
							class="container d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
							<!--begin::Info-->
							<div class="d-flex align-items-center flex-wrap mr-1">
								<!--begin::Heading-->
								<div class="d-flex flex-column">
									<!--begin::Title-->
									<h2 class="text-white font-weight-bold my-2 mr-5">Order
										Booking Conformation</h2>

									<!--end::Title-->

								</div>
								<!--end::Heading-->
							</div>
							<div class="d-flex align-items-center">

								<a href="purchase-master.jsp"
									class="btn btn-light-primary font-weight-boldest py-3 px-6 mr-6"><i
									class="fa fas fa-calculator mr-2"></i>Purchase Billing</a>


							</div>

						</div>
					</div>
					<!--end::Subheader-->
					<!--begin::Entry-->
					<div class="d-flex flex-column-fluid">
						<!--begin::Container-->
						<div class="container">

							<!-- <h2
								class="d-flex align-items-center text-dark font-weight-bold my-1 mr-3">Category
								Master</h2> -->


							<div class="col-xl-12 offset-xl-0">
								<div class="card card-custom gutter-b">
									<div class="card-body">
										<div class="example mb-10">
											<div class="example-preview">
												<div class="card card-custom">
													<form class="form" id="kt_form_1">
														<div class=" ">
															<div class="row">
																<div class="col-xl-6">
																	<div class="form-group">
																		<label>Vendors Name</label><span class="text-danger"></span>
																		<div class="typeahead">
																			<input type="text"
																				class="form-control form-control-solid form-control-lg"
																				name="customerName" id="customer_name" /><span
																				class="msg text-danger" id="type1"> </span>
																		</div>

																	</div>

																</div>
																<div class="col-lg-6">
																	<div class="form-group">
																		<label>Order Date</label> <input type="date"
																			data-date-inline-picker="true"
																			class="form-control form-control-solid form-control-lg"
																			placeholder="DD/MM/YYYY" name="order_dat"
																			id="order_date" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-lg-6">
																	<div class="form-group">
																		<label>Vendors Code</label> <input type="text"
																			class="form-control form-control-solid"
																			id="customer_code" disabled />
																	</div>
																</div>
																<div class="col-lg-6">
																	<div class="form-group">
																		<label>Delivery Date</label> <input type="date"
																			data-date-inline-picker="true"
																			class="form-control form-control-solid"
																			id="delivery_date" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-lg-6">
																	<div class="form-group">
																		<label>Mobile</label> <input type="text"
																			class="form-control form-control-solid"
																			id="mobile_no" /> <span class="msg text-danger"
																			id="type2"> </span>
																	</div>
																</div>
																<div class="col-lg-6">
																	<div class="form-group">
																		<label>Order No :</label> <input type="text"
																			class="form-control form-control-solid" id="order_no" />
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-lg-5">
																	<div class="form-group">
																		<label>Billing Address</label>
																		<textarea rows="2"
																			class="form-control form-control-solid"
																			id="billing_address"></textarea>
																	</div>
																</div>
																<div class="col-lg-1">
																	<div class="form-group ">

																		<button type="button" id="add_user"
																			class="btn font-weight-bold mt-10 btn-icon ">
																			<span class="svg-icon svg-icon-primary svg-icon-2x">
																				<!--begin::Svg Icon | path:/var/www/preview.keenthemes.com/metronic/releases/2021-05-14-112058/theme/html/demo1/dist/../src/media/svg/icons/Communication/Add-user.svg-->
																				<svg xmlns="http://www.w3.org/2000/svg"
																					xmlns:xlink="http://www.w3.org/1999/xlink"
																					width="24px" height="24px" viewBox="0 0 24 24"
																					version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <polygon points="0 0 24 0 24 24 0 24" />
        <path
																						d="M18,8 L16,8 C15.4477153,8 15,7.55228475 15,7 C15,6.44771525 15.4477153,6 16,6 L18,6 L18,4 C18,3.44771525 18.4477153,3 19,3 C19.5522847,3 20,3.44771525 20,4 L20,6 L22,6 C22.5522847,6 23,6.44771525 23,7 C23,7.55228475 22.5522847,8 22,8 L20,8 L20,10 C20,10.5522847 19.5522847,11 19,11 C18.4477153,11 18,10.5522847 18,10 L18,8 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z"
																						fill="#000000" fill-rule="nonzero" opacity="0.3" />
        <path
																						d="M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z"
																						fill="#000000" fill-rule="nonzero" />
    </g>
</svg>
																				<!--end::Svg Icon-->
																			</span>
																		</button>
																	</div>
																</div>
																<div class="col-lg-6">
																	<div class="form-group">
																		<label>Delivery Address</label>
																		<textarea rows="2"
																			class="form-control form-control-solid"
																			id="delivery_address"></textarea>
																	</div>
																</div>
															</div>



															<div class="card-body" style="overflow-x: auto;">

																<table class="table" id="Mtable">
																	<thead>
																		<tr>
																			<!-- <th scope="col">No</th> -->
																			<th scope="col" class="text-center">Product</th>
																			<th scope="col" class="text-center">Unit</th>
																			<th scope="col" class="text-center">Quantity</th>
																			<th scope="col" class="text-center">Unit Rate</th>
																			<th scope="col" class="text-center">Total</th>

																		</tr>
																	</thead>

																	<tbody class="add_product" id="add-product"></tbody>


																</table>
															</div>
															<div class="text-right mb-5 mr-22">
																<button type="button" id="add"
																	class="btn font-weight-bold btn-primary ">ADD
																</button>






															</div>

															<div class="row">
																<div class="col-lg-6">
																	<div class="form-group" id="amount_div">
																		<label>Amount</label> <span class="text-danger"
																			id="type">*</span><input type="number"
																			class="form-control form-control-solid" name="amount"
																			id="amount" placeholder="Enter Amount" />
																	</div>
																</div>
																<div class="col-lg-6">
																	<div class="form-group" id="amount_div">
																		<label>Discount</label> <input type="number"
																			class="form-control form-control-solid"
																			name="discount" id="discount"
																			placeholder="Enter Discount" />
																	</div>
																</div>
															</div>

 <div class = "row">
															<div class="col-lg-6">
																<div class="form-group" id="amount_div">
																	<label>Advance Paid</label> <input type="number"
																		class="form-control form-control-solid"
																		name="advance_paid" id="advance_paid"
																		placeholder="Enter Discount" disabled/>
																</div>
															</div>
															
															<div class="col-lg-6">
																<div class="form-group" id="amount_div">
																	<label>Delivery Charges</label> <input type="number"
																		class="form-control form-control-solid"
																		name="delivery_charges" id="delivery_charges"
																		placeholder="Enter Discount" />
																</div>
															</div>
															
                                                           </div>

															<div class="row">
																<div class="col-lg-6">
																	<div class="form-group">
																		<label>Payment mode</label> <select name="paymentMode"
																			id="paymentMode"
																			class="form-control form-control-solid">
																			<option value="cash">Cash</option>
																			<option value="upi">UPI</option>
																			<option value="nb">Net Banking</option>
																			<option value="cheque">Cheque</option>
																			<option value="credit">Credit</option>
																		</select>
																	</div>
																</div>

																<div class="col-lg-4">
																	<div class="form-group" id="amount_div">
																		<label>Total Amount</label> <span class="text-danger"
																			id="type">*</span><input type="number"
																			class="form-control form-control-solid"
																			name="invoice_total" id="total_amount"
																			placeholder="Enter Total Amount" disabled />
																	</div>
																</div>

																<div class="col-lg-2">
																	<div class="form-group" id="amount_div">
																		<label>If Paid Partial</label> <span
																			class="switch switch-outline switch-icon switch-primary switch-sm ">
																			<label> <input type="checkbox" name="select"
																				id="if_partial" /> <span></span>
																		</label>
																		</span>
																	</div>
																</div>

															</div>


															<div class="row">
																<div class="col-lg-6">
																	<div class="form-group" id="upi_div">
																		<label>UPI Name</label> <select type="text"
																			class="form-control form-control-solid" name="upi_id"
																			id="upi_id" placeholder="Enter UPI Transaction Id">
																			<option value="" disable hidden field>select
																				UPI</option>
																		</select>
																	</div>
																	<div class="form-group" id="nb_div">

																		<label>Received Bank</label> <select
																			class="form-control form-control-solid"
																			id="received_bank">
																			<option value="">Select a bank</option>

																		</select>
																	</div>

																</div>





																<div class="col-lg-6">
																	<div class="form-group" id="amount_div1">
																		<label>Partial Paid Amount</label> <span
																			class="text-danger" id="type">*</span><input
																			type="number" class="form-control form-control-solid"
																			name="invoice_paid_total" id="partially_paid_amount"
																			placeholder="Enter Total Amount" />
																	</div>
																</div>
															</div>



															<div class="row" id="bank_details1">
																<div class="col-lg-6">
																	<div class="form-group" id="amount_div">
																		<label>Branch Name</label> <span class="text-danger"
																			id="type">*</span><input type="text"
																			class="form-control form-control-solid"
																			name="branch_name" id="branch_name"
																			placeholder="Enter Branch Namel" />
																	</div>
																</div>
																<div class="col-lg-6">
																	<div class="form-group" id="amount_div">
																		<label>Account No</label> <span class="text-danger"
																			id="type">*</span><input type="number"
																			class="form-control form-control-solid"
																			name="account_no" id="account_no"
																			placeholder="Enter Account No" />
																	</div>
																</div>
															</div>



															<div class="modal" id="medicineModel" tabindex="-1"
																role="dialog" aria-labelledby="staticBackdrop"
																aria-hidden="true">
																<div
																	class="modal-dialog  modal-xl modal-dialog-scrollable"
																	role="document">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="history_patient_name"></h5>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<i aria-hidden="true" class="ki ki-close"></i>
																			</button>
																		</div>
																		<div class="modal-body">
																			<!-- <h3>THIS IS A modal for MEDISION SELECTION</h3> -->
																			<div
																				class="quick-search quick-search-inline ml-20 w-300px "
																				id="kt_quick_search_inline">
																				<form method="get" class="quick-search-form">
																					<div class="input-group rounded bg-light">
																						<div class="input-group-prepend">
																							<span class="input-group-text"> <span
																								class="svg-icon svg-icon-lg"> <svg
																										xmlns="http://www.w3.org/2000/svg"
																										xmlns:xlink="http://www.w3.org/1999/xlink"
																										width="24px" height="24px" viewBox="0 0 24 24"
																										version="1.1">
															<g stroke="none" stroke-width="1" fill="none"
																											fill-rule="evenodd">
																<rect x="0" y="0" width="24" height="24" />
																<path
																											d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
																											fill="#000000" fill-rule="nonzero"
																											opacity="0.3" />
																<path
																											d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
																											fill="#000000" fill-rule="nonzero" />
															</g>
														</svg>
																							</span>
																							</span>
																						</div>
																						<input type="text" class="form-control h-45px "
																							id="txt_searchall" placeholder="Search..." />
																						<div class="input-group-append">
																							<span class="input-group-text"> <i
																								class="quick-search-close ki ki-close icon-sm text-muted"></i>
																							</span>
																						</div>
																					</div>
																				</form>




																				<div id="kt_quick_search_toggle"
																					data-toggle="dropdown" data-offset="0px,1px"></div>

																				<div
																					class="dropdown-menu dropdown-menu-left dropdown-menu-lg dropdown-menu-anim-up">
																					<div class="quick-search-wrapper scroll"
																						data-scroll="true" data-height="350"
																						data-mobile-height="200"></div>
																				</div>

																			</div>
																			<br />
																			<div
																				class="datatable datatable-bordered datatable-head-custom"
																				id="kt_datatable"></div>


																		</div>
																		<div class="modal-footer">
																			<button type="button"
																				class="btn btn-light-primary font-weight-bold"
																				data-dismiss="modal">Close</button>
																		</div>
																	</div>
																</div>
															</div>

															<div class="card-footer">
																<div class="row">

																	<div class="col-lg-10 offset-1 text-center">

																		<button type="button" id="add_sales_order"
																			class="btn font-weight-bold btn-primary ">Submit</button>
																		<button type="button" id="cancel"
																			class="btn font-weight-bold btn-secondary">Cancel</button>
																	</div>

																</div>
															</div>
														</div>
													</form>
													<!--end::Form-->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>


						</div>
						<!--end::Container-->
					</div>
					<!--end::Entry-->
				</div>
				<!--end::Content-->
				<!--begin::Footer-->
				<jsp:include page="../common/footer.jsp"></jsp:include>
				<!--end::Footer-->
			</div>
			<!--end::Wrapper-->
		</div>
		<!--end::Page-->
	</div>


	<!--begin::Scrolltop-->
	<div id="kt_scrolltop" class="scrolltop">
		<span class="svg-icon"> <!--begin::Svg Icon | path:assets/BakeShack_IM/media/svg/icons/Navigation/Up-2.svg-->
			<svg xmlns="http://www.w3.org/2000/svg"
				xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
				height="24px" viewBox="0 0 24 24" version="1.1">
					<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
						<polygon points="0 0 24 0 24 24 0 24" />
						<rect fill="#000000" opacity="0.3" x="11" y="10" width="2"
					height="10" rx="1" />
						<path
					d="M6.70710678,12.7071068 C6.31658249,13.0976311 5.68341751,13.0976311 5.29289322,12.7071068 C4.90236893,12.3165825 4.90236893,11.6834175 5.29289322,11.2928932 L11.2928932,5.29289322 C11.6714722,4.91431428 12.2810586,4.90106866 12.6757246,5.26284586 L18.6757246,10.7628459 C19.0828436,11.1360383 19.1103465,11.7686056 18.7371541,12.1757246 C18.3639617,12.5828436 17.7313944,12.6103465 17.3242754,12.2371541 L12.0300757,7.38413782 L6.70710678,12.7071068 Z"
					fill="#000000" fill-rule="nonzero" />
					</g>
				</svg> <!--end::Svg Icon-->
		</span>
	</div>

	<script type="text/javascript"
		src="<%=VO_Face.getContainerDeployPath()%>/ResourceBundles/Resources/assets/BakeShack_IM/js/pages/features/custom/spinners.js"></script>
	<%-- <script type="text/javascript"
		src="<%=VO_Face.getContainerDeployPath()%>/ResourceBundles/Resources/assets/BakeShack_IM/js/pages/crud/forms/widgets/form-repeater.js?v=7.2.7"></script>
 --%>
	<%-- <script src="<%=VO_Face.getContainerDeployPath()%>/ResourceBundles/Resources/assets/BakeShack_IM/js/pages/crud/forms/widgets/select2.js?v=7.2.8"></script>
 --%>
	<script type="text/javascript"
		src="<%=VO_Face.getContainerDeployPath()%>/ResourceBundles/Resources/assets/BakeShack_IM/js/main.js"></script>


	<script type="text/javascript">
	
	var basePath='<%=basePath%>';    
	var base='<%=base%>';
	
	const queryString = window.location.search;
	const urlParams = new URLSearchParams(queryString);
	const vendors_name = urlParams.get('vendors_name');
	const vendors_code = urlParams.get('vendors_code');
	const order_code = urlParams.get('order_code');
	
	$('#order_no').val(order_code);
	$('#discount').val("00");
	$('#delivery_charges').val("00");
	
	var ccode=0;
	$.ajax({
			url : base + "/bakeshackAPI/api/getVendorsDetails",
			type : "post",
			dataType : "json",
			async : false,
			data : {"flag":1,},
			success:function(data)
	        {
				const row = data.find(d => d.vendors_name == vendors_name);
				if(row != null){
					ccode = row.customer_code; 
				  
					$('#customer_name').val(row.vendors_name);
				$('#customer_code').val(row.vendors_code);
				$('#mobile_no').val(row.mobile_no);
				$('#billing_address').val(row.address);
				$('#delivery_address').val(row.address);
				}else{
					$('#customer_code').val("");
				}
	        }
		});	
	
	 var j=0;
	 var r=0;
	 var invoice_code;
	$.ajax({
		url : base + "/bakeshackAPI/api/getpurchaseorderDetails",
		type : "post",
		dataType : "json",
		async : false,
		data : {"order_code": order_code},
		success:function(data)
 	{
			
			const row = data.find(d => d.order_code == order_code);
			data.forEach((row)=> {
			
				if(row.order_code == order_code )
						{
			
					/* alert(row.odrer_date); */
					 $('#order_date').val(row.order_date);
					 $('#delivery_date').val(row.delivery_date);
		         	$('#order_no').val(row.order_code);
		         	var product_list = row.product_list;
		         	$('#paymentMode').val(row.payment_mode);
		         	$('#advance_paid').val(row.partial_paid_amount);
		            document.getElementById('amount').value = row.amount;
				    document.getElementById('total_amount').value =row.partial_paid_amount;
				    document.getElementById('partially_paid_amount').value = row.partial_paid_amount;
		         	invoice_code = row.invoice_code;
		         
		         	const parsedData = JSON.parse(product_list);
			         
					 $(parsedData).each(function(index) {
						r++;
							$('#product-' + (index + 1)).val(parsedData[index]['product']);
							$('#unit-' + (index + 1)).val(parsedData[index]['unit']);
							 $('#quantity-' + (index + 1)).val(parsedData[index]['quantity']); 
							$('#unit_rate-' + (index + 1)).val(parsedData[index]['unit_rate']);
							$('#total-' + (index + 1)).val(parsedData[index]['total']);
						
							
							//alert(r);
						});
					 
					 for(var i = 1; i <=r; i++){
						  var html = '';
						  html += '<tr>';
						//  html += '<td style="width: 5%;"><input type="checkbox" class="form-control id d-flex flex-column-fluid h-20px w-20px mt-3" id="id-'+i+'" onClick="checkedBox('+i+')"></td>';
						  html += '<td style="width: 18%;" ><input type="text" class="form-control product" id="product-' + i +'" name="product" data-product-id="'+ i + '" disabled><option value="" disabled selected hidden>Select</option></select></td>';
					      html += '<td style="width: 16%;"><input type="text" class="form-control unit" name="unit" id="unit-' + i + '" disabled><option value="" disabled selected hidden>Select</option></select></td>';
						  html += '<td style="width: 9%;"><input type="text" class="form-control  quantity" name="quantity" id="raw_qty-' + i + '" placeholder="quantity" disabled  oninput="weightConverter(' + i + ',this.value)"/></td>';
						  html += '<td style="width: 9%;"><input type="text" class="form-control  unit_rate" name="unit_rate" id="unit_rate-' + i + '" placeholder="unit_rate"  disabled/></td>';
						  html += '<td style="width: 12%;"><input type="text" class="form-control  total" name="total" id="unit_total-' + i + '" placeholder="total" disabled/></td>';
						//  html += '<td style="width: 5%;"><a type="button" data-repeater-delete="" ;  class="btn_delete btn-sm btn-clean btn-icon"><i class="la la-trash-o"></i></a></td>';

						  $('.add_product').append(html);
				 }
					 const parsedData1 = JSON.parse(product_list);
					 $(parsedData1).each(function(index) {
							$('#product-' + (index + 1)).val(parsedData1[index]['product']);
							$('#unit-' + (index + 1)).val(parsedData1[index]['unit']);
							$('#raw_qty-' + (index + 1)).val(parsedData1[index]['quantity']);
							$('#unit_rate-' + (index + 1)).val(parsedData1[index]['unit_rate']);
							$('#unit_total-' + (index + 1)).val(parsedData1[index]['total']);
							
						});	
				 
					}
			});
 	}
	});	
					function checkedBox(i){
				
						 if ($("#id-"+i).prop('checked')==true){ 
							   $("#raw_qty-"+i).prop('disabled', false);
							 }else{
								 $("#raw_qty-"+i).prop('disabled', true);
									$("#raw_qty-"+i).val('');
									
									
							 }
					    
						}; 	
						$('#if_partial').change(function(){
							
							
							 if ($("#if_partial").prop('checked')==true){ 
								 $('#amount_div1').show();
								
								 }else{
									
									 $('#amount_div1').hide();
										
										
								 }
						    
							}); 
					
						
						
						var i = r;
						$('#add ').click(function () {
							
							i++;
							
							  
							  var html = ''; 
							  html += '<tr>';
							  html += '<td style="width: 3%;">' + i + '</td>';
							  html += '<td style="width: 12%;" ><input type="text" class="form-control product" id="product-' + i +'" name="product" data-product-id="'+ i + '" placeholder="Product"></input></td>';
							  html += '<td style="width: 12%;"><input type="text" class="form-control unit" name="unit" id="unit-' + i + '" placeholder="Category"></input></td>';
							  html += '<td style="width: 12%;"><input type="text" class="form-control quantity" name="raw_qty" id="raw_qty-' + i + '" placeholder="Raw Qty"  placeholder="Raw Qty" oninput="weightConverter(' + i + ',this.value)"></input></td>';
							  html += '<td style="width: 12%;"><input type="text" class="form-control unit_rate" name="unit_rate" id="unit_rate-' + i + '" placeholder="Unit Rate"></input></td>';
							  html += '<td style="width: 12%;"><input type="text" class="form-control total" name="unit_total" id="unit_total-' + i + '" placeholder="Unit_total"></input></td>';
							  html += '<td style="width: 5%;"><a type="button" data-repeater-delete="" ;  class="btn_delete btn-sm btn-clean btn-icon"><i class="la la-trash-o"></i></a></td>';

							 $('.add_product').append(html); 
							  
								 $('.add_product #product-'+ i).dblclick(function () {
									   mname=(this.id);
									   
									  var str = mname;
							           matches = str.match(/(\d+)/);
							           
									  $("#medicineModel").modal();
									
									});
							
								 $('#raw_qty- '+ i).change(function () {
									 
								
									 var raw_qty = $(this).val();
									
								
									 
								 })
								 
								 
								 
								 
								 $.ajax({
										url : base + "/bakeshackAPI/api/getUnitDetails",
										type : "post",
										dataType : "json",
										async : false,
										data : {"flag":1},
										success:function(data)
									    {
											data.forEach((element)=> {
												
											        $('#unit').append($(document.createElement('option')).prop({
										                value: element.unit_id,
										                text: element.unit_desc
										            }))
												
											});   
									    }
									});	
							//	 table_len++;
								
								 $('.add_product').on('click','.btn_delete',function(){
								$(this).closest('tr').remove();	
								});
								});
								
								
						var calculate_total =0;
						
						function weightConverter(i,valNum) {
							 var calculate_unit_price = $("#unit_rate-"+i).val();
							 $("#unit_total-"+i).val(calculate_unit_price*valNum); 
							 var calculate_total =0;
							 for(var j = 1 ;j<100 ;j++)
							 {
								 
								 
								 if($("#unit_total-"+j).val() != null){
								 var calculate_unit_total =  $("#unit_total-"+j).val();	
								 var advance_paid = $('#advance_paid').val();
								 calculate_total += parseInt(calculate_unit_total);
								 document.getElementById('amount').value = calculate_total;
								 document.getElementById('total_amount').value = calculate_total ;
								 document.getElementById('partially_paid_amount').value = parseInt(calculate_total)- parseInt(advance_paid);
								 }
							 }
							 }
													
						$("#discount").change(function(){
							var amount1 = $('#amount').val();
							var discount = $('#discount').val();
							var invoice_total = amount1-discount;
							$('#total_amount').val(invoice_total);
							$('#partially_paid_amount').val(invoice_total);
							
							});
						
						$("#delivery_charges").change(function(){
							var amount1 = $('#amount').val();
							var discount = $('#discount').val();
							var delivery_charges = $('#delivery_charges').val();
							var advance   = $('#advance_paid').val();
							var invoice_total = parseInt(amount1)-parseInt(discount)+ parseInt(delivery_charges);
							$('#total_amount').val(invoice_total);
							$('#partially_paid_amount').val(parseInt(invoice_total) - parseInt(advance));
							
							});
						 	
						 $('#upi_div').hide();
						 $('#nb_div').hide();
						 $('#cheque_div').hide();
						 $('#amount_div1').hide();
						 $('#bank_details1').hide();
						 $('#bank_details2').hide();
						 
						$('#paymentMode').change(function(){
							var payment_mode = $(this).val();
									
							if(payment_mode == 'upi'){
								$('#upi_div').show();
								$('#nb_div').hide();
								$('#cheque_div').hide();
							}else if(payment_mode == 'nb'){
								$('#upi_div').hide();
								$('#nb_div').show();
							    $('#cheque_div').hide();
							}else if(payment_mode == 'cheque'){
								$('#upi_div').hide();
								$('#nb_div').show();
								$('#cheque_div').hide();
							}else if(payment_mode == 'credit'){
								$('#upi_div').hide();
								$('#nb_div').hide();
								$('#cheque_div').hide();
								$('.checkbox').prop('disabled', true);
								$('#partially_paid_amount').val("00");
								
							}else{
								$('#upi_div').hide();
								$('#nb_div').hide();
								$('#cheque_div').hide();
							}
							
						});	
						
						
		var balance_amount = 0;
$('#add_sales_order').click(function() {
											
									var vendors_code = $('#customer_code').val();
									var order_date = $('#order_date').val();
									var delivery_date = $('#delivery_date').val();
									var order_code = $('#order_no').val();
									var delivery_address = $('#delivery_address').val();
									var amount = $('#amount').val();
									var discount= $('#discount').val();
									var payment_mode = $('#paymentMode').val();
									var upi_name = $('#upi_id').val();
									var total_amount = $('#total_amount').val();
									var partial_paid_amount = $('#partially_paid_amount').val();
									  balance_amount = parseInt(total_amount) - parseInt(partial_paid_amount);
									var received_bank = $('#received_bank').val();
									var branch_name = $('#branch_name').val();
									var account_no = $('#account_no').val();
									var flag 		  = 1; // Addition
									var delivery_charges = $('#delivery_charges').val();
									var advance_paid = $('#advance_paid').val();
									
								
									
									
									 var productList = [];
									 $("table tbody tr").each(function(index) {
									 	if($(this).find('.product').val() != null){
									 		
									       
									         
									 		 productList.push({ 
									 			  "product": $(this).find('.product').val(),
											         "unit": $(this).find('.unit').val(),
											         "quantity": $(this).find('.quantity').val(),
											         "unit_rate": $(this).find('.unit_rate').val(),
											         "total": $(this).find('.total').val()
									     	}); 
									 	}
									 });
									
								var jsonString = JSON.stringify(productList);	
								/* alert(amount);
								alert(discount);
								alert(delivery_charges);
								alert(advance_paid);
								alert(partial_paid_amount);
								alert(jsonString);
								 */
								
								 $.ajax({
										url : base + "/bakeshackAPI/api/insertUpdatePurchaseOrderMasterDetails",
										type : "post",
										dataType : "json",
										async : false,
										data : {
											"vendors_code" : vendors_code,
											"order_date" : order_date,
											"delivery_date" : delivery_date,
											"order_code" : order_code,
											"delivery_address" : delivery_address,
											"amount" : amount,
											"discount" : 0,
											"payment_mode" : payment_mode,
											"upi_name" : upi_name,
											"total_amount" : advance_paid,
											"partial_paid_amount" :partial_paid_amount,
											"balance_amount" : parseInt(advance_paid) - parseInt(partial_paid_amount),
											"received_bank" : received_bank,
											"account_no" : account_no,
											"product_list" : jsonString,
											"status" : 0,
											"advance_paid" :  parseInt(advance_paid) - parseInt(partial_paid_amount),
											"flag" : 2
										},
										error : function(xhr) {
											var msg = "(insertUpdateSalesAndOrderDetails)Sorry but there was an error : "
													+ xhr.status
													+ " "
													+ xhr.statusText;
											alert(msg);
										},
										success : function(response) {
											if (response != null) {

												if (response >= 1) {

													var msg = "Purchase Order Data Updated  Successfully.";
													alert(msg);

												} 
											}
										}

									}); 
								
									
									  var transaction_id;
								
									 $.ajax({
											url : base + "/bakeshackAPI/api/getLatestPurchaseOrderMasterInvoice",
											type : "post",
											dataType : "json",
											async : false,
											data : {"transaction_code": transaction_id},
											success:function(data)
									    	{
												//data.forEach((element)=> {
												const row = data.find(d => d.transaction_code == transaction_id);
												data.forEach((row)=> {
												
												 transaction_id = row.transaction_code;
												   
												});
									    	}
										});	
									
									
								 
									  
									 var field = "purchase order Cancel";
									
									 $.ajax({
										    url : base + "/bakeshackAPI/api/insertUpdateInvoice",
											type : "post",
											dataType : "json",
											async : false,
											data : {
											    "vendors_code"        : vendors_code,
												"order_code" 	      : order_code,
												"invoice_date"        : delivery_date  ,
												"paid_date"           : delivery_date,
												"invoice_amonut"      : amount,
												"to_be_paid"          : total_amount,
												"payment_mode"        : payment_mode,
												"paid_amount"         : partial_paid_amount,
												"current_paid_amount" : partial_paid_amount,
												"balance_amt"         : parseInt(amount)-parseInt(partial_paid_amount),
												"field"               : "purchase order Cancel",
												"transaction_code"    : transaction_id,
												"flag"                : flag
												
												
												
												
											},
											error : function(xhr) {
												var msg = "Data insertion/updation failed. Error : "
														+ xhr.status
														+ " "
														+ xhr.statusText;
												alert(msg);
											},
											success : function(response) {
												if (response != null) {

													if (response >= 1) {

														var msg = "Invoice Data inserted/Updated Successfully.";
														alert(msg);
														
														

													}
												}
											}

										}); 
									 
									
									  
									 if (confirm("Do You Wish To Print Invoice!")) {
											
										  //var url = "receipt.jsp";
										  
									 		var url = "purchase_order_cancelation_receit.jsp" + '?vendors_code=' + vendors_code + '&order_code=' + order_code ;

										  window.location.assign(url);
											 } else {
												  window.location.reload();
											  }
								
						})
						var KTBootstrapDaterangepicker = function() {
	// Private functions
	var demo2 = function() {
var medicineId=null;
var datatable = $('#kt_datatable').KTDatatable({
  // datasource definition
  data: {
      type: 'remote',
      source: {
          read: {
              url: base + "/bakeshackAPI/api/getPurchaseProductDetails",
              // sample custom headers
              // headers: {'x-my-custom-header': 'some value', 'x-test-header': 'the value'},
              map: function(raw) {
                  // sample data mapping
                  var dataSet = raw;
                  if (typeof raw.data !== 'undefined') {
                      dataSet = raw.data;
                  }
                  return dataSet;
              },
          },
      },
      pageSize: 10,
      serverPaging: true,
      serverFiltering: true,
      serverSorting: true,
  },
 layout: {
      scroll: true,
      footer: false,
  },
 sortable: true,
pagination: false,
  search: {
      input: $('#kt_datatable_search_query'),
      key: 'generalSearch'
  },
columns: [{
      field: 'product_id',
      title: '#',
      sortable: 'asc',
      width: 30,
      type: 'number',
      selector: false,
      textAlign: 'center',
  }, {
      field: 'product_name',
      title: 'Product Name',
  },{
      field: 'subcategory',
      title: 'Product subCategory',
      
  }, {
      field: 'unit',
      title: 'Unit',
      
  }, {
      field: 'selling_price',
      title: 'Price ',
      
  }, {
      field: 'Actions',
      title: ' Actions',
      sortable: false,
      width: 125,
      overflow: 'visible',
      autoHide: false,
      template: function(row) {
          return '\
              <a href="javascript:update('+row.product_id+');" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details" id="edit">\
              <span class="svg-icon svg-icon-md svg-icon-2x">\
             <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">\
              <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\
                  <polygon points="0 0 24 0 24 24 0 24"/>\
                  <rect fill="#000000" opacity="0.3" x="11" y="7" width="2" height="14" rx="1"/>\
                  <path d="M6.70710678,20.7071068 C6.31658249,21.0976311 5.68341751,21.0976311 5.29289322,20.7071068 C4.90236893,20.3165825 4.90236893,19.6834175 5.29289322,19.2928932 L11.2928932,13.2928932 C11.6714722,12.9143143 12.2810586,12.9010687 12.6757246,13.2628459 L18.6757246,18.7628459 C19.0828436,19.1360383 19.1103465,19.7686056 18.7371541,20.1757246 C18.3639617,20.5828436 17.7313944,20.6103465 17.3242754,20.2371541 L12.0300757,15.3841378 L6.70710678,20.7071068 Z" fill="#000000" fill-rule="nonzero" transform="translate(12.000003, 16.999999) scale(1, -1) translate(-12.000003, -16.999999) "/>\
                  <rect fill="#000000" opacity="0.3" x="3" y="3" width="18" height="2" rx="1"/>\
              </g>\
            </svg>\
          </span>\
              </a>\
             ';
      },
  }],

});
};
return {
// public functions
init : function() {
	demo2();
}
};
}();

jQuery(document).ready(function() {
KTBootstrapDaterangepicker.init();
});	


function update(id){

$.ajax({
type:"POST",
dataType: "json",
data:{"product_id": id},
async : false,
url: base + "/bakeshackAPI/api/getProductDetails",
success:function(data)
{
    const row = data.find(d => d.product_id ==id);
    $('#product-'+ matches).val(row.product_name);       
	$("#unit-"+ matches).val(row.unit);
   $("#unit_rate-"+ matches).val(row.selling_price);
	
}
});
$("#medicineModel").modal('hide');
} 




 														
	
</script>
</body>
</html>

<%
} catch (Exception e) {
Logger.log(dbConnVar, "" + e);
}
%>