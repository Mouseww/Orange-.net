<%@ Page Title="" Language="C#" MasterPageFile="~/person/MasterPage1.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="person_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
		<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../css/personal.css" rel="stylesheet" type="text/css">
		<link href="../css/orstyle.css" rel="stylesheet" type="text/css">

		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>

				<div class="main-wrap">

					<div class="user-order">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
						</div>
						<hr/>

						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

							

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>
                               
									<div class="order-main">
                                             <%foreach (var or in order)
                                                 { %>
										<div class="order-list">
											
											<!--交易成功-->
											<div class="order-status5">
												<div class="order-title">
													<div class="dd-num">订单编号：<a href="javascript:;"><%=or.ID %></a></div>
													<span>成交时间：<%=or.time %></span>
													<!--    <em>店铺：小桔灯</em>-->
												</div>
												<div class="order-content">
													<div class="order-left">
														<ul class="item-list">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src="<%=or.img %>" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p><%=or.name %></p>
																			<p class="info-little"><%=or.op1_type%>：<%=or.op1 %>
																				<br/><%=or.op2_type%>：<%=or.op2 %></p>
																		</a>
																	</div>
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	<%=or.price%>
																</div>
															</li>
															<li class="td td-number">
																<div class="item-number">
																	<span>×</span><%=or.number%>
																</div>
															</li>
															<li class="td td-operation">
																<div class="item-operation">
																	
																</div>
															</li>
														</ul>

														
													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：<%=or.allprice %>
																
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus"><%=or.state %></p>
																	
																</div>
															</li>
															<li class="td td-change">
																<div class="am-btn am-btn-danger anniu" com_id="<%=or.ID %>">
																	删除订单</div>
															</li>
														</div>
													</div>
												</div>
											</div>
											
											
											
											

										</div>
                                        <%} %>
                                        <script>
                                            $('.am-btn').click(function () {
                                                $.post('del_order.ashx', {'id':$(this).attr('com_id')}, function (data) {
                                                    alert(data);
                                                    location.href = "order.aspx";
                                                })
                                            })
                                        </script>
									</div>

								</div>
						
							</div>

						</div>
					</div>
				</div>

</asp:Content>

