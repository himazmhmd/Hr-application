// micro service URLs
//export const trans_url = "https://moodapp.net/moodrecharge_api";
//export const trans_url = "https://admin.moodapp.net/moodrecharge_api_qa";
//export const trans_url = "https://moodapp.net/moodrecharge-qa";
//export const trans_url = "http://192.168.1.142:8080";
//export const trans_url = "https://uat.moodgo.us";

//export const trans_url = "http://192.168.1.178:8080";

// export const trans_url = "http://localhost:8080";

window.SESS_USERNAME = document.querySelector(`meta[name="username"]`).content;
document.querySelector(`meta[name="username"]`).remove();

window.API_CONTEXT = document.querySelector(`meta[name="apicontext"]`).content;
document.querySelector(`meta[name="apicontext"]`).remove();

window.ADMIN_AUTH = document.querySelector(`meta[name="adminAuth"]`).content;
document.querySelector(`meta[name="adminAuth"]`).remove();

window.trans_url = API_CONTEXT;

window.security = {
	hasAuthority: function (authority) {
		if (typeof authority !== "string") {
			console.error("Error: Parameter can only be string.");
			return false;
		}

		return ADMIN_AUTH.includes(authority);
	},
	hasAnyAuthority: function (authorities) {
		if (typeof authority !== "object" || !Array.isArray(authorities)) {
			console.error("Error: Parameter can only be an array of strings.");
			return false;
		}

		return authorities.some((auth) => ADMIN_AUTH.includes(auth));
	},
};
