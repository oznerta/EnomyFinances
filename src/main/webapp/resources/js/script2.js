const body = document.querySelector("body"),
      sidebar = body.querySelector(".sidebar"),
      toggle = body.querySelector(".toggle"),
      modeSwitch = body.querySelector(".toggle-switch"),
      modeText = body.querySelector(".mode-text");

// Function to set dark mode
function setDarkMode() {
    body.classList.add("dark");
    modeText.innerText = "Light Mode";
    localStorage.setItem("darkModeEnabled", "true");
}

// Function to set light mode
function setLightMode() {
    body.classList.remove("dark");
    modeText.innerText = "Dark Mode";
    localStorage.removeItem("darkModeEnabled");
}

// Check if dark mode was enabled previously
if (localStorage.getItem("darkModeEnabled")) {
    setDarkMode();
}

// Toggle sidebar
toggle.addEventListener("click", () =>{
    sidebar.classList.toggle("close");
});

// Toggle dark mode
modeSwitch.addEventListener("click", () =>{
    if (body.classList.contains("dark")) {
        setLightMode();
    } else {
        setDarkMode();
    }
});



//--------------------------------------------------------------------------------------


// JavaScript function to add a new purchase
function addPurchase(purchaseData) {
    // Send AJAX request to add the purchase
    $.ajax({
        url: "/addPurchase",
        type: "POST",
        contentType: "application/json",
        data: JSON.stringify(purchaseData),
        success: function (data) {
            // Update the HTML content of the recent transactions table
            updateRecentTransactions(data);
        },
        error: function (xhr, status, error) {
            console.error("Error adding purchase:", error);
        }
    });
}

// JavaScript function to update the recent transactions table
function updateRecentTransactions(recentPurchases) {
    // Clear existing table rows
    $(".transaction-list .table-row").remove();
    
    // Add new table rows for each purchase
    recentPurchases.forEach(function (purchase) {
        var newRow = $("<div class='table-row'></div>");
        newRow.append("<div class='table-cell'><p>" + purchase.purpose + "</p></div>");
        newRow.append("<div class='table-cell'><p>" + purchase.category + "</p></div>");
        newRow.append("<div class='table-cell'><p>" + purchase.sum + "</p></div>");
        newRow.append("<div class='table-cell'><p>" + purchase.date + "</p></div>");
        $(".transaction-list").append(newRow);
    });
}

//-----------------------------------------------------------------------------------------------
// Function to calculate maximum returns
function calculateMaxReturns(initialLumpSum, monthlyAmount, annualRate) {
    // Calculate the future value using compound interest formula
    const years = 10;
    const totalInvestment = initialLumpSum + (monthlyAmount * 12 * years);
    return totalInvestment * Math.pow(1 + annualRate, years);
}

// Function to calculate minimum returns
function calculateMinReturns(initialLumpSum, monthlyAmount, annualRate) {
    // Calculate the future value using compound interest formula
    const years = 1;
    const totalInvestment = initialLumpSum + (monthlyAmount * 12 * years);
    return totalInvestment * Math.pow(1 + annualRate, years);
}

// Function to calculate total profit
function calculateTotalProfit(initialLumpSum, monthlyAmount, maxReturns) {
    return maxReturns - (initialLumpSum + (monthlyAmount * 12 * 10));
}

// Function to calculate total fees
function calculateTotalFees(initialLumpSum, monthlyAmount, feeRate) {
    // Calculate total fees based on the annual fee rate
    const totalInvestment = initialLumpSum + (monthlyAmount * 12 * 10);
    return totalInvestment * feeRate;
}

// Function to calculate total taxes
function calculateTotalTaxes(totalProfit) {
    // Assuming 10% tax on profits above £12,000
    // and 20% tax on profits above £40,000
    let totalTax = 0;
    if (totalProfit > 40000) {
        totalTax += (totalProfit - 40000) * 0.2;
        totalProfit = 40000;
    }
    if (totalProfit > 12000) {
        totalTax += (totalProfit - 12000) * 0.1;
    }
    return totalTax;
}

//--------------------------------------------------------------------------------------
document.addEventListener('DOMContentLoaded', function() {
    const navbarLinks = document.querySelectorAll('.navbar-nav a');

    navbarLinks.forEach(function(navbarLink) {
        navbarLink.addEventListener('click', function() {
            // Remove 'active' class from all links
            navbarLinks.forEach(function(link) {
                link.classList.remove('active');
            });

            // Add 'active' class to the clicked link
            this.classList.add('active');
        });
    });
});

    
    
