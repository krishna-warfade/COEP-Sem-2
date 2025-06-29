document.addEventListener('DOMContentLoaded', function() {
    // Mobile Navigation Toggle
    const mobileNavToggle = document.createElement('button');
    mobileNavToggle.className = 'mobile-nav-toggle';
    mobileNavToggle.innerHTML = '☰';
    document.querySelector('header .container').appendChild(mobileNavToggle);
  
    const nav = document.querySelector('nav');
    mobileNavToggle.addEventListener('click', function() {
      nav.classList.toggle('active');
      mobileNavToggle.innerHTML = nav.classList.contains('active') ? '✕' : '☰';
    });
  
    // Close mobile menu when clicking on a nav link
    const navLinks = document.querySelectorAll('nav ul li a');
    navLinks.forEach(link => {
      link.addEventListener('click', function() {
        if (window.innerWidth <= 768) {
          nav.classList.remove('active');
          mobileNavToggle.innerHTML = '☰';
        }
      });
    });
  
    // Smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
      anchor.addEventListener('click', function(e) {
        e.preventDefault();
        const targetId = this.getAttribute('href');
        if (targetId === '#') return;
        
        const targetElement = document.querySelector(targetId);
        if (targetElement) {
          const headerHeight = document.querySelector('header').offsetHeight;
          const targetPosition = targetElement.offsetTop - headerHeight;
          
          window.scrollTo({
            top: targetPosition,
            behavior: 'smooth'
          });
        }
      });
    });
  
    // Sticky header on scroll
    const header = document.querySelector('header');
    window.addEventListener('scroll', function() {
      if (window.scrollY > 100) {
        header.classList.add('scrolled');
      } else {
        header.classList.remove('scrolled');
      }
    });
  
    // Responsive adjustments for pricing cards
    function adjustPricingCards() {
      const pricingContainer = document.querySelector('.pricing-container');
      if (window.innerWidth <= 768) {
        pricingContainer.style.flexDirection = 'column';
        pricingContainer.style.alignItems = 'center';
      } else {
        pricingContainer.style.flexDirection = 'row';
        pricingContainer.style.alignItems = 'stretch';
      }
    }
  
    // Initialize and run on resize
    adjustPricingCards();
    window.addEventListener('resize', adjustPricingCards);
  
    // Plan selection highlight
    const planButtons = document.querySelectorAll('.plan-button');
    planButtons.forEach(button => {
      button.addEventListener('click', function() {
        // In a real implementation, this would submit a form or open a modal
        alert('Thank you for your interest! A representative will contact you shortly.');
      });
    });
  
    // Call Now button functionality
    const callNowButton = document.querySelector('.cta-button-callnow');
    callNowButton.addEventListener('click', function() {
      // In a real implementation, this would initiate a call or show a number
      alert('Please call us at: +91 9876543210');
    });
  });