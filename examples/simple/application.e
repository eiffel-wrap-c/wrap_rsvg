note
	description: "Simple SVG rendering to png."
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			svg_file_name: STRING
			png_file_name: STRING
			file: RAW_FILE
			data: STRING_8
			error: GERROR_STRUCT_API
			dim: RSVG_DIMENSION_DATA_STRUCT_API
			width: INTEGER
			height: INTEGER
			cr: CAIRO_STRUCT_API
			res: INTEGER
			status: INTEGER
			raw_width: INTEGER
			raw_height: INTEGER
			row_byte_size: INTEGER
		do
			svg_file_name := "tiger.svg"
			png_file_name := "tiger.png"

				-- read svg file
			create file.make_with_name (svg_file_name)
			if file.exists then
				file.open_read
				file.read_stream (file.count)
				data := file.last_string
				print ("SVG File Content!%N")
				print (data)

				{RSVG_FUNCTIONS_API}.rsvg_set_default_dpi (72.0)

				create error.make
				if attached {RSVG_HANDLE_STRUCT_API} {RSVG_FUNCTIONS_API}.rsvg_handle_new_from_data(data, file.count, error) as handle then

					create dim.make
					{RSVG_FUNCTIONS_API}.rsvg_handle_get_dimensions (handle, dim)
					width := dim.width
   					height := dim.height
   					print ("Get dimensions- width:" + width.out + " - height:" + height.out)

   					if attached {CAIRO_SURFACE_STRUCT_API} {CAIRO_FUNCTIONS_API}.cairo_image_surface_create ({CAIRO_FORMAT_ENUM_API}.CAIRO_FORMAT_ARGB32, width, height) as l_surface then
						cr := {CAIRO_FUNCTIONS}.cairo_create (l_surface)
						res := {RSVG_CAIRO_FUNCTIONS_API}.rsvg_handle_render_cairo (handle, cr)
						status :=  {CAIRO_FUNCTIONS}.cairo_status (cr)
						if status = {CAIRO_STATUS_ENUM_API}.cairo_status_success then
							res := {CAIRO_FUNCTIONS}.cairo_surface_write_to_png (l_surface, png_file_name)
							raw_width := {CAIRO_FUNCTIONS}.cairo_image_surface_get_width (l_surface)
   							raw_height := {CAIRO_FUNCTIONS}.cairo_image_surface_get_height (l_surface)
    						row_byte_size := {CAIRO_FUNCTIONS}.cairo_image_surface_get_stride (l_surface)
    						print ("%NWIDTH: " + raw_width.out + ",  HEIGHT: " + height.out + ", row_bytes=" + row_byte_size.out + "%N")
    						{CAIRO_FUNCTIONS}.cairo_destroy (cr)
    						{CAIRO_FUNCTIONS}.cairo_surface_destroy (l_surface)
						else
							print ("cairo_status!%N");
 						    print ({CAIRO_FUNCTIONS}.cairo_status_to_string (status))
						end
   					else
   						print ("Can't create cairo_image_surface_create %N")
   					end
				else
					print ("rsvg_handle_new_from_data error!%N")
					if attached error.message as l_message then
						 print (l_message)
					end
			    end
			end



		end

end
