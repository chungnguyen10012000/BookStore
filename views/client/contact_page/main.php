 <link rel="stylesheet" href="../../../assets/css/contact_page/main.css">
 <main class="contact_area margin-top">
     <!-- Content -->
     <section class="contact_content">
         <div class="container">
             <div class="row">
                 <div class="col-md-8 col-12 my-md-5 my-3">
                     <section class="contact_form_wrapper">
                         <h3>Fill in information</h3>
                         <form id="contactForm" method="POST">
                             <div class="form-row">
                                 <div class="form-group col-md-6" id="formFirstName">
                                     <label for="inputFirstName">First Name*:</label>
                                     <input type="text" class="form-control" id="inputFirstname" placeholder="Chung"
                                         value="">
                                     <!-- <small><i class="fas fa-exclamation-triangle"></i> sdfsdajjdlsf</small> -->
                                 </div>
                                 <div class="form-group col-md-6" id="formLastName">
                                     <label for="inputLastName">Last Name*:</label>
                                     <input type="text" class="form-control" id="inputLastName" placeholder="Nguyen">
                                 </div>
                             </div>
                             <div class="form-row">
                                 <div class="form-group col-md-6" id="formEmail">
                                     <label for="inputEmail">Email*:</label>
                                     <input type="email" class="form-control" id="inputEmail"
                                         placeholder="xxxx@gmail.com">
                                 </div>
                                 <div class="form-group col-md-6" id="formWebsite">
                                     <label for="inputWebsite">Website:</label>
                                     <input type="text" class="form-control" id="inputWebsite"
                                         placeholder="https://www.facebook.com/user">
                                 </div>
                             </div>
                             <div class="form-group" id="formSubject">
                                 <label for="inputSubject">Subject:</label>
                                 <input type="text" class="form-control" id="inputSubject" placeholder="Improvement">
                             </div>
                             <div class="form-group" id="formMessage">
                                 <label for="inputMessage">Type your message here*:</label>
                                 <textarea id="inputMessage" class="form-control" rows="8"></textarea>
                             </div>
                             <div class="d-flex justify-content-center">
                                 <button type="button" class="btn btn-primary mt-2" name="btn_send_email"
                                     id="btn_send_email">
                                     Submit
                                 </button>
                                 <div class="spinner-border mt-2 ml-2" id="spinnerEmail" role="status">

                                 </div>
                             </div>

                         </form>
                     </section>
                 </div>
                 <div class="col-md-4 col-12 my-md-5 my-3">
                     <section class="office_info">
                         <h3>GET OFFICE INFO:</h3>
                         <p class="my-md-4 my-3">Clarity is also a dynamic process that results in a change in the usage of readers. It is surprising to note how gothic literature, which we now think a little clear, preferred the literary forms of culture during the fourteenth and fifteenth centuries.</p>
                         <ul id="infoList" class="list-group">
                             <li class="list-group-item d-flex flex-row bd-highlight">
                                 <div class="info_icon">
                                     <i class="fa fa-address-book" aria-hidden="true">
                                     </i>
                                 </div>
                                 <div class="info_content ml-3">
                                     <h5>Address: </h5>
                                     <p>KTX Khu A ĐHQG, Thành phố Hồ Chí Minh
                                     </p>
                                 </div>

                             <li class="list-group-item d-flex flex-row bd-highlight">
                                 <div class="info_icon">
                                     <i class="fa fa-phone" aria-hidden="true">
                                     </i>
                                 </div>
                                 <div class="info_content ml-3">
                                     <h5>Phone Number: </h5>
                                     <p>0971247256</p>
                                 </div>
                             </li>
                             <li class="list-group-item d-flex flex-row bd-highlight">
                                 <div class="info_icon">
                                     <i class="fa fa-envelope-o" aria-hidden="true">
                                     </i>
                                 </div>
                                 <div class="info_content ml-3">
                                     <h5>Email: </h5>
                                     <p>bookstore@gmail.com</p>
                                 </div>
                             </li>
                             <li class="list-group-item d-flex flex-row bd-highlight">
                                 <div class="info_icon">
                                     <i class="fa fa-cloud" aria-hidden="true">
                                     </i>
                                 </div>
                                 <div class="info_content ml-3">
                                     <h5>Website: </h5>
                                     <a id="linkWeb" href="https://mybk.hcmut.edu.vn/">
                                         https://bookstore.com.vn/
                                     </a>

                                 </div>
                             </li>


                         </ul>
                     </section>

                 </div>

             </div>
         </div>
     </section>
     <!-- end content -->
 </main>
 <script src="../../../assets/js/contact_page/postEmail.js"></script>