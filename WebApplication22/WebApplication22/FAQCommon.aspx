<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FAQCommon.aspx.cs" Inherits="WebApplication22.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body{
    background:#f5f5f6;
    margin-top:0px;
}
/*Faq*/

.faq-search-wrap {
    padding: 50px 0 60px 0;
}

.faq-search-wrap .form-group .form-control,
.faq-search-wrap .form-group .dd-handle {
    border-top-right-radius: 0rem;
    border-bottom-right-radius: 0rem;
}

.faq-search-wrap .form-group .input-group-append {
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    z-index: 10;
    pointer-events: none;
}

.faq-search-wrap .form-group .input-group-append .input-group-text {
    background: transparent;
    border: none;
}

.faq-search-wrap .form-group .input-group-append .input-group-text .feather-icon > svg {
    height:18px;
    width: 18px;
}
.bg-teal-light-3 {
    background-color: #7fcdc1 !important;
}

.hk-row {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -10px;
    margin-left: -10px;
}

@media (min-width: 576px){
    .mt-sm-60 {
        margin-top: 60px !important;
    }
}
.mt-30 {
    margin-top: 30px !important;
}

.list-group-item.active {
    background-color: #050d47;
    border-color: #00acf0;
}
.accordion .card .card-header.activestate {
    border-width: 1px;
}
.accordion .card .card-header {
    padding: 0;
    border-width: 0;
}
.card.card-lg .card-header, .card.card-lg .card-footer {
    padding: .9rem 1.5rem;
}
.accordion>.card .card-header {
    margin-bottom: -1px;
}
.card .card-header {
    background: transparent;
    border: none;
}
.accordion.accordion-type-2 .card .card-header > a.collapsed {
    color: #324148;
}
.accordion .card:first-of-type .card-header:first-child > a {
    border-top-left-radius: calc(.25rem - 1px);
    border-top-right-radius: calc(.25rem - 1px);
}
.accordion.accordion-type-2 .card .card-header > a {
    background: transparent;
    color: #050d47;
    padding-left: 50px;
}
.accordion .card .card-header > a.collapsed {
    color: #324148;
    background: transparent;
}
.accordion .card .card-header > a {
    background: #050d47;
    color: #fff;
    font-weight: 500;
    padding: .75rem 1.25rem;
    display: block;
    width: 100%;
    text-align: left;
    position: relative;
    -webkit-transition: all 0.2s ease-in-out;
    -moz-transition: all 0.2s ease-in-out;
    transition: all 0.2s ease-in-out;
}
a {
    text-decoration: none;
    color: #00acf0;
    -webkit-transition: color 0.2s ease;
    -moz-transition: color 0.2s ease;
    transition: color 0.2s ease;
}


.badge.badge-pill {
    border-radius: 50px;
}
.badge.badge-light {
    background: #eaecec;
    color: #324148;
}
.badge {
    font-weight: 500;
    border-radius: 4px;
    padding: 5px 7px;
    font-size: 72%;
    letter-spacing: 0.3px;
    vertical-align: middle;
    display: inline-block;
    text-align: center;
    text-transform: capitalize;
}
.ml-15 {
    margin-left:15px !important;
}

.accordion.accordion-type-2 .card .card-header > a.collapsed:after {
    content: "\f158";
}

.accordion.accordion-type-2 .card .card-header > a::after {
    display: inline-block;
    font: normal normal normal 14px/1 'Ionicons';
    speak: none;
    text-transform: none;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-rendering: auto;
    position: absolute;
    content: "\f176";
    font-size: 21px;
    top: 15px;
    left: 20px;
}

.mr-15 {
    margin-right: 15px !important;
}






    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.2.0/css/ionicons.min.css" integrity="sha256-F3Xeb7IIFr1QsWD113kV2JXaEbjhsfpgrKkwZFGIA4E=" crossorigin="anonymous" />

<div class="container-fluid">
    <!-- Row -->
    <div class="row">
        <div class="col-xl-12 pa-0">
            <div class="faq-search-wrap bg-black">
                <div class="container">
                    <h1 class="display-5 text-black mb-20">Frequently Asked Questions</h1>
                    <div class="form-group w-100 mb-0">
                        
                    </div>
                </div>
            </div>
            <div class="container mt-sm-60 mt-30">
                <div class="hk-row">
                    <div class="col-xl-4">
                        <div class="card">
                            <h6 class="card-header">
                                            Category
                                        </h6>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex align-items-center active">
                                    <i class="ion ion-md-sunny mr-15"></i>FAQs<span class="badge badge-light badge-pill ml-15"></span>
                                </li>
                               
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-8">
                        <div class="card card-lg">
                            <h3 class="card-header border-bottom-0">
                                            FAQs
                                        </h3>
                            <div class="accordion accordion-type-2 accordion-flush" id="accordion_2">
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between activestate">
                                        <a role="button" data-toggle="collapse" href="#collapse_1i" aria-expanded="true">Is medicine prescription mandatory to make an order?</a>
                                    </div>
                                    <div id="collapse_1i" class="collapse show" data-parent="#accordion_2" role="tabpanel">
                                        <div class="card-body pa-15">No, You can order without a prescription.</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse_2i" aria-expanded="false">How do I get my insurance card discount on the website?</a>
                                    </div>
                                    <div id="collapse_2i" class="collapse" data-parent="#accordion_2">
                                        <div class="card-body pa-15">That money can be reimbursed using the bill generated at the insurance portal.</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse_3i" aria-expanded="false">Where do I get my receipt?</a>
                                    </div>
                                    <div id="collapse_3i" class="collapse" data-parent="#accordion_2">
                                        <div class="card-body pa-15">Receipts will be delivered along with the order.</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse_4i" aria-expanded="false">Is online delivery safe?</a>
                                    </div>
                                    <div id="collapse_4i" class="collapse" data-parent="#accordion_2">
                                        <div class="card-body pa-15">Absolutely! All the medicines/products sold through our platform are inspected thoroughly for their authenticity and quality. Also, while delivering the medicines, our team follows strict safety protocols to ensure only the top-notch products get delivered to you.</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse_5i" aria-expanded="false">Does PharmMed provide same day delivery?</a>
                                    </div>
                                    <div id="collapse_5i" class="collapse" data-parent="#accordion_2">
                                        <div class="card-body pa-15">Yes, PharmMed provides same day delivery of online medicine orders.</div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse_6i" aria-expanded="false">How can I pay for my order?</a>
                                    </div>
                                    <div id="collapse_6i" class="collapse" data-parent="#accordion_2">
                                        <div class="card-body pa-15">You can pay for your medicine orders by any one of the given ways – Debit/Credit Card, Netbanking, UPI, and Cash on Delivery (COD).</div>
                                    </div>
                                </div>
                                  <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse_7i" aria-expanded="false">Who should I contact with payment related issues?</a>
                                    </div>
                                    <div id="collapse_7i" class="collapse" data-parent="#accordion_2">
                                        <div class="card-body pa-15">You can email us at onlinehelpdesk@pharmmed.org for any issues you face with the payment.</div>
                                    </div>
                                </div>
                                 <div class="card">
                                    <div class="card-header d-flex justify-content-between">
                                        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse_8i" aria-expanded="false">How do I track my order?</a>
                                    </div>
                                    <div id="collapse_8i" class="collapse" data-parent="#accordion_2">
                                        <div class="card-body pa-15">A.	The shipment can be tracked on the tracking website of the delivery company with the help of your order ID.</div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Row -->
</div>
</asp:Content>
