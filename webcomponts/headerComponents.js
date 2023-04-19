class HeaderComponent extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
     
   <!---NAVGATION START--->
    <nav class="navbar main-nav navbar-expand-lg px-2 pt-0 pb-2 customeNavBar border-bottom">
    <div class="container">
       <a class="navbar-brand" href="home.htm"><img src="images/zing/logo2.png"  alt="zing" class="brandImg"></a>
      
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
       <span class="ti-menu"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
               
                  <li class="nav-item mx-3" >	
                     <a href="javascript:valid(0)">HOME</a>
                  </li> 	
                  
                  <li class="nav-item mx-3">	
                      <a href="javascript:valid(0)">ABOUT</a>
                  </li>

                  <li class="nav-item mx-3">	
                  <a href="javascript:valid(0)">PROGRAMS</a>
                   </li>

                   <li class="nav-item mx-3">	
                   <a href="javascript:valid(0)">RECOGNITIONS</a>
                    </li>

                    <li class="nav-item mx-3">	
                    <a href="javascript:valid(0)">MEMBERSHIP</a>
                     </li>

                     <li class="nav-item mx-3">	
                     <a href="javascript:valid(0)">SHOWCASE</a>
                      </li>

                      <li class="nav-item mx-3">	
                      <a href="javascript:valid(0)">LOGIN</a>
                       </li>
            </ul>
          </div>
       </div>
       </li>
       </ul>
      
    </div>
    </div>
 </nav>
 <!---NAVGATION END--->

      
      `;


  }

}



customElements.define('header-component', HeaderComponent);







