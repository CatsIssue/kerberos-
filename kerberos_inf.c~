#include <krb5/krb5.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <profile.h> 

/*  
 *
*/
int main() {
	
	// VARS
	krb5_context ctx;
	krb5_auth_context auth_ctx;
	krb5_ccache cache;
	krb5_principal principal; //principal_out;
	char* realm;
	krb5_error_code check;
	struct _profile_t* profile;

	// some init	
	check = krb5_init_context(&ctx);
	if (check != 0) { 
		printf("ERROR krb5_init_context: %s\n", krb5_get_error_message(ctx, check));
	}

	check = krb5_auth_con_init(ctx, &auth_ctx);
	if (check != 0){
		printf("ERROR krb5_auth_conn_init: %s\n", krb5_get_error_message(ctx, check));
	}

	check = krb5_get_default_realm(ctx, &realm);
	if (check != 0){
                printf("ERROR krb5_get_default_realm: %s\n", krb5_get_error_message(ctx, check));
	}

	check = krb5_build_principal(ctx, &principal, 1000, realm, (char *)NULL);
	if (check != 0){
		printf("ERROR krb5_build_principal: %s\n", krb5_get_error_message(ctx, check));
	}
	
	//check = krb5_parse_name(ctx, "konstantin", &principal_out);
	//if (check != 0){
	//	printf("ERROR krb5_parse_name: %s\n", krb5_get_error_message(ctx, check));
	//}

	check = krb5_cc_default(ctx, &cache);      
	if (check != 0){
		printf("ERROR krb5_cc_default: %s\n", krb5_get_error_message(ctx, check));
	}

	check = krb5_cc_initialize(ctx, cache, principal);	
	//if (check != 0){
	//	printf("ERROR krb5_cc_initialize: %s\n", krb5_get_error_message(ctx, check));
	//}
	
	
	check = krb5_get_profile(ctx, &profile);
	if (check != 0){
		printf("ERROR krb5_get_profile: %s\n", krb5_get_error_message(ctx, check));
	}

	
	//profile_get_values(profile, 



}
