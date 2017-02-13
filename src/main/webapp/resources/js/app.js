

var app = angular
		.module("prodapp", [])
		.controller(
				'myprodController',
				function($scope, $http) {
					// alert('Check);
					$scope.listProduct = function() {
						// alert('before contol call');
						$http
								.get(
										'/ShopGorgeousFE/listproductsjson')
								.success(function(data) {
									// alert('after contol call');

									$scope.products = data;
									console.log(data);
									console.log('after contol call1');
								})

					}

				})
