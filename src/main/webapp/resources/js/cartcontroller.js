var myapp = angular
		.module("myapp", [])
		.controller(
				'productsController',
				function($scope, $http) {

					$scope.getProducts = function() {
						$http
								.get(
										'http://localhost:8081/ShopGorgeousFE/listproductsjson')
								.success(function(data) {
									$scope.product1 = data;
								})
					}

					$scope.addToCart = function(productid) {

						$http.put(
								'http://localhost:8081/ShopGorgeousFE/cart/add/'
										+ productid).success(function() {

							alert('Added Successfully to the cart!');
						})
					}

					$scope.refreshCart = function() {
						$http.get(
								'http://localhost:8081/ShopGorgeousFE/cart/getCart/'
										+ $scope.cartId).success(
								function(data) {
									$scope.cart = data;
								})
					}

					$scope.getCart = function(cartId) {
						$scope.cartId = cartId;
						// $scope.refreshCart(cartId);
						$scope.refreshCart();
					//	alert('Successfully refreshed the cart!');
					}

					$scope.removeFromCart = function(cartitemid) {
						$http.put(
								'http://localhost:8081/ShopGorgeousFE/cart/removecartitem/'
										+ cartitemid).success(function() {
							$scope.refreshCart();
							alert('Removed Successfully from the cart!');
						})
					}

					$scope.clearCart = function() {

						$http.put(
								'http://localhost:8081/ShopGorgeousFE/cart/removeAllItems/'
										+ $scope.cartId)

						.success(function() {

							$scope.refreshCart();
							alert('Successfully cleared the cart!');
						});
					}

					$scope.calculateGrandTotal = function() {
						var grandTotal = 0
						for (var i = 0; i < $scope.cart.cartItems.length; i++){
							grandTotal = grandTotal+ $scope.cart.cartItems[i].totalprice;
						 ;}
						return grandTotal;
					}
				});