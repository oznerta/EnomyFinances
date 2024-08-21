<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Financial Website</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style3.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="Logo"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link signup-link" href="signup">Sign Up</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section id="home" class="section">
        <div class="container">
            <div class="content">
                <h2>Welcome to Our Financial Platform</h2>
                <p>Get personalized financial advice and services tailored to your needs.</p>
                <div class="cta">
                    <a href="signup" class="cta-btn">Sign Up</a>
                    <a href="login" class="cta-btn">Login</a>
                </div>
            </div>
            <div class="homebg">
                <img src="images/homebg.png" alt="">
            </div> 
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#695CFE" fill-opacity="1" d="M0,64L120,90.7C240,117,480,171,720,176C960,181,1200,139,1320,117.3L1440,96L1440,320L1320,320C1200,320,960,320,720,320C480,320,240,320,120,320L0,320Z"></path></svg> 
    </section>
    
    

    <section id="services" class="section">
        <div class="container">
            <h2>Our Services</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            
                            <h5 class="card-title">Bookkeeping Services</h5>
                            <img src="images/bookkeeping.png" class="card-img-top mb-4" alt="Currency Converter">
                            <p class="card-text">Our bookkeeping services help you manage your financial records efficiently.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Currency Converter</h5>
                            <img src="images/convert-currency.png" class="card-img-top mb-4" alt="Currency Converter">
                            <p class="card-text">Convert currencies quickly and easily with our currency converter tool.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Investment Calculator</h5>
                            <img src="images/savings-investments.png" class="card-img-top mb-4" alt="Currency Converter">
                            <p class="card-text">Use our investment calculator to estimate potential returns on your investments.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Financial Advice</h5>
                            <img src="images/savings-investments.png" class="card-img-top mb-4" alt="Currency Converter">
                            <p class="card-text">Our experienced advisors provide personalized financial advice to help you reach your goals.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Budgeting & Debt Consolidation</h5>
                            <img src="images/bookkeeping.png" class="card-img-top mb-4" alt="Currency Converter">
                            <p class="card-text">Our Budgeting and Debt Consolidation service offers personalized assistance in managing finances effectively and consolidating debts for financial stability.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Portfolio Management</h5>
                            <img src="images/convert-currency.png" class="card-img-top mb-4" alt="Currency Converter">
                            <p class="card-text">Our Portfolio Management service optimizes investment portfolios with personalized advice on asset allocation and risk management for long-term investment success.</p>
                        </div>
                    </div>
                </div>                
            </div>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#695CFE" fill-opacity="1" d="M0,0L120,5.3C240,11,480,21,720,58.7C960,96,1200,160,1320,192L1440,224L1440,0L1320,0C1200,0,960,0,720,0C480,0,240,0,120,0L0,0Z"></path></svg>
        </div>
    </section>

    <section id="contact" class="section">
        <div class="container">
            <h2 class="text-center mb-4">Contact Us</h2>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <form action="#" method="post" class="contact-form">
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" required>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" id="message" name="message" rows="5" placeholder="Your Message" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h5>Connect With Us</h5>
                    <ul class="social-icons">
                        <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <h5>Quick Links</h5>
                    <ul class="quick-links">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
            
        </div>
    </footer>
    

    <script src="js/script2.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
