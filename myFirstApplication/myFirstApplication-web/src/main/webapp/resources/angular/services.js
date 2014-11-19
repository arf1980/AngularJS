/**
 * 
 */

angular.module('myFstApp.services', [])

.factory('applicazioniService',	function($http) {
			return {
				getApplicazioni : function() {
					return $http.get(MFA.contextPath + 'applicazione/list');
				}
			};
		})

.factory('serverService',	function($http) {
	return {
		getApplicazioni : function() {
			return $http.get(MFA.contextPath + 'applicazione/list');
		}
	};
});