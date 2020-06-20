#include <ewg_eiffel.h>
#include <ewg_librsvg_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
void* cairo_surface_observer_callback_t_object =  NULL;
cairo_surface_observer_callback_t_eiffel_feature cairo_surface_observer_callback_t_address_1 = NULL;
cairo_surface_observer_callback_t_eiffel_feature cairo_surface_observer_callback_t_address_2 = NULL;
cairo_surface_observer_callback_t_eiffel_feature cairo_surface_observer_callback_t_address_3 = NULL;

void set_cairo_surface_observer_callback_t_object (void* a_object)
{
	if (a_object) {
		cairo_surface_observer_callback_t_object = eif_protect(a_object);
	} else { 
		cairo_surface_observer_callback_t_object = NULL;
	}
}

void release_cairo_surface_observer_callback_t_object ()
{
	eif_wean (cairo_surface_observer_callback_t_object);
}

void cairo_surface_observer_callback_t_stub_1 (cairo_surface_t *observer, cairo_surface_t *target, void *data)
{
	if (cairo_surface_observer_callback_t_object != NULL && cairo_surface_observer_callback_t_address_1 != NULL)
	{
		cairo_surface_observer_callback_t_address_1 (eif_access(cairo_surface_observer_callback_t_object), observer, target, data);
	}
}

void cairo_surface_observer_callback_t_stub_2 (cairo_surface_t *observer, cairo_surface_t *target, void *data)
{
	if (cairo_surface_observer_callback_t_object != NULL && cairo_surface_observer_callback_t_address_2 != NULL)
	{
		cairo_surface_observer_callback_t_address_2 (eif_access(cairo_surface_observer_callback_t_object), observer, target, data);
	}
}

void cairo_surface_observer_callback_t_stub_3 (cairo_surface_t *observer, cairo_surface_t *target, void *data)
{
	if (cairo_surface_observer_callback_t_object != NULL && cairo_surface_observer_callback_t_address_3 != NULL)
	{
		cairo_surface_observer_callback_t_address_3 (eif_access(cairo_surface_observer_callback_t_object), observer, target, data);
	}
}

void set_cairo_surface_observer_callback_t_entry_1 (void* a_feature){
	cairo_surface_observer_callback_t_address_1 = (cairo_surface_observer_callback_t_eiffel_feature) a_feature;
}

void set_cairo_surface_observer_callback_t_entry_2 (void* a_feature){
	cairo_surface_observer_callback_t_address_2 = (cairo_surface_observer_callback_t_eiffel_feature) a_feature;
}

void set_cairo_surface_observer_callback_t_entry_3 (void* a_feature){
	cairo_surface_observer_callback_t_address_3 = (cairo_surface_observer_callback_t_eiffel_feature) a_feature;
}

void* get_cairo_surface_observer_callback_t_stub_1 (){
	return (void*) cairo_surface_observer_callback_t_stub_1;
}

void* get_cairo_surface_observer_callback_t_stub_2 (){
	return (void*) cairo_surface_observer_callback_t_stub_2;
}

void* get_cairo_surface_observer_callback_t_stub_3 (){
	return (void*) cairo_surface_observer_callback_t_stub_3;
}

void call_cairo_surface_observer_callback_t (void *a_function, cairo_surface_t *observer, cairo_surface_t *target, void *data)
{
	((void (*) (cairo_surface_t *observer, cairo_surface_t *target, void *data))a_function) (observer, target, data);
}

void* cairo_destroy_func_t_object =  NULL;
cairo_destroy_func_t_eiffel_feature cairo_destroy_func_t_address_1 = NULL;
cairo_destroy_func_t_eiffel_feature cairo_destroy_func_t_address_2 = NULL;
cairo_destroy_func_t_eiffel_feature cairo_destroy_func_t_address_3 = NULL;

void set_cairo_destroy_func_t_object (void* a_object)
{
	if (a_object) {
		cairo_destroy_func_t_object = eif_protect(a_object);
	} else { 
		cairo_destroy_func_t_object = NULL;
	}
}

void release_cairo_destroy_func_t_object ()
{
	eif_wean (cairo_destroy_func_t_object);
}

void cairo_destroy_func_t_stub_1 (void *data)
{
	if (cairo_destroy_func_t_object != NULL && cairo_destroy_func_t_address_1 != NULL)
	{
		cairo_destroy_func_t_address_1 (eif_access(cairo_destroy_func_t_object), data);
	}
}

void cairo_destroy_func_t_stub_2 (void *data)
{
	if (cairo_destroy_func_t_object != NULL && cairo_destroy_func_t_address_2 != NULL)
	{
		cairo_destroy_func_t_address_2 (eif_access(cairo_destroy_func_t_object), data);
	}
}

void cairo_destroy_func_t_stub_3 (void *data)
{
	if (cairo_destroy_func_t_object != NULL && cairo_destroy_func_t_address_3 != NULL)
	{
		cairo_destroy_func_t_address_3 (eif_access(cairo_destroy_func_t_object), data);
	}
}

void set_cairo_destroy_func_t_entry_1 (void* a_feature){
	cairo_destroy_func_t_address_1 = (cairo_destroy_func_t_eiffel_feature) a_feature;
}

void set_cairo_destroy_func_t_entry_2 (void* a_feature){
	cairo_destroy_func_t_address_2 = (cairo_destroy_func_t_eiffel_feature) a_feature;
}

void set_cairo_destroy_func_t_entry_3 (void* a_feature){
	cairo_destroy_func_t_address_3 = (cairo_destroy_func_t_eiffel_feature) a_feature;
}

void* get_cairo_destroy_func_t_stub_1 (){
	return (void*) cairo_destroy_func_t_stub_1;
}

void* get_cairo_destroy_func_t_stub_2 (){
	return (void*) cairo_destroy_func_t_stub_2;
}

void* get_cairo_destroy_func_t_stub_3 (){
	return (void*) cairo_destroy_func_t_stub_3;
}

void call_cairo_destroy_func_t (void *a_function, void *data)
{
	((void (*) (void *data))a_function) (data);
}

