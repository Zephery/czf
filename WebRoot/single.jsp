<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri='/struts-tags' prefix='s' %>
<jsp:include page="head.jsp"/>
<jsp:include page="left.jsp"/>
<div class="col-md-9 single_right">
    <div class="single_top">
        <div class="single_grid">
            <div class="grid images_3_of_2">
                <ul id="etalage">
                    <li>
                        <a href="optionallink.html">
                            <img class="etalage_thumb_image" src="images/s2.jpg" class="img-responsive"/>
                            <img class="etalage_source_image" src="images/s2.jpg" class="img-responsive" title=""/>
                        </a>
                    </li>
                    <li>
                        <img class="etalage_thumb_image" src="images/s2.jpg" class="img-responsive"/>
                        <img class="etalage_source_image" src="images/s2.jpg" class="img-responsive" title=""/>
                    </li>
                    <li>
                        <img class="etalage_thumb_image" src="images/s3.jpg" class="img-responsive"/>
                        <img class="etalage_source_image" src="images/s3.jpg" class="img-responsive"/>
                    </li>
                    <li>
                        <img class="etalage_thumb_image" src="images/s4.jpg" class="img-responsive"/>
                        <img class="etalage_source_image" src="images/s4.jpg" class="img-responsive"/>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="desc1 span_3_of_2">
                <!--///////提交的在这里//////////////////-->
                <s:iterator value="#request['products']" id="product">
                    <form action="addToCart" method="post" name="addtocartform" enctype="multipart/form-data">
                        <input type="hidden" value="<s:property value="#product.productid"/>" name="productid">
                        <input type="text" name="name"
                               style="border:0px;background:rgba(0, 0, 0, 0);height: 70px;width: 150"
                               value="<s:property value="#product.name" />" readonly/>
                        <p class="availability">Availability: <span class="color">In stock</span></p>
                        <div class="price_single">
                            <span class="reducedfrom">$140.00</span>
                            <span class="actual">$120.00</span><a href="#">click for offer</a>
                        </div>
                        <h2 class="quick">Quick Overview:</h2>
                        <p class="quick_desc">Nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non
                            habent
                            claritatem insitam; es</p>
                        <div class="wish-list">
                            <ul>
                                <li class="wish"><a href="#">Add to Wishlist</a></li>
                                <li class="compare"><a href="#">Add to Compare</a></li>
                            </ul>
                        </div>
                        <ul class="size">
                            <h3>Length</h3>
                            <li><a href="#">32</a></li>
                            <li><a href="#">34</a></li>
                        </ul>
                        <div class="quantity_box">
                            <ul class="product-qty">
                                <span>Quantity:</span>
                                <select name="quantity">      <!---quantity----->
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                </select>
                            </ul>
                            <ul class="single_social">
                                <li><a href="#"><i class="fb1"> </i> </a></li>
                                <li><a href="#"><i class="tw1"> </i> </a></li>
                                <li><a href="#"><i class="g1"> </i> </a></li>
                                <li><a href="#"><i class="linked"> </i> </a></li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <a href="javascript:document.addtocartform.submit();" title="Online Reservation"
                           class="btn bt1 btn-primary btn-normal btn-inline "
                           target="_self">Add to cart</a>
                    </form>
                </s:iterator>
                <!--///////// end of form/////////////////-------------->
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="sap_tabs">
        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
            <ul class="resp-tabs-list">
                <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Product Description</span></li>
                <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Additional Information</span></li>
                <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Reviews</span></li>
                <div class="clear"></div>
            </ul>
            <div class="resp-tabs-container">
                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                    <div class="facts">
                        <ul class="tab_list">
                            <li><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                                nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad
                                minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
                                ex ea commodo consequat</a></li>
                            <li><a href="#">augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta
                                nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim
                                assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum
                                claritatem. Investigatione</a></li>
                            <li><a href="#">claritatem insitam; est usus legentis in iis qui facit eorum claritatem.
                                Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas
                                est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est
                                notare quam littera gothica</a></li>
                            <li><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram,
                                anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima.
                                Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                    <div class="facts">
                        <ul class="tab_list">
                            <li><a href="#">augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta
                                nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim
                                assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum
                                claritatem. Investigatione</a></li>
                            <li><a href="#">claritatem insitam; est usus legentis in iis qui facit eorum claritatem.
                                Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas
                                est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est
                                notare quam littera gothica</a></li>
                            <li><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram,
                                anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima.
                                Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                    <ul class="tab_list">
                        <li><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
                            euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim
                            veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea
                            commodo consequat</a></li>
                        <li><a href="#">augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis
                            eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
                            Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem.
                            Investigatione</a></li>
                        <li><a href="#">claritatem insitam; est usus legentis in iis qui facit eorum claritatem.
                            Investigationes demonstraverunt lectores leg</a></li>
                        <li><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram,
                            anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem
                            modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <h3 class="single_head">Related Products</h3>
    <div class="related_products">
        <div class="col-md-4 top_grid1-box1 top_grid2-box2"><a href="single.html">
            <div class="grid_1">
                <div class="b-link-stroke b-animate-go  thickbox">
                    <img src="images/p12.jpg" class="img-responsive" alt=""/></div>
                <div class="grid_2">
                    <p>There are many variations of passages</p>
                    <ul class="grid_2-bottom">
                        <li class="grid_2-left">
                            <p>$99
                                <small>.33</small>
                            </p>
                        </li>
                        <li class="grid_2-right"><a href="single.html" title="Get It"
                                                    class="btn btn-primary btn-normal btn-inline " target="_self">Get
                            It</a></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
            </div>
        </a></div>
        <div class="col-md-4 top_grid1-box1"><a href="single.html">
            <div class="grid_1">
                <div class="b-link-stroke b-animate-go  thickbox">
                    <img src="images/p13.jpg" class="img-responsive" alt=""/></div>
                <div class="grid_2">
                    <p>There are many variations of passages</p>
                    <ul class="grid_2-bottom">
                        <li class="grid_2-left">
                            <p>$99
                                <small>.33</small>
                            </p>
                        </li>
                        <li class="grid_2-right"><a href="single.html" title="Get It"
                                                    class="btn btn-primary btn-normal btn-inline " target="_self">Get
                            It</a></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
            </div>
        </a></div>
        <div class="col-md-4 top_grid1-box1"><a href="single.html">
            <div class="grid_1">
                <div class="b-link-stroke b-animate-go  thickbox">
                    <img src="images/p14.jpg" class="img-responsive" alt=""/></div>
                <div class="grid_2">
                    <p>There are many variations of passages</p>
                    <ul class="grid_2-bottom">
                        <li class="grid_2-left">
                            <p>$99
                                <small>.33</small>
                            </p>
                        </li>
                        <li class="grid_2-right"><a href="single.html" title="Get It"
                                                    class="btn btn-primary btn-normal btn-inline " target="_self">Get
                            It</a></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
            </div>
        </a></div>
        <div class="clearfix"></div>
    </div>
    <div class="top_grid2">
        <div class="col-md-4 top_grid1-box1 top_grid2-box2"><a href="single.html">
            <div class="grid_1">
                <div class="b-link-stroke b-animate-go  thickbox">
                    <img src="images/p9.jpg" class="img-responsive" alt=""/></div>
                <div class="grid_2">
                    <p>There are many variations of passages</p>
                    <ul class="grid_2-bottom">
                        <li class="grid_2-left">
                            <p>$99
                                <small>.33</small>
                            </p>
                        </li>
                        <li class="grid_2-right"><a href="single.html" title="Get It"
                                                    class="btn btn-primary btn-normal btn-inline " target="_self">Get
                            It</a></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
            </div>
        </a></div>
        <div class="col-md-4 top_grid1-box1"><a href="single.html">
            <div class="grid_1">
                <div class="b-link-stroke b-animate-go  thickbox">
                    <img src="images/p10.jpg" class="img-responsive" alt=""/></div>
                <div class="grid_2">
                    <p>There are many variations of passages</p>
                    <ul class="grid_2-bottom">
                        <li class="grid_2-left">
                            <p>$99
                                <small>.33</small>
                            </p>
                        </li>
                        <li class="grid_2-right"><a href="single.html" title="Get It"
                                                    class="btn btn-primary btn-normal btn-inline " target="_self">Get
                            It</a></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
            </div>
        </a></div>
        <div class="col-md-4 top_grid1-box1"><a href="single.html">
            <div class="grid_1">
                <div class="b-link-stroke b-animate-go  thickbox">
                    <img src="images/p11.jpg" class="img-responsive" alt=""/></div>
                <div class="grid_2">
                    <p>There are many variations of passages</p>
                    <ul class="grid_2-bottom">
                        <li class="grid_2-left">
                            <p>$99
                                <small>.33</small>
                            </p>
                        </li>
                        <li class="grid_2-right"><a href="single.html" title="Get It"
                                                    class="btn btn-primary btn-normal btn-inline " target="_self">Get
                            It</a></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
            </div>
        </a></div>
        <div class="clearfix"></div>
    </div>
</div>
</div>
</div>
</div>
<jsp:include page="foot.jsp"/>