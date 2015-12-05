(in-package :cg-user)
(use-variables 
  |gl_1pass_ext|
  |gl_1pass_sgis|
  |gl_2_bytes|
  |gl_2_bytes_nv|
  |gl_2d|
  |gl_2pass_0_ext|
  |gl_2pass_0_sgis|
  |gl_2pass_1_ext|
  |gl_2pass_1_sgis|
  |gl_2x_bit_ati|
  |gl_3_bytes|
  |gl_3_bytes_nv|
  |gl_3d|
  |gl_3d_color|
  |gl_3d_color_texture|
  |gl_3dc_x_amd|
  |gl_3dc_xy_amd|
  |gl_422_average_ext|
  |gl_422_ext|
  |gl_422_rev_average_ext|
  |gl_422_rev_ext|
  |gl_4_bytes|
  |gl_4_bytes_nv|
  |gl_4d_color_texture|
  |gl_4pass_0_ext|
  |gl_4pass_0_sgis|
  |gl_4pass_1_ext|
  |gl_4pass_1_sgis|
  |gl_4pass_2_ext|
  |gl_4pass_2_sgis|
  |gl_4pass_3_ext|
  |gl_4pass_3_sgis|
  |gl_4x_bit_ati|
  |gl_8x_bit_ati|
  |gl_abgr_ext|
  |gl_accum|
  |gl_accum_adjacent_pairs_nv|
  |gl_accum_alpha_bits|
  |gl_accum_blue_bits|
  |gl_accum_buffer_bit|
  |gl_accum_clear_value|
  |gl_accum_green_bits|
  |gl_accum_red_bits|
  |gl_active_atomic_counter_buffers|
  |gl_active_attribute_max_length|
  |gl_active_attributes|
  |gl_active_program|
  |gl_active_program_ext|
  |gl_active_resources|
  |gl_active_stencil_face_ext|
  |gl_active_subroutine_max_length|
  |gl_active_subroutines|
  |gl_active_subroutine_uniform_locations|
  |gl_active_subroutine_uniform_max_length|
  |gl_active_subroutine_uniforms|
  |gl_active_texture|
  |gl_active_texture_arb|
  |gl_active_uniform_block_max_name_length|
  |gl_active_uniform_blocks|
  |gl_active_uniform_max_length|
  |gl_active_uniforms|
  |gl_active_variables|
  |gl_active_varying_max_length_nv|
  |gl_active_varyings_nv|
  |gl_active_vertex_units_arb|
  |gl_add|
  |gl_add_ati|
  |gl_add_blend_img|
  |gl_add_signed|
  |gl_add_signed_arb|
  |gl_add_signed_ext|
  |gl_adjacent_pairs_nv|
  |gl_affine_2d_nv|
  |gl_affine_3d_nv|
  |gl_aliased_line_width_range|
  |gl_aliased_point_size_range|
  |gl_all_attrib_bits|
  |gl_all_barrier_bits|
  |gl_all_barrier_bits_ext|
  |gl_all_completed_nv|
  |gl_allow_draw_frg_hint_pgi|
  |gl_allow_draw_mem_hint_pgi|
  |gl_allow_draw_obj_hint_pgi|
  |gl_allow_draw_win_hint_pgi|
  |gl_all_shader_bits|
  |gl_all_shader_bits_ext|
  |gl_all_static_data_ibm|
  |gl_alpha|
  |gl_alpha12|
  |gl_alpha12_ext|
  |gl_alpha16|
  |gl_alpha16_ext|
  |gl_alpha16f_arb|
  |gl_alpha16f_ext|
  |gl_alpha16_icc_sgix|
  |gl_alpha16i_ext|
  |gl_alpha16_snorm|
  |gl_alpha16ui_ext|
  |gl_alpha32f_arb|
  |gl_alpha32f_ext|
  |gl_alpha32i_ext|
  |gl_alpha32ui_ext|
  |gl_alpha4|
  |gl_alpha4_ext|
  |gl_alpha8|
  |gl_alpha8_ext|
  |gl_alpha8i_ext|
  |gl_alpha8_oes|
  |gl_alpha8_snorm|
  |gl_alpha8ui_ext|
  |gl_alpha_bias|
  |gl_alpha_bits|
  |gl_alpha_float16_apple|
  |gl_alpha_float16_ati|
  |gl_alpha_float32_apple|
  |gl_alpha_float32_ati|
  |gl_alpha_icc_sgix|
  |gl_alpha_integer|
  |gl_alpha_integer_ext|
  |gl_alpha_max_clamp_ingr|
  |gl_alpha_max_sgix|
  |gl_alpha_min_clamp_ingr|
  |gl_alpha_min_sgix|
  |gl_alpha_ref_command_nv|
  |gl_alpha_scale|
  |gl_alpha_snorm|
  |gl_alpha_test|
  |gl_alpha_test_func|
  |gl_alpha_test_func_qcom|
  |gl_alpha_test_qcom|
  |gl_alpha_test_ref|
  |gl_alpha_test_ref_qcom|
  |gl_already_signaled|
  |gl_already_signaled_apple|
  |gl_always|
  |gl_always_fast_hint_pgi|
  |gl_always_soft_hint_pgi|
  |gl_ambient|
  |gl_ambient_and_diffuse|
  |gl_and|
  |gl_and_inverted|
  |gl_and_reverse|
  |gl_any_samples_passed|
  |gl_any_samples_passed_conservative|
  |gl_any_samples_passed_conservative_ext|
  |gl_any_samples_passed_ext|
  |gl_arc_to_nv|
  |gl_array_buffer|
  |gl_array_buffer_arb|
  |gl_array_buffer_binding|
  |gl_array_buffer_binding_arb|
  |gl_array_element_lock_count_ext|
  |gl_array_element_lock_first_ext|
  |gl_array_object_buffer_ati|
  |gl_array_object_offset_ati|
  |gl_array_size|
  |gl_array_stride|
  |gl_async_draw_pixels_sgix|
  |gl_async_histogram_sgix|
  |gl_async_marker_sgix|
  |gl_async_read_pixels_sgix|
  |gl_async_tex_image_sgix|
  |gl_atc_rgba_explicit_alpha_amd|
  |gl_atc_rgba_interpolated_alpha_amd|
  |gl_atc_rgb_amd|
  |gl_atomic_counter_barrier_bit|
  |gl_atomic_counter_barrier_bit_ext|
  |gl_atomic_counter_buffer|
  |gl_atomic_counter_buffer_active_atomic_counter_indices|
  |gl_atomic_counter_buffer_active_atomic_counters|
  |gl_atomic_counter_buffer_binding|
  |gl_atomic_counter_buffer_data_size|
  |gl_atomic_counter_buffer_index|
  |gl_atomic_counter_buffer_referenced_by_compute_shader|
  |gl_atomic_counter_buffer_referenced_by_fragment_shader|
  |gl_atomic_counter_buffer_referenced_by_geometry_shader|
  |gl_atomic_counter_buffer_referenced_by_tess_control_shader|
  |gl_atomic_counter_buffer_referenced_by_tess_evaluation_shader|
  |gl_atomic_counter_buffer_referenced_by_vertex_shader|
  |gl_atomic_counter_buffer_size|
  |gl_atomic_counter_buffer_start|
  |gl_attached_shaders|
  |gl_attenuation_ext|
  |gl_attrib_array_pointer_nv|
  |gl_attrib_array_size_nv|
  |gl_attrib_array_stride_nv|
  |gl_attrib_array_type_nv|
  |gl_attrib_stack_depth|
  |gl_attribute_address_command_nv|
  |gl_auto_generate_mipmap|
  |gl_auto_normal|
  |gl_aux0|
  |gl_aux1|
  |gl_aux2|
  |gl_aux3|
  |gl_aux_buffers|
  |gl_aux_depth_stencil_apple|
  |gl_average_ext|
  |gl_average_hp|
  |gl_back|
  |gl_back_left|
  |gl_back_normals_hint_pgi|
  |gl_back_primary_color_nv|
  |gl_back_right|
  |gl_back_secondary_color_nv|
  |gl_bevel_nv|
  |gl_bgr|
  |gl_bgra|
  |gl_bgra8_ext|
  |gl_bgra_ext|
  |gl_bgra_img|
  |gl_bgra_integer|
  |gl_bgra_integer_ext|
  |gl_bgr_ext|
  |gl_bgr_integer|
  |gl_bgr_integer_ext|
  |gl_bias_bit_ati|
  |gl_bias_by_negative_one_half_nv|
  |gl_binning_control_hint_qcom|
  |gl_binormal_array_ext|
  |gl_binormal_array_pointer_ext|
  |gl_binormal_array_stride_ext|
  |gl_binormal_array_type_ext|
  |gl_bitmap|
  |gl_bitmap_token|
  |gl_blend|
  |gl_blend_advanced_coherent_khr|
  |gl_blend_advanced_coherent_nv|
  |gl_blend_color|
  |gl_blend_color_command_nv|
  |gl_blend_color_ext|
  |gl_blend_dst|
  |gl_blend_dst_alpha|
  |gl_blend_dst_alpha_ext|
  |gl_blend_dst_alpha_oes|
  |gl_blend_dst_rgb|
  |gl_blend_dst_rgb_ext|
  |gl_blend_dst_rgb_oes|
  |gl_blend_equation|
  |gl_blend_equation_alpha|
  |gl_blend_equation_alpha_ext|
  |gl_blend_equation_alpha_oes|
  |gl_blend_equation_ext|
  |gl_blend_equation_oes|
  |gl_blend_equation_rgb|
  |gl_blend_equation_rgb_ext|
  |gl_blend_equation_rgb_oes|
  |gl_blend_overlap_nv|
  |gl_blend_premultiplied_src_nv|
  |gl_blend_src|
  |gl_blend_src_alpha|
  |gl_blend_src_alpha_ext|
  |gl_blend_src_alpha_oes|
  |gl_blend_src_rgb|
  |gl_blend_src_rgb_ext|
  |gl_blend_src_rgb_oes|
  |gl_block_index|
  |gl_blue|
  |gl_blue_bias|
  |gl_blue_bit_ati|
  |gl_blue_bits|
  |gl_blue_integer|
  |gl_blue_integer_ext|
  |gl_blue_max_clamp_ingr|
  |gl_blue_min_clamp_ingr|
  |gl_blue_nv|
  |gl_blue_scale|
  |gl_bold_bit_nv|
  |gl_bool|
  |gl_bool_arb|
  |gl_bool_vec2|
  |gl_bool_vec2_arb|
  |gl_bool_vec3|
  |gl_bool_vec3_arb|
  |gl_bool_vec4|
  |gl_bool_vec4_arb|
  |gl_bounding_box_nv|
  |gl_bounding_box_of_bounding_boxes_nv|
  |gl_browser_default_webgl|
  |gl_buffer|
  |gl_buffer_access|
  |gl_buffer_access_arb|
  |gl_buffer_access_flags|
  |gl_buffer_access_oes|
  |gl_buffer_binding|
  |gl_buffer_data_size|
  |gl_buffer_flushing_unmap_apple|
  |gl_buffer_gpu_address_nv|
  |gl_buffer_immutable_storage|
  |gl_buffer_immutable_storage_ext|
  |gl_buffer_khr|
  |gl_buffer_map_length|
  |gl_buffer_map_offset|
  |gl_buffer_mapped|
  |gl_buffer_mapped_arb|
  |gl_buffer_mapped_oes|
  |gl_buffer_map_pointer|
  |gl_buffer_map_pointer_arb|
  |gl_buffer_map_pointer_oes|
  |gl_buffer_object_apple|
  |gl_buffer_object_ext|
  |gl_buffer_serialized_modify_apple|
  |gl_buffer_size|
  |gl_buffer_size_arb|
  |gl_buffer_storage_flags|
  |gl_buffer_storage_flags_ext|
  |gl_buffer_update_barrier_bit|
  |gl_buffer_update_barrier_bit_ext|
  |gl_buffer_usage|
  |gl_buffer_usage_arb|
  |gl_buffer_variable|
  |gl_bump_envmap_ati|
  |gl_bump_num_tex_units_ati|
  |gl_bump_rot_matrix_ati|
  |gl_bump_rot_matrix_size_ati|
  |gl_bump_target_ati|
  |gl_bump_tex_units_ati|
  |gl_byte|
  |gl_c3f_v3f|
  |gl_c4f_n3f_v3f|
  |gl_c4ub_v2f|
  |gl_c4ub_v3f|
  |gl_calligraphic_fragment_sgix|
  |gl_caveat_support|
  |gl_ccw|
  |gl_circular_ccw_arc_to_nv|
  |gl_circular_cw_arc_to_nv|
  |gl_circular_tangent_arc_to_nv|
  |gl_clamp|
  |gl_clamp_fragment_color|
  |gl_clamp_fragment_color_arb|
  |gl_clamp_read_color|
  |gl_clamp_read_color_arb|
  |gl_clamp_to_border|
  |gl_clamp_to_border_arb|
  |gl_clamp_to_border_ext|
  |gl_clamp_to_border_nv|
  |gl_clamp_to_border_oes|
  |gl_clamp_to_border_sgis|
  |gl_clamp_to_edge|
  |gl_clamp_to_edge_sgis|
  |gl_clamp_vertex_color|
  |gl_clamp_vertex_color_arb|
  |gl_clear|
  |gl_clear_buffer|
  |gl_clear_texture|
  |gl_client_active_texture|
  |gl_client_active_texture_arb|
  |gl_client_all_attrib_bits|
  |gl_client_attrib_stack_depth|
  |gl_client_mapped_buffer_barrier_bit|
  |gl_client_mapped_buffer_barrier_bit_ext|
  |gl_client_pixel_store_bit|
  |gl_client_storage_bit|
  |gl_client_storage_bit_ext|
  |gl_client_vertex_array_bit|
  |gl_clip_depth_mode|
  |gl_clip_distance0|
  |gl_clip_distance0_apple|
  |gl_clip_distance1|
  |gl_clip_distance1_apple|
  |gl_clip_distance2|
  |gl_clip_distance2_apple|
  |gl_clip_distance3|
  |gl_clip_distance3_apple|
  |gl_clip_distance4|
  |gl_clip_distance4_apple|
  |gl_clip_distance5|
  |gl_clip_distance5_apple|
  |gl_clip_distance6|
  |gl_clip_distance6_apple|
  |gl_clip_distance7|
  |gl_clip_distance7_apple|
  |gl_clip_distance_nv|
  |gl_clip_far_hint_pgi|
  |gl_clip_near_hint_pgi|
  |gl_clip_origin|
  |gl_clipping_input_primitives_arb|
  |gl_clipping_output_primitives_arb|
  |gl_clip_plane0|
  |gl_clip_plane0_img|
  |gl_clip_plane1|
  |gl_clip_plane1_img|
  |gl_clip_plane2|
  |gl_clip_plane2_img|
  |gl_clip_plane3|
  |gl_clip_plane3_img|
  |gl_clip_plane4|
  |gl_clip_plane4_img|
  |gl_clip_plane5|
  |gl_clip_plane5_img|
  |gl_clip_volume_clipping_hint_ext|
  |gl_close_path_nv|
  |gl_cmyka_ext|
  |gl_cmyk_ext|
  |gl_cnd0_ati|
  |gl_cnd_ati|
  |gl_coeff|
  |gl_color|
  |gl_color3_bit_pgi|
  |gl_color4_bit_pgi|
  |gl_color_alpha_pairing_ati|
  |gl_color_array|
  |gl_color_array_address_nv|
  |gl_color_array_buffer_binding|
  |gl_color_array_buffer_binding_arb|
  |gl_color_array_count_ext|
  |gl_color_array_ext|
  |gl_color_array_length_nv|
  |gl_color_array_list_ibm|
  |gl_color_array_list_stride_ibm|
  |gl_color_array_parallel_pointers_intel|
  |gl_color_array_pointer|
  |gl_color_array_pointer_ext|
  |gl_color_array_size|
  |gl_color_array_size_ext|
  |gl_color_array_stride|
  |gl_color_array_stride_ext|
  |gl_color_array_type|
  |gl_color_array_type_ext|
  |gl_color_attachment0|
  |gl_color_attachment0_ext|
  |gl_color_attachment0_nv|
  |gl_color_attachment0_oes|
  |gl_color_attachment1|
  |gl_color_attachment10|
  |gl_color_attachment10_ext|
  |gl_color_attachment10_nv|
  |gl_color_attachment11|
  |gl_color_attachment11_ext|
  |gl_color_attachment11_nv|
  |gl_color_attachment12|
  |gl_color_attachment12_ext|
  |gl_color_attachment12_nv|
  |gl_color_attachment13|
  |gl_color_attachment13_ext|
  |gl_color_attachment13_nv|
  |gl_color_attachment14|
  |gl_color_attachment14_ext|
  |gl_color_attachment14_nv|
  |gl_color_attachment15|
  |gl_color_attachment15_ext|
  |gl_color_attachment15_nv|
  |gl_color_attachment16|
  |gl_color_attachment17|
  |gl_color_attachment18|
  |gl_color_attachment19|
  |gl_color_attachment1_ext|
  |gl_color_attachment1_nv|
  |gl_color_attachment2|
  |gl_color_attachment20|
  |gl_color_attachment21|
  |gl_color_attachment22|
  |gl_color_attachment23|
  |gl_color_attachment24|
  |gl_color_attachment25|
  |gl_color_attachment26|
  |gl_color_attachment27|
  |gl_color_attachment28|
  |gl_color_attachment29|
  |gl_color_attachment2_ext|
  |gl_color_attachment2_nv|
  |gl_color_attachment3|
  |gl_color_attachment30|
  |gl_color_attachment31|
  |gl_color_attachment3_ext|
  |gl_color_attachment3_nv|
  |gl_color_attachment4|
  |gl_color_attachment4_ext|
  |gl_color_attachment4_nv|
  |gl_color_attachment5|
  |gl_color_attachment5_ext|
  |gl_color_attachment5_nv|
  |gl_color_attachment6|
  |gl_color_attachment6_ext|
  |gl_color_attachment6_nv|
  |gl_color_attachment7|
  |gl_color_attachment7_ext|
  |gl_color_attachment7_nv|
  |gl_color_attachment8|
  |gl_color_attachment8_ext|
  |gl_color_attachment8_nv|
  |gl_color_attachment9|
  |gl_color_attachment9_ext|
  |gl_color_attachment9_nv|
  |gl_color_attachment_ext|
  |gl_color_buffer_bit|
  |gl_color_buffer_bit0_qcom|
  |gl_color_buffer_bit1_qcom|
  |gl_color_buffer_bit2_qcom|
  |gl_color_buffer_bit3_qcom|
  |gl_color_buffer_bit4_qcom|
  |gl_color_buffer_bit5_qcom|
  |gl_color_buffer_bit6_qcom|
  |gl_color_buffer_bit7_qcom|
  |gl_colorburn|
  |gl_colorburn_khr|
  |gl_colorburn_nv|
  |gl_color_clear_unclamped_value_ati|
  |gl_color_clear_value|
  |gl_color_components|
  |gl_colordodge|
  |gl_colordodge_khr|
  |gl_colordodge_nv|
  |gl_color_encoding|
  |gl_color_ext|
  |gl_color_float_apple|
  |gl_color_index|
  |gl_color_index12_ext|
  |gl_color_index16_ext|
  |gl_color_index1_ext|
  |gl_color_index2_ext|
  |gl_color_index4_ext|
  |gl_color_index8_ext|
  |gl_color_indexes|
  |gl_color_logic_op|
  |gl_color_material|
  |gl_color_material_face|
  |gl_color_material_parameter|
  |gl_color_matrix|
  |gl_color_matrix_sgi|
  |gl_color_matrix_stack_depth|
  |gl_color_matrix_stack_depth_sgi|
  |gl_color_renderable|
  |gl_color_samples_nv|
  |gl_color_sum|
  |gl_color_sum_arb|
  |gl_color_sum_clamp_nv|
  |gl_color_sum_ext|
  |gl_color_table|
  |gl_color_table_alpha_size|
  |gl_color_table_alpha_size_sgi|
  |gl_color_table_bias|
  |gl_color_table_bias_sgi|
  |gl_color_table_blue_size|
  |gl_color_table_blue_size_sgi|
  |gl_color_table_format|
  |gl_color_table_format_sgi|
  |gl_color_table_green_size|
  |gl_color_table_green_size_sgi|
  |gl_color_table_intensity_size|
  |gl_color_table_intensity_size_sgi|
  |gl_color_table_luminance_size|
  |gl_color_table_luminance_size_sgi|
  |gl_color_table_red_size|
  |gl_color_table_red_size_sgi|
  |gl_color_table_scale|
  |gl_color_table_scale_sgi|
  |gl_color_table_sgi|
  |gl_color_table_width|
  |gl_color_table_width_sgi|
  |gl_color_writemask|
  |gl_combine|
  |gl_combine4_nv|
  |gl_combine_alpha|
  |gl_combine_alpha_arb|
  |gl_combine_alpha_ext|
  |gl_combine_arb|
  |gl_combine_ext|
  |gl_combiner0_nv|
  |gl_combiner1_nv|
  |gl_combiner2_nv|
  |gl_combiner3_nv|
  |gl_combiner4_nv|
  |gl_combiner5_nv|
  |gl_combiner6_nv|
  |gl_combiner7_nv|
  |gl_combiner_ab_dot_product_nv|
  |gl_combiner_ab_output_nv|
  |gl_combiner_bias_nv|
  |gl_combiner_cd_dot_product_nv|
  |gl_combiner_cd_output_nv|
  |gl_combiner_component_usage_nv|
  |gl_combine_rgb|
  |gl_combine_rgb_arb|
  |gl_combine_rgb_ext|
  |gl_combiner_input_nv|
  |gl_combiner_mapping_nv|
  |gl_combiner_mux_sum_nv|
  |gl_combiner_scale_nv|
  |gl_combiner_sum_output_nv|
  |gl_command_barrier_bit|
  |gl_command_barrier_bit_ext|
  |gl_compare_ref_depth_to_texture_ext|
  |gl_compare_ref_to_texture|
  |gl_compare_ref_to_texture_ext|
  |gl_compare_r_to_texture|
  |gl_compare_r_to_texture_arb|
  |gl_compatible_subroutines|
  |gl_comp_bit_ati|
  |gl_compile|
  |gl_compile_and_execute|
  |gl_compile_status|
  |gl_completion_status_arb|
  |gl_compressed_alpha|
  |gl_compressed_alpha_arb|
  |gl_compressed_intensity|
  |gl_compressed_intensity_arb|
  |gl_compressed_luminance|
  |gl_compressed_luminance_alpha|
  |gl_compressed_luminance_alpha_3dc_ati|
  |gl_compressed_luminance_alpha_arb|
  |gl_compressed_luminance_alpha_latc2_ext|
  |gl_compressed_luminance_arb|
  |gl_compressed_luminance_latc1_ext|
  |gl_compressed_r11_eac|
  |gl_compressed_r11_eac_oes|
  |gl_compressed_red|
  |gl_compressed_red_green_rgtc2_ext|
  |gl_compressed_red_rgtc1|
  |gl_compressed_red_rgtc1_ext|
  |gl_compressed_rg|
  |gl_compressed_rg11_eac|
  |gl_compressed_rg11_eac_oes|
  |gl_compressed_rgb|
  |gl_compressed_rgb8_etc2|
  |gl_compressed_rgb8_etc2_oes|
  |gl_compressed_rgb8_punchthrough_alpha1_etc2|
  |gl_compressed_rgb8_punchthrough_alpha1_etc2_oes|
  |gl_compressed_rgba|
  |gl_compressed_rgba8_etc2_eac|
  |gl_compressed_rgba8_etc2_eac_oes|
  |gl_compressed_rgba_arb|
  |gl_compressed_rgba_astc_10x10|
  |gl_compressed_rgba_astc_10x10_khr|
  |gl_compressed_rgba_astc_10x5|
  |gl_compressed_rgba_astc_10x5_khr|
  |gl_compressed_rgba_astc_10x6|
  |gl_compressed_rgba_astc_10x6_khr|
  |gl_compressed_rgba_astc_10x8|
  |gl_compressed_rgba_astc_10x8_khr|
  |gl_compressed_rgba_astc_12x10|
  |gl_compressed_rgba_astc_12x10_khr|
  |gl_compressed_rgba_astc_12x12|
  |gl_compressed_rgba_astc_12x12_khr|
  |gl_compressed_rgba_astc_3x3x3_oes|
  |gl_compressed_rgba_astc_4x3x3_oes|
  |gl_compressed_rgba_astc_4x4|
  |gl_compressed_rgba_astc_4x4_khr|
  |gl_compressed_rgba_astc_4x4x3_oes|
  |gl_compressed_rgba_astc_4x4x4_oes|
  |gl_compressed_rgba_astc_5x4|
  |gl_compressed_rgba_astc_5x4_khr|
  |gl_compressed_rgba_astc_5x4x4_oes|
  |gl_compressed_rgba_astc_5x5|
  |gl_compressed_rgba_astc_5x5_khr|
  |gl_compressed_rgba_astc_5x5x4_oes|
  |gl_compressed_rgba_astc_5x5x5_oes|
  |gl_compressed_rgba_astc_6x5|
  |gl_compressed_rgba_astc_6x5_khr|
  |gl_compressed_rgba_astc_6x5x5_oes|
  |gl_compressed_rgba_astc_6x6|
  |gl_compressed_rgba_astc_6x6_khr|
  |gl_compressed_rgba_astc_6x6x5_oes|
  |gl_compressed_rgba_astc_6x6x6_oes|
  |gl_compressed_rgba_astc_8x5|
  |gl_compressed_rgba_astc_8x5_khr|
  |gl_compressed_rgba_astc_8x6|
  |gl_compressed_rgba_astc_8x6_khr|
  |gl_compressed_rgba_astc_8x8|
  |gl_compressed_rgba_astc_8x8_khr|
  |gl_compressed_rgba_bptc_unorm|
  |gl_compressed_rgba_bptc_unorm_arb|
  |gl_compressed_rgba_fxt1_3dfx|
  |gl_compressed_rgba_pvrtc_2bppv1_img|
  |gl_compressed_rgba_pvrtc_2bppv2_img|
  |gl_compressed_rgba_pvrtc_4bppv1_img|
  |gl_compressed_rgba_pvrtc_4bppv2_img|
  |gl_compressed_rgb_arb|
  |gl_compressed_rgba_s3tc_dxt1_ext|
  |gl_compressed_rgba_s3tc_dxt3_angle|
  |gl_compressed_rgba_s3tc_dxt3_ext|
  |gl_compressed_rgba_s3tc_dxt5_angle|
  |gl_compressed_rgba_s3tc_dxt5_ext|
  |gl_compressed_rgb_bptc_signed_float|
  |gl_compressed_rgb_bptc_signed_float_arb|
  |gl_compressed_rgb_bptc_unsigned_float|
  |gl_compressed_rgb_bptc_unsigned_float_arb|
  |gl_compressed_rgb_fxt1_3dfx|
  |gl_compressed_rgb_pvrtc_2bppv1_img|
  |gl_compressed_rgb_pvrtc_4bppv1_img|
  |gl_compressed_rgb_s3tc_dxt1_ext|
  |gl_compressed_rg_rgtc2|
  |gl_compressed_signed_luminance_alpha_latc2_ext|
  |gl_compressed_signed_luminance_latc1_ext|
  |gl_compressed_signed_r11_eac|
  |gl_compressed_signed_r11_eac_oes|
  |gl_compressed_signed_red_green_rgtc2_ext|
  |gl_compressed_signed_red_rgtc1|
  |gl_compressed_signed_red_rgtc1_ext|
  |gl_compressed_signed_rg11_eac|
  |gl_compressed_signed_rg11_eac_oes|
  |gl_compressed_signed_rg_rgtc2|
  |gl_compressed_sluminance|
  |gl_compressed_sluminance_alpha|
  |gl_compressed_sluminance_alpha_ext|
  |gl_compressed_sluminance_ext|
  |gl_compressed_srgb|
  |gl_compressed_srgb8_alpha8_astc_10x10|
  |gl_compressed_srgb8_alpha8_astc_10x10_khr|
  |gl_compressed_srgb8_alpha8_astc_10x5|
  |gl_compressed_srgb8_alpha8_astc_10x5_khr|
  |gl_compressed_srgb8_alpha8_astc_10x6|
  |gl_compressed_srgb8_alpha8_astc_10x6_khr|
  |gl_compressed_srgb8_alpha8_astc_10x8|
  |gl_compressed_srgb8_alpha8_astc_10x8_khr|
  |gl_compressed_srgb8_alpha8_astc_12x10|
  |gl_compressed_srgb8_alpha8_astc_12x10_khr|
  |gl_compressed_srgb8_alpha8_astc_12x12|
  |gl_compressed_srgb8_alpha8_astc_12x12_khr|
  |gl_compressed_srgb8_alpha8_astc_3x3x3_oes|
  |gl_compressed_srgb8_alpha8_astc_4x3x3_oes|
  |gl_compressed_srgb8_alpha8_astc_4x4|
  |gl_compressed_srgb8_alpha8_astc_4x4_khr|
  |gl_compressed_srgb8_alpha8_astc_4x4x3_oes|
  |gl_compressed_srgb8_alpha8_astc_4x4x4_oes|
  |gl_compressed_srgb8_alpha8_astc_5x4|
  |gl_compressed_srgb8_alpha8_astc_5x4_khr|
  |gl_compressed_srgb8_alpha8_astc_5x4x4_oes|
  |gl_compressed_srgb8_alpha8_astc_5x5|
  |gl_compressed_srgb8_alpha8_astc_5x5_khr|
  |gl_compressed_srgb8_alpha8_astc_5x5x4_oes|
  |gl_compressed_srgb8_alpha8_astc_5x5x5_oes|
  |gl_compressed_srgb8_alpha8_astc_6x5|
  |gl_compressed_srgb8_alpha8_astc_6x5_khr|
  |gl_compressed_srgb8_alpha8_astc_6x5x5_oes|
  |gl_compressed_srgb8_alpha8_astc_6x6|
  |gl_compressed_srgb8_alpha8_astc_6x6_khr|
  |gl_compressed_srgb8_alpha8_astc_6x6x5_oes|
  |gl_compressed_srgb8_alpha8_astc_6x6x6_oes|
  |gl_compressed_srgb8_alpha8_astc_8x5|
  |gl_compressed_srgb8_alpha8_astc_8x5_khr|
  |gl_compressed_srgb8_alpha8_astc_8x6|
  |gl_compressed_srgb8_alpha8_astc_8x6_khr|
  |gl_compressed_srgb8_alpha8_astc_8x8|
  |gl_compressed_srgb8_alpha8_astc_8x8_khr|
  |gl_compressed_srgb8_alpha8_etc2_eac|
  |gl_compressed_srgb8_alpha8_etc2_eac_oes|
  |gl_compressed_srgb8_etc2|
  |gl_compressed_srgb8_etc2_oes|
  |gl_compressed_srgb8_punchthrough_alpha1_etc2|
  |gl_compressed_srgb8_punchthrough_alpha1_etc2_oes|
  |gl_compressed_srgb_alpha|
  |gl_compressed_srgb_alpha_bptc_unorm|
  |gl_compressed_srgb_alpha_bptc_unorm_arb|
  |gl_compressed_srgb_alpha_ext|
  |gl_compressed_srgb_alpha_pvrtc_2bppv1_ext|
  |gl_compressed_srgb_alpha_pvrtc_2bppv2_img|
  |gl_compressed_srgb_alpha_pvrtc_4bppv1_ext|
  |gl_compressed_srgb_alpha_pvrtc_4bppv2_img|
  |gl_compressed_srgb_alpha_s3tc_dxt1_ext|
  |gl_compressed_srgb_alpha_s3tc_dxt1_nv|
  |gl_compressed_srgb_alpha_s3tc_dxt3_ext|
  |gl_compressed_srgb_alpha_s3tc_dxt3_nv|
  |gl_compressed_srgb_alpha_s3tc_dxt5_ext|
  |gl_compressed_srgb_alpha_s3tc_dxt5_nv|
  |gl_compressed_srgb_ext|
  |gl_compressed_srgb_pvrtc_2bppv1_ext|
  |gl_compressed_srgb_pvrtc_4bppv1_ext|
  |gl_compressed_srgb_s3tc_dxt1_ext|
  |gl_compressed_srgb_s3tc_dxt1_nv|
  |gl_compressed_texture_formats|
  |gl_compressed_texture_formats_arb|
  |gl_compute_program_nv|
  |gl_compute_program_parameter_buffer_nv|
  |gl_compute_shader|
  |gl_compute_shader_bit|
  |gl_compute_shader_invocations_arb|
  |gl_compute_subroutine|
  |gl_compute_subroutine_uniform|
  |gl_compute_texture|
  |gl_compute_work_group_size|
  |gl_con_0_ati|
  |gl_con_10_ati|
  |gl_con_11_ati|
  |gl_con_12_ati|
  |gl_con_13_ati|
  |gl_con_14_ati|
  |gl_con_15_ati|
  |gl_con_16_ati|
  |gl_con_17_ati|
  |gl_con_18_ati|
  |gl_con_19_ati|
  |gl_con_1_ati|
  |gl_con_20_ati|
  |gl_con_21_ati|
  |gl_con_22_ati|
  |gl_con_23_ati|
  |gl_con_24_ati|
  |gl_con_25_ati|
  |gl_con_26_ati|
  |gl_con_27_ati|
  |gl_con_28_ati|
  |gl_con_29_ati|
  |gl_con_2_ati|
  |gl_con_30_ati|
  |gl_con_31_ati|
  |gl_con_3_ati|
  |gl_con_4_ati|
  |gl_con_5_ati|
  |gl_con_6_ati|
  |gl_con_7_ati|
  |gl_con_8_ati|
  |gl_con_9_ati|
  |gl_condition_satisfied|
  |gl_condition_satisfied_apple|
  |gl_conformant_nv|
  |gl_conic_curve_to_nv|
  |gl_conjoint_nv|
  |gl_conservative_raster_dilate_granularity_nv|
  |gl_conservative_raster_dilate_nv|
  |gl_conservative_raster_dilate_range_nv|
  |gl_conservative_rasterization_nv|
  |gl_conserve_memory_hint_pgi|
  |gl_constant|
  |gl_constant_alpha|
  |gl_constant_alpha_ext|
  |gl_constant_arb|
  |gl_constant_attenuation|
  |gl_constant_border|
  |gl_constant_border_hp|
  |gl_constant_color|
  |gl_constant_color0_nv|
  |gl_constant_color1_nv|
  |gl_constant_color_ext|
  |gl_constant_ext|
  |gl_constant_nv|
  |gl_const_eye_nv|
  |gl_context_compatibility_profile_bit|
  |gl_context_core_profile_bit|
  |gl_context_flag_debug_bit|
  |gl_context_flag_debug_bit_khr|
  |gl_context_flag_forward_compatible_bit|
  |gl_context_flag_no_error_bit_khr|
  |gl_context_flag_robust_access_bit|
  |gl_context_flag_robust_access_bit_arb|
  |gl_context_flags|
  |gl_context_lost|
  |gl_context_lost_khr|
  |gl_context_lost_webgl|
  |gl_context_profile_mask|
  |gl_context_release_behavior|
  |gl_context_release_behavior_flush|
  |gl_context_release_behavior_flush_khr|
  |gl_context_release_behavior_khr|
  |gl_context_robust_access|
  |gl_context_robust_access_ext|
  |gl_context_robust_access_khr|
  |gl_continuous_amd|
  |gl_contrast_nv|
  |gl_convex_hull_nv|
  |gl_convolution_1d|
  |gl_convolution_1d_ext|
  |gl_convolution_2d|
  |gl_convolution_2d_ext|
  |gl_convolution_border_color|
  |gl_convolution_border_color_hp|
  |gl_convolution_border_mode|
  |gl_convolution_border_mode_ext|
  |gl_convolution_filter_bias|
  |gl_convolution_filter_bias_ext|
  |gl_convolution_filter_scale|
  |gl_convolution_filter_scale_ext|
  |gl_convolution_format|
  |gl_convolution_format_ext|
  |gl_convolution_height|
  |gl_convolution_height_ext|
  |gl_convolution_hint_sgix|
  |gl_convolution_width|
  |gl_convolution_width_ext|
  |gl_coord_replace|
  |gl_coord_replace_arb|
  |gl_coord_replace_nv|
  |gl_coord_replace_oes|
  |gl_copy|
  |gl_copy_inverted|
  |gl_copy_pixel_token|
  |gl_copy_read_buffer|
  |gl_copy_read_buffer_binding|
  |gl_copy_read_buffer_nv|
  |gl_copy_write_buffer|
  |gl_copy_write_buffer_binding|
  |gl_copy_write_buffer_nv|
  |gl_count_down_nv|
  |gl_counter_range_amd|
  |gl_counter_type_amd|
  |gl_count_up_nv|
  |gl_coverage_all_fragments_nv|
  |gl_coverage_attachment_nv|
  |gl_coverage_automatic_nv|
  |gl_coverage_buffer_bit_nv|
  |gl_coverage_buffers_nv|
  |gl_coverage_component4_nv|
  |gl_coverage_component_nv|
  |gl_coverage_edge_fragments_nv|
  |gl_coverage_modulation_nv|
  |gl_coverage_modulation_table_nv|
  |gl_coverage_modulation_table_size_nv|
  |gl_coverage_samples_nv|
  |gl_cpu_optimized_qcom|
  |gl_cubic_curve_to_nv|
  |gl_cubic_ext|
  |gl_cubic_hp|
  |gl_cubic_img|
  |gl_cubic_mipmap_linear_img|
  |gl_cubic_mipmap_nearest_img|
  |gl_cull_face|
  |gl_cull_face_mode|
  |gl_cull_fragment_nv|
  |gl_cull_modes_nv|
  |gl_cull_vertex_ext|
  |gl_cull_vertex_eye_position_ext|
  |gl_cull_vertex_ibm|
  |gl_cull_vertex_object_position_ext|
  |gl_current_attrib_nv|
  |gl_current_binormal_ext|
  |gl_current_bit|
  |gl_current_color|
  |gl_current_fog_coord|
  |gl_current_fog_coordinate|
  |gl_current_fog_coordinate_ext|
  |gl_current_index|
  |gl_current_matrix_arb|
  |gl_current_matrix_index_arb|
  |gl_current_matrix_nv|
  |gl_current_matrix_stack_depth_arb|
  |gl_current_matrix_stack_depth_nv|
  |gl_current_normal|
  |gl_current_occlusion_query_id_nv|
  |gl_current_palette_matrix_arb|
  |gl_current_palette_matrix_oes|
  |gl_current_program|
  |gl_current_query|
  |gl_current_query_arb|
  |gl_current_query_ext|
  |gl_current_raster_color|
  |gl_current_raster_distance|
  |gl_current_raster_index|
  |gl_current_raster_normal_sgix|
  |gl_current_raster_position|
  |gl_current_raster_position_valid|
  |gl_current_raster_secondary_color|
  |gl_current_raster_texture_coords|
  |gl_current_secondary_color|
  |gl_current_secondary_color_ext|
  |gl_current_tangent_ext|
  |gl_current_texture_coords|
  |gl_current_time_nv|
  |gl_current_vertex_attrib|
  |gl_current_vertex_attrib_arb|
  |gl_current_vertex_ext|
  |gl_current_vertex_weight_ext|
  |gl_current_weight_arb|
  |gl_cw|
  |gl_darken|
  |gl_darken_khr|
  |gl_darken_nv|
  |gl_data_buffer_amd|
  |gl_debug_assert_mesa|
  |gl_debug_callback_function|
  |gl_debug_callback_function_arb|
  |gl_debug_callback_function_khr|
  |gl_debug_callback_user_param|
  |gl_debug_callback_user_param_arb|
  |gl_debug_callback_user_param_khr|
  |gl_debug_category_api_error_amd|
  |gl_debug_category_application_amd|
  |gl_debug_category_deprecation_amd|
  |gl_debug_category_other_amd|
  |gl_debug_category_performance_amd|
  |gl_debug_category_shader_compiler_amd|
  |gl_debug_category_undefined_behavior_amd|
  |gl_debug_category_window_system_amd|
  |gl_debug_group_stack_depth|
  |gl_debug_group_stack_depth_khr|
  |gl_debug_logged_messages|
  |gl_debug_logged_messages_amd|
  |gl_debug_logged_messages_arb|
  |gl_debug_logged_messages_khr|
  |gl_debug_next_logged_message_length|
  |gl_debug_next_logged_message_length_arb|
  |gl_debug_next_logged_message_length_khr|
  |gl_debug_object_mesa|
  |gl_debug_output|
  |gl_debug_output_khr|
  |gl_debug_output_synchronous|
  |gl_debug_output_synchronous_arb|
  |gl_debug_output_synchronous_khr|
  |gl_debug_print_mesa|
  |gl_debug_severity_high|
  |gl_debug_severity_high_amd|
  |gl_debug_severity_high_arb|
  |gl_debug_severity_high_khr|
  |gl_debug_severity_low|
  |gl_debug_severity_low_amd|
  |gl_debug_severity_low_arb|
  |gl_debug_severity_low_khr|
  |gl_debug_severity_medium|
  |gl_debug_severity_medium_amd|
  |gl_debug_severity_medium_arb|
  |gl_debug_severity_medium_khr|
  |gl_debug_severity_notification|
  |gl_debug_severity_notification_khr|
  |gl_debug_source_api|
  |gl_debug_source_api_arb|
  |gl_debug_source_api_khr|
  |gl_debug_source_application|
  |gl_debug_source_application_arb|
  |gl_debug_source_application_khr|
  |gl_debug_source_other|
  |gl_debug_source_other_arb|
  |gl_debug_source_other_khr|
  |gl_debug_source_shader_compiler|
  |gl_debug_source_shader_compiler_arb|
  |gl_debug_source_shader_compiler_khr|
  |gl_debug_source_third_party|
  |gl_debug_source_third_party_arb|
  |gl_debug_source_third_party_khr|
  |gl_debug_source_window_system|
  |gl_debug_source_window_system_arb|
  |gl_debug_source_window_system_khr|
  |gl_debug_type_deprecated_behavior|
  |gl_debug_type_deprecated_behavior_arb|
  |gl_debug_type_deprecated_behavior_khr|
  |gl_debug_type_error|
  |gl_debug_type_error_arb|
  |gl_debug_type_error_khr|
  |gl_debug_type_marker|
  |gl_debug_type_marker_khr|
  |gl_debug_type_other|
  |gl_debug_type_other_arb|
  |gl_debug_type_other_khr|
  |gl_debug_type_performance|
  |gl_debug_type_performance_arb|
  |gl_debug_type_performance_khr|
  |gl_debug_type_pop_group|
  |gl_debug_type_pop_group_khr|
  |gl_debug_type_portability|
  |gl_debug_type_portability_arb|
  |gl_debug_type_portability_khr|
  |gl_debug_type_push_group|
  |gl_debug_type_push_group_khr|
  |gl_debug_type_undefined_behavior|
  |gl_debug_type_undefined_behavior_arb|
  |gl_debug_type_undefined_behavior_khr|
  |gl_decal|
  |gl_decode_ext|
  |gl_decr|
  |gl_decr_wrap|
  |gl_decr_wrap_ext|
  |gl_decr_wrap_oes|
  |gl_deformations_mask_sgix|
  |gl_delete_status|
  |gl_dependent_ar_texture_2d_nv|
  |gl_dependent_gb_texture_2d_nv|
  |gl_dependent_hilo_texture_2d_nv|
  |gl_dependent_rgb_texture_3d_nv|
  |gl_dependent_rgb_texture_cube_map_nv|
  |gl_depth|
  |gl_depth24_stencil8|
  |gl_depth24_stencil8_ext|
  |gl_depth24_stencil8_oes|
  |gl_depth32f_stencil8|
  |gl_depth32f_stencil8_nv|
  |gl_depth_attachment|
  |gl_depth_attachment_ext|
  |gl_depth_attachment_oes|
  |gl_depth_bias|
  |gl_depth_bits|
  |gl_depth_bounds_ext|
  |gl_depth_bounds_test_ext|
  |gl_depth_buffer_bit|
  |gl_depth_buffer_bit0_qcom|
  |gl_depth_buffer_bit1_qcom|
  |gl_depth_buffer_bit2_qcom|
  |gl_depth_buffer_bit3_qcom|
  |gl_depth_buffer_bit4_qcom|
  |gl_depth_buffer_bit5_qcom|
  |gl_depth_buffer_bit6_qcom|
  |gl_depth_buffer_bit7_qcom|
  |gl_depth_buffer_float_mode_nv|
  |gl_depth_clamp|
  |gl_depth_clamp_far_amd|
  |gl_depth_clamp_near_amd|
  |gl_depth_clamp_nv|
  |gl_depth_clear_value|
  |gl_depth_component|
  |gl_depth_component16|
  |gl_depth_component16_arb|
  |gl_depth_component16_nonlinear_nv|
  |gl_depth_component16_oes|
  |gl_depth_component16_sgix|
  |gl_depth_component24|
  |gl_depth_component24_arb|
  |gl_depth_component24_oes|
  |gl_depth_component24_sgix|
  |gl_depth_component32|
  |gl_depth_component32_arb|
  |gl_depth_component32f|
  |gl_depth_component32f_nv|
  |gl_depth_component32_oes|
  |gl_depth_component32_sgix|
  |gl_depth_components|
  |gl_depth_ext|
  |gl_depth_func|
  |gl_depth_pass_instrument_counters_sgix|
  |gl_depth_pass_instrument_max_sgix|
  |gl_depth_pass_instrument_sgix|
  |gl_depth_range|
  |gl_depth_renderable|
  |gl_depth_samples_nv|
  |gl_depth_scale|
  |gl_depth_stencil|
  |gl_depth_stencil_attachment|
  |gl_depth_stencil_ext|
  |gl_depth_stencil_mesa|
  |gl_depth_stencil_nv|
  |gl_depth_stencil_oes|
  |gl_depth_stencil_texture_mode|
  |gl_depth_stencil_to_bgra_nv|
  |gl_depth_stencil_to_rgba_nv|
  |gl_depth_test|
  |gl_depth_texture_mode|
  |gl_depth_texture_mode_arb|
  |gl_depth_writemask|
  |gl_detail_texture_2d_binding_sgis|
  |gl_detail_texture_2d_sgis|
  |gl_detail_texture_func_points_sgis|
  |gl_detail_texture_level_sgis|
  |gl_detail_texture_mode_sgis|
  |gl_difference|
  |gl_difference_khr|
  |gl_difference_nv|
  |gl_diffuse|
  |gl_discard_ati|
  |gl_discard_nv|
  |gl_discrete_amd|
  |gl_disjoint_nv|
  |gl_dispatch_indirect_buffer|
  |gl_dispatch_indirect_buffer_binding|
  |gl_display_list|
  |gl_distance_attenuation_ext|
  |gl_distance_attenuation_sgis|
  |gl_dither|
  |gl_dmp_program_binary_dmp|
  |gl_domain|
  |gl_dont_care|
  |gl_dot2_add_ati|
  |gl_dot3_ati|
  |gl_dot3_rgb|
  |gl_dot3_rgba|
  |gl_dot3_rgba_arb|
  |gl_dot3_rgba_ext|
  |gl_dot3_rgba_img|
  |gl_dot3_rgb_arb|
  |gl_dot3_rgb_ext|
  |gl_dot4_ati|
  |gl_dot_product_affine_depth_replace_nv|
  |gl_dot_product_const_eye_reflect_cube_map_nv|
  |gl_dot_product_depth_replace_nv|
  |gl_dot_product_diffuse_cube_map_nv|
  |gl_dot_product_nv|
  |gl_dot_product_pass_through_nv|
  |gl_dot_product_reflect_cube_map_nv|
  |gl_dot_product_texture_1d_nv|
  |gl_dot_product_texture_2d_nv|
  |gl_dot_product_texture_3d_nv|
  |gl_dot_product_texture_cube_map_nv|
  |gl_dot_product_texture_rectangle_nv|
  |gl_double|
  |gl_doublebuffer|
  |gl_double_ext|
  |gl_double_mat2|
  |gl_double_mat2_ext|
  |gl_double_mat2x3|
  |gl_double_mat2x3_ext|
  |gl_double_mat2x4|
  |gl_double_mat2x4_ext|
  |gl_double_mat3|
  |gl_double_mat3_ext|
  |gl_double_mat3x2|
  |gl_double_mat3x2_ext|
  |gl_double_mat3x4|
  |gl_double_mat3x4_ext|
  |gl_double_mat4|
  |gl_double_mat4_ext|
  |gl_double_mat4x2|
  |gl_double_mat4x2_ext|
  |gl_double_mat4x3|
  |gl_double_mat4x3_ext|
  |gl_double_vec2|
  |gl_double_vec2_ext|
  |gl_double_vec3|
  |gl_double_vec3_ext|
  |gl_double_vec4|
  |gl_double_vec4_ext|
  |gl_draw_arrays_command_nv|
  |gl_draw_arrays_instanced_command_nv|
  |gl_draw_arrays_strip_command_nv|
  |gl_draw_buffer|
  |gl_draw_buffer0|
  |gl_draw_buffer0_arb|
  |gl_draw_buffer0_ati|
  |gl_draw_buffer0_ext|
  |gl_draw_buffer0_nv|
  |gl_draw_buffer1|
  |gl_draw_buffer10|
  |gl_draw_buffer10_arb|
  |gl_draw_buffer10_ati|
  |gl_draw_buffer10_ext|
  |gl_draw_buffer10_nv|
  |gl_draw_buffer11|
  |gl_draw_buffer11_arb|
  |gl_draw_buffer11_ati|
  |gl_draw_buffer11_ext|
  |gl_draw_buffer11_nv|
  |gl_draw_buffer12|
  |gl_draw_buffer12_arb|
  |gl_draw_buffer12_ati|
  |gl_draw_buffer12_ext|
  |gl_draw_buffer12_nv|
  |gl_draw_buffer13|
  |gl_draw_buffer13_arb|
  |gl_draw_buffer13_ati|
  |gl_draw_buffer13_ext|
  |gl_draw_buffer13_nv|
  |gl_draw_buffer14|
  |gl_draw_buffer14_arb|
  |gl_draw_buffer14_ati|
  |gl_draw_buffer14_ext|
  |gl_draw_buffer14_nv|
  |gl_draw_buffer15|
  |gl_draw_buffer15_arb|
  |gl_draw_buffer15_ati|
  |gl_draw_buffer15_ext|
  |gl_draw_buffer15_nv|
  |gl_draw_buffer1_arb|
  |gl_draw_buffer1_ati|
  |gl_draw_buffer1_ext|
  |gl_draw_buffer1_nv|
  |gl_draw_buffer2|
  |gl_draw_buffer2_arb|
  |gl_draw_buffer2_ati|
  |gl_draw_buffer2_ext|
  |gl_draw_buffer2_nv|
  |gl_draw_buffer3|
  |gl_draw_buffer3_arb|
  |gl_draw_buffer3_ati|
  |gl_draw_buffer3_ext|
  |gl_draw_buffer3_nv|
  |gl_draw_buffer4|
  |gl_draw_buffer4_arb|
  |gl_draw_buffer4_ati|
  |gl_draw_buffer4_ext|
  |gl_draw_buffer4_nv|
  |gl_draw_buffer5|
  |gl_draw_buffer5_arb|
  |gl_draw_buffer5_ati|
  |gl_draw_buffer5_ext|
  |gl_draw_buffer5_nv|
  |gl_draw_buffer6|
  |gl_draw_buffer6_arb|
  |gl_draw_buffer6_ati|
  |gl_draw_buffer6_ext|
  |gl_draw_buffer6_nv|
  |gl_draw_buffer7|
  |gl_draw_buffer7_arb|
  |gl_draw_buffer7_ati|
  |gl_draw_buffer7_ext|
  |gl_draw_buffer7_nv|
  |gl_draw_buffer8|
  |gl_draw_buffer8_arb|
  |gl_draw_buffer8_ati|
  |gl_draw_buffer8_ext|
  |gl_draw_buffer8_nv|
  |gl_draw_buffer9|
  |gl_draw_buffer9_arb|
  |gl_draw_buffer9_ati|
  |gl_draw_buffer9_ext|
  |gl_draw_buffer9_nv|
  |gl_draw_buffer_ext|
  |gl_draw_elements_command_nv|
  |gl_draw_elements_instanced_command_nv|
  |gl_draw_elements_strip_command_nv|
  |gl_draw_framebuffer|
  |gl_draw_framebuffer_angle|
  |gl_draw_framebuffer_apple|
  |gl_draw_framebuffer_binding|
  |gl_draw_framebuffer_binding_angle|
  |gl_draw_framebuffer_binding_apple|
  |gl_draw_framebuffer_binding_ext|
  |gl_draw_framebuffer_binding_nv|
  |gl_draw_framebuffer_ext|
  |gl_draw_framebuffer_nv|
  |gl_draw_indirect_address_nv|
  |gl_draw_indirect_buffer|
  |gl_draw_indirect_buffer_binding|
  |gl_draw_indirect_length_nv|
  |gl_draw_indirect_unified_nv|
  |gl_draw_pixels_apple|
  |gl_draw_pixel_token|
  |gl_ds_bias_nv|
  |gl_dsdt8_mag8_intensity8_nv|
  |gl_dsdt8_mag8_nv|
  |gl_dsdt8_nv|
  |gl_dsdt_mag_intensity_nv|
  |gl_dsdt_mag_nv|
  |gl_dsdt_mag_vib_nv|
  |gl_dsdt_nv|
  |gl_ds_scale_nv|
  |gl_dst_alpha|
  |gl_dst_atop_nv|
  |gl_dst_color|
  |gl_dst_in_nv|
  |gl_dst_nv|
  |gl_dst_out_nv|
  |gl_dst_over_nv|
  |gl_dt_bias_nv|
  |gl_dt_scale_nv|
  |gl_du8dv8_ati|
  |gl_dual_alpha12_sgis|
  |gl_dual_alpha16_sgis|
  |gl_dual_alpha4_sgis|
  |gl_dual_alpha8_sgis|
  |gl_dual_intensity12_sgis|
  |gl_dual_intensity16_sgis|
  |gl_dual_intensity4_sgis|
  |gl_dual_intensity8_sgis|
  |gl_dual_luminance12_sgis|
  |gl_dual_luminance16_sgis|
  |gl_dual_luminance4_sgis|
  |gl_dual_luminance8_sgis|
  |gl_dual_luminance_alpha4_sgis|
  |gl_dual_luminance_alpha8_sgis|
  |gl_dual_texture_select_sgis|
  |gl_dudv_ati|
  |gl_dup_first_cubic_curve_to_nv|
  |gl_dup_last_cubic_curve_to_nv|
  |gl_dynamic_ati|
  |gl_dynamic_copy|
  |gl_dynamic_copy_arb|
  |gl_dynamic_draw|
  |gl_dynamic_draw_arb|
  |gl_dynamic_read|
  |gl_dynamic_read_arb|
  |gl_dynamic_storage_bit|
  |gl_dynamic_storage_bit_ext|
  |gl_edge_flag|
  |gl_edge_flag_array|
  |gl_edge_flag_array_address_nv|
  |gl_edge_flag_array_buffer_binding|
  |gl_edge_flag_array_buffer_binding_arb|
  |gl_edge_flag_array_count_ext|
  |gl_edge_flag_array_ext|
  |gl_edge_flag_array_length_nv|
  |gl_edge_flag_array_list_ibm|
  |gl_edge_flag_array_list_stride_ibm|
  |gl_edge_flag_array_pointer|
  |gl_edge_flag_array_pointer_ext|
  |gl_edge_flag_array_stride|
  |gl_edge_flag_array_stride_ext|
  |gl_edgeflag_bit_pgi|
  |gl_effective_raster_samples_ext|
  |gl_eighth_bit_ati|
  |gl_element_address_command_nv|
  |gl_element_array_address_nv|
  |gl_element_array_apple|
  |gl_element_array_ati|
  |gl_element_array_barrier_bit|
  |gl_element_array_barrier_bit_ext|
  |gl_element_array_buffer|
  |gl_element_array_buffer_arb|
  |gl_element_array_buffer_binding|
  |gl_element_array_buffer_binding_arb|
  |gl_element_array_length_nv|
  |gl_element_array_pointer_apple|
  |gl_element_array_pointer_ati|
  |gl_element_array_type_apple|
  |gl_element_array_type_ati|
  |gl_element_array_unified_nv|
  |gl_emboss_constant_nv|
  |gl_emboss_light_nv|
  |gl_emboss_map_nv|
  |gl_emission|
  |gl_enable_bit|
  |gl_equal|
  |gl_equiv|
  |gl_etc1_rgb8_oes|
  |gl_etc1_srgb8_nv|
  |gl_e_times_f_nv|
  |gl_eval_2d_nv|
  |gl_eval_bit|
  |gl_eval_fractional_tessellation_nv|
  |gl_eval_triangular_2d_nv|
  |gl_eval_vertex_attrib0_nv|
  |gl_eval_vertex_attrib10_nv|
  |gl_eval_vertex_attrib11_nv|
  |gl_eval_vertex_attrib12_nv|
  |gl_eval_vertex_attrib13_nv|
  |gl_eval_vertex_attrib14_nv|
  |gl_eval_vertex_attrib15_nv|
  |gl_eval_vertex_attrib1_nv|
  |gl_eval_vertex_attrib2_nv|
  |gl_eval_vertex_attrib3_nv|
  |gl_eval_vertex_attrib4_nv|
  |gl_eval_vertex_attrib5_nv|
  |gl_eval_vertex_attrib6_nv|
  |gl_eval_vertex_attrib7_nv|
  |gl_eval_vertex_attrib8_nv|
  |gl_eval_vertex_attrib9_nv|
  |gl_exclusion|
  |gl_exclusion_khr|
  |gl_exclusion_nv|
  |gl_exp|
  |gl_exp2|
  |gl_expand_negate_nv|
  |gl_expand_normal_nv|
  |gl_extensions|
  |gl_external_virtual_memory_buffer_amd|
  |gl_eye_distance_to_line_sgis|
  |gl_eye_distance_to_point_sgis|
  |gl_eye_linear|
  |gl_eye_linear_nv|
  |gl_eye_line_sgis|
  |gl_eye_plane|
  |gl_eye_plane_absolute_nv|
  |gl_eye_point_sgis|
  |gl_eye_radial_nv|
  |gl_factor_alpha_modulate_img|
  |gl_factor_max_amd|
  |gl_factor_min_amd|
  |gl_failure_nv|
  |gl_false|
  |gl_fastest|
  |gl_feedback|
  |gl_feedback_buffer_pointer|
  |gl_feedback_buffer_size|
  |gl_feedback_buffer_type|
  |gl_fence_apple|
  |gl_fence_condition_nv|
  |gl_fence_status_nv|
  |gl_fetch_per_sample_arm|
  |gl_field_lower_nv|
  |gl_fields_nv|
  |gl_field_upper_nv|
  |gl_file_name_nv|
  |gl_fill|
  |gl_fill_nv|
  |gl_fill_rectangle_nv|
  |gl_filter|
  |gl_filter4_sgis|
  |gl_first_to_rest_nv|
  |gl_first_vertex_convention|
  |gl_first_vertex_convention_ext|
  |gl_first_vertex_convention_oes|
  |gl_fixed|
  |gl_fixed_oes|
  |gl_fixed_only|
  |gl_fixed_only_arb|
  |gl_flat|
  |gl_float|
  |gl_float16_nv|
  |gl_float16_vec2_nv|
  |gl_float16_vec3_nv|
  |gl_float16_vec4_nv|
  |gl_float_32_unsigned_int_24_8_rev|
  |gl_float_32_unsigned_int_24_8_rev_nv|
  |gl_float_clear_color_value_nv|
  |gl_float_mat2|
  |gl_float_mat2_arb|
  |gl_float_mat2x3|
  |gl_float_mat2x3_nv|
  |gl_float_mat2x4|
  |gl_float_mat2x4_nv|
  |gl_float_mat3|
  |gl_float_mat3_arb|
  |gl_float_mat3x2|
  |gl_float_mat3x2_nv|
  |gl_float_mat3x4|
  |gl_float_mat3x4_nv|
  |gl_float_mat4|
  |gl_float_mat4_arb|
  |gl_float_mat4x2|
  |gl_float_mat4x2_nv|
  |gl_float_mat4x3|
  |gl_float_mat4x3_nv|
  |gl_float_r16_nv|
  |gl_float_r32_nv|
  |gl_float_rg16_nv|
  |gl_float_rg32_nv|
  |gl_float_rgb16_nv|
  |gl_float_rgb32_nv|
  |gl_float_rgba16_nv|
  |gl_float_rgba32_nv|
  |gl_float_rgba_mode_nv|
  |gl_float_rgba_nv|
  |gl_float_rgb_nv|
  |gl_float_rg_nv|
  |gl_float_r_nv|
  |gl_float_vec2|
  |gl_float_vec2_arb|
  |gl_float_vec3|
  |gl_float_vec3_arb|
  |gl_float_vec4|
  |gl_float_vec4_arb|
  |gl_fog|
  |gl_fog_bit|
  |gl_fog_color|
  |gl_fog_coord|
  |gl_fog_coord_array|
  |gl_fog_coord_array_address_nv|
  |gl_fog_coord_array_buffer_binding|
  |gl_fog_coord_array_length_nv|
  |gl_fog_coord_array_pointer|
  |gl_fog_coord_array_stride|
  |gl_fog_coord_array_type|
  |gl_fog_coordinate|
  |gl_fog_coordinate_array|
  |gl_fog_coordinate_array_buffer_binding|
  |gl_fog_coordinate_array_buffer_binding_arb|
  |gl_fog_coordinate_array_ext|
  |gl_fog_coordinate_array_list_ibm|
  |gl_fog_coordinate_array_list_stride_ibm|
  |gl_fog_coordinate_array_pointer|
  |gl_fog_coordinate_array_pointer_ext|
  |gl_fog_coordinate_array_stride|
  |gl_fog_coordinate_array_stride_ext|
  |gl_fog_coordinate_array_type|
  |gl_fog_coordinate_array_type_ext|
  |gl_fog_coordinate_ext|
  |gl_fog_coordinate_source|
  |gl_fog_coordinate_source_ext|
  |gl_fog_coord_src|
  |gl_fog_density|
  |gl_fog_distance_mode_nv|
  |gl_fog_end|
  |gl_fog_func_points_sgis|
  |gl_fog_func_sgis|
  |gl_fog_hint|
  |gl_fog_index|
  |gl_fog_mode|
  |gl_fog_offset_sgix|
  |gl_fog_offset_value_sgix|
  |gl_fog_specular_texture_win|
  |gl_fog_start|
  |gl_font_ascender_bit_nv|
  |gl_font_descender_bit_nv|
  |gl_font_glyphs_available_nv|
  |gl_font_has_kerning_bit_nv|
  |gl_font_height_bit_nv|
  |gl_font_max_advance_height_bit_nv|
  |gl_font_max_advance_width_bit_nv|
  |gl_font_num_glyph_indices_bit_nv|
  |gl_font_target_unavailable_nv|
  |gl_font_unavailable_nv|
  |gl_font_underline_position_bit_nv|
  |gl_font_underline_thickness_bit_nv|
  |gl_font_unintelligible_nv|
  |gl_font_units_per_em_bit_nv|
  |gl_font_x_max_bounds_bit_nv|
  |gl_font_x_min_bounds_bit_nv|
  |gl_font_y_max_bounds_bit_nv|
  |gl_font_y_min_bounds_bit_nv|
  |gl_force_blue_to_one_nv|
  |gl_format_subsample_24_24_oml|
  |gl_format_subsample_244_244_oml|
  |gl_fractional_even|
  |gl_fractional_even_ext|
  |gl_fractional_even_oes|
  |gl_fractional_odd|
  |gl_fractional_odd_ext|
  |gl_fractional_odd_oes|
  |gl_fragment_alpha_modulate_img|
  |gl_fragment_color_ext|
  |gl_fragment_color_material_face_sgix|
  |gl_fragment_color_material_parameter_sgix|
  |gl_fragment_color_material_sgix|
  |gl_fragment_coverage_color_nv|
  |gl_fragment_coverage_to_color_nv|
  |gl_fragment_depth|
  |gl_fragment_depth_ext|
  |gl_fragment_input_nv|
  |gl_fragment_interpolation_offset_bits|
  |gl_fragment_interpolation_offset_bits_oes|
  |gl_fragment_light0_sgix|
  |gl_fragment_light1_sgix|
  |gl_fragment_light2_sgix|
  |gl_fragment_light3_sgix|
  |gl_fragment_light4_sgix|
  |gl_fragment_light5_sgix|
  |gl_fragment_light6_sgix|
  |gl_fragment_light7_sgix|
  |gl_fragment_lighting_sgix|
  |gl_fragment_light_model_ambient_sgix|
  |gl_fragment_light_model_local_viewer_sgix|
  |gl_fragment_light_model_normal_interpolation_sgix|
  |gl_fragment_light_model_two_side_sgix|
  |gl_fragment_material_ext|
  |gl_fragment_normal_ext|
  |gl_fragment_program_arb|
  |gl_fragment_program_binding_nv|
  |gl_fragment_program_callback_data_mesa|
  |gl_fragment_program_callback_func_mesa|
  |gl_fragment_program_callback_mesa|
  |gl_fragment_program_interpolation_offset_bits_nv|
  |gl_fragment_program_nv|
  |gl_fragment_program_parameter_buffer_nv|
  |gl_fragment_program_position_mesa|
  |gl_fragment_shader|
  |gl_fragment_shader_arb|
  |gl_fragment_shader_ati|
  |gl_fragment_shader_bit|
  |gl_fragment_shader_bit_ext|
  |gl_fragment_shader_derivative_hint|
  |gl_fragment_shader_derivative_hint_arb|
  |gl_fragment_shader_derivative_hint_oes|
  |gl_fragment_shader_discards_samples_ext|
  |gl_fragment_shader_framebuffer_fetch_mrt_arm|
  |gl_fragment_shader_invocations_arb|
  |gl_fragments_instrument_counters_sgix|
  |gl_fragments_instrument_max_sgix|
  |gl_fragments_instrument_sgix|
  |gl_fragment_subroutine|
  |gl_fragment_subroutine_uniform|
  |gl_fragment_texture|
  |gl_framebuffer|
  |gl_framebuffer_attachment_alpha_size|
  |gl_framebuffer_attachment_angle|
  |gl_framebuffer_attachment_blue_size|
  |gl_framebuffer_attachment_color_encoding|
  |gl_framebuffer_attachment_color_encoding_ext|
  |gl_framebuffer_attachment_component_type|
  |gl_framebuffer_attachment_component_type_ext|
  |gl_framebuffer_attachment_depth_size|
  |gl_framebuffer_attachment_green_size|
  |gl_framebuffer_attachment_layered|
  |gl_framebuffer_attachment_layered_arb|
  |gl_framebuffer_attachment_layered_ext|
  |gl_framebuffer_attachment_layered_oes|
  |gl_framebuffer_attachment_object_name|
  |gl_framebuffer_attachment_object_name_ext|
  |gl_framebuffer_attachment_object_name_oes|
  |gl_framebuffer_attachment_object_type|
  |gl_framebuffer_attachment_object_type_ext|
  |gl_framebuffer_attachment_object_type_oes|
  |gl_framebuffer_attachment_red_size|
  |gl_framebuffer_attachment_stencil_size|
  |gl_framebuffer_attachment_texture_3d_zoffset_ext|
  |gl_framebuffer_attachment_texture_3d_zoffset_oes|
  |gl_framebuffer_attachment_texture_base_view_index_ovr|
  |gl_framebuffer_attachment_texture_cube_map_face|
  |gl_framebuffer_attachment_texture_cube_map_face_ext|
  |gl_framebuffer_attachment_texture_cube_map_face_oes|
  |gl_framebuffer_attachment_texture_layer|
  |gl_framebuffer_attachment_texture_layer_ext|
  |gl_framebuffer_attachment_texture_level|
  |gl_framebuffer_attachment_texture_level_ext|
  |gl_framebuffer_attachment_texture_level_oes|
  |gl_framebuffer_attachment_texture_num_views_ovr|
  |gl_framebuffer_attachment_texture_samples_ext|
  |gl_framebuffer_barrier_bit|
  |gl_framebuffer_barrier_bit_ext|
  |gl_framebuffer_binding|
  |gl_framebuffer_binding_angle|
  |gl_framebuffer_binding_ext|
  |gl_framebuffer_binding_oes|
  |gl_framebuffer_blend|
  |gl_framebuffer_complete|
  |gl_framebuffer_complete_ext|
  |gl_framebuffer_complete_oes|
  |gl_framebuffer_default|
  |gl_framebuffer_default_fixed_sample_locations|
  |gl_framebuffer_default_height|
  |gl_framebuffer_default_layers|
  |gl_framebuffer_default_layers_ext|
  |gl_framebuffer_default_layers_oes|
  |gl_framebuffer_default_samples|
  |gl_framebuffer_default_width|
  |gl_framebuffer_ext|
  |gl_framebuffer_incomplete_attachment|
  |gl_framebuffer_incomplete_attachment_ext|
  |gl_framebuffer_incomplete_attachment_oes|
  |gl_framebuffer_incomplete_dimensions|
  |gl_framebuffer_incomplete_dimensions_ext|
  |gl_framebuffer_incomplete_dimensions_oes|
  |gl_framebuffer_incomplete_draw_buffer|
  |gl_framebuffer_incomplete_draw_buffer_ext|
  |gl_framebuffer_incomplete_draw_buffer_oes|
  |gl_framebuffer_incomplete_formats_ext|
  |gl_framebuffer_incomplete_formats_oes|
  |gl_framebuffer_incomplete_layer_count_arb|
  |gl_framebuffer_incomplete_layer_count_ext|
  |gl_framebuffer_incomplete_layer_targets|
  |gl_framebuffer_incomplete_layer_targets_arb|
  |gl_framebuffer_incomplete_layer_targets_ext|
  |gl_framebuffer_incomplete_layer_targets_oes|
  |gl_framebuffer_incomplete_missing_attachment|
  |gl_framebuffer_incomplete_missing_attachment_ext|
  |gl_framebuffer_incomplete_missing_attachment_oes|
  |gl_framebuffer_incomplete_multisample|
  |gl_framebuffer_incomplete_multisample_angle|
  |gl_framebuffer_incomplete_multisample_apple|
  |gl_framebuffer_incomplete_multisample_ext|
  |gl_framebuffer_incomplete_multisample_img|
  |gl_framebuffer_incomplete_multisample_nv|
  |gl_framebuffer_incomplete_read_buffer|
  |gl_framebuffer_incomplete_read_buffer_ext|
  |gl_framebuffer_incomplete_read_buffer_oes|
  |gl_framebuffer_oes|
  |gl_framebuffer_programmable_sample_locations_arb|
  |gl_framebuffer_programmable_sample_locations_nv|
  |gl_framebuffer_renderable|
  |gl_framebuffer_renderable_layered|
  |gl_framebuffer_sample_location_pixel_grid_arb|
  |gl_framebuffer_sample_location_pixel_grid_nv|
  |gl_framebuffer_srgb|
  |gl_framebuffer_srgb_capable_ext|
  |gl_framebuffer_srgb_ext|
  |gl_framebuffer_undefined|
  |gl_framebuffer_undefined_oes|
  |gl_framebuffer_unsupported|
  |gl_framebuffer_unsupported_ext|
  |gl_framebuffer_unsupported_oes|
  |gl_frame_nv|
  |gl_framezoom_factor_sgix|
  |gl_framezoom_sgix|
  |gl_front|
  |gl_front_and_back|
  |gl_front_face|
  |gl_front_face_command_nv|
  |gl_front_left|
  |gl_front_right|
  |gl_full_range_ext|
  |gl_full_stipple_hint_pgi|
  |gl_full_support|
  |gl_func_add|
  |gl_func_add_ext|
  |gl_func_add_oes|
  |gl_func_reverse_subtract|
  |gl_func_reverse_subtract_ext|
  |gl_func_reverse_subtract_oes|
  |gl_func_subtract|
  |gl_func_subtract_ext|
  |gl_func_subtract_oes|
  |gl_gccso_shader_binary_fj|
  |gl_generate_mipmap|
  |gl_generate_mipmap_hint|
  |gl_generate_mipmap_hint_sgis|
  |gl_generate_mipmap_sgis|
  |gl_generic_attrib_nv|
  |gl_geometry_deformation_bit_sgix|
  |gl_geometry_deformation_sgix|
  |gl_geometry_input_type|
  |gl_geometry_input_type_arb|
  |gl_geometry_input_type_ext|
  |gl_geometry_linked_input_type_ext|
  |gl_geometry_linked_input_type_oes|
  |gl_geometry_linked_output_type_ext|
  |gl_geometry_linked_output_type_oes|
  |gl_geometry_linked_vertices_out_ext|
  |gl_geometry_linked_vertices_out_oes|
  |gl_geometry_output_type|
  |gl_geometry_output_type_arb|
  |gl_geometry_output_type_ext|
  |gl_geometry_program_nv|
  |gl_geometry_program_parameter_buffer_nv|
  |gl_geometry_shader|
  |gl_geometry_shader_arb|
  |gl_geometry_shader_bit|
  |gl_geometry_shader_bit_ext|
  |gl_geometry_shader_bit_oes|
  |gl_geometry_shader_ext|
  |gl_geometry_shader_invocations|
  |gl_geometry_shader_invocations_ext|
  |gl_geometry_shader_invocations_oes|
  |gl_geometry_shader_oes|
  |gl_geometry_shader_primitives_emitted_arb|
  |gl_geometry_subroutine|
  |gl_geometry_subroutine_uniform|
  |gl_geometry_texture|
  |gl_geometry_vertices_out|
  |gl_geometry_vertices_out_arb|
  |gl_geometry_vertices_out_ext|
  |gl_gequal|
  |gl_get_texture_image_format|
  |gl_get_texture_image_type|
  |gl_global_alpha_factor_sun|
  |gl_global_alpha_sun|
  |gl_glyph_has_kerning_bit_nv|
  |gl_glyph_height_bit_nv|
  |gl_glyph_horizontal_bearing_advance_bit_nv|
  |gl_glyph_horizontal_bearing_x_bit_nv|
  |gl_glyph_horizontal_bearing_y_bit_nv|
  |gl_glyph_vertical_bearing_advance_bit_nv|
  |gl_glyph_vertical_bearing_x_bit_nv|
  |gl_glyph_vertical_bearing_y_bit_nv|
  |gl_glyph_width_bit_nv|
  |gl_gpu_address_nv|
  |gl_gpu_disjoint_ext|
  |gl_gpu_memory_info_current_available_vidmem_nvx|
  |gl_gpu_memory_info_dedicated_vidmem_nvx|
  |gl_gpu_memory_info_evicted_memory_nvx|
  |gl_gpu_memory_info_eviction_count_nvx|
  |gl_gpu_memory_info_total_available_memory_nvx|
  |gl_gpu_optimized_qcom|
  |gl_greater|
  |gl_green|
  |gl_green_bias|
  |gl_green_bit_ati|
  |gl_green_bits|
  |gl_green_integer|
  |gl_green_integer_ext|
  |gl_green_max_clamp_ingr|
  |gl_green_min_clamp_ingr|
  |gl_green_nv|
  |gl_green_scale|
  |gl_gs_program_binary_mtk|
  |gl_gs_shader_binary_mtk|
  |gl_guilty_context_reset|
  |gl_guilty_context_reset_arb|
  |gl_guilty_context_reset_ext|
  |gl_guilty_context_reset_khr|
  |gl_half_apple|
  |gl_half_bias_negate_nv|
  |gl_half_bias_normal_nv|
  |gl_half_bit_ati|
  |gl_half_float|
  |gl_half_float_arb|
  |gl_half_float_nv|
  |gl_half_float_oes|
  |gl_hardlight|
  |gl_hardlight_khr|
  |gl_hardlight_nv|
  |gl_hardmix_nv|
  |gl_hi_bias_nv|
  |gl_high_float|
  |gl_high_int|
  |gl_hilo16_nv|
  |gl_hilo8_nv|
  |gl_hilo_nv|
  |gl_hint_bit|
  |gl_hi_scale_nv|
  |gl_histogram|
  |gl_histogram_alpha_size|
  |gl_histogram_alpha_size_ext|
  |gl_histogram_blue_size|
  |gl_histogram_blue_size_ext|
  |gl_histogram_ext|
  |gl_histogram_format|
  |gl_histogram_format_ext|
  |gl_histogram_green_size|
  |gl_histogram_green_size_ext|
  |gl_histogram_luminance_size|
  |gl_histogram_luminance_size_ext|
  |gl_histogram_red_size|
  |gl_histogram_red_size_ext|
  |gl_histogram_sink|
  |gl_histogram_sink_ext|
  |gl_histogram_width|
  |gl_histogram_width_ext|
  |gl_horizontal_line_to_nv|
  |gl_hsl_color|
  |gl_hsl_color_khr|
  |gl_hsl_color_nv|
  |gl_hsl_hue|
  |gl_hsl_hue_khr|
  |gl_hsl_hue_nv|
  |gl_hsl_luminosity|
  |gl_hsl_luminosity_khr|
  |gl_hsl_luminosity_nv|
  |gl_hsl_saturation|
  |gl_hsl_saturation_khr|
  |gl_hsl_saturation_nv|
  |gl_identity_nv|
  |gl_ignore_border_hp|
  |gl_image_1d|
  |gl_image_1d_array|
  |gl_image_1d_array_ext|
  |gl_image_1d_ext|
  |gl_image_2d|
  |gl_image_2d_array|
  |gl_image_2d_array_ext|
  |gl_image_2d_ext|
  |gl_image_2d_multisample|
  |gl_image_2d_multisample_array|
  |gl_image_2d_multisample_array_ext|
  |gl_image_2d_multisample_ext|
  |gl_image_2d_rect|
  |gl_image_2d_rect_ext|
  |gl_image_3d|
  |gl_image_3d_ext|
  |gl_image_binding_access|
  |gl_image_binding_access_ext|
  |gl_image_binding_format|
  |gl_image_binding_format_ext|
  |gl_image_binding_layer|
  |gl_image_binding_layered|
  |gl_image_binding_layered_ext|
  |gl_image_binding_layer_ext|
  |gl_image_binding_level|
  |gl_image_binding_level_ext|
  |gl_image_binding_name|
  |gl_image_binding_name_ext|
  |gl_image_buffer|
  |gl_image_buffer_ext|
  |gl_image_buffer_oes|
  |gl_image_class_10_10_10_2|
  |gl_image_class_11_11_10|
  |gl_image_class_1_x_16|
  |gl_image_class_1_x_32|
  |gl_image_class_1_x_8|
  |gl_image_class_2_x_16|
  |gl_image_class_2_x_32|
  |gl_image_class_2_x_8|
  |gl_image_class_4_x_16|
  |gl_image_class_4_x_32|
  |gl_image_class_4_x_8|
  |gl_image_compatibility_class|
  |gl_image_cube|
  |gl_image_cube_ext|
  |gl_image_cube_map_array|
  |gl_image_cube_map_array_ext|
  |gl_image_cube_map_array_oes|
  |gl_image_cubic_weight_hp|
  |gl_image_format_compatibility_by_class|
  |gl_image_format_compatibility_by_size|
  |gl_image_format_compatibility_type|
  |gl_image_mag_filter_hp|
  |gl_image_min_filter_hp|
  |gl_image_pixel_format|
  |gl_image_pixel_type|
  |gl_image_rotate_angle_hp|
  |gl_image_rotate_origin_x_hp|
  |gl_image_rotate_origin_y_hp|
  |gl_image_scale_x_hp|
  |gl_image_scale_y_hp|
  |gl_image_texel_size|
  |gl_image_transform_2d_hp|
  |gl_image_translate_x_hp|
  |gl_image_translate_y_hp|
  |gl_implementation_color_read_format|
  |gl_implementation_color_read_format_oes|
  |gl_implementation_color_read_type|
  |gl_implementation_color_read_type_oes|
  |gl_incr|
  |gl_incr_wrap|
  |gl_incr_wrap_ext|
  |gl_incr_wrap_oes|
  |gl_index|
  |gl_index_array|
  |gl_index_array_address_nv|
  |gl_index_array_buffer_binding|
  |gl_index_array_buffer_binding_arb|
  |gl_index_array_count_ext|
  |gl_index_array_ext|
  |gl_index_array_length_nv|
  |gl_index_array_list_ibm|
  |gl_index_array_list_stride_ibm|
  |gl_index_array_pointer|
  |gl_index_array_pointer_ext|
  |gl_index_array_stride|
  |gl_index_array_stride_ext|
  |gl_index_array_type|
  |gl_index_array_type_ext|
  |gl_index_bit_pgi|
  |gl_index_bits|
  |gl_index_clear_value|
  |gl_index_logic_op|
  |gl_index_material_ext|
  |gl_index_material_face_ext|
  |gl_index_material_parameter_ext|
  |gl_index_mode|
  |gl_index_offset|
  |gl_index_shift|
  |gl_index_test_ext|
  |gl_index_test_func_ext|
  |gl_index_test_ref_ext|
  |gl_index_writemask|
  |gl_info_log_length|
  |gl_innocent_context_reset|
  |gl_innocent_context_reset_arb|
  |gl_innocent_context_reset_ext|
  |gl_innocent_context_reset_khr|
  |gl_instrument_buffer_pointer_sgix|
  |gl_instrument_measurements_sgix|
  |gl_int|
  |gl_int_10_10_10_2_oes|
  |gl_int16_nv|
  |gl_int16_vec2_nv|
  |gl_int16_vec3_nv|
  |gl_int16_vec4_nv|
  |gl_int_2_10_10_10_rev|
  |gl_int64_arb|
  |gl_int64_nv|
  |gl_int64_vec2_arb|
  |gl_int64_vec2_nv|
  |gl_int64_vec3_arb|
  |gl_int64_vec3_nv|
  |gl_int64_vec4_arb|
  |gl_int64_vec4_nv|
  |gl_int8_nv|
  |gl_int8_vec2_nv|
  |gl_int8_vec3_nv|
  |gl_int8_vec4_nv|
  |gl_intensity|
  |gl_intensity12|
  |gl_intensity12_ext|
  |gl_intensity16|
  |gl_intensity16_ext|
  |gl_intensity16f_arb|
  |gl_intensity16_icc_sgix|
  |gl_intensity16i_ext|
  |gl_intensity16_snorm|
  |gl_intensity16ui_ext|
  |gl_intensity32f_arb|
  |gl_intensity32i_ext|
  |gl_intensity32ui_ext|
  |gl_intensity4|
  |gl_intensity4_ext|
  |gl_intensity8|
  |gl_intensity8_ext|
  |gl_intensity8i_ext|
  |gl_intensity8_snorm|
  |gl_intensity8ui_ext|
  |gl_intensity_ext|
  |gl_intensity_float16_apple|
  |gl_intensity_float16_ati|
  |gl_intensity_float32_apple|
  |gl_intensity_float32_ati|
  |gl_intensity_icc_sgix|
  |gl_intensity_snorm|
  |gl_interlace_oml|
  |gl_interlace_read_ingr|
  |gl_interlace_read_oml|
  |gl_interlace_sgix|
  |gl_interleaved_attribs|
  |gl_interleaved_attribs_ext|
  |gl_interleaved_attribs_nv|
  |gl_internalformat_alpha_size|
  |gl_internalformat_alpha_type|
  |gl_internalformat_blue_size|
  |gl_internalformat_blue_type|
  |gl_internalformat_depth_size|
  |gl_internalformat_depth_type|
  |gl_internalformat_green_size|
  |gl_internalformat_green_type|
  |gl_internalformat_preferred|
  |gl_internalformat_red_size|
  |gl_internalformat_red_type|
  |gl_internalformat_shared_size|
  |gl_internalformat_stencil_size|
  |gl_internalformat_stencil_type|
  |gl_internalformat_supported|
  |gl_interpolate|
  |gl_interpolate_arb|
  |gl_interpolate_ext|
  |gl_int_image_1d|
  |gl_int_image_1d_array|
  |gl_int_image_1d_array_ext|
  |gl_int_image_1d_ext|
  |gl_int_image_2d|
  |gl_int_image_2d_array|
  |gl_int_image_2d_array_ext|
  |gl_int_image_2d_ext|
  |gl_int_image_2d_multisample|
  |gl_int_image_2d_multisample_array|
  |gl_int_image_2d_multisample_array_ext|
  |gl_int_image_2d_multisample_ext|
  |gl_int_image_2d_rect|
  |gl_int_image_2d_rect_ext|
  |gl_int_image_3d|
  |gl_int_image_3d_ext|
  |gl_int_image_buffer|
  |gl_int_image_buffer_ext|
  |gl_int_image_buffer_oes|
  |gl_int_image_cube|
  |gl_int_image_cube_ext|
  |gl_int_image_cube_map_array|
  |gl_int_image_cube_map_array_ext|
  |gl_int_image_cube_map_array_oes|
  |gl_int_sampler_1d|
  |gl_int_sampler_1d_array|
  |gl_int_sampler_1d_array_ext|
  |gl_int_sampler_1d_ext|
  |gl_int_sampler_2d|
  |gl_int_sampler_2d_array|
  |gl_int_sampler_2d_array_ext|
  |gl_int_sampler_2d_ext|
  |gl_int_sampler_2d_multisample|
  |gl_int_sampler_2d_multisample_array|
  |gl_int_sampler_2d_multisample_array_oes|
  |gl_int_sampler_2d_rect|
  |gl_int_sampler_2d_rect_ext|
  |gl_int_sampler_3d|
  |gl_int_sampler_3d_ext|
  |gl_int_sampler_buffer|
  |gl_int_sampler_buffer_amd|
  |gl_int_sampler_buffer_ext|
  |gl_int_sampler_buffer_oes|
  |gl_int_sampler_cube|
  |gl_int_sampler_cube_ext|
  |gl_int_sampler_cube_map_array|
  |gl_int_sampler_cube_map_array_arb|
  |gl_int_sampler_cube_map_array_ext|
  |gl_int_sampler_cube_map_array_oes|
  |gl_int_sampler_renderbuffer_nv|
  |gl_int_vec2|
  |gl_int_vec2_arb|
  |gl_int_vec3|
  |gl_int_vec3_arb|
  |gl_int_vec4|
  |gl_int_vec4_arb|
  |gl_invalid_enum|
  |gl_invalid_framebuffer_operation|
  |gl_invalid_framebuffer_operation_ext|
  |gl_invalid_framebuffer_operation_oes|
  |gl_invalid_index|
  |gl_invalid_operation|
  |gl_invalid_value|
  |gl_invariant_datatype_ext|
  |gl_invariant_ext|
  |gl_invariant_value_ext|
  |gl_inverse_nv|
  |gl_inverse_transpose_nv|
  |gl_invert|
  |gl_inverted_screen_w_rend|
  |gl_invert_ovg_nv|
  |gl_invert_rgb_nv|
  |gl_ir_instrument1_sgix|
  |gl_isolines|
  |gl_isolines_ext|
  |gl_isolines_oes|
  |gl_is_per_patch|
  |gl_is_per_patch_ext|
  |gl_is_per_patch_oes|
  |gl_is_row_major|
  |gl_italic_bit_nv|
  |gl_iui_n3f_v2f_ext|
  |gl_iui_n3f_v3f_ext|
  |gl_iui_v2f_ext|
  |gl_iui_v3f_ext|
  |gl_keep|
  |gl_large_ccw_arc_to_nv|
  |gl_large_cw_arc_to_nv|
  |gl_last_vertex_convention|
  |gl_last_vertex_convention_ext|
  |gl_last_vertex_convention_oes|
  |gl_last_video_capture_status_nv|
  |gl_layer_nv|
  |gl_layer_provoking_vertex|
  |gl_layer_provoking_vertex_ext|
  |gl_layer_provoking_vertex_oes|
  |gl_layout_default_intel|
  |gl_layout_linear_cpu_cached_intel|
  |gl_layout_linear_intel|
  |gl_left|
  |gl_lequal|
  |gl_lerp_ati|
  |gl_less|
  |gl_light0|
  |gl_light1|
  |gl_light2|
  |gl_light3|
  |gl_light4|
  |gl_light5|
  |gl_light6|
  |gl_light7|
  |gl_lighten|
  |gl_lighten_khr|
  |gl_lighten_nv|
  |gl_light_env_mode_sgix|
  |gl_lighting|
  |gl_lighting_bit|
  |gl_light_model_ambient|
  |gl_light_model_color_control|
  |gl_light_model_color_control_ext|
  |gl_light_model_local_viewer|
  |gl_light_model_specular_vector_apple|
  |gl_light_model_two_side|
  |gl_line|
  |gl_linear|
  |gl_linear_attenuation|
  |gl_linearburn_nv|
  |gl_linear_clipmap_linear_sgix|
  |gl_linear_clipmap_nearest_sgix|
  |gl_linear_detail_alpha_sgis|
  |gl_linear_detail_color_sgis|
  |gl_linear_detail_sgis|
  |gl_lineardodge_nv|
  |gl_linearlight_nv|
  |gl_linear_mipmap_linear|
  |gl_linear_mipmap_nearest|
  |gl_linear_sharpen_alpha_sgis|
  |gl_linear_sharpen_color_sgis|
  |gl_linear_sharpen_sgis|
  |gl_line_bit|
  |gl_line_loop|
  |gl_line_nv|
  |gl_line_quality_hint_sgix|
  |gl_line_reset_token|
  |gl_lines|
  |gl_lines_adjacency|
  |gl_lines_adjacency_arb|
  |gl_lines_adjacency_ext|
  |gl_lines_adjacency_oes|
  |gl_line_smooth|
  |gl_line_smooth_hint|
  |gl_line_stipple|
  |gl_line_stipple_pattern|
  |gl_line_stipple_repeat|
  |gl_line_strip|
  |gl_line_strip_adjacency|
  |gl_line_strip_adjacency_arb|
  |gl_line_strip_adjacency_ext|
  |gl_line_strip_adjacency_oes|
  |gl_line_token|
  |gl_line_to_nv|
  |gl_line_width|
  |gl_line_width_command_nv|
  |gl_line_width_granularity|
  |gl_line_width_range|
  |gl_link_status|
  |gl_list_base|
  |gl_list_bit|
  |gl_list_index|
  |gl_list_mode|
  |gl_list_priority_sgix|
  |gl_load|
  |gl_lo_bias_nv|
  |gl_local_constant_datatype_ext|
  |gl_local_constant_ext|
  |gl_local_constant_value_ext|
  |gl_local_ext|
  |gl_location|
  |gl_location_component|
  |gl_location_index|
  |gl_location_index_ext|
  |gl_logic_op|
  |gl_logic_op_mode|
  |gl_lo_scale_nv|
  |gl_lose_context_on_reset|
  |gl_lose_context_on_reset_arb|
  |gl_lose_context_on_reset_ext|
  |gl_lose_context_on_reset_khr|
  |gl_lower_left|
  |gl_low_float|
  |gl_low_int|
  |gl_luminance|
  |gl_luminance12|
  |gl_luminance12_alpha12|
  |gl_luminance12_alpha12_ext|
  |gl_luminance12_alpha4|
  |gl_luminance12_alpha4_ext|
  |gl_luminance12_ext|
  |gl_luminance16|
  |gl_luminance16_alpha16|
  |gl_luminance16_alpha16_ext|
  |gl_luminance16_alpha16_snorm|
  |gl_luminance16_alpha8_icc_sgix|
  |gl_luminance16_ext|
  |gl_luminance16f_arb|
  |gl_luminance16f_ext|
  |gl_luminance16_icc_sgix|
  |gl_luminance16i_ext|
  |gl_luminance16_snorm|
  |gl_luminance16ui_ext|
  |gl_luminance32f_arb|
  |gl_luminance32f_ext|
  |gl_luminance32i_ext|
  |gl_luminance32ui_ext|
  |gl_luminance4|
  |gl_luminance4_alpha4|
  |gl_luminance4_alpha4_ext|
  |gl_luminance4_alpha4_oes|
  |gl_luminance4_ext|
  |gl_luminance6_alpha2|
  |gl_luminance6_alpha2_ext|
  |gl_luminance8|
  |gl_luminance8_alpha8|
  |gl_luminance8_alpha8_ext|
  |gl_luminance8_alpha8_oes|
  |gl_luminance8_alpha8_snorm|
  |gl_luminance8_ext|
  |gl_luminance8i_ext|
  |gl_luminance8_oes|
  |gl_luminance8_snorm|
  |gl_luminance8ui_ext|
  |gl_luminance_alpha|
  |gl_luminance_alpha16f_arb|
  |gl_luminance_alpha16f_ext|
  |gl_luminance_alpha16i_ext|
  |gl_luminance_alpha16ui_ext|
  |gl_luminance_alpha32f_arb|
  |gl_luminance_alpha32f_ext|
  |gl_luminance_alpha32i_ext|
  |gl_luminance_alpha32ui_ext|
  |gl_luminance_alpha8i_ext|
  |gl_luminance_alpha8ui_ext|
  |gl_luminance_alpha_float16_apple|
  |gl_luminance_alpha_float16_ati|
  |gl_luminance_alpha_float32_apple|
  |gl_luminance_alpha_float32_ati|
  |gl_luminance_alpha_icc_sgix|
  |gl_luminance_alpha_integer_ext|
  |gl_luminance_alpha_snorm|
  |gl_luminance_float16_apple|
  |gl_luminance_float16_ati|
  |gl_luminance_float32_apple|
  |gl_luminance_float32_ati|
  |gl_luminance_icc_sgix|
  |gl_luminance_integer_ext|
  |gl_luminance_snorm|
  |gl_mad_ati|
  |gl_magnitude_bias_nv|
  |gl_magnitude_scale_nv|
  |gl_major_version|
  |gl_mali_program_binary_arm|
  |gl_mali_shader_binary_arm|
  |gl_manual_generate_mipmap|
  |gl_map1_binormal_ext|
  |gl_map1_color_4|
  |gl_map1_grid_domain|
  |gl_map1_grid_segments|
  |gl_map1_index|
  |gl_map1_normal|
  |gl_map1_tangent_ext|
  |gl_map1_texture_coord_1|
  |gl_map1_texture_coord_2|
  |gl_map1_texture_coord_3|
  |gl_map1_texture_coord_4|
  |gl_map1_vertex_3|
  |gl_map1_vertex_4|
  |gl_map1_vertex_attrib0_4_nv|
  |gl_map1_vertex_attrib10_4_nv|
  |gl_map1_vertex_attrib11_4_nv|
  |gl_map1_vertex_attrib12_4_nv|
  |gl_map1_vertex_attrib13_4_nv|
  |gl_map1_vertex_attrib14_4_nv|
  |gl_map1_vertex_attrib1_4_nv|
  |gl_map1_vertex_attrib15_4_nv|
  |gl_map1_vertex_attrib2_4_nv|
  |gl_map1_vertex_attrib3_4_nv|
  |gl_map1_vertex_attrib4_4_nv|
  |gl_map1_vertex_attrib5_4_nv|
  |gl_map1_vertex_attrib6_4_nv|
  |gl_map1_vertex_attrib7_4_nv|
  |gl_map1_vertex_attrib8_4_nv|
  |gl_map1_vertex_attrib9_4_nv|
  |gl_map2_binormal_ext|
  |gl_map2_color_4|
  |gl_map2_grid_domain|
  |gl_map2_grid_segments|
  |gl_map2_index|
  |gl_map2_normal|
  |gl_map2_tangent_ext|
  |gl_map2_texture_coord_1|
  |gl_map2_texture_coord_2|
  |gl_map2_texture_coord_3|
  |gl_map2_texture_coord_4|
  |gl_map2_vertex_3|
  |gl_map2_vertex_4|
  |gl_map2_vertex_attrib0_4_nv|
  |gl_map2_vertex_attrib10_4_nv|
  |gl_map2_vertex_attrib11_4_nv|
  |gl_map2_vertex_attrib12_4_nv|
  |gl_map2_vertex_attrib13_4_nv|
  |gl_map2_vertex_attrib14_4_nv|
  |gl_map2_vertex_attrib1_4_nv|
  |gl_map2_vertex_attrib15_4_nv|
  |gl_map2_vertex_attrib2_4_nv|
  |gl_map2_vertex_attrib3_4_nv|
  |gl_map2_vertex_attrib4_4_nv|
  |gl_map2_vertex_attrib5_4_nv|
  |gl_map2_vertex_attrib6_4_nv|
  |gl_map2_vertex_attrib7_4_nv|
  |gl_map2_vertex_attrib8_4_nv|
  |gl_map2_vertex_attrib9_4_nv|
  |gl_map_attrib_u_order_nv|
  |gl_map_attrib_v_order_nv|
  |gl_map_coherent_bit|
  |gl_map_coherent_bit_ext|
  |gl_map_color|
  |gl_map_flush_explicit_bit|
  |gl_map_flush_explicit_bit_ext|
  |gl_map_invalidate_buffer_bit|
  |gl_map_invalidate_buffer_bit_ext|
  |gl_map_invalidate_range_bit|
  |gl_map_invalidate_range_bit_ext|
  |gl_map_persistent_bit|
  |gl_map_persistent_bit_ext|
  |gl_map_read_bit|
  |gl_map_read_bit_ext|
  |gl_map_stencil|
  |gl_map_tessellation_nv|
  |gl_map_unsynchronized_bit|
  |gl_map_unsynchronized_bit_ext|
  |gl_map_write_bit|
  |gl_map_write_bit_ext|
  |gl_mat_ambient_and_diffuse_bit_pgi|
  |gl_mat_ambient_bit_pgi|
  |gl_mat_color_indexes_bit_pgi|
  |gl_mat_diffuse_bit_pgi|
  |gl_mat_emission_bit_pgi|
  |gl_material_side_hint_pgi|
  |gl_matrix0_arb|
  |gl_matrix0_nv|
  |gl_matrix10_arb|
  |gl_matrix11_arb|
  |gl_matrix12_arb|
  |gl_matrix13_arb|
  |gl_matrix14_arb|
  |gl_matrix15_arb|
  |gl_matrix16_arb|
  |gl_matrix17_arb|
  |gl_matrix18_arb|
  |gl_matrix19_arb|
  |gl_matrix1_arb|
  |gl_matrix1_nv|
  |gl_matrix20_arb|
  |gl_matrix21_arb|
  |gl_matrix22_arb|
  |gl_matrix23_arb|
  |gl_matrix24_arb|
  |gl_matrix25_arb|
  |gl_matrix26_arb|
  |gl_matrix27_arb|
  |gl_matrix28_arb|
  |gl_matrix29_arb|
  |gl_matrix2_arb|
  |gl_matrix2_nv|
  |gl_matrix30_arb|
  |gl_matrix31_arb|
  |gl_matrix3_arb|
  |gl_matrix3_nv|
  |gl_matrix4_arb|
  |gl_matrix4_nv|
  |gl_matrix5_arb|
  |gl_matrix5_nv|
  |gl_matrix6_arb|
  |gl_matrix6_nv|
  |gl_matrix7_arb|
  |gl_matrix7_nv|
  |gl_matrix8_arb|
  |gl_matrix9_arb|
  |gl_matrix_ext|
  |gl_matrix_index_array_arb|
  |gl_matrix_index_array_buffer_binding_oes|
  |gl_matrix_index_array_oes|
  |gl_matrix_index_array_pointer_arb|
  |gl_matrix_index_array_pointer_oes|
  |gl_matrix_index_array_size_arb|
  |gl_matrix_index_array_size_oes|
  |gl_matrix_index_array_stride_arb|
  |gl_matrix_index_array_stride_oes|
  |gl_matrix_index_array_type_arb|
  |gl_matrix_index_array_type_oes|
  |gl_matrix_mode|
  |gl_matrix_palette_arb|
  |gl_matrix_palette_oes|
  |gl_matrix_stride|
  |gl_mat_shininess_bit_pgi|
  |gl_mat_specular_bit_pgi|
  |gl_max|
  |gl_max_3d_texture_size|
  |gl_max_3d_texture_size_ext|
  |gl_max_3d_texture_size_oes|
  |gl_max_4d_texture_size_sgis|
  |gl_max_active_lights_sgix|
  |gl_max_array_texture_layers|
  |gl_max_array_texture_layers_ext|
  |gl_max_async_draw_pixels_sgix|
  |gl_max_async_histogram_sgix|
  |gl_max_async_read_pixels_sgix|
  |gl_max_async_tex_image_sgix|
  |gl_max_atomic_counter_buffer_bindings|
  |gl_max_atomic_counter_buffer_size|
  |gl_max_attrib_stack_depth|
  |gl_max_bindable_uniform_size_ext|
  |gl_max_client_attrib_stack_depth|
  |gl_max_clip_distances|
  |gl_max_clip_distances_apple|
  |gl_max_clipmap_depth_sgix|
  |gl_max_clipmap_virtual_depth_sgix|
  |gl_max_clip_planes|
  |gl_max_clip_planes_img|
  |gl_max_color_attachments|
  |gl_max_color_attachments_ext|
  |gl_max_color_attachments_nv|
  |gl_max_color_matrix_stack_depth|
  |gl_max_color_matrix_stack_depth_sgi|
  |gl_max_color_texture_samples|
  |gl_max_combined_atomic_counter_buffers|
  |gl_max_combined_atomic_counters|
  |gl_max_combined_clip_and_cull_distances|
  |gl_max_combined_compute_uniform_components|
  |gl_max_combined_dimensions|
  |gl_max_combined_fragment_uniform_components|
  |gl_max_combined_geometry_uniform_components|
  |gl_max_combined_geometry_uniform_components_ext|
  |gl_max_combined_geometry_uniform_components_oes|
  |gl_max_combined_image_uniforms|
  |gl_max_combined_image_units_and_fragment_outputs|
  |gl_max_combined_image_units_and_fragment_outputs_ext|
  |gl_max_combined_shader_output_resources|
  |gl_max_combined_shader_storage_blocks|
  |gl_max_combined_tess_control_uniform_components|
  |gl_max_combined_tess_control_uniform_components_ext|
  |gl_max_combined_tess_control_uniform_components_oes|
  |gl_max_combined_tess_evaluation_uniform_components|
  |gl_max_combined_tess_evaluation_uniform_components_ext|
  |gl_max_combined_tess_evaluation_uniform_components_oes|
  |gl_max_combined_texture_image_units|
  |gl_max_combined_texture_image_units_arb|
  |gl_max_combined_uniform_blocks|
  |gl_max_combined_vertex_uniform_components|
  |gl_max_compute_atomic_counter_buffers|
  |gl_max_compute_atomic_counters|
  |gl_max_compute_fixed_group_invocations_arb|
  |gl_max_compute_fixed_group_size_arb|
  |gl_max_compute_image_uniforms|
  |gl_max_compute_shader_storage_blocks|
  |gl_max_compute_shared_memory_size|
  |gl_max_compute_texture_image_units|
  |gl_max_compute_uniform_blocks|
  |gl_max_compute_uniform_components|
  |gl_max_compute_variable_group_invocations_arb|
  |gl_max_compute_variable_group_size_arb|
  |gl_max_compute_work_group_count|
  |gl_max_compute_work_group_invocations|
  |gl_max_compute_work_group_size|
  |gl_max_convolution_height|
  |gl_max_convolution_height_ext|
  |gl_max_convolution_width|
  |gl_max_convolution_width_ext|
  |gl_max_cube_map_texture_size|
  |gl_max_cube_map_texture_size_arb|
  |gl_max_cube_map_texture_size_ext|
  |gl_max_cube_map_texture_size_oes|
  |gl_max_cull_distances|
  |gl_max_debug_group_stack_depth|
  |gl_max_debug_group_stack_depth_khr|
  |gl_max_debug_logged_messages|
  |gl_max_debug_logged_messages_amd|
  |gl_max_debug_logged_messages_arb|
  |gl_max_debug_logged_messages_khr|
  |gl_max_debug_message_length|
  |gl_max_debug_message_length_amd|
  |gl_max_debug_message_length_arb|
  |gl_max_debug_message_length_khr|
  |gl_max_deep_3d_texture_depth_nv|
  |gl_max_deep_3d_texture_width_height_nv|
  |gl_max_deformation_order_sgix|
  |gl_max_depth|
  |gl_max_depth_texture_samples|
  |gl_max_draw_buffers|
  |gl_max_draw_buffers_arb|
  |gl_max_draw_buffers_ati|
  |gl_max_draw_buffers_ext|
  |gl_max_draw_buffers_nv|
  |gl_max_dual_source_draw_buffers|
  |gl_max_dual_source_draw_buffers_ext|
  |gl_max_element_index|
  |gl_max_elements_indices|
  |gl_max_elements_indices_ext|
  |gl_max_elements_vertices|
  |gl_max_elements_vertices_ext|
  |gl_max_eval_order|
  |gl_max_ext|
  |gl_max_fog_func_points_sgis|
  |gl_max_fragment_atomic_counter_buffers|
  |gl_max_fragment_atomic_counters|
  |gl_max_fragment_bindable_uniforms_ext|
  |gl_max_fragment_image_uniforms|
  |gl_max_fragment_input_components|
  |gl_max_fragment_interpolation_offset|
  |gl_max_fragment_interpolation_offset_nv|
  |gl_max_fragment_interpolation_offset_oes|
  |gl_max_fragment_lights_sgix|
  |gl_max_fragment_program_local_parameters_nv|
  |gl_max_fragment_shader_storage_blocks|
  |gl_max_fragment_uniform_blocks|
  |gl_max_fragment_uniform_components|
  |gl_max_fragment_uniform_components_arb|
  |gl_max_fragment_uniform_vectors|
  |gl_max_framebuffer_height|
  |gl_max_framebuffer_layers|
  |gl_max_framebuffer_layers_ext|
  |gl_max_framebuffer_layers_oes|
  |gl_max_framebuffer_samples|
  |gl_max_framebuffer_width|
  |gl_max_framezoom_factor_sgix|
  |gl_max_general_combiners_nv|
  |gl_max_geometry_atomic_counter_buffers|
  |gl_max_geometry_atomic_counter_buffers_ext|
  |gl_max_geometry_atomic_counter_buffers_oes|
  |gl_max_geometry_atomic_counters|
  |gl_max_geometry_atomic_counters_ext|
  |gl_max_geometry_atomic_counters_oes|
  |gl_max_geometry_bindable_uniforms_ext|
  |gl_max_geometry_image_uniforms|
  |gl_max_geometry_image_uniforms_ext|
  |gl_max_geometry_image_uniforms_oes|
  |gl_max_geometry_input_components|
  |gl_max_geometry_input_components_ext|
  |gl_max_geometry_input_components_oes|
  |gl_max_geometry_output_components|
  |gl_max_geometry_output_components_ext|
  |gl_max_geometry_output_components_oes|
  |gl_max_geometry_output_vertices|
  |gl_max_geometry_output_vertices_arb|
  |gl_max_geometry_output_vertices_ext|
  |gl_max_geometry_output_vertices_oes|
  |gl_max_geometry_program_invocations_nv|
  |gl_max_geometry_shader_invocations|
  |gl_max_geometry_shader_invocations_ext|
  |gl_max_geometry_shader_invocations_oes|
  |gl_max_geometry_shader_storage_blocks|
  |gl_max_geometry_shader_storage_blocks_ext|
  |gl_max_geometry_shader_storage_blocks_oes|
  |gl_max_geometry_texture_image_units|
  |gl_max_geometry_texture_image_units_arb|
  |gl_max_geometry_texture_image_units_ext|
  |gl_max_geometry_texture_image_units_oes|
  |gl_max_geometry_total_output_components|
  |gl_max_geometry_total_output_components_arb|
  |gl_max_geometry_total_output_components_ext|
  |gl_max_geometry_total_output_components_oes|
  |gl_max_geometry_uniform_blocks|
  |gl_max_geometry_uniform_blocks_ext|
  |gl_max_geometry_uniform_blocks_oes|
  |gl_max_geometry_uniform_components|
  |gl_max_geometry_uniform_components_arb|
  |gl_max_geometry_uniform_components_ext|
  |gl_max_geometry_uniform_components_oes|
  |gl_max_geometry_varying_components_arb|
  |gl_max_geometry_varying_components_ext|
  |gl_max_height|
  |gl_max_image_samples|
  |gl_max_image_samples_ext|
  |gl_max_image_units|
  |gl_max_image_units_ext|
  |gl_max_integer_samples|
  |gl_max_label_length|
  |gl_max_label_length_khr|
  |gl_max_layers|
  |gl_max_lights|
  |gl_max_list_nesting|
  |gl_max_map_tessellation_nv|
  |gl_max_matrix_palette_stack_depth_arb|
  |gl_max_modelview_stack_depth|
  |gl_max_multisample_coverage_modes_nv|
  |gl_max_multiview_buffers_ext|
  |gl_max_name_length|
  |gl_max_name_stack_depth|
  |gl_max_num_active_variables|
  |gl_max_num_compatible_subroutines|
  |gl_max_optimized_vertex_shader_instructions_ext|
  |gl_max_optimized_vertex_shader_invariants_ext|
  |gl_max_optimized_vertex_shader_local_constants_ext|
  |gl_max_optimized_vertex_shader_locals_ext|
  |gl_max_optimized_vertex_shader_variants_ext|
  |gl_max_palette_matrices_arb|
  |gl_max_palette_matrices_oes|
  |gl_max_patch_vertices|
  |gl_max_patch_vertices_ext|
  |gl_max_patch_vertices_oes|
  |gl_max_pixel_map_table|
  |gl_max_pixel_transform_2d_stack_depth_ext|
  |gl_max_pn_triangles_tesselation_level_ati|
  |gl_max_program_address_registers_arb|
  |gl_max_program_alu_instructions_arb|
  |gl_max_program_attrib_components_nv|
  |gl_max_program_attribs_arb|
  |gl_max_program_call_depth_nv|
  |gl_max_program_env_parameters_arb|
  |gl_max_program_exec_instructions_nv|
  |gl_max_program_generic_attribs_nv|
  |gl_max_program_generic_results_nv|
  |gl_max_program_if_depth_nv|
  |gl_max_program_instructions_arb|
  |gl_max_program_local_parameters_arb|
  |gl_max_program_loop_count_nv|
  |gl_max_program_loop_depth_nv|
  |gl_max_program_matrices_arb|
  |gl_max_program_matrix_stack_depth_arb|
  |gl_max_program_native_address_registers_arb|
  |gl_max_program_native_alu_instructions_arb|
  |gl_max_program_native_attribs_arb|
  |gl_max_program_native_instructions_arb|
  |gl_max_program_native_parameters_arb|
  |gl_max_program_native_temporaries_arb|
  |gl_max_program_native_tex_indirections_arb|
  |gl_max_program_native_tex_instructions_arb|
  |gl_max_program_output_vertices_nv|
  |gl_max_program_parameter_buffer_bindings_nv|
  |gl_max_program_parameter_buffer_size_nv|
  |gl_max_program_parameters_arb|
  |gl_max_program_patch_attribs_nv|
  |gl_max_program_result_components_nv|
  |gl_max_program_subroutine_num_nv|
  |gl_max_program_subroutine_parameters_nv|
  |gl_max_program_temporaries_arb|
  |gl_max_program_texel_offset|
  |gl_max_program_texel_offset_ext|
  |gl_max_program_texel_offset_nv|
  |gl_max_program_tex_indirections_arb|
  |gl_max_program_tex_instructions_arb|
  |gl_max_program_texture_gather_components_arb|
  |gl_max_program_texture_gather_offset|
  |gl_max_program_texture_gather_offset_arb|
  |gl_max_program_texture_gather_offset_nv|
  |gl_max_program_total_output_components_nv|
  |gl_max_projection_stack_depth|
  |gl_max_raster_samples_ext|
  |gl_max_rational_eval_order_nv|
  |gl_max_rectangle_texture_size|
  |gl_max_rectangle_texture_size_arb|
  |gl_max_rectangle_texture_size_nv|
  |gl_max_renderbuffer_size|
  |gl_max_renderbuffer_size_ext|
  |gl_max_renderbuffer_size_oes|
  |gl_max_sample_mask_words|
  |gl_max_sample_mask_words_nv|
  |gl_max_samples|
  |gl_max_samples_angle|
  |gl_max_samples_apple|
  |gl_max_samples_ext|
  |gl_max_samples_img|
  |gl_max_samples_nv|
  |gl_max_server_wait_timeout|
  |gl_max_server_wait_timeout_apple|
  |gl_max_shader_buffer_address_nv|
  |gl_max_shader_compiler_threads_arb|
  |gl_max_shader_pixel_local_storage_fast_size_ext|
  |gl_max_shader_pixel_local_storage_size_ext|
  |gl_max_shader_storage_block_size|
  |gl_max_shader_storage_buffer_bindings|
  |gl_max_shininess_nv|
  |gl_max_sparse_3d_texture_size_amd|
  |gl_max_sparse_3d_texture_size_arb|
  |gl_max_sparse_3d_texture_size_ext|
  |gl_max_sparse_array_texture_layers|
  |gl_max_sparse_array_texture_layers_arb|
  |gl_max_sparse_array_texture_layers_ext|
  |gl_max_sparse_texture_size_amd|
  |gl_max_sparse_texture_size_arb|
  |gl_max_sparse_texture_size_ext|
  |gl_max_spot_exponent_nv|
  |gl_max_subpixel_precision_bias_bits_nv|
  |gl_max_subroutines|
  |gl_max_subroutine_uniform_locations|
  |gl_max_tess_control_atomic_counter_buffers|
  |gl_max_tess_control_atomic_counter_buffers_ext|
  |gl_max_tess_control_atomic_counter_buffers_oes|
  |gl_max_tess_control_atomic_counters|
  |gl_max_tess_control_atomic_counters_ext|
  |gl_max_tess_control_atomic_counters_oes|
  |gl_max_tess_control_image_uniforms|
  |gl_max_tess_control_image_uniforms_ext|
  |gl_max_tess_control_image_uniforms_oes|
  |gl_max_tess_control_input_components|
  |gl_max_tess_control_input_components_ext|
  |gl_max_tess_control_input_components_oes|
  |gl_max_tess_control_output_components|
  |gl_max_tess_control_output_components_ext|
  |gl_max_tess_control_output_components_oes|
  |gl_max_tess_control_shader_storage_blocks|
  |gl_max_tess_control_shader_storage_blocks_ext|
  |gl_max_tess_control_shader_storage_blocks_oes|
  |gl_max_tess_control_texture_image_units|
  |gl_max_tess_control_texture_image_units_ext|
  |gl_max_tess_control_texture_image_units_oes|
  |gl_max_tess_control_total_output_components|
  |gl_max_tess_control_total_output_components_ext|
  |gl_max_tess_control_total_output_components_oes|
  |gl_max_tess_control_uniform_blocks|
  |gl_max_tess_control_uniform_blocks_ext|
  |gl_max_tess_control_uniform_blocks_oes|
  |gl_max_tess_control_uniform_components|
  |gl_max_tess_control_uniform_components_ext|
  |gl_max_tess_control_uniform_components_oes|
  |gl_max_tess_evaluation_atomic_counter_buffers|
  |gl_max_tess_evaluation_atomic_counter_buffers_ext|
  |gl_max_tess_evaluation_atomic_counter_buffers_oes|
  |gl_max_tess_evaluation_atomic_counters|
  |gl_max_tess_evaluation_atomic_counters_ext|
  |gl_max_tess_evaluation_atomic_counters_oes|
  |gl_max_tess_evaluation_image_uniforms|
  |gl_max_tess_evaluation_image_uniforms_ext|
  |gl_max_tess_evaluation_image_uniforms_oes|
  |gl_max_tess_evaluation_input_components|
  |gl_max_tess_evaluation_input_components_ext|
  |gl_max_tess_evaluation_input_components_oes|
  |gl_max_tess_evaluation_output_components|
  |gl_max_tess_evaluation_output_components_ext|
  |gl_max_tess_evaluation_output_components_oes|
  |gl_max_tess_evaluation_shader_storage_blocks|
  |gl_max_tess_evaluation_shader_storage_blocks_ext|
  |gl_max_tess_evaluation_shader_storage_blocks_oes|
  |gl_max_tess_evaluation_texture_image_units|
  |gl_max_tess_evaluation_texture_image_units_ext|
  |gl_max_tess_evaluation_texture_image_units_oes|
  |gl_max_tess_evaluation_uniform_blocks|
  |gl_max_tess_evaluation_uniform_blocks_ext|
  |gl_max_tess_evaluation_uniform_blocks_oes|
  |gl_max_tess_evaluation_uniform_components|
  |gl_max_tess_evaluation_uniform_components_ext|
  |gl_max_tess_evaluation_uniform_components_oes|
  |gl_max_tess_gen_level|
  |gl_max_tess_gen_level_ext|
  |gl_max_tess_gen_level_oes|
  |gl_max_tess_patch_components|
  |gl_max_tess_patch_components_ext|
  |gl_max_tess_patch_components_oes|
  |gl_max_texture_buffer_size|
  |gl_max_texture_buffer_size_arb|
  |gl_max_texture_buffer_size_ext|
  |gl_max_texture_buffer_size_oes|
  |gl_max_texture_coords|
  |gl_max_texture_coords_arb|
  |gl_max_texture_coords_nv|
  |gl_max_texture_image_units|
  |gl_max_texture_image_units_arb|
  |gl_max_texture_image_units_nv|
  |gl_max_texture_lod_bias|
  |gl_max_texture_lod_bias_ext|
  |gl_max_texture_max_anisotropy_ext|
  |gl_max_texture_size|
  |gl_max_texture_stack_depth|
  |gl_max_texture_units|
  |gl_max_texture_units_arb|
  |gl_max_track_matrices_nv|
  |gl_max_track_matrix_stack_depth_nv|
  |gl_max_transform_feedback_buffers|
  |gl_max_transform_feedback_interleaved_components|
  |gl_max_transform_feedback_interleaved_components_ext|
  |gl_max_transform_feedback_interleaved_components_nv|
  |gl_max_transform_feedback_separate_attribs|
  |gl_max_transform_feedback_separate_attribs_ext|
  |gl_max_transform_feedback_separate_attribs_nv|
  |gl_max_transform_feedback_separate_components|
  |gl_max_transform_feedback_separate_components_ext|
  |gl_max_transform_feedback_separate_components_nv|
  |gl_max_uniform_block_size|
  |gl_max_uniform_buffer_bindings|
  |gl_max_uniform_locations|
  |gl_max_varying_components|
  |gl_max_varying_components_ext|
  |gl_max_varying_floats|
  |gl_max_varying_floats_arb|
  |gl_max_varying_vectors|
  |gl_max_vertex_array_range_element_nv|
  |gl_max_vertex_atomic_counter_buffers|
  |gl_max_vertex_atomic_counters|
  |gl_max_vertex_attrib_bindings|
  |gl_max_vertex_attrib_relative_offset|
  |gl_max_vertex_attribs|
  |gl_max_vertex_attribs_arb|
  |gl_max_vertex_attrib_stride|
  |gl_max_vertex_bindable_uniforms_ext|
  |gl_max_vertex_hint_pgi|
  |gl_max_vertex_image_uniforms|
  |gl_max_vertex_output_components|
  |gl_max_vertex_shader_instructions_ext|
  |gl_max_vertex_shader_invariants_ext|
  |gl_max_vertex_shader_local_constants_ext|
  |gl_max_vertex_shader_locals_ext|
  |gl_max_vertex_shader_storage_blocks|
  |gl_max_vertex_shader_variants_ext|
  |gl_max_vertex_streams|
  |gl_max_vertex_streams_ati|
  |gl_max_vertex_texture_image_units|
  |gl_max_vertex_texture_image_units_arb|
  |gl_max_vertex_uniform_blocks|
  |gl_max_vertex_uniform_components|
  |gl_max_vertex_uniform_components_arb|
  |gl_max_vertex_uniform_vectors|
  |gl_max_vertex_units_arb|
  |gl_max_vertex_units_oes|
  |gl_max_vertex_varying_components_arb|
  |gl_max_vertex_varying_components_ext|
  |gl_max_viewport_dims|
  |gl_max_viewports|
  |gl_max_viewports_nv|
  |gl_max_views_ovr|
  |gl_max_width|
  |gl_medium_float|
  |gl_medium_int|
  |gl_min|
  |gl_min_ext|
  |gl_min_fragment_interpolation_offset|
  |gl_min_fragment_interpolation_offset_nv|
  |gl_min_fragment_interpolation_offset_oes|
  |gl_min_lod_warning_amd|
  |gl_min_map_buffer_alignment|
  |gl_minmax|
  |gl_minmax_ext|
  |gl_minmax_format|
  |gl_minmax_format_ext|
  |gl_minmax_sink|
  |gl_minmax_sink_ext|
  |gl_minor_version|
  |gl_min_program_texel_offset|
  |gl_min_program_texel_offset_ext|
  |gl_min_program_texel_offset_nv|
  |gl_min_program_texture_gather_offset|
  |gl_min_program_texture_gather_offset_arb|
  |gl_min_program_texture_gather_offset_nv|
  |gl_min_sample_shading_value|
  |gl_min_sample_shading_value_arb|
  |gl_min_sample_shading_value_oes|
  |gl_min_sparse_level_amd|
  |gl_minus_clamped_nv|
  |gl_minus_nv|
  |gl_mipmap|
  |gl_mirror_clamp_ati|
  |gl_mirror_clamp_ext|
  |gl_mirror_clamp_to_border_ext|
  |gl_mirror_clamp_to_edge|
  |gl_mirror_clamp_to_edge_ati|
  |gl_mirror_clamp_to_edge_ext|
  |gl_mirrored_repeat|
  |gl_mirrored_repeat_arb|
  |gl_mirrored_repeat_ibm|
  |gl_mirrored_repeat_oes|
  |gl_miter_revert_nv|
  |gl_miter_truncate_nv|
  |gl_mixed_depth_samples_supported_nv|
  |gl_mixed_stencil_samples_supported_nv|
  |gl_modelview|
  |gl_modelview0_arb|
  |gl_modelview0_ext|
  |gl_modelview0_matrix_ext|
  |gl_modelview0_stack_depth_ext|
  |gl_modelview10_arb|
  |gl_modelview11_arb|
  |gl_modelview12_arb|
  |gl_modelview13_arb|
  |gl_modelview14_arb|
  |gl_modelview15_arb|
  |gl_modelview16_arb|
  |gl_modelview17_arb|
  |gl_modelview18_arb|
  |gl_modelview19_arb|
  |gl_modelview1_arb|
  |gl_modelview1_ext|
  |gl_modelview1_matrix_ext|
  |gl_modelview1_stack_depth_ext|
  |gl_modelview20_arb|
  |gl_modelview21_arb|
  |gl_modelview22_arb|
  |gl_modelview23_arb|
  |gl_modelview24_arb|
  |gl_modelview25_arb|
  |gl_modelview26_arb|
  |gl_modelview27_arb|
  |gl_modelview28_arb|
  |gl_modelview29_arb|
  |gl_modelview2_arb|
  |gl_modelview30_arb|
  |gl_modelview31_arb|
  |gl_modelview3_arb|
  |gl_modelview4_arb|
  |gl_modelview5_arb|
  |gl_modelview6_arb|
  |gl_modelview7_arb|
  |gl_modelview8_arb|
  |gl_modelview9_arb|
  |gl_modelview_matrix|
  |gl_modelview_matrix_float_as_int_bits_oes|
  |gl_modelview_projection_nv|
  |gl_modelview_stack_depth|
  |gl_modulate|
  |gl_modulate_add_ati|
  |gl_modulate_color_img|
  |gl_modulate_signed_add_ati|
  |gl_modulate_subtract_ati|
  |gl_mov_ati|
  |gl_move_to_continues_nv|
  |gl_move_to_nv|
  |gl_move_to_resets_nv|
  |gl_mul_ati|
  |gl_mult|
  |gl_multiply|
  |gl_multiply_khr|
  |gl_multiply_nv|
  |gl_multisample|
  |gl_multisample_3dfx|
  |gl_multisample_arb|
  |gl_multisample_bit|
  |gl_multisample_bit_3dfx|
  |gl_multisample_bit_arb|
  |gl_multisample_bit_ext|
  |gl_multisample_buffer_bit0_qcom|
  |gl_multisample_buffer_bit1_qcom|
  |gl_multisample_buffer_bit2_qcom|
  |gl_multisample_buffer_bit3_qcom|
  |gl_multisample_buffer_bit4_qcom|
  |gl_multisample_buffer_bit5_qcom|
  |gl_multisample_buffer_bit6_qcom|
  |gl_multisample_buffer_bit7_qcom|
  |gl_multisample_coverage_modes_nv|
  |gl_multisample_ext|
  |gl_multisample_filter_hint_nv|
  |gl_multisample_line_width_granularity|
  |gl_multisample_line_width_granularity_arb|
  |gl_multisample_line_width_range|
  |gl_multisample_line_width_range_arb|
  |gl_multisample_rasterization_allowed_ext|
  |gl_multisample_sgis|
  |gl_multisamples_nv|
  |gl_multiview_ext|
  |gl_mvp_matrix_ext|
  |gl_n3f_v3f|
  |gl_named_string_length_arb|
  |gl_named_string_type_arb|
  |gl_name_length|
  |gl_name_stack_depth|
  |gl_nand|
  |gl_native_graphics_begin_hint_pgi|
  |gl_native_graphics_end_hint_pgi|
  |gl_native_graphics_handle_pgi|
  |gl_nearest|
  |gl_nearest_clipmap_linear_sgix|
  |gl_nearest_clipmap_nearest_sgix|
  |gl_nearest_mipmap_linear|
  |gl_nearest_mipmap_nearest|
  |gl_negate_bit_ati|
  |gl_negative_one_ext|
  |gl_negative_one_to_one|
  |gl_negative_w_ext|
  |gl_negative_x_ext|
  |gl_negative_y_ext|
  |gl_negative_z_ext|
  |gl_never|
  |gl_next_buffer_nv|
  |gl_next_video_capture_buffer_status_nv|
  |gl_nicest|
  |gl_no_error|
  |gl_none|
  |gl_none_oes|
  |gl_noop|
  |gl_nop_command_nv|
  |gl_nor|
  |gl_no_reset_notification|
  |gl_no_reset_notification_arb|
  |gl_no_reset_notification_ext|
  |gl_no_reset_notification_khr|
  |gl_normal_array|
  |gl_normal_array_address_nv|
  |gl_normal_array_buffer_binding|
  |gl_normal_array_buffer_binding_arb|
  |gl_normal_array_count_ext|
  |gl_normal_array_ext|
  |gl_normal_array_length_nv|
  |gl_normal_array_list_ibm|
  |gl_normal_array_list_stride_ibm|
  |gl_normal_array_parallel_pointers_intel|
  |gl_normal_array_pointer|
  |gl_normal_array_pointer_ext|
  |gl_normal_array_stride|
  |gl_normal_array_stride_ext|
  |gl_normal_array_type|
  |gl_normal_array_type_ext|
  |gl_normal_bit_pgi|
  |gl_normalize|
  |gl_normalized_range_ext|
  |gl_normal_map|
  |gl_normal_map_arb|
  |gl_normal_map_ext|
  |gl_normal_map_nv|
  |gl_normal_map_oes|
  |gl_notequal|
  |gl_num_active_variables|
  |gl_num_compatible_subroutines|
  |gl_num_compressed_texture_formats|
  |gl_num_compressed_texture_formats_arb|
  |gl_num_extensions|
  |gl_num_fill_streams_nv|
  |gl_num_fragment_constants_ati|
  |gl_num_fragment_registers_ati|
  |gl_num_general_combiners_nv|
  |gl_num_input_interpolator_components_ati|
  |gl_num_instructions_per_pass_ati|
  |gl_num_instructions_total_ati|
  |gl_num_loopback_components_ati|
  |gl_num_passes_ati|
  |gl_num_program_binary_formats|
  |gl_num_program_binary_formats_oes|
  |gl_num_sample_counts|
  |gl_num_shader_binary_formats|
  |gl_num_shading_language_versions|
  |gl_num_sparse_levels_arb|
  |gl_num_sparse_levels_ext|
  |gl_num_video_capture_streams_nv|
  |gl_num_virtual_page_sizes_arb|
  |gl_num_virtual_page_sizes_ext|
  |gl_object_active_attribute_max_length_arb|
  |gl_object_active_attributes_arb|
  |gl_object_active_uniform_max_length_arb|
  |gl_object_active_uniforms_arb|
  |gl_object_attached_objects_arb|
  |gl_object_buffer_size_ati|
  |gl_object_buffer_usage_ati|
  |gl_object_compile_status_arb|
  |gl_object_delete_status_arb|
  |gl_object_distance_to_line_sgis|
  |gl_object_distance_to_point_sgis|
  |gl_object_info_log_length_arb|
  |gl_object_linear|
  |gl_object_linear_nv|
  |gl_object_line_sgis|
  |gl_object_link_status_arb|
  |gl_object_plane|
  |gl_object_point_sgis|
  |gl_object_shader_source_length_arb|
  |gl_object_subtype_arb|
  |gl_object_type|
  |gl_object_type_apple|
  |gl_object_type_arb|
  |gl_object_validate_status_arb|
  |gl_occlusion_query_event_mask_amd|
  |gl_occlusion_test_hp|
  |gl_occlusion_test_result_hp|
  |gl_offset|
  |gl_offset_hilo_projective_texture_2d_nv|
  |gl_offset_hilo_projective_texture_rectangle_nv|
  |gl_offset_hilo_texture_2d_nv|
  |gl_offset_hilo_texture_rectangle_nv|
  |gl_offset_projective_texture_2d_nv|
  |gl_offset_projective_texture_2d_scale_nv|
  |gl_offset_projective_texture_rectangle_nv|
  |gl_offset_projective_texture_rectangle_scale_nv|
  |gl_offset_texture_2d_bias_nv|
  |gl_offset_texture_2d_matrix_nv|
  |gl_offset_texture_2d_nv|
  |gl_offset_texture_2d_scale_nv|
  |gl_offset_texture_bias_nv|
  |gl_offset_texture_matrix_nv|
  |gl_offset_texture_rectangle_nv|
  |gl_offset_texture_rectangle_scale_nv|
  |gl_offset_texture_scale_nv|
  |gl_one|
  |gl_one_ext|
  |gl_one_minus_constant_alpha|
  |gl_one_minus_constant_alpha_ext|
  |gl_one_minus_constant_color|
  |gl_one_minus_constant_color_ext|
  |gl_one_minus_dst_alpha|
  |gl_one_minus_dst_color|
  |gl_one_minus_src1_alpha|
  |gl_one_minus_src1_alpha_ext|
  |gl_one_minus_src1_color|
  |gl_one_minus_src1_color_ext|
  |gl_one_minus_src_alpha|
  |gl_one_minus_src_color|
  |gl_op_add_ext|
  |gl_op_clamp_ext|
  |gl_op_cross_product_ext|
  |gl_op_dot3_ext|
  |gl_op_dot4_ext|
  |gl_operand0_alpha|
  |gl_operand0_alpha_arb|
  |gl_operand0_alpha_ext|
  |gl_operand0_rgb|
  |gl_operand0_rgb_arb|
  |gl_operand0_rgb_ext|
  |gl_operand1_alpha|
  |gl_operand1_alpha_arb|
  |gl_operand1_alpha_ext|
  |gl_operand1_rgb|
  |gl_operand1_rgb_arb|
  |gl_operand1_rgb_ext|
  |gl_operand2_alpha|
  |gl_operand2_alpha_arb|
  |gl_operand2_alpha_ext|
  |gl_operand2_rgb|
  |gl_operand2_rgb_arb|
  |gl_operand2_rgb_ext|
  |gl_operand3_alpha_nv|
  |gl_operand3_rgb_nv|
  |gl_op_exp_base_2_ext|
  |gl_op_floor_ext|
  |gl_op_frac_ext|
  |gl_op_index_ext|
  |gl_op_log_base_2_ext|
  |gl_op_madd_ext|
  |gl_op_max_ext|
  |gl_op_min_ext|
  |gl_op_mov_ext|
  |gl_op_mul_ext|
  |gl_op_multiply_matrix_ext|
  |gl_op_negate_ext|
  |gl_op_power_ext|
  |gl_op_recip_ext|
  |gl_op_recip_sqrt_ext|
  |gl_op_round_ext|
  |gl_op_set_ge_ext|
  |gl_op_set_lt_ext|
  |gl_op_sub_ext|
  |gl_or|
  |gl_order|
  |gl_or_inverted|
  |gl_or_reverse|
  |gl_out_of_memory|
  |gl_output_color0_ext|
  |gl_output_color1_ext|
  |gl_output_fog_ext|
  |gl_output_texture_coord0_ext|
  |gl_output_texture_coord10_ext|
  |gl_output_texture_coord11_ext|
  |gl_output_texture_coord12_ext|
  |gl_output_texture_coord13_ext|
  |gl_output_texture_coord14_ext|
  |gl_output_texture_coord15_ext|
  |gl_output_texture_coord16_ext|
  |gl_output_texture_coord17_ext|
  |gl_output_texture_coord18_ext|
  |gl_output_texture_coord19_ext|
  |gl_output_texture_coord1_ext|
  |gl_output_texture_coord20_ext|
  |gl_output_texture_coord21_ext|
  |gl_output_texture_coord22_ext|
  |gl_output_texture_coord23_ext|
  |gl_output_texture_coord24_ext|
  |gl_output_texture_coord25_ext|
  |gl_output_texture_coord26_ext|
  |gl_output_texture_coord27_ext|
  |gl_output_texture_coord28_ext|
  |gl_output_texture_coord29_ext|
  |gl_output_texture_coord2_ext|
  |gl_output_texture_coord30_ext|
  |gl_output_texture_coord31_ext|
  |gl_output_texture_coord3_ext|
  |gl_output_texture_coord4_ext|
  |gl_output_texture_coord5_ext|
  |gl_output_texture_coord6_ext|
  |gl_output_texture_coord7_ext|
  |gl_output_texture_coord8_ext|
  |gl_output_texture_coord9_ext|
  |gl_output_vertex_ext|
  |gl_overlay|
  |gl_overlay_khr|
  |gl_overlay_nv|
  |gl_pack_alignment|
  |gl_pack_cmyk_hint_ext|
  |gl_pack_compressed_block_depth|
  |gl_pack_compressed_block_height|
  |gl_pack_compressed_block_size|
  |gl_pack_compressed_block_width|
  |gl_pack_compressed_size_sgix|
  |gl_pack_image_depth_sgis|
  |gl_pack_image_height|
  |gl_pack_image_height_ext|
  |gl_pack_invert_mesa|
  |gl_pack_lsb_first|
  |gl_pack_max_compressed_size_sgix|
  |gl_pack_resample_oml|
  |gl_pack_resample_sgix|
  |gl_pack_reverse_row_order_angle|
  |gl_pack_row_bytes_apple|
  |gl_pack_row_length|
  |gl_pack_skip_images|
  |gl_pack_skip_images_ext|
  |gl_pack_skip_pixels|
  |gl_pack_skip_rows|
  |gl_pack_skip_volumes_sgis|
  |gl_pack_subsample_rate_sgix|
  |gl_pack_swap_bytes|
  |gl_palette4_r5_g6_b5_oes|
  |gl_palette4_rgb5_a1_oes|
  |gl_palette4_rgb8_oes|
  |gl_palette4_rgba4_oes|
  |gl_palette4_rgba8_oes|
  |gl_palette8_r5_g6_b5_oes|
  |gl_palette8_rgb5_a1_oes|
  |gl_palette8_rgb8_oes|
  |gl_palette8_rgba4_oes|
  |gl_palette8_rgba8_oes|
  |gl_parallel_arrays_intel|
  |gl_parameter_buffer_arb|
  |gl_parameter_buffer_binding_arb|
  |gl_partial_success_nv|
  |gl_pass_through_nv|
  |gl_pass_through_token|
  |gl_patch_default_inner_level|
  |gl_patch_default_inner_level_ext|
  |gl_patch_default_outer_level|
  |gl_patch_default_outer_level_ext|
  |gl_patches|
  |gl_patches_ext|
  |gl_patches_oes|
  |gl_patch_vertices|
  |gl_patch_vertices_ext|
  |gl_patch_vertices_oes|
  |gl_path_client_length_nv|
  |gl_path_command_count_nv|
  |gl_path_computed_length_nv|
  |gl_path_coord_count_nv|
  |gl_path_cover_depth_func_nv|
  |gl_path_dash_array_count_nv|
  |gl_path_dash_caps_nv|
  |gl_path_dash_offset_nv|
  |gl_path_dash_offset_reset_nv|
  |gl_path_end_caps_nv|
  |gl_path_error_position_nv|
  |gl_path_fill_bounding_box_nv|
  |gl_path_fill_cover_mode_nv|
  |gl_path_fill_mask_nv|
  |gl_path_fill_mode_nv|
  |gl_path_fog_gen_mode_nv|
  |gl_path_format_ps_nv|
  |gl_path_format_svg_nv|
  |gl_path_gen_coeff_nv|
  |gl_path_gen_color_format_nv|
  |gl_path_gen_components_nv|
  |gl_path_gen_mode_nv|
  |gl_path_initial_dash_cap_nv|
  |gl_path_initial_end_cap_nv|
  |gl_path_join_style_nv|
  |gl_path_max_modelview_stack_depth_nv|
  |gl_path_max_projection_stack_depth_nv|
  |gl_path_miter_limit_nv|
  |gl_path_modelview_matrix_nv|
  |gl_path_modelview_nv|
  |gl_path_modelview_stack_depth_nv|
  |gl_path_object_bounding_box_nv|
  |gl_path_projection_matrix_nv|
  |gl_path_projection_nv|
  |gl_path_projection_stack_depth_nv|
  |gl_path_stencil_depth_offset_factor_nv|
  |gl_path_stencil_depth_offset_units_nv|
  |gl_path_stencil_func_nv|
  |gl_path_stencil_ref_nv|
  |gl_path_stencil_value_mask_nv|
  |gl_path_stroke_bounding_box_nv|
  |gl_path_stroke_cover_mode_nv|
  |gl_path_stroke_mask_nv|
  |gl_path_stroke_width_nv|
  |gl_path_terminal_dash_cap_nv|
  |gl_path_terminal_end_cap_nv|
  |gl_path_transpose_modelview_matrix_nv|
  |gl_path_transpose_projection_matrix_nv|
  |gl_percentage_amd|
  |gl_perfmon_global_mode_qcom|
  |gl_perfmon_result_amd|
  |gl_perfmon_result_available_amd|
  |gl_perfmon_result_size_amd|
  |gl_performance_monitor_amd|
  |gl_perfquery_counter_data_bool32_intel|
  |gl_perfquery_counter_data_double_intel|
  |gl_perfquery_counter_data_float_intel|
  |gl_perfquery_counter_data_uint32_intel|
  |gl_perfquery_counter_data_uint64_intel|
  |gl_perfquery_counter_desc_length_max_intel|
  |gl_perfquery_counter_duration_norm_intel|
  |gl_perfquery_counter_duration_raw_intel|
  |gl_perfquery_counter_event_intel|
  |gl_perfquery_counter_name_length_max_intel|
  |gl_perfquery_counter_raw_intel|
  |gl_perfquery_counter_throughput_intel|
  |gl_perfquery_counter_timestamp_intel|
  |gl_perfquery_donot_flush_intel|
  |gl_perfquery_flush_intel|
  |gl_perfquery_global_context_intel|
  |gl_perfquery_gpa_extended_counters_intel|
  |gl_perfquery_query_name_length_max_intel|
  |gl_perfquery_single_context_intel|
  |gl_perfquery_wait_intel|
  |gl_perspective_correction_hint|
  |gl_per_stage_constants_nv|
  |gl_perturb_ext|
  |gl_phong_hint_win|
  |gl_phong_win|
  |gl_pinlight_nv|
  |gl_pixel_buffer_barrier_bit|
  |gl_pixel_buffer_barrier_bit_ext|
  |gl_pixel_count_available_nv|
  |gl_pixel_counter_bits_nv|
  |gl_pixel_count_nv|
  |gl_pixel_cubic_weight_ext|
  |gl_pixel_fragment_alpha_source_sgis|
  |gl_pixel_fragment_rgb_source_sgis|
  |gl_pixel_group_color_sgis|
  |gl_pixel_mag_filter_ext|
  |gl_pixel_map_a_to_a|
  |gl_pixel_map_a_to_a_size|
  |gl_pixel_map_b_to_b|
  |gl_pixel_map_b_to_b_size|
  |gl_pixel_map_g_to_g|
  |gl_pixel_map_g_to_g_size|
  |gl_pixel_map_i_to_a|
  |gl_pixel_map_i_to_a_size|
  |gl_pixel_map_i_to_b|
  |gl_pixel_map_i_to_b_size|
  |gl_pixel_map_i_to_g|
  |gl_pixel_map_i_to_g_size|
  |gl_pixel_map_i_to_i|
  |gl_pixel_map_i_to_i_size|
  |gl_pixel_map_i_to_r|
  |gl_pixel_map_i_to_r_size|
  |gl_pixel_map_r_to_r|
  |gl_pixel_map_r_to_r_size|
  |gl_pixel_map_s_to_s|
  |gl_pixel_map_s_to_s_size|
  |gl_pixel_min_filter_ext|
  |gl_pixel_mode_bit|
  |gl_pixel_pack_buffer|
  |gl_pixel_pack_buffer_arb|
  |gl_pixel_pack_buffer_binding|
  |gl_pixel_pack_buffer_binding_arb|
  |gl_pixel_pack_buffer_binding_ext|
  |gl_pixel_pack_buffer_ext|
  |gl_pixel_subsample_2424_sgix|
  |gl_pixel_subsample_4242_sgix|
  |gl_pixel_subsample_4444_sgix|
  |gl_pixel_tex_gen_alpha_ls_sgix|
  |gl_pixel_tex_gen_alpha_ms_sgix|
  |gl_pixel_tex_gen_alpha_no_replace_sgix|
  |gl_pixel_tex_gen_alpha_replace_sgix|
  |gl_pixel_tex_gen_mode_sgix|
  |gl_pixel_tex_gen_q_ceiling_sgix|
  |gl_pixel_tex_gen_q_floor_sgix|
  |gl_pixel_tex_gen_q_round_sgix|
  |gl_pixel_tex_gen_sgix|
  |gl_pixel_texture_sgis|
  |gl_pixel_tile_best_alignment_sgix|
  |gl_pixel_tile_cache_increment_sgix|
  |gl_pixel_tile_cache_size_sgix|
  |gl_pixel_tile_grid_depth_sgix|
  |gl_pixel_tile_grid_height_sgix|
  |gl_pixel_tile_grid_width_sgix|
  |gl_pixel_tile_height_sgix|
  |gl_pixel_tile_width_sgix|
  |gl_pixel_transform_2d_ext|
  |gl_pixel_transform_2d_matrix_ext|
  |gl_pixel_transform_2d_stack_depth_ext|
  |gl_pixel_unpack_buffer|
  |gl_pixel_unpack_buffer_arb|
  |gl_pixel_unpack_buffer_binding|
  |gl_pixel_unpack_buffer_binding_arb|
  |gl_pixel_unpack_buffer_binding_ext|
  |gl_pixel_unpack_buffer_ext|
  |gl_plus_clamped_alpha_nv|
  |gl_plus_clamped_nv|
  |gl_plus_darker_nv|
  |gl_plus_nv|
  |gl_pn_triangles_ati|
  |gl_pn_triangles_normal_mode_ati|
  |gl_pn_triangles_normal_mode_linear_ati|
  |gl_pn_triangles_normal_mode_quadratic_ati|
  |gl_pn_triangles_point_mode_ati|
  |gl_pn_triangles_point_mode_cubic_ati|
  |gl_pn_triangles_point_mode_linear_ati|
  |gl_pn_triangles_tesselation_level_ati|
  |gl_point|
  |gl_point_bit|
  |gl_point_distance_attenuation|
  |gl_point_distance_attenuation_arb|
  |gl_point_fade_threshold_size|
  |gl_point_fade_threshold_size_arb|
  |gl_point_fade_threshold_size_ext|
  |gl_point_fade_threshold_size_sgis|
  |gl_point_nv|
  |gl_points|
  |gl_point_size|
  |gl_point_size_array_buffer_binding_oes|
  |gl_point_size_array_oes|
  |gl_point_size_array_pointer_oes|
  |gl_point_size_array_stride_oes|
  |gl_point_size_array_type_oes|
  |gl_point_size_granularity|
  |gl_point_size_max|
  |gl_point_size_max_arb|
  |gl_point_size_max_ext|
  |gl_point_size_max_sgis|
  |gl_point_size_min|
  |gl_point_size_min_arb|
  |gl_point_size_min_ext|
  |gl_point_size_min_sgis|
  |gl_point_size_range|
  |gl_point_smooth|
  |gl_point_smooth_hint|
  |gl_point_sprite|
  |gl_point_sprite_arb|
  |gl_point_sprite_coord_origin|
  |gl_point_sprite_nv|
  |gl_point_sprite_oes|
  |gl_point_sprite_r_mode_nv|
  |gl_point_token|
  |gl_polygon|
  |gl_polygon_bit|
  |gl_polygon_mode|
  |gl_polygon_mode_nv|
  |gl_polygon_offset_bias_ext|
  |gl_polygon_offset_clamp_ext|
  |gl_polygon_offset_command_nv|
  |gl_polygon_offset_ext|
  |gl_polygon_offset_factor|
  |gl_polygon_offset_factor_ext|
  |gl_polygon_offset_fill|
  |gl_polygon_offset_line|
  |gl_polygon_offset_line_nv|
  |gl_polygon_offset_point|
  |gl_polygon_offset_point_nv|
  |gl_polygon_offset_units|
  |gl_polygon_smooth|
  |gl_polygon_smooth_hint|
  |gl_polygon_stipple|
  |gl_polygon_stipple_bit|
  |gl_polygon_token|
  |gl_position|
  |gl_post_color_matrix_alpha_bias|
  |gl_post_color_matrix_alpha_bias_sgi|
  |gl_post_color_matrix_alpha_scale|
  |gl_post_color_matrix_alpha_scale_sgi|
  |gl_post_color_matrix_blue_bias|
  |gl_post_color_matrix_blue_bias_sgi|
  |gl_post_color_matrix_blue_scale|
  |gl_post_color_matrix_blue_scale_sgi|
  |gl_post_color_matrix_color_table|
  |gl_post_color_matrix_color_table_sgi|
  |gl_post_color_matrix_green_bias|
  |gl_post_color_matrix_green_bias_sgi|
  |gl_post_color_matrix_green_scale|
  |gl_post_color_matrix_green_scale_sgi|
  |gl_post_color_matrix_red_bias|
  |gl_post_color_matrix_red_bias_sgi|
  |gl_post_color_matrix_red_scale|
  |gl_post_color_matrix_red_scale_sgi|
  |gl_post_convolution_alpha_bias|
  |gl_post_convolution_alpha_bias_ext|
  |gl_post_convolution_alpha_scale|
  |gl_post_convolution_alpha_scale_ext|
  |gl_post_convolution_blue_bias|
  |gl_post_convolution_blue_bias_ext|
  |gl_post_convolution_blue_scale|
  |gl_post_convolution_blue_scale_ext|
  |gl_post_convolution_color_table|
  |gl_post_convolution_color_table_sgi|
  |gl_post_convolution_green_bias|
  |gl_post_convolution_green_bias_ext|
  |gl_post_convolution_green_scale|
  |gl_post_convolution_green_scale_ext|
  |gl_post_convolution_red_bias|
  |gl_post_convolution_red_bias_ext|
  |gl_post_convolution_red_scale|
  |gl_post_convolution_red_scale_ext|
  |gl_post_image_transform_color_table_hp|
  |gl_post_texture_filter_bias_range_sgix|
  |gl_post_texture_filter_bias_sgix|
  |gl_post_texture_filter_scale_range_sgix|
  |gl_post_texture_filter_scale_sgix|
  |gl_prefer_doublebuffer_hint_pgi|
  |gl_present_duration_nv|
  |gl_present_time_nv|
  |gl_preserve_ati|
  |gl_previous|
  |gl_previous_arb|
  |gl_previous_ext|
  |gl_previous_texture_input_nv|
  |gl_primary_color|
  |gl_primary_color_arb|
  |gl_primary_color_ext|
  |gl_primary_color_nv|
  |gl_primitive_bounding_box|
  |gl_primitive_bounding_box_arb|
  |gl_primitive_bounding_box_ext|
  |gl_primitive_bounding_box_oes|
  |gl_primitive_id_nv|
  |gl_primitive_restart|
  |gl_primitive_restart_fixed_index|
  |gl_primitive_restart_for_patches_supported|
  |gl_primitive_restart_for_patches_supported_oes|
  |gl_primitive_restart_index|
  |gl_primitive_restart_index_nv|
  |gl_primitive_restart_nv|
  |gl_primitives_generated|
  |gl_primitives_generated_ext|
  |gl_primitives_generated_nv|
  |gl_primitives_generated_oes|
  |gl_primitives_submitted_arb|
  |gl_program|
  |gl_program_address_registers_arb|
  |gl_program_alu_instructions_arb|
  |gl_program_attrib_components_nv|
  |gl_program_attribs_arb|
  |gl_program_binary_angle|
  |gl_program_binary_formats|
  |gl_program_binary_formats_oes|
  |gl_program_binary_length|
  |gl_program_binary_length_oes|
  |gl_program_binary_retrievable_hint|
  |gl_program_binding_arb|
  |gl_program_error_position_arb|
  |gl_program_error_position_nv|
  |gl_program_error_string_arb|
  |gl_program_error_string_nv|
  |gl_program_format_arb|
  |gl_program_format_ascii_arb|
  |gl_program_input|
  |gl_program_instructions_arb|
  |gl_program_khr|
  |gl_program_length_arb|
  |gl_program_length_nv|
  |gl_programmable_sample_location_arb|
  |gl_programmable_sample_location_nv|
  |gl_programmable_sample_location_table_size_arb|
  |gl_programmable_sample_location_table_size_nv|
  |gl_program_matrix_ext|
  |gl_program_matrix_stack_depth_ext|
  |gl_program_native_address_registers_arb|
  |gl_program_native_alu_instructions_arb|
  |gl_program_native_attribs_arb|
  |gl_program_native_instructions_arb|
  |gl_program_native_parameters_arb|
  |gl_program_native_temporaries_arb|
  |gl_program_native_tex_indirections_arb|
  |gl_program_native_tex_instructions_arb|
  |gl_program_object_arb|
  |gl_program_object_ext|
  |gl_program_output|
  |gl_program_parameter_nv|
  |gl_program_parameters_arb|
  |gl_program_pipeline|
  |gl_program_pipeline_binding|
  |gl_program_pipeline_binding_ext|
  |gl_program_pipeline_khr|
  |gl_program_pipeline_object_ext|
  |gl_program_point_size|
  |gl_program_point_size_arb|
  |gl_program_point_size_ext|
  |gl_program_resident_nv|
  |gl_program_result_components_nv|
  |gl_program_separable|
  |gl_program_separable_ext|
  |gl_program_string_arb|
  |gl_program_string_nv|
  |gl_program_target_nv|
  |gl_program_temporaries_arb|
  |gl_program_tex_indirections_arb|
  |gl_program_tex_instructions_arb|
  |gl_program_under_native_limits_arb|
  |gl_projection|
  |gl_projection_matrix|
  |gl_projection_matrix_float_as_int_bits_oes|
  |gl_projection_stack_depth|
  |gl_provoking_vertex|
  |gl_provoking_vertex_ext|
  |gl_proxy_color_table|
  |gl_proxy_color_table_sgi|
  |gl_proxy_histogram|
  |gl_proxy_histogram_ext|
  |gl_proxy_post_color_matrix_color_table|
  |gl_proxy_post_color_matrix_color_table_sgi|
  |gl_proxy_post_convolution_color_table|
  |gl_proxy_post_convolution_color_table_sgi|
  |gl_proxy_post_image_transform_color_table_hp|
  |gl_proxy_texture_1d|
  |gl_proxy_texture_1d_array|
  |gl_proxy_texture_1d_array_ext|
  |gl_proxy_texture_1d_ext|
  |gl_proxy_texture_1d_stack_mesax|
  |gl_proxy_texture_2d|
  |gl_proxy_texture_2d_array|
  |gl_proxy_texture_2d_array_ext|
  |gl_proxy_texture_2d_ext|
  |gl_proxy_texture_2d_multisample|
  |gl_proxy_texture_2d_multisample_array|
  |gl_proxy_texture_2d_stack_mesax|
  |gl_proxy_texture_3d|
  |gl_proxy_texture_3d_ext|
  |gl_proxy_texture_4d_sgis|
  |gl_proxy_texture_color_table_sgi|
  |gl_proxy_texture_cube_map|
  |gl_proxy_texture_cube_map_arb|
  |gl_proxy_texture_cube_map_array|
  |gl_proxy_texture_cube_map_array_arb|
  |gl_proxy_texture_cube_map_ext|
  |gl_proxy_texture_rectangle|
  |gl_proxy_texture_rectangle_arb|
  |gl_proxy_texture_rectangle_nv|
  |gl_purgeable_apple|
  |gl_q|
  |gl_quad_alpha4_sgis|
  |gl_quad_alpha8_sgis|
  |gl_quad_intensity4_sgis|
  |gl_quad_intensity8_sgis|
  |gl_quad_luminance4_sgis|
  |gl_quad_luminance8_sgis|
  |gl_quad_mesh_sun|
  |gl_quadratic_attenuation|
  |gl_quadratic_curve_to_nv|
  |gl_quads|
  |gl_quads_ext|
  |gl_quads_follow_provoking_vertex_convention|
  |gl_quads_follow_provoking_vertex_convention_ext|
  |gl_quads_oes|
  |gl_quad_strip|
  |gl_quad_texture_select_sgis|
  |gl_quarter_bit_ati|
  |gl_query|
  |gl_query_all_event_bits_amd|
  |gl_query_buffer|
  |gl_query_buffer_amd|
  |gl_query_buffer_barrier_bit|
  |gl_query_buffer_binding|
  |gl_query_buffer_binding_amd|
  |gl_query_by_region_no_wait|
  |gl_query_by_region_no_wait_inverted|
  |gl_query_by_region_no_wait_nv|
  |gl_query_by_region_wait|
  |gl_query_by_region_wait_inverted|
  |gl_query_by_region_wait_nv|
  |gl_query_counter_bits|
  |gl_query_counter_bits_arb|
  |gl_query_counter_bits_ext|
  |gl_query_depth_bounds_fail_event_bit_amd|
  |gl_query_depth_fail_event_bit_amd|
  |gl_query_depth_pass_event_bit_amd|
  |gl_query_khr|
  |gl_query_no_wait|
  |gl_query_no_wait_inverted|
  |gl_query_no_wait_nv|
  |gl_query_object_amd|
  |gl_query_object_ext|
  |gl_query_result|
  |gl_query_result_arb|
  |gl_query_result_available|
  |gl_query_result_available_arb|
  |gl_query_result_available_ext|
  |gl_query_result_ext|
  |gl_query_result_no_wait|
  |gl_query_result_no_wait_amd|
  |gl_query_stencil_fail_event_bit_amd|
  |gl_query_target|
  |gl_query_wait|
  |gl_query_wait_inverted|
  |gl_query_wait_nv|
  |gl_r|
  |gl_r11f_g11f_b10f|
  |gl_r11f_g11f_b10f_apple|
  |gl_r11f_g11f_b10f_ext|
  |gl_r16|
  |gl_r16_ext|
  |gl_r16f|
  |gl_r16f_ext|
  |gl_r16i|
  |gl_r16_snorm|
  |gl_r16_snorm_ext|
  |gl_r16ui|
  |gl_r1ui_c3f_v3f_sun|
  |gl_r1ui_c4f_n3f_v3f_sun|
  |gl_r1ui_c4ub_v3f_sun|
  |gl_r1ui_n3f_v3f_sun|
  |gl_r1ui_t2f_c4f_n3f_v3f_sun|
  |gl_r1ui_t2f_n3f_v3f_sun|
  |gl_r1ui_t2f_v3f_sun|
  |gl_r1ui_v3f_sun|
  |gl_r32f|
  |gl_r32f_ext|
  |gl_r32i|
  |gl_r32ui|
  |gl_r3_g3_b2|
  |gl_r5_g6_b5_a8_icc_sgix|
  |gl_r5_g6_b5_icc_sgix|
  |gl_r8|
  |gl_r8_ext|
  |gl_r8i|
  |gl_r8_snorm|
  |gl_r8ui|
  |gl_raster_fixed_sample_locations_ext|
  |gl_rasterizer_discard|
  |gl_rasterizer_discard_ext|
  |gl_rasterizer_discard_nv|
  |gl_raster_multisample_ext|
  |gl_raster_position_unclipped_ibm|
  |gl_raster_samples_ext|
  |gl_read_buffer|
  |gl_read_buffer_ext|
  |gl_read_buffer_nv|
  |gl_read_framebuffer|
  |gl_read_framebuffer_angle|
  |gl_read_framebuffer_apple|
  |gl_read_framebuffer_binding|
  |gl_read_framebuffer_binding_angle|
  |gl_read_framebuffer_binding_apple|
  |gl_read_framebuffer_binding_ext|
  |gl_read_framebuffer_binding_nv|
  |gl_read_framebuffer_ext|
  |gl_read_framebuffer_nv|
  |gl_read_only|
  |gl_read_only_arb|
  |gl_read_pixel_data_range_length_nv|
  |gl_read_pixel_data_range_nv|
  |gl_read_pixel_data_range_pointer_nv|
  |gl_read_pixels|
  |gl_read_pixels_format|
  |gl_read_pixels_type|
  |gl_read_write|
  |gl_read_write_arb|
  |gl_recip_add_signed_alpha_img|
  |gl_reclaim_memory_hint_pgi|
  |gl_rect_nv|
  |gl_red|
  |gl_red_bias|
  |gl_red_bit_ati|
  |gl_red_bits|
  |gl_red_ext|
  |gl_red_integer|
  |gl_red_integer_ext|
  |gl_red_max_clamp_ingr|
  |gl_red_min_clamp_ingr|
  |gl_red_nv|
  |gl_red_scale|
  |gl_red_snorm|
  |gl_reduce|
  |gl_reduce_ext|
  |gl_referenced_by_compute_shader|
  |gl_referenced_by_fragment_shader|
  |gl_referenced_by_geometry_shader|
  |gl_referenced_by_geometry_shader_ext|
  |gl_referenced_by_geometry_shader_oes|
  |gl_referenced_by_tess_control_shader|
  |gl_referenced_by_tess_control_shader_ext|
  |gl_referenced_by_tess_control_shader_oes|
  |gl_referenced_by_tess_evaluation_shader|
  |gl_referenced_by_tess_evaluation_shader_ext|
  |gl_referenced_by_tess_evaluation_shader_oes|
  |gl_referenced_by_vertex_shader|
  |gl_reference_plane_equation_sgix|
  |gl_reference_plane_sgix|
  |gl_reflection_map|
  |gl_reflection_map_arb|
  |gl_reflection_map_ext|
  |gl_reflection_map_nv|
  |gl_reflection_map_oes|
  |gl_reg_0_ati|
  |gl_reg_10_ati|
  |gl_reg_11_ati|
  |gl_reg_12_ati|
  |gl_reg_13_ati|
  |gl_reg_14_ati|
  |gl_reg_15_ati|
  |gl_reg_16_ati|
  |gl_reg_17_ati|
  |gl_reg_18_ati|
  |gl_reg_19_ati|
  |gl_reg_1_ati|
  |gl_reg_20_ati|
  |gl_reg_21_ati|
  |gl_reg_22_ati|
  |gl_reg_23_ati|
  |gl_reg_24_ati|
  |gl_reg_25_ati|
  |gl_reg_26_ati|
  |gl_reg_27_ati|
  |gl_reg_28_ati|
  |gl_reg_29_ati|
  |gl_reg_2_ati|
  |gl_reg_30_ati|
  |gl_reg_31_ati|
  |gl_reg_3_ati|
  |gl_reg_4_ati|
  |gl_reg_5_ati|
  |gl_reg_6_ati|
  |gl_reg_7_ati|
  |gl_reg_8_ati|
  |gl_reg_9_ati|
  |gl_register_combiners_nv|
  |gl_relative_arc_to_nv|
  |gl_relative_conic_curve_to_nv|
  |gl_relative_cubic_curve_to_nv|
  |gl_relative_horizontal_line_to_nv|
  |gl_relative_large_ccw_arc_to_nv|
  |gl_relative_large_cw_arc_to_nv|
  |gl_relative_line_to_nv|
  |gl_relative_move_to_nv|
  |gl_relative_quadratic_curve_to_nv|
  |gl_relative_rect_nv|
  |gl_relative_rounded_rect2_nv|
  |gl_relative_rounded_rect4_nv|
  |gl_relative_rounded_rect8_nv|
  |gl_relative_rounded_rect_nv|
  |gl_relative_small_ccw_arc_to_nv|
  |gl_relative_small_cw_arc_to_nv|
  |gl_relative_smooth_cubic_curve_to_nv|
  |gl_relative_smooth_quadratic_curve_to_nv|
  |gl_relative_vertical_line_to_nv|
  |gl_released_apple|
  |gl_render|
  |gl_renderbuffer|
  |gl_renderbuffer_alpha_size|
  |gl_renderbuffer_alpha_size_ext|
  |gl_renderbuffer_alpha_size_oes|
  |gl_renderbuffer_binding|
  |gl_renderbuffer_binding_angle|
  |gl_renderbuffer_binding_ext|
  |gl_renderbuffer_binding_oes|
  |gl_renderbuffer_blue_size|
  |gl_renderbuffer_blue_size_ext|
  |gl_renderbuffer_blue_size_oes|
  |gl_renderbuffer_color_samples_nv|
  |gl_renderbuffer_coverage_samples_nv|
  |gl_renderbuffer_depth_size|
  |gl_renderbuffer_depth_size_ext|
  |gl_renderbuffer_depth_size_oes|
  |gl_renderbuffer_ext|
  |gl_renderbuffer_free_memory_ati|
  |gl_renderbuffer_green_size|
  |gl_renderbuffer_green_size_ext|
  |gl_renderbuffer_green_size_oes|
  |gl_renderbuffer_height|
  |gl_renderbuffer_height_ext|
  |gl_renderbuffer_height_oes|
  |gl_renderbuffer_internal_format|
  |gl_renderbuffer_internal_format_ext|
  |gl_renderbuffer_internal_format_oes|
  |gl_renderbuffer_oes|
  |gl_renderbuffer_red_size|
  |gl_renderbuffer_red_size_ext|
  |gl_renderbuffer_red_size_oes|
  |gl_renderbuffer_samples|
  |gl_renderbuffer_samples_angle|
  |gl_renderbuffer_samples_apple|
  |gl_renderbuffer_samples_ext|
  |gl_renderbuffer_samples_img|
  |gl_renderbuffer_samples_nv|
  |gl_renderbuffer_stencil_size|
  |gl_renderbuffer_stencil_size_ext|
  |gl_renderbuffer_stencil_size_oes|
  |gl_renderbuffer_width|
  |gl_renderbuffer_width_ext|
  |gl_renderbuffer_width_oes|
  |gl_render_direct_to_framebuffer_qcom|
  |gl_renderer|
  |gl_render_mode|
  |gl_repeat|
  |gl_replace|
  |gl_replace_ext|
  |gl_replacement_code_array_pointer_sun|
  |gl_replacement_code_array_stride_sun|
  |gl_replacement_code_array_sun|
  |gl_replacement_code_array_type_sun|
  |gl_replacement_code_sun|
  |gl_replace_middle_sun|
  |gl_replace_oldest_sun|
  |gl_replace_value_amd|
  |gl_replicate_border|
  |gl_replicate_border_hp|
  |gl_required_texture_image_units_oes|
  |gl_resample_average_oml|
  |gl_resample_decimate_oml|
  |gl_resample_decimate_sgix|
  |gl_resample_replicate_oml|
  |gl_resample_replicate_sgix|
  |gl_resample_zero_fill_oml|
  |gl_resample_zero_fill_sgix|
  |gl_rescale_normal|
  |gl_rescale_normal_ext|
  |gl_reset_notification_strategy|
  |gl_reset_notification_strategy_arb|
  |gl_reset_notification_strategy_ext|
  |gl_reset_notification_strategy_khr|
  |gl_restart_path_nv|
  |gl_restart_sun|
  |gl_retained_apple|
  |gl_return|
  |gl_rg|
  |gl_rg16|
  |gl_rg16_ext|
  |gl_rg16f|
  |gl_rg16f_ext|
  |gl_rg16i|
  |gl_rg16_snorm|
  |gl_rg16_snorm_ext|
  |gl_rg16ui|
  |gl_rg32f|
  |gl_rg32f_ext|
  |gl_rg32i|
  |gl_rg32ui|
  |gl_rg8|
  |gl_rg8_ext|
  |gl_rg8i|
  |gl_rg8_snorm|
  |gl_rg8ui|
  |gl_rgb|
  |gl_rgb10|
  |gl_rgb10_a2|
  |gl_rgb10_a2_ext|
  |gl_rgb10_a2ui|
  |gl_rgb10_ext|
  |gl_rgb12|
  |gl_rgb12_ext|
  |gl_rgb16|
  |gl_rgb16_ext|
  |gl_rgb16f|
  |gl_rgb16f_arb|
  |gl_rgb16f_ext|
  |gl_rgb16i|
  |gl_rgb16i_ext|
  |gl_rgb16_snorm|
  |gl_rgb16_snorm_ext|
  |gl_rgb16ui|
  |gl_rgb16ui_ext|
  |gl_rgb2_ext|
  |gl_rgb32f|
  |gl_rgb32f_arb|
  |gl_rgb32f_ext|
  |gl_rgb32i|
  |gl_rgb32i_ext|
  |gl_rgb32ui|
  |gl_rgb32ui_ext|
  |gl_rgb4|
  |gl_rgb_422_apple|
  |gl_rgb4_ext|
  |gl_rgb4_s3tc|
  |gl_rgb5|
  |gl_rgb565|
  |gl_rgb565_oes|
  |gl_rgb5_a1|
  |gl_rgb5_a1_ext|
  |gl_rgb5_a1_oes|
  |gl_rgb5_ext|
  |gl_rgb8|
  |gl_rgb8_ext|
  |gl_rgb8i|
  |gl_rgb8i_ext|
  |gl_rgb8_oes|
  |gl_rgb8_snorm|
  |gl_rgb8ui|
  |gl_rgb8ui_ext|
  |gl_rgb9_e5|
  |gl_rgb9_e5_apple|
  |gl_rgb9_e5_ext|
  |gl_rgba|
  |gl_rgba12|
  |gl_rgba12_ext|
  |gl_rgba16|
  |gl_rgba16_ext|
  |gl_rgba16f|
  |gl_rgba16f_arb|
  |gl_rgba16f_ext|
  |gl_rgba16i|
  |gl_rgba16i_ext|
  |gl_rgba16_snorm|
  |gl_rgba16_snorm_ext|
  |gl_rgba16ui|
  |gl_rgba16ui_ext|
  |gl_rgba2|
  |gl_rgba2_ext|
  |gl_rgba32f|
  |gl_rgba32f_arb|
  |gl_rgba32f_ext|
  |gl_rgba32i|
  |gl_rgba32i_ext|
  |gl_rgba32ui|
  |gl_rgba32ui_ext|
  |gl_rgba4|
  |gl_rgba4_dxt5_s3tc|
  |gl_rgba4_ext|
  |gl_rgba4_oes|
  |gl_rgba4_s3tc|
  |gl_rgba8|
  |gl_rgba8_ext|
  |gl_rgba8i|
  |gl_rgba8i_ext|
  |gl_rgba8_oes|
  |gl_rgba8_snorm|
  |gl_rgba8ui|
  |gl_rgba8ui_ext|
  |gl_rgba_dxt5_s3tc|
  |gl_rgba_float16_apple|
  |gl_rgba_float16_ati|
  |gl_rgba_float32_apple|
  |gl_rgba_float32_ati|
  |gl_rgba_float_mode_arb|
  |gl_rgba_float_mode_ati|
  |gl_rgba_icc_sgix|
  |gl_rgba_integer|
  |gl_rgba_integer_ext|
  |gl_rgba_integer_mode_ext|
  |gl_rgba_mode|
  |gl_rgba_s3tc|
  |gl_rgba_signed_components_ext|
  |gl_rgba_snorm|
  |gl_rgba_unsigned_dot_product_mapping_nv|
  |gl_rgb_float16_apple|
  |gl_rgb_float16_ati|
  |gl_rgb_float32_apple|
  |gl_rgb_float32_ati|
  |gl_rgb_icc_sgix|
  |gl_rgb_integer|
  |gl_rgb_integer_ext|
  |gl_rgb_raw_422_apple|
  |gl_rgb_s3tc|
  |gl_rgb_scale|
  |gl_rgb_scale_arb|
  |gl_rgb_scale_ext|
  |gl_rgb_snorm|
  |gl_rg_ext|
  |gl_rg_integer|
  |gl_rg_snorm|
  |gl_right|
  |gl_rounded_rect2_nv|
  |gl_rounded_rect4_nv|
  |gl_rounded_rect8_nv|
  |gl_rounded_rect_nv|
  |gl_round_nv|
  |gl_s|
  |gl_sample_alpha_to_coverage|
  |gl_sample_alpha_to_coverage_arb|
  |gl_sample_alpha_to_mask_ext|
  |gl_sample_alpha_to_mask_sgis|
  |gl_sample_alpha_to_one|
  |gl_sample_alpha_to_one_arb|
  |gl_sample_alpha_to_one_ext|
  |gl_sample_alpha_to_one_sgis|
  |gl_sample_buffers|
  |gl_sample_buffers_3dfx|
  |gl_sample_buffers_arb|
  |gl_sample_buffers_ext|
  |gl_sample_buffers_sgis|
  |gl_sample_coverage|
  |gl_sample_coverage_arb|
  |gl_sample_coverage_invert|
  |gl_sample_coverage_invert_arb|
  |gl_sample_coverage_value|
  |gl_sample_coverage_value_arb|
  |gl_sample_location_arb|
  |gl_sample_location_nv|
  |gl_sample_location_pixel_grid_height_arb|
  |gl_sample_location_pixel_grid_height_nv|
  |gl_sample_location_pixel_grid_width_arb|
  |gl_sample_location_pixel_grid_width_nv|
  |gl_sample_location_subpixel_bits_arb|
  |gl_sample_location_subpixel_bits_nv|
  |gl_sample_mask|
  |gl_sample_mask_ext|
  |gl_sample_mask_invert_ext|
  |gl_sample_mask_invert_sgis|
  |gl_sample_mask_nv|
  |gl_sample_mask_sgis|
  |gl_sample_mask_value|
  |gl_sample_mask_value_ext|
  |gl_sample_mask_value_nv|
  |gl_sample_mask_value_sgis|
  |gl_sample_pattern_ext|
  |gl_sample_pattern_sgis|
  |gl_sample_position|
  |gl_sample_position_nv|
  |gl_sampler|
  |gl_sampler_1d|
  |gl_sampler_1d_arb|
  |gl_sampler_1d_array|
  |gl_sampler_1d_array_ext|
  |gl_sampler_1d_array_shadow|
  |gl_sampler_1d_array_shadow_ext|
  |gl_sampler_1d_shadow|
  |gl_sampler_1d_shadow_arb|
  |gl_sampler_2d|
  |gl_sampler_2d_arb|
  |gl_sampler_2d_array|
  |gl_sampler_2d_array_ext|
  |gl_sampler_2d_array_shadow|
  |gl_sampler_2d_array_shadow_ext|
  |gl_sampler_2d_array_shadow_nv|
  |gl_sampler_2d_multisample|
  |gl_sampler_2d_multisample_array|
  |gl_sampler_2d_multisample_array_oes|
  |gl_sampler_2d_rect|
  |gl_sampler_2d_rect_arb|
  |gl_sampler_2d_rect_shadow|
  |gl_sampler_2d_rect_shadow_arb|
  |gl_sampler_2d_shadow|
  |gl_sampler_2d_shadow_arb|
  |gl_sampler_2d_shadow_ext|
  |gl_sampler_3d|
  |gl_sampler_3d_arb|
  |gl_sampler_3d_oes|
  |gl_sampler_binding|
  |gl_sampler_buffer|
  |gl_sampler_buffer_amd|
  |gl_sampler_buffer_ext|
  |gl_sampler_buffer_oes|
  |gl_sampler_cube|
  |gl_sampler_cube_arb|
  |gl_sampler_cube_map_array|
  |gl_sampler_cube_map_array_arb|
  |gl_sampler_cube_map_array_ext|
  |gl_sampler_cube_map_array_oes|
  |gl_sampler_cube_map_array_shadow|
  |gl_sampler_cube_map_array_shadow_arb|
  |gl_sampler_cube_map_array_shadow_ext|
  |gl_sampler_cube_map_array_shadow_oes|
  |gl_sampler_cube_shadow|
  |gl_sampler_cube_shadow_ext|
  |gl_sampler_cube_shadow_nv|
  |gl_sampler_external_2d_y2y_ext|
  |gl_sampler_external_oes|
  |gl_sampler_khr|
  |gl_sampler_object_amd|
  |gl_sampler_renderbuffer_nv|
  |gl_samples|
  |gl_samples_3dfx|
  |gl_samples_arb|
  |gl_samples_ext|
  |gl_sample_shading|
  |gl_sample_shading_arb|
  |gl_sample_shading_oes|
  |gl_samples_passed|
  |gl_samples_passed_arb|
  |gl_samples_sgis|
  |gl_saturate_bit_ati|
  |gl_scalar_ext|
  |gl_scalebias_hint_sgix|
  |gl_scale_by_four_nv|
  |gl_scale_by_one_half_nv|
  |gl_scale_by_two_nv|
  |gl_scaled_resolve_fastest_ext|
  |gl_scaled_resolve_nicest_ext|
  |gl_scissor_bit|
  |gl_scissor_box|
  |gl_scissor_command_nv|
  |gl_scissor_test|
  |gl_screen|
  |gl_screen_coordinates_rend|
  |gl_screen_khr|
  |gl_screen_nv|
  |gl_secondary_color_array|
  |gl_secondary_color_array_address_nv|
  |gl_secondary_color_array_buffer_binding|
  |gl_secondary_color_array_buffer_binding_arb|
  |gl_secondary_color_array_ext|
  |gl_secondary_color_array_length_nv|
  |gl_secondary_color_array_list_ibm|
  |gl_secondary_color_array_list_stride_ibm|
  |gl_secondary_color_array_pointer|
  |gl_secondary_color_array_pointer_ext|
  |gl_secondary_color_array_size|
  |gl_secondary_color_array_size_ext|
  |gl_secondary_color_array_stride|
  |gl_secondary_color_array_stride_ext|
  |gl_secondary_color_array_type|
  |gl_secondary_color_array_type_ext|
  |gl_secondary_color_nv|
  |gl_secondary_interpolator_ati|
  |gl_select|
  |gl_selection_buffer_pointer|
  |gl_selection_buffer_size|
  |gl_separable_2d|
  |gl_separable_2d_ext|
  |gl_separate_attribs|
  |gl_separate_attribs_ext|
  |gl_separate_attribs_nv|
  |gl_separate_specular_color|
  |gl_separate_specular_color_ext|
  |gl_set|
  |gl_set_amd|
  |gl_sgx_binary_img|
  |gl_sgx_program_binary_img|
  |gl_shade_model|
  |gl_shader|
  |gl_shader_binary_dmp|
  |gl_shader_binary_formats|
  |gl_shader_binary_viv|
  |gl_shader_compiler|
  |gl_shader_consistent_nv|
  |gl_shader_global_access_barrier_bit_nv|
  |gl_shader_image_access_barrier_bit|
  |gl_shader_image_access_barrier_bit_ext|
  |gl_shader_image_atomic|
  |gl_shader_image_load|
  |gl_shader_image_store|
  |gl_shader_include_arb|
  |gl_shader_khr|
  |gl_shader_object_arb|
  |gl_shader_object_ext|
  |gl_shader_operation_nv|
  |gl_shader_pixel_local_storage_ext|
  |gl_shader_source_length|
  |gl_shader_storage_barrier_bit|
  |gl_shader_storage_block|
  |gl_shader_storage_buffer|
  |gl_shader_storage_buffer_binding|
  |gl_shader_storage_buffer_offset_alignment|
  |gl_shader_storage_buffer_size|
  |gl_shader_storage_buffer_start|
  |gl_shader_type|
  |gl_shading_language_version|
  |gl_shading_language_version_arb|
  |gl_shadow_ambient_sgix|
  |gl_shadow_attenuation_ext|
  |gl_shared_edge_nv|
  |gl_shared_texture_palette_ext|
  |gl_sharpen_texture_func_points_sgis|
  |gl_shininess|
  |gl_short|
  |gl_signaled|
  |gl_signaled_apple|
  |gl_signed_alpha8_nv|
  |gl_signed_alpha_nv|
  |gl_signed_hilo16_nv|
  |gl_signed_hilo8_nv|
  |gl_signed_hilo_nv|
  |gl_signed_identity_nv|
  |gl_signed_intensity8_nv|
  |gl_signed_intensity_nv|
  |gl_signed_luminance8_alpha8_nv|
  |gl_signed_luminance8_nv|
  |gl_signed_luminance_alpha_nv|
  |gl_signed_luminance_nv|
  |gl_signed_negate_nv|
  |gl_signed_normalized|
  |gl_signed_rgb8_nv|
  |gl_signed_rgb8_unsigned_alpha8_nv|
  |gl_signed_rgba8_nv|
  |gl_signed_rgba_nv|
  |gl_signed_rgb_nv|
  |gl_signed_rgb_unsigned_alpha_nv|
  |gl_simultaneous_texture_and_depth_test|
  |gl_simultaneous_texture_and_depth_write|
  |gl_simultaneous_texture_and_stencil_test|
  |gl_simultaneous_texture_and_stencil_write|
  |gl_single_color|
  |gl_single_color_ext|
  |gl_skip_components1_nv|
  |gl_skip_components2_nv|
  |gl_skip_components3_nv|
  |gl_skip_components4_nv|
  |gl_skip_decode_ext|
  |gl_skip_missing_glyph_nv|
  |gl_slice_accum_sun|
  |gl_slim10u_sgix|
  |gl_slim12s_sgix|
  |gl_slim8u_sgix|
  |gl_sluminance|
  |gl_sluminance8|
  |gl_sluminance8_alpha8|
  |gl_sluminance8_alpha8_ext|
  |gl_sluminance8_alpha8_nv|
  |gl_sluminance8_ext|
  |gl_sluminance8_nv|
  |gl_sluminance_alpha|
  |gl_sluminance_alpha_ext|
  |gl_sluminance_alpha_nv|
  |gl_sluminance_ext|
  |gl_sluminance_nv|
  |gl_small_ccw_arc_to_nv|
  |gl_small_cw_arc_to_nv|
  |gl_smaphs30_program_binary_dmp|
  |gl_smaphs_program_binary_dmp|
  |gl_sm_count_nv|
  |gl_smooth|
  |gl_smooth_cubic_curve_to_nv|
  |gl_smooth_line_width_granularity|
  |gl_smooth_line_width_range|
  |gl_smooth_point_size_granularity|
  |gl_smooth_point_size_range|
  |gl_smooth_quadratic_curve_to_nv|
  |gl_softlight|
  |gl_softlight_khr|
  |gl_softlight_nv|
  |gl_source0_alpha|
  |gl_source0_alpha_arb|
  |gl_source0_alpha_ext|
  |gl_source0_rgb|
  |gl_source0_rgb_arb|
  |gl_source0_rgb_ext|
  |gl_source1_alpha|
  |gl_source1_alpha_arb|
  |gl_source1_alpha_ext|
  |gl_source1_rgb|
  |gl_source1_rgb_arb|
  |gl_source1_rgb_ext|
  |gl_source2_alpha|
  |gl_source2_alpha_arb|
  |gl_source2_alpha_ext|
  |gl_source2_rgb|
  |gl_source2_rgb_arb|
  |gl_source2_rgb_ext|
  |gl_source3_alpha_nv|
  |gl_source3_rgb_nv|
  |gl_spare0_nv|
  |gl_spare0_plus_secondary_color_nv|
  |gl_spare1_nv|
  |gl_sparse_buffer_page_size_arb|
  |gl_sparse_storage_bit_arb|
  |gl_sparse_texture_full_array_cube_mipmaps_arb|
  |gl_sparse_texture_full_array_cube_mipmaps_ext|
  |gl_specular|
  |gl_sphere_map|
  |gl_spot_cutoff|
  |gl_spot_direction|
  |gl_spot_exponent|
  |gl_sprite_axial_sgix|
  |gl_sprite_axis_sgix|
  |gl_sprite_eye_aligned_sgix|
  |gl_sprite_mode_sgix|
  |gl_sprite_object_aligned_sgix|
  |gl_sprite_sgix|
  |gl_sprite_translation_sgix|
  |gl_square_nv|
  |gl_sr8_ext|
  |gl_src0_alpha|
  |gl_src0_rgb|
  |gl_src1_alpha|
  |gl_src1_alpha_ext|
  |gl_src1_color|
  |gl_src1_color_ext|
  |gl_src1_rgb|
  |gl_src2_alpha|
  |gl_src2_rgb|
  |gl_src_alpha|
  |gl_src_alpha_saturate|
  |gl_src_alpha_saturate_ext|
  |gl_src_atop_nv|
  |gl_src_color|
  |gl_src_in_nv|
  |gl_src_nv|
  |gl_src_out_nv|
  |gl_src_over_nv|
  |gl_srg8_ext|
  |gl_srgb|
  |gl_srgb8|
  |gl_srgb8_alpha8|
  |gl_srgb8_alpha8_ext|
  |gl_srgb8_ext|
  |gl_srgb8_nv|
  |gl_srgb_alpha|
  |gl_srgb_alpha_ext|
  |gl_srgb_decode_arb|
  |gl_srgb_ext|
  |gl_srgb_read|
  |gl_srgb_write|
  |gl_stack_overflow|
  |gl_stack_overflow_khr|
  |gl_stack_underflow|
  |gl_stack_underflow_khr|
  |gl_standard_font_format_nv|
  |gl_standard_font_name_nv|
  |gl_state_restore|
  |gl_static_ati|
  |gl_static_copy|
  |gl_static_copy_arb|
  |gl_static_draw|
  |gl_static_draw_arb|
  |gl_static_read|
  |gl_static_read_arb|
  |gl_static_vertex_array_ibm|
  |gl_stencil|
  |gl_stencil_attachment|
  |gl_stencil_attachment_ext|
  |gl_stencil_attachment_oes|
  |gl_stencil_back_fail|
  |gl_stencil_back_fail_ati|
  |gl_stencil_back_func|
  |gl_stencil_back_func_ati|
  |gl_stencil_back_op_value_amd|
  |gl_stencil_back_pass_depth_fail|
  |gl_stencil_back_pass_depth_fail_ati|
  |gl_stencil_back_pass_depth_pass|
  |gl_stencil_back_pass_depth_pass_ati|
  |gl_stencil_back_ref|
  |gl_stencil_back_value_mask|
  |gl_stencil_back_writemask|
  |gl_stencil_bits|
  |gl_stencil_buffer_bit|
  |gl_stencil_buffer_bit0_qcom|
  |gl_stencil_buffer_bit1_qcom|
  |gl_stencil_buffer_bit2_qcom|
  |gl_stencil_buffer_bit3_qcom|
  |gl_stencil_buffer_bit4_qcom|
  |gl_stencil_buffer_bit5_qcom|
  |gl_stencil_buffer_bit6_qcom|
  |gl_stencil_buffer_bit7_qcom|
  |gl_stencil_clear_tag_value_ext|
  |gl_stencil_clear_value|
  |gl_stencil_components|
  |gl_stencil_ext|
  |gl_stencil_fail|
  |gl_stencil_func|
  |gl_stencil_index|
  |gl_stencil_index1|
  |gl_stencil_index16|
  |gl_stencil_index16_ext|
  |gl_stencil_index1_ext|
  |gl_stencil_index1_oes|
  |gl_stencil_index4|
  |gl_stencil_index4_ext|
  |gl_stencil_index4_oes|
  |gl_stencil_index8|
  |gl_stencil_index8_ext|
  |gl_stencil_index8_oes|
  |gl_stencil_index_oes|
  |gl_stencil_op_value_amd|
  |gl_stencil_pass_depth_fail|
  |gl_stencil_pass_depth_pass|
  |gl_stencil_ref|
  |gl_stencil_ref_command_nv|
  |gl_stencil_renderable|
  |gl_stencil_samples_nv|
  |gl_stencil_tag_bits_ext|
  |gl_stencil_test|
  |gl_stencil_test_two_side_ext|
  |gl_stencil_value_mask|
  |gl_stencil_writemask|
  |gl_stereo|
  |gl_storage_cached_apple|
  |gl_storage_client_apple|
  |gl_storage_private_apple|
  |gl_storage_shared_apple|
  |gl_stream_copy|
  |gl_stream_copy_arb|
  |gl_stream_draw|
  |gl_stream_draw_arb|
  |gl_stream_rasterization_amd|
  |gl_stream_read|
  |gl_stream_read_arb|
  |gl_strict_depthfunc_hint_pgi|
  |gl_strict_lighting_hint_pgi|
  |gl_strict_scissor_hint_pgi|
  |gl_sub_ati|
  |gl_subpixel_bits|
  |gl_subpixel_precision_bias_x_bits_nv|
  |gl_subpixel_precision_bias_y_bits_nv|
  |gl_subsample_distance_amd|
  |gl_subtract|
  |gl_subtract_arb|
  |gl_success_nv|
  |gl_supersample_scale_x_nv|
  |gl_supersample_scale_y_nv|
  |gl_surface_mapped_nv|
  |gl_surface_registered_nv|
  |gl_surface_state_nv|
  |gl_swizzle_stq_ati|
  |gl_swizzle_stq_dq_ati|
  |gl_swizzle_str_ati|
  |gl_swizzle_str_dr_ati|
  |gl_swizzle_strq_ati|
  |gl_swizzle_strq_dq_ati|
  |gl_sync_cl_event_arb|
  |gl_sync_cl_event_complete_arb|
  |gl_sync_condition|
  |gl_sync_condition_apple|
  |gl_sync_fence|
  |gl_sync_fence_apple|
  |gl_sync_flags|
  |gl_sync_flags_apple|
  |gl_sync_flush_commands_bit|
  |gl_sync_flush_commands_bit_apple|
  |gl_sync_gpu_commands_complete|
  |gl_sync_gpu_commands_complete_apple|
  |gl_sync_object_apple|
  |gl_sync_status|
  |gl_sync_status_apple|
  |gl_sync_x11_fence_ext|
  |gl_system_font_name_nv|
  |gl_t|
  |gl_t2f_c3f_v3f|
  |gl_t2f_c4f_n3f_v3f|
  |gl_t2f_c4ub_v3f|
  |gl_t2f_iui_n3f_v2f_ext|
  |gl_t2f_iui_n3f_v3f_ext|
  |gl_t2f_iui_v2f_ext|
  |gl_t2f_iui_v3f_ext|
  |gl_t2f_n3f_v3f|
  |gl_t2f_v3f|
  |gl_t4f_c4f_n3f_v4f|
  |gl_t4f_v4f|
  |gl_table_too_large|
  |gl_table_too_large_ext|
  |gl_tangent_array_ext|
  |gl_tangent_array_pointer_ext|
  |gl_tangent_array_stride_ext|
  |gl_tangent_array_type_ext|
  |gl_terminate_sequence_command_nv|
  |gl_tess_control_output_vertices|
  |gl_tess_control_output_vertices_ext|
  |gl_tess_control_output_vertices_oes|
  |gl_tess_control_program_nv|
  |gl_tess_control_program_parameter_buffer_nv|
  |gl_tess_control_shader|
  |gl_tess_control_shader_bit|
  |gl_tess_control_shader_bit_ext|
  |gl_tess_control_shader_bit_oes|
  |gl_tess_control_shader_ext|
  |gl_tess_control_shader_oes|
  |gl_tess_control_shader_patches_arb|
  |gl_tess_control_subroutine|
  |gl_tess_control_subroutine_uniform|
  |gl_tess_control_texture|
  |gl_tessellation_factor_amd|
  |gl_tessellation_mode_amd|
  |gl_tess_evaluation_program_nv|
  |gl_tess_evaluation_program_parameter_buffer_nv|
  |gl_tess_evaluation_shader|
  |gl_tess_evaluation_shader_bit|
  |gl_tess_evaluation_shader_bit_ext|
  |gl_tess_evaluation_shader_bit_oes|
  |gl_tess_evaluation_shader_ext|
  |gl_tess_evaluation_shader_invocations_arb|
  |gl_tess_evaluation_shader_oes|
  |gl_tess_evaluation_subroutine|
  |gl_tess_evaluation_subroutine_uniform|
  |gl_tess_evaluation_texture|
  |gl_tess_gen_mode|
  |gl_tess_gen_mode_ext|
  |gl_tess_gen_mode_oes|
  |gl_tess_gen_point_mode|
  |gl_tess_gen_point_mode_ext|
  |gl_tess_gen_point_mode_oes|
  |gl_tess_gen_spacing|
  |gl_tess_gen_spacing_ext|
  |gl_tess_gen_spacing_oes|
  |gl_tess_gen_vertex_order|
  |gl_tess_gen_vertex_order_ext|
  |gl_tess_gen_vertex_order_oes|
  |gl_texcoord1_bit_pgi|
  |gl_texcoord2_bit_pgi|
  |gl_texcoord3_bit_pgi|
  |gl_texcoord4_bit_pgi|
  |gl_text_fragment_shader_ati|
  |gl_texture|
  |gl_texture0|
  |gl_texture0_arb|
  |gl_texture1|
  |gl_texture10|
  |gl_texture10_arb|
  |gl_texture11|
  |gl_texture11_arb|
  |gl_texture12|
  |gl_texture12_arb|
  |gl_texture13|
  |gl_texture13_arb|
  |gl_texture14|
  |gl_texture14_arb|
  |gl_texture15|
  |gl_texture15_arb|
  |gl_texture16|
  |gl_texture16_arb|
  |gl_texture17|
  |gl_texture17_arb|
  |gl_texture18|
  |gl_texture18_arb|
  |gl_texture19|
  |gl_texture19_arb|
  |gl_texture1_arb|
  |gl_texture_1d|
  |gl_texture_1d_array|
  |gl_texture_1d_array_ext|
  |gl_texture_1d_binding_ext|
  |gl_texture_1d_stack_binding_mesax|
  |gl_texture_1d_stack_mesax|
  |gl_texture2|
  |gl_texture20|
  |gl_texture20_arb|
  |gl_texture21|
  |gl_texture21_arb|
  |gl_texture22|
  |gl_texture22_arb|
  |gl_texture23|
  |gl_texture23_arb|
  |gl_texture24|
  |gl_texture24_arb|
  |gl_texture25|
  |gl_texture25_arb|
  |gl_texture26|
  |gl_texture26_arb|
  |gl_texture27|
  |gl_texture27_arb|
  |gl_texture28|
  |gl_texture28_arb|
  |gl_texture29|
  |gl_texture29_arb|
  |gl_texture2_arb|
  |gl_texture_2d|
  |gl_texture_2d_array|
  |gl_texture_2d_array_ext|
  |gl_texture_2d_binding_ext|
  |gl_texture_2d_multisample|
  |gl_texture_2d_multisample_array|
  |gl_texture_2d_multisample_array_oes|
  |gl_texture_2d_stack_binding_mesax|
  |gl_texture_2d_stack_mesax|
  |gl_texture3|
  |gl_texture30|
  |gl_texture30_arb|
  |gl_texture31|
  |gl_texture31_arb|
  |gl_texture3_arb|
  |gl_texture_3d|
  |gl_texture_3d_binding_ext|
  |gl_texture_3d_binding_oes|
  |gl_texture_3d_ext|
  |gl_texture_3d_oes|
  |gl_texture4|
  |gl_texture4_arb|
  |gl_texture_4d_binding_sgis|
  |gl_texture_4d_sgis|
  |gl_texture_4dsize_sgis|
  |gl_texture5|
  |gl_texture5_arb|
  |gl_texture6|
  |gl_texture6_arb|
  |gl_texture7|
  |gl_texture7_arb|
  |gl_texture8|
  |gl_texture8_arb|
  |gl_texture9|
  |gl_texture9_arb|
  |gl_texture_alpha_modulate_img|
  |gl_texture_alpha_size|
  |gl_texture_alpha_size_ext|
  |gl_texture_alpha_type|
  |gl_texture_alpha_type_arb|
  |gl_texture_application_mode_ext|
  |gl_texture_base_level|
  |gl_texture_base_level_sgis|
  |gl_texture_binding_1d|
  |gl_texture_binding_1d_array|
  |gl_texture_binding_1d_array_ext|
  |gl_texture_binding_2d|
  |gl_texture_binding_2d_array|
  |gl_texture_binding_2d_array_ext|
  |gl_texture_binding_2d_multisample|
  |gl_texture_binding_2d_multisample_array|
  |gl_texture_binding_2d_multisample_array_oes|
  |gl_texture_binding_3d|
  |gl_texture_binding_3d_oes|
  |gl_texture_binding_buffer|
  |gl_texture_binding_buffer_arb|
  |gl_texture_binding_buffer_ext|
  |gl_texture_binding_buffer_oes|
  |gl_texture_binding_cube_map|
  |gl_texture_binding_cube_map_arb|
  |gl_texture_binding_cube_map_array|
  |gl_texture_binding_cube_map_array_arb|
  |gl_texture_binding_cube_map_array_ext|
  |gl_texture_binding_cube_map_array_oes|
  |gl_texture_binding_cube_map_ext|
  |gl_texture_binding_cube_map_oes|
  |gl_texture_binding_external_oes|
  |gl_texture_binding_rectangle|
  |gl_texture_binding_rectangle_arb|
  |gl_texture_binding_rectangle_nv|
  |gl_texture_binding_renderbuffer_nv|
  |gl_texture_bit|
  |gl_texture_blue_size|
  |gl_texture_blue_size_ext|
  |gl_texture_blue_type|
  |gl_texture_blue_type_arb|
  |gl_texture_border|
  |gl_texture_border_color|
  |gl_texture_border_color_ext|
  |gl_texture_border_color_nv|
  |gl_texture_border_color_oes|
  |gl_texture_border_values_nv|
  |gl_texture_buffer|
  |gl_texture_buffer_arb|
  |gl_texture_buffer_binding|
  |gl_texture_buffer_binding_ext|
  |gl_texture_buffer_binding_oes|
  |gl_texture_buffer_data_store_binding|
  |gl_texture_buffer_data_store_binding_arb|
  |gl_texture_buffer_data_store_binding_ext|
  |gl_texture_buffer_data_store_binding_oes|
  |gl_texture_buffer_ext|
  |gl_texture_buffer_format_arb|
  |gl_texture_buffer_format_ext|
  |gl_texture_buffer_oes|
  |gl_texture_buffer_offset|
  |gl_texture_buffer_offset_alignment|
  |gl_texture_buffer_offset_alignment_ext|
  |gl_texture_buffer_offset_alignment_oes|
  |gl_texture_buffer_offset_ext|
  |gl_texture_buffer_offset_oes|
  |gl_texture_buffer_size|
  |gl_texture_buffer_size_ext|
  |gl_texture_buffer_size_oes|
  |gl_texture_clipmap_center_sgix|
  |gl_texture_clipmap_depth_sgix|
  |gl_texture_clipmap_frame_sgix|
  |gl_texture_clipmap_lod_offset_sgix|
  |gl_texture_clipmap_offset_sgix|
  |gl_texture_clipmap_virtual_depth_sgix|
  |gl_texture_color_samples_nv|
  |gl_texture_color_table_sgi|
  |gl_texture_color_writemask_sgis|
  |gl_texture_compare_fail_value_arb|
  |gl_texture_compare_func|
  |gl_texture_compare_func_arb|
  |gl_texture_compare_func_ext|
  |gl_texture_compare_mode|
  |gl_texture_compare_mode_arb|
  |gl_texture_compare_mode_ext|
  |gl_texture_compare_operator_sgix|
  |gl_texture_compare_sgix|
  |gl_texture_components|
  |gl_texture_compressed|
  |gl_texture_compressed_arb|
  |gl_texture_compressed_block_height|
  |gl_texture_compressed_block_size|
  |gl_texture_compressed_block_width|
  |gl_texture_compressed_image_size|
  |gl_texture_compressed_image_size_arb|
  |gl_texture_compression_hint|
  |gl_texture_compression_hint_arb|
  |gl_texture_constant_data_sunx|
  |gl_texture_coord_array|
  |gl_texture_coord_array_address_nv|
  |gl_texture_coord_array_buffer_binding|
  |gl_texture_coord_array_buffer_binding_arb|
  |gl_texture_coord_array_count_ext|
  |gl_texture_coord_array_ext|
  |gl_texture_coord_array_length_nv|
  |gl_texture_coord_array_list_ibm|
  |gl_texture_coord_array_list_stride_ibm|
  |gl_texture_coord_array_parallel_pointers_intel|
  |gl_texture_coord_array_pointer|
  |gl_texture_coord_array_pointer_ext|
  |gl_texture_coord_array_size|
  |gl_texture_coord_array_size_ext|
  |gl_texture_coord_array_stride|
  |gl_texture_coord_array_stride_ext|
  |gl_texture_coord_array_type|
  |gl_texture_coord_array_type_ext|
  |gl_texture_coord_nv|
  |gl_texture_coverage_samples_nv|
  |gl_texture_crop_rect_oes|
  |gl_texture_cube_map|
  |gl_texture_cube_map_arb|
  |gl_texture_cube_map_array|
  |gl_texture_cube_map_array_arb|
  |gl_texture_cube_map_array_ext|
  |gl_texture_cube_map_array_oes|
  |gl_texture_cube_map_ext|
  |gl_texture_cube_map_negative_x|
  |gl_texture_cube_map_negative_x_arb|
  |gl_texture_cube_map_negative_x_ext|
  |gl_texture_cube_map_negative_x_oes|
  |gl_texture_cube_map_negative_y|
  |gl_texture_cube_map_negative_y_arb|
  |gl_texture_cube_map_negative_y_ext|
  |gl_texture_cube_map_negative_y_oes|
  |gl_texture_cube_map_negative_z|
  |gl_texture_cube_map_negative_z_arb|
  |gl_texture_cube_map_negative_z_ext|
  |gl_texture_cube_map_negative_z_oes|
  |gl_texture_cube_map_oes|
  |gl_texture_cube_map_positive_x|
  |gl_texture_cube_map_positive_x_arb|
  |gl_texture_cube_map_positive_x_ext|
  |gl_texture_cube_map_positive_x_oes|
  |gl_texture_cube_map_positive_y|
  |gl_texture_cube_map_positive_y_arb|
  |gl_texture_cube_map_positive_y_ext|
  |gl_texture_cube_map_positive_y_oes|
  |gl_texture_cube_map_positive_z|
  |gl_texture_cube_map_positive_z_arb|
  |gl_texture_cube_map_positive_z_ext|
  |gl_texture_cube_map_positive_z_oes|
  |gl_texture_cube_map_seamless|
  |gl_texture_deformation_bit_sgix|
  |gl_texture_deformation_sgix|
  |gl_texture_depth|
  |gl_texture_depth_ext|
  |gl_texture_depth_qcom|
  |gl_texture_depth_size|
  |gl_texture_depth_size_arb|
  |gl_texture_depth_type|
  |gl_texture_depth_type_arb|
  |gl_texture_ds_size_nv|
  |gl_texture_dt_size_nv|
  |gl_texture_env|
  |gl_texture_env_bias_sgix|
  |gl_texture_env_color|
  |gl_texture_env_mode|
  |gl_texture_external_oes|
  |gl_texture_fetch_barrier_bit|
  |gl_texture_fetch_barrier_bit_ext|
  |gl_texture_filter4_size_sgis|
  |gl_texture_filter_control|
  |gl_texture_filter_control_ext|
  |gl_texture_fixed_sample_locations|
  |gl_texture_float_components_nv|
  |gl_texture_format_qcom|
  |gl_texture_free_memory_ati|
  |gl_texture_gather|
  |gl_texture_gather_shadow|
  |gl_texture_gen_mode|
  |gl_texture_gen_mode_oes|
  |gl_texture_gen_q|
  |gl_texture_gen_r|
  |gl_texture_gen_s|
  |gl_texture_gen_str_oes|
  |gl_texture_gen_t|
  |gl_texture_gequal_r_sgix|
  |gl_texture_green_size|
  |gl_texture_green_size_ext|
  |gl_texture_green_type|
  |gl_texture_green_type_arb|
  |gl_texture_height|
  |gl_texture_height_qcom|
  |gl_texture_hi_size_nv|
  |gl_texture_image_format|
  |gl_texture_image_type|
  |gl_texture_image_valid_qcom|
  |gl_texture_immutable_format|
  |gl_texture_immutable_format_ext|
  |gl_texture_immutable_levels|
  |gl_texture_index_size_ext|
  |gl_texture_intensity_size|
  |gl_texture_intensity_size_ext|
  |gl_texture_intensity_type|
  |gl_texture_intensity_type_arb|
  |gl_texture_internal_format|
  |gl_texture_internal_format_qcom|
  |gl_texture_lequal_r_sgix|
  |gl_texture_light_ext|
  |gl_texture_lighting_mode_hp|
  |gl_texture_lod_bias|
  |gl_texture_lod_bias_ext|
  |gl_texture_lod_bias_r_sgix|
  |gl_texture_lod_bias_s_sgix|
  |gl_texture_lod_bias_t_sgix|
  |gl_texture_lo_size_nv|
  |gl_texture_luminance_size|
  |gl_texture_luminance_size_ext|
  |gl_texture_luminance_type|
  |gl_texture_luminance_type_arb|
  |gl_texture_mag_filter|
  |gl_texture_mag_size_nv|
  |gl_texture_material_face_ext|
  |gl_texture_material_parameter_ext|
  |gl_texture_matrix|
  |gl_texture_matrix_float_as_int_bits_oes|
  |gl_texture_max_anisotropy_ext|
  |gl_texture_max_clamp_r_sgix|
  |gl_texture_max_clamp_s_sgix|
  |gl_texture_max_clamp_t_sgix|
  |gl_texture_max_level|
  |gl_texture_max_level_apple|
  |gl_texture_max_level_sgis|
  |gl_texture_max_lod|
  |gl_texture_max_lod_sgis|
  |gl_texture_memory_layout_intel|
  |gl_texture_min_filter|
  |gl_texture_min_lod|
  |gl_texture_min_lod_sgis|
  |gl_texture_multi_buffer_hint_sgix|
  |gl_texture_normal_ext|
  |gl_texture_num_levels_qcom|
  |gl_texture_object_valid_qcom|
  |gl_texture_post_specular_hp|
  |gl_texture_pre_specular_hp|
  |gl_texture_priority|
  |gl_texture_priority_ext|
  |gl_texture_range_length_apple|
  |gl_texture_range_pointer_apple|
  |gl_texture_rectangle|
  |gl_texture_rectangle_arb|
  |gl_texture_rectangle_nv|
  |gl_texture_red_size|
  |gl_texture_red_size_ext|
  |gl_texture_red_type|
  |gl_texture_red_type_arb|
  |gl_texture_reduction_mode_arb|
  |gl_texture_renderbuffer_data_store_binding_nv|
  |gl_texture_renderbuffer_nv|
  |gl_texture_resident|
  |gl_texture_resident_ext|
  |gl_texture_samples|
  |gl_texture_samples_img|
  |gl_texture_shader_nv|
  |gl_texture_shadow|
  |gl_texture_shared_size|
  |gl_texture_shared_size_ext|
  |gl_texture_sparse_arb|
  |gl_texture_sparse_ext|
  |gl_texture_srgb_decode_ext|
  |gl_texture_stack_depth|
  |gl_texture_stencil_size|
  |gl_texture_stencil_size_ext|
  |gl_texture_storage_hint_apple|
  |gl_texture_storage_sparse_bit_amd|
  |gl_texture_swizzle_a|
  |gl_texture_swizzle_a_ext|
  |gl_texture_swizzle_b|
  |gl_texture_swizzle_b_ext|
  |gl_texture_swizzle_g|
  |gl_texture_swizzle_g_ext|
  |gl_texture_swizzle_r|
  |gl_texture_swizzle_r_ext|
  |gl_texture_swizzle_rgba|
  |gl_texture_swizzle_rgba_ext|
  |gl_texture_target|
  |gl_texture_target_qcom|
  |gl_texture_too_large_ext|
  |gl_texture_type_qcom|
  |gl_texture_unsigned_remap_mode_nv|
  |gl_texture_update_barrier_bit|
  |gl_texture_update_barrier_bit_ext|
  |gl_texture_usage_angle|
  |gl_texture_view|
  |gl_texture_view_min_layer|
  |gl_texture_view_min_layer_ext|
  |gl_texture_view_min_layer_oes|
  |gl_texture_view_min_level|
  |gl_texture_view_min_level_ext|
  |gl_texture_view_min_level_oes|
  |gl_texture_view_num_layers|
  |gl_texture_view_num_layers_ext|
  |gl_texture_view_num_layers_oes|
  |gl_texture_view_num_levels|
  |gl_texture_view_num_levels_ext|
  |gl_texture_view_num_levels_oes|
  |gl_texture_width|
  |gl_texture_width_qcom|
  |gl_texture_wrap_q_sgis|
  |gl_texture_wrap_r|
  |gl_texture_wrap_r_ext|
  |gl_texture_wrap_r_oes|
  |gl_texture_wrap_s|
  |gl_texture_wrap_t|
  |gl_time_elapsed|
  |gl_time_elapsed_ext|
  |gl_timeout_expired|
  |gl_timeout_expired_apple|
  |gl_timeout_ignored|
  |gl_timeout_ignored_apple|
  |gl_timestamp|
  |gl_timestamp_ext|
  |gl_top_level_array_size|
  |gl_top_level_array_stride|
  |gl_trace_all_bits_mesa|
  |gl_trace_arrays_bit_mesa|
  |gl_trace_errors_bit_mesa|
  |gl_trace_mask_mesa|
  |gl_trace_name_mesa|
  |gl_trace_operations_bit_mesa|
  |gl_trace_pixels_bit_mesa|
  |gl_trace_primitives_bit_mesa|
  |gl_trace_textures_bit_mesa|
  |gl_track_matrix_nv|
  |gl_track_matrix_transform_nv|
  |gl_transform_bit|
  |gl_transform_feedback|
  |gl_transform_feedback_active|
  |gl_transform_feedback_attribs_nv|
  |gl_transform_feedback_barrier_bit|
  |gl_transform_feedback_barrier_bit_ext|
  |gl_transform_feedback_binding|
  |gl_transform_feedback_binding_nv|
  |gl_transform_feedback_buffer|
  |gl_transform_feedback_buffer_active|
  |gl_transform_feedback_buffer_active_nv|
  |gl_transform_feedback_buffer_binding|
  |gl_transform_feedback_buffer_binding_ext|
  |gl_transform_feedback_buffer_binding_nv|
  |gl_transform_feedback_buffer_ext|
  |gl_transform_feedback_buffer_index|
  |gl_transform_feedback_buffer_mode|
  |gl_transform_feedback_buffer_mode_ext|
  |gl_transform_feedback_buffer_mode_nv|
  |gl_transform_feedback_buffer_nv|
  |gl_transform_feedback_buffer_paused|
  |gl_transform_feedback_buffer_paused_nv|
  |gl_transform_feedback_buffer_size|
  |gl_transform_feedback_buffer_size_ext|
  |gl_transform_feedback_buffer_size_nv|
  |gl_transform_feedback_buffer_start|
  |gl_transform_feedback_buffer_start_ext|
  |gl_transform_feedback_buffer_start_nv|
  |gl_transform_feedback_buffer_stride|
  |gl_transform_feedback_nv|
  |gl_transform_feedback_overflow_arb|
  |gl_transform_feedback_paused|
  |gl_transform_feedback_primitives_written|
  |gl_transform_feedback_primitives_written_ext|
  |gl_transform_feedback_primitives_written_nv|
  |gl_transform_feedback_record_nv|
  |gl_transform_feedback_stream_overflow_arb|
  |gl_transform_feedback_varying|
  |gl_transform_feedback_varying_max_length|
  |gl_transform_feedback_varying_max_length_ext|
  |gl_transform_feedback_varyings|
  |gl_transform_feedback_varyings_ext|
  |gl_transform_feedback_varyings_nv|
  |gl_transform_hint_apple|
  |gl_translate_2d_nv|
  |gl_translate_3d_nv|
  |gl_translated_shader_source_length_angle|
  |gl_translate_x_nv|
  |gl_translate_y_nv|
  |gl_transpose_affine_2d_nv|
  |gl_transpose_affine_3d_nv|
  |gl_transpose_color_matrix|
  |gl_transpose_color_matrix_arb|
  |gl_transpose_current_matrix_arb|
  |gl_transpose_modelview_matrix|
  |gl_transpose_modelview_matrix_arb|
  |gl_transpose_nv|
  |gl_transpose_program_matrix_ext|
  |gl_transpose_projection_matrix|
  |gl_transpose_projection_matrix_arb|
  |gl_transpose_texture_matrix|
  |gl_transpose_texture_matrix_arb|
  |gl_triangle_fan|
  |gl_triangle_list_sun|
  |gl_triangle_mesh_sun|
  |gl_triangles|
  |gl_triangles_adjacency|
  |gl_triangles_adjacency_arb|
  |gl_triangles_adjacency_ext|
  |gl_triangles_adjacency_oes|
  |gl_triangle_strip|
  |gl_triangle_strip_adjacency|
  |gl_triangle_strip_adjacency_arb|
  |gl_triangle_strip_adjacency_ext|
  |gl_triangle_strip_adjacency_oes|
  |gl_triangular_nv|
  |gl_true|
  |gl_type|
  |gl_uncorrelated_nv|
  |gl_undefined_apple|
  |gl_undefined_vertex|
  |gl_undefined_vertex_ext|
  |gl_undefined_vertex_oes|
  |gl_uniform|
  |gl_uniform_address_command_nv|
  |gl_uniform_array_stride|
  |gl_uniform_atomic_counter_buffer_index|
  |gl_uniform_barrier_bit|
  |gl_uniform_barrier_bit_ext|
  |gl_uniform_block|
  |gl_uniform_block_active_uniform_indices|
  |gl_uniform_block_active_uniforms|
  |gl_uniform_block_binding|
  |gl_uniform_block_data_size|
  |gl_uniform_block_index|
  |gl_uniform_block_name_length|
  |gl_uniform_block_referenced_by_compute_shader|
  |gl_uniform_block_referenced_by_fragment_shader|
  |gl_uniform_block_referenced_by_geometry_shader|
  |gl_uniform_block_referenced_by_tess_control_shader|
  |gl_uniform_block_referenced_by_tess_evaluation_shader|
  |gl_uniform_block_referenced_by_vertex_shader|
  |gl_uniform_buffer|
  |gl_uniform_buffer_address_nv|
  |gl_uniform_buffer_binding|
  |gl_uniform_buffer_binding_ext|
  |gl_uniform_buffer_ext|
  |gl_uniform_buffer_length_nv|
  |gl_uniform_buffer_offset_alignment|
  |gl_uniform_buffer_size|
  |gl_uniform_buffer_start|
  |gl_uniform_buffer_unified_nv|
  |gl_uniform_is_row_major|
  |gl_uniform_matrix_stride|
  |gl_uniform_name_length|
  |gl_uniform_offset|
  |gl_uniform_size|
  |gl_uniform_type|
  |gl_unknown_context_reset|
  |gl_unknown_context_reset_arb|
  |gl_unknown_context_reset_ext|
  |gl_unknown_context_reset_khr|
  |gl_unpack_alignment|
  |gl_unpack_client_storage_apple|
  |gl_unpack_cmyk_hint_ext|
  |gl_unpack_colorspace_conversion_webgl|
  |gl_unpack_compressed_block_depth|
  |gl_unpack_compressed_block_height|
  |gl_unpack_compressed_block_size|
  |gl_unpack_compressed_block_width|
  |gl_unpack_compressed_size_sgix|
  |gl_unpack_constant_data_sunx|
  |gl_unpack_flip_y_webgl|
  |gl_unpack_image_depth_sgis|
  |gl_unpack_image_height|
  |gl_unpack_image_height_ext|
  |gl_unpack_lsb_first|
  |gl_unpack_premultiply_alpha_webgl|
  |gl_unpack_resample_oml|
  |gl_unpack_resample_sgix|
  |gl_unpack_row_bytes_apple|
  |gl_unpack_row_length|
  |gl_unpack_row_length_ext|
  |gl_unpack_skip_images|
  |gl_unpack_skip_images_ext|
  |gl_unpack_skip_pixels|
  |gl_unpack_skip_pixels_ext|
  |gl_unpack_skip_rows|
  |gl_unpack_skip_rows_ext|
  |gl_unpack_skip_volumes_sgis|
  |gl_unpack_subsample_rate_sgix|
  |gl_unpack_swap_bytes|
  |gl_unsignaled|
  |gl_unsignaled_apple|
  |gl_unsigned_byte|
  |gl_unsigned_byte_2_3_3_rev|
  |gl_unsigned_byte_2_3_3_rev_ext|
  |gl_unsigned_byte_3_3_2|
  |gl_unsigned_byte_3_3_2_ext|
  |gl_unsigned_identity_nv|
  |gl_unsigned_int|
  |gl_unsigned_int_10_10_10_2|
  |gl_unsigned_int_10_10_10_2_ext|
  |gl_unsigned_int_10_10_10_2_oes|
  |gl_unsigned_int_10f_11f_11f_rev|
  |gl_unsigned_int_10f_11f_11f_rev_apple|
  |gl_unsigned_int_10f_11f_11f_rev_ext|
  |gl_unsigned_int16_nv|
  |gl_unsigned_int16_vec2_nv|
  |gl_unsigned_int16_vec3_nv|
  |gl_unsigned_int16_vec4_nv|
  |gl_unsigned_int_2_10_10_10_rev|
  |gl_unsigned_int_2_10_10_10_rev_ext|
  |gl_unsigned_int_24_8|
  |gl_unsigned_int_24_8_ext|
  |gl_unsigned_int_24_8_mesa|
  |gl_unsigned_int_24_8_nv|
  |gl_unsigned_int_24_8_oes|
  |gl_unsigned_int_5_9_9_9_rev|
  |gl_unsigned_int_5_9_9_9_rev_apple|
  |gl_unsigned_int_5_9_9_9_rev_ext|
  |gl_unsigned_int64_amd|
  |gl_unsigned_int64_arb|
  |gl_unsigned_int64_nv|
  |gl_unsigned_int64_vec2_arb|
  |gl_unsigned_int64_vec2_nv|
  |gl_unsigned_int64_vec3_arb|
  |gl_unsigned_int64_vec3_nv|
  |gl_unsigned_int64_vec4_arb|
  |gl_unsigned_int64_vec4_nv|
  |gl_unsigned_int_8_24_rev_mesa|
  |gl_unsigned_int_8_8_8_8|
  |gl_unsigned_int_8_8_8_8_ext|
  |gl_unsigned_int_8_8_8_8_rev|
  |gl_unsigned_int_8_8_8_8_rev_ext|
  |gl_unsigned_int_8_8_s8_s8_rev_nv|
  |gl_unsigned_int8_nv|
  |gl_unsigned_int8_vec2_nv|
  |gl_unsigned_int8_vec3_nv|
  |gl_unsigned_int8_vec4_nv|
  |gl_unsigned_int_atomic_counter|
  |gl_unsigned_int_image_1d|
  |gl_unsigned_int_image_1d_array|
  |gl_unsigned_int_image_1d_array_ext|
  |gl_unsigned_int_image_1d_ext|
  |gl_unsigned_int_image_2d|
  |gl_unsigned_int_image_2d_array|
  |gl_unsigned_int_image_2d_array_ext|
  |gl_unsigned_int_image_2d_ext|
  |gl_unsigned_int_image_2d_multisample|
  |gl_unsigned_int_image_2d_multisample_array|
  |gl_unsigned_int_image_2d_multisample_array_ext|
  |gl_unsigned_int_image_2d_multisample_ext|
  |gl_unsigned_int_image_2d_rect|
  |gl_unsigned_int_image_2d_rect_ext|
  |gl_unsigned_int_image_3d|
  |gl_unsigned_int_image_3d_ext|
  |gl_unsigned_int_image_buffer|
  |gl_unsigned_int_image_buffer_ext|
  |gl_unsigned_int_image_buffer_oes|
  |gl_unsigned_int_image_cube|
  |gl_unsigned_int_image_cube_ext|
  |gl_unsigned_int_image_cube_map_array|
  |gl_unsigned_int_image_cube_map_array_ext|
  |gl_unsigned_int_image_cube_map_array_oes|
  |gl_unsigned_int_s8_s8_8_8_nv|
  |gl_unsigned_int_sampler_1d|
  |gl_unsigned_int_sampler_1d_array|
  |gl_unsigned_int_sampler_1d_array_ext|
  |gl_unsigned_int_sampler_1d_ext|
  |gl_unsigned_int_sampler_2d|
  |gl_unsigned_int_sampler_2d_array|
  |gl_unsigned_int_sampler_2d_array_ext|
  |gl_unsigned_int_sampler_2d_ext|
  |gl_unsigned_int_sampler_2d_multisample|
  |gl_unsigned_int_sampler_2d_multisample_array|
  |gl_unsigned_int_sampler_2d_multisample_array_oes|
  |gl_unsigned_int_sampler_2d_rect|
  |gl_unsigned_int_sampler_2d_rect_ext|
  |gl_unsigned_int_sampler_3d|
  |gl_unsigned_int_sampler_3d_ext|
  |gl_unsigned_int_sampler_buffer|
  |gl_unsigned_int_sampler_buffer_amd|
  |gl_unsigned_int_sampler_buffer_ext|
  |gl_unsigned_int_sampler_buffer_oes|
  |gl_unsigned_int_sampler_cube|
  |gl_unsigned_int_sampler_cube_ext|
  |gl_unsigned_int_sampler_cube_map_array|
  |gl_unsigned_int_sampler_cube_map_array_arb|
  |gl_unsigned_int_sampler_cube_map_array_ext|
  |gl_unsigned_int_sampler_cube_map_array_oes|
  |gl_unsigned_int_sampler_renderbuffer_nv|
  |gl_unsigned_int_vec2|
  |gl_unsigned_int_vec2_ext|
  |gl_unsigned_int_vec3|
  |gl_unsigned_int_vec3_ext|
  |gl_unsigned_int_vec4|
  |gl_unsigned_int_vec4_ext|
  |gl_unsigned_invert_nv|
  |gl_unsigned_normalized|
  |gl_unsigned_normalized_arb|
  |gl_unsigned_normalized_ext|
  |gl_unsigned_short|
  |gl_unsigned_short_1_15_rev_mesa|
  |gl_unsigned_short_15_1_mesa|
  |gl_unsigned_short_1_5_5_5_rev|
  |gl_unsigned_short_1_5_5_5_rev_ext|
  |gl_unsigned_short_4_4_4_4|
  |gl_unsigned_short_4_4_4_4_ext|
  |gl_unsigned_short_4_4_4_4_rev|
  |gl_unsigned_short_4_4_4_4_rev_ext|
  |gl_unsigned_short_4_4_4_4_rev_img|
  |gl_unsigned_short_5_5_5_1|
  |gl_unsigned_short_5_5_5_1_ext|
  |gl_unsigned_short_5_6_5|
  |gl_unsigned_short_5_6_5_ext|
  |gl_unsigned_short_5_6_5_rev|
  |gl_unsigned_short_5_6_5_rev_ext|
  |gl_unsigned_short_8_8_apple|
  |gl_unsigned_short_8_8_mesa|
  |gl_unsigned_short_8_8_rev_apple|
  |gl_unsigned_short_8_8_rev_mesa|
  |gl_upper_left|
  |gl_use_missing_glyph_nv|
  |gl_utf16_nv|
  |gl_utf8_nv|
  |gl_v2f|
  |gl_v3f|
  |gl_validate_status|
  |gl_variable_a_nv|
  |gl_variable_b_nv|
  |gl_variable_c_nv|
  |gl_variable_d_nv|
  |gl_variable_e_nv|
  |gl_variable_f_nv|
  |gl_variable_g_nv|
  |gl_variant_array_ext|
  |gl_variant_array_pointer_ext|
  |gl_variant_array_stride_ext|
  |gl_variant_array_type_ext|
  |gl_variant_datatype_ext|
  |gl_variant_ext|
  |gl_variant_value_ext|
  |gl_vbo_free_memory_ati|
  |gl_vector_ext|
  |gl_vendor|
  |gl_version|
  |gl_version_es_cl_1_0|
  |gl_version_es_cl_1_1|
  |gl_version_es_cm_1_1|
  |gl_vertex23_bit_pgi|
  |gl_vertex4_bit_pgi|
  |gl_vertex_array|
  |gl_vertex_array_address_nv|
  |gl_vertex_array_binding|
  |gl_vertex_array_binding_apple|
  |gl_vertex_array_binding_oes|
  |gl_vertex_array_buffer_binding|
  |gl_vertex_array_buffer_binding_arb|
  |gl_vertex_array_count_ext|
  |gl_vertex_array_ext|
  |gl_vertex_array_khr|
  |gl_vertex_array_length_nv|
  |gl_vertex_array_list_ibm|
  |gl_vertex_array_list_stride_ibm|
  |gl_vertex_array_object_amd|
  |gl_vertex_array_object_ext|
  |gl_vertex_array_parallel_pointers_intel|
  |gl_vertex_array_pointer|
  |gl_vertex_array_pointer_ext|
  |gl_vertex_array_range_apple|
  |gl_vertex_array_range_length_apple|
  |gl_vertex_array_range_length_nv|
  |gl_vertex_array_range_nv|
  |gl_vertex_array_range_pointer_apple|
  |gl_vertex_array_range_pointer_nv|
  |gl_vertex_array_range_valid_nv|
  |gl_vertex_array_range_without_flush_nv|
  |gl_vertex_array_size|
  |gl_vertex_array_size_ext|
  |gl_vertex_array_storage_hint_apple|
  |gl_vertex_array_stride|
  |gl_vertex_array_stride_ext|
  |gl_vertex_array_type|
  |gl_vertex_array_type_ext|
  |gl_vertex_attrib_array0_nv|
  |gl_vertex_attrib_array10_nv|
  |gl_vertex_attrib_array11_nv|
  |gl_vertex_attrib_array12_nv|
  |gl_vertex_attrib_array13_nv|
  |gl_vertex_attrib_array14_nv|
  |gl_vertex_attrib_array15_nv|
  |gl_vertex_attrib_array1_nv|
  |gl_vertex_attrib_array2_nv|
  |gl_vertex_attrib_array3_nv|
  |gl_vertex_attrib_array4_nv|
  |gl_vertex_attrib_array5_nv|
  |gl_vertex_attrib_array6_nv|
  |gl_vertex_attrib_array7_nv|
  |gl_vertex_attrib_array8_nv|
  |gl_vertex_attrib_array9_nv|
  |gl_vertex_attrib_array_address_nv|
  |gl_vertex_attrib_array_barrier_bit|
  |gl_vertex_attrib_array_barrier_bit_ext|
  |gl_vertex_attrib_array_buffer_binding|
  |gl_vertex_attrib_array_buffer_binding_arb|
  |gl_vertex_attrib_array_divisor|
  |gl_vertex_attrib_array_divisor_angle|
  |gl_vertex_attrib_array_divisor_arb|
  |gl_vertex_attrib_array_divisor_ext|
  |gl_vertex_attrib_array_divisor_nv|
  |gl_vertex_attrib_array_enabled|
  |gl_vertex_attrib_array_enabled_arb|
  |gl_vertex_attrib_array_integer|
  |gl_vertex_attrib_array_integer_ext|
  |gl_vertex_attrib_array_integer_nv|
  |gl_vertex_attrib_array_length_nv|
  |gl_vertex_attrib_array_long|
  |gl_vertex_attrib_array_normalized|
  |gl_vertex_attrib_array_normalized_arb|
  |gl_vertex_attrib_array_pointer|
  |gl_vertex_attrib_array_pointer_arb|
  |gl_vertex_attrib_array_size|
  |gl_vertex_attrib_array_size_arb|
  |gl_vertex_attrib_array_stride|
  |gl_vertex_attrib_array_stride_arb|
  |gl_vertex_attrib_array_type|
  |gl_vertex_attrib_array_type_arb|
  |gl_vertex_attrib_array_unified_nv|
  |gl_vertex_attrib_binding|
  |gl_vertex_attrib_map1_apple|
  |gl_vertex_attrib_map1_coeff_apple|
  |gl_vertex_attrib_map1_domain_apple|
  |gl_vertex_attrib_map1_order_apple|
  |gl_vertex_attrib_map1_size_apple|
  |gl_vertex_attrib_map2_apple|
  |gl_vertex_attrib_map2_coeff_apple|
  |gl_vertex_attrib_map2_domain_apple|
  |gl_vertex_attrib_map2_order_apple|
  |gl_vertex_attrib_map2_size_apple|
  |gl_vertex_attrib_relative_offset|
  |gl_vertex_binding_buffer|
  |gl_vertex_binding_divisor|
  |gl_vertex_binding_offset|
  |gl_vertex_binding_stride|
  |gl_vertex_blend_arb|
  |gl_vertex_consistent_hint_pgi|
  |gl_vertex_data_hint_pgi|
  |gl_vertex_element_swizzle_amd|
  |gl_vertex_id_nv|
  |gl_vertex_id_swizzle_amd|
  |gl_vertex_preclip_hint_sgix|
  |gl_vertex_preclip_sgix|
  |gl_vertex_program_arb|
  |gl_vertex_program_binding_nv|
  |gl_vertex_program_callback_data_mesa|
  |gl_vertex_program_callback_func_mesa|
  |gl_vertex_program_callback_mesa|
  |gl_vertex_program_nv|
  |gl_vertex_program_parameter_buffer_nv|
  |gl_vertex_program_point_size|
  |gl_vertex_program_point_size_arb|
  |gl_vertex_program_point_size_nv|
  |gl_vertex_program_position_mesa|
  |gl_vertex_program_two_side|
  |gl_vertex_program_two_side_arb|
  |gl_vertex_program_two_side_nv|
  |gl_vertex_shader|
  |gl_vertex_shader_arb|
  |gl_vertex_shader_binding_ext|
  |gl_vertex_shader_bit|
  |gl_vertex_shader_bit_ext|
  |gl_vertex_shader_ext|
  |gl_vertex_shader_instructions_ext|
  |gl_vertex_shader_invariants_ext|
  |gl_vertex_shader_invocations_arb|
  |gl_vertex_shader_local_constants_ext|
  |gl_vertex_shader_locals_ext|
  |gl_vertex_shader_optimized_ext|
  |gl_vertex_shader_variants_ext|
  |gl_vertex_source_ati|
  |gl_vertex_state_program_nv|
  |gl_vertex_stream0_ati|
  |gl_vertex_stream1_ati|
  |gl_vertex_stream2_ati|
  |gl_vertex_stream3_ati|
  |gl_vertex_stream4_ati|
  |gl_vertex_stream5_ati|
  |gl_vertex_stream6_ati|
  |gl_vertex_stream7_ati|
  |gl_vertex_subroutine|
  |gl_vertex_subroutine_uniform|
  |gl_vertex_texture|
  |gl_vertex_weight_array_ext|
  |gl_vertex_weight_array_pointer_ext|
  |gl_vertex_weight_array_size_ext|
  |gl_vertex_weight_array_stride_ext|
  |gl_vertex_weight_array_type_ext|
  |gl_vertex_weighting_ext|
  |gl_vertical_line_to_nv|
  |gl_vertices_submitted_arb|
  |gl_vibrance_bias_nv|
  |gl_vibrance_scale_nv|
  |gl_video_buffer_binding_nv|
  |gl_video_buffer_internal_format_nv|
  |gl_video_buffer_nv|
  |gl_video_buffer_pitch_nv|
  |gl_video_capture_field_lower_height_nv|
  |gl_video_capture_field_upper_height_nv|
  |gl_video_capture_frame_height_nv|
  |gl_video_capture_frame_width_nv|
  |gl_video_capture_surface_origin_nv|
  |gl_video_capture_to_422_supported_nv|
  |gl_video_color_conversion_matrix_nv|
  |gl_video_color_conversion_max_nv|
  |gl_video_color_conversion_min_nv|
  |gl_video_color_conversion_offset_nv|
  |gl_view_class_128_bits|
  |gl_view_class_16_bits|
  |gl_view_class_24_bits|
  |gl_view_class_32_bits|
  |gl_view_class_48_bits|
  |gl_view_class_64_bits|
  |gl_view_class_8_bits|
  |gl_view_class_96_bits|
  |gl_view_class_bptc_float|
  |gl_view_class_bptc_unorm|
  |gl_view_class_rgtc1_red|
  |gl_view_class_rgtc2_rg|
  |gl_view_class_s3tc_dxt1_rgb|
  |gl_view_class_s3tc_dxt1_rgba|
  |gl_view_class_s3tc_dxt3_rgba|
  |gl_view_class_s3tc_dxt5_rgba|
  |gl_view_compatibility_class|
  |gl_viewport|
  |gl_viewport_bit|
  |gl_viewport_bounds_range|
  |gl_viewport_bounds_range_ext|
  |gl_viewport_bounds_range_nv|
  |gl_viewport_command_nv|
  |gl_viewport_index_provoking_vertex|
  |gl_viewport_index_provoking_vertex_ext|
  |gl_viewport_index_provoking_vertex_nv|
  |gl_viewport_subpixel_bits|
  |gl_viewport_subpixel_bits_ext|
  |gl_viewport_subpixel_bits_nv|
  |gl_virtual_page_size_index_arb|
  |gl_virtual_page_size_index_ext|
  |gl_virtual_page_size_x_amd|
  |gl_virtual_page_size_x_arb|
  |gl_virtual_page_size_x_ext|
  |gl_virtual_page_size_y_amd|
  |gl_virtual_page_size_y_arb|
  |gl_virtual_page_size_y_ext|
  |gl_virtual_page_size_z_amd|
  |gl_virtual_page_size_z_arb|
  |gl_virtual_page_size_z_ext|
  |gl_vividlight_nv|
  |gl_volatile_apple|
  |gl_wait_failed|
  |gl_wait_failed_apple|
  |gl_warp_size_nv|
  |gl_warps_per_sm_nv|
  |gl_weight_array_arb|
  |gl_weight_array_buffer_binding|
  |gl_weight_array_buffer_binding_arb|
  |gl_weight_array_buffer_binding_oes|
  |gl_weight_array_oes|
  |gl_weight_array_pointer_arb|
  |gl_weight_array_pointer_oes|
  |gl_weight_array_size_arb|
  |gl_weight_array_size_oes|
  |gl_weight_array_stride_arb|
  |gl_weight_array_stride_oes|
  |gl_weight_array_type_arb|
  |gl_weight_array_type_oes|
  |gl_weighted_average_arb|
  |gl_weight_sum_unity_arb|
  |gl_w_ext|
  |gl_wide_line_hint_pgi|
  |gl_wrap_border_sun|
  |gl_write_discard_nv|
  |gl_write_only|
  |gl_write_only_arb|
  |gl_write_only_oes|
  |gl_writeonly_rendering_qcom|
  |gl_write_pixel_data_range_length_nv|
  |gl_write_pixel_data_range_nv|
  |gl_write_pixel_data_range_pointer_nv|
  |gl_x_ext|
  |gl_xor|
  |gl_xor_nv|
  |gl_ycbaycr8a_4224_nv|
  |gl_ycbcr_422_apple|
  |gl_ycbcr_mesa|
  |gl_ycbycr8_422_nv|
  |gl_ycrcb_422_sgix|
  |gl_ycrcb_444_sgix|
  |gl_ycrcba_sgix|
  |gl_ycrcb_sgix|
  |gl_y_ext|
  |gl_z400_binary_amd|
  |gl_z4y12z4cb12z4a12z4y12z4cr12z4a12_4224_nv|
  |gl_z4y12z4cb12z4cr12_444_nv|
  |gl_z4y12z4cb12z4y12z4cr12_422_nv|
  |gl_z6y10z6cb10z6a10z6y10z6cr10z6a10_4224_nv|
  |gl_z6y10z6cb10z6y10z6cr10_422_nv|
  |gl_zero|
  |gl_zero_ext|
  |gl_zero_to_one|
  |gl_z_ext|
  |gl_zoom_x|
  |gl_zoom_y|
)
(defpackage :gl
  (:use :cg-user)
  (:export 
    :ABGR-EXT
    :ACCUM
    :ACCUM-ADJACENT-PAIRS-NV
    :ACCUM-ALPHA-BITS
    :ACCUM-BLUE-BITS
    :ACCUM-BUFFER-BIT
    :ACCUM-CLEAR-VALUE
    :ACCUM-GREEN-BITS
    :ACCUM-RED-BITS
    :ACTIVE-ATOMIC-COUNTER-BUFFERS
    :ACTIVE-ATTRIBUTE-MAX-LENGTH
    :ACTIVE-ATTRIBUTES
    :ACTIVE-PROGRAM
    :ACTIVE-PROGRAM-EXT
    :ACTIVE-RESOURCES
    :ACTIVE-STENCIL-FACE-EXT
    :ACTIVE-SUBROUTINE-MAX-LENGTH
    :ACTIVE-SUBROUTINES
    :ACTIVE-SUBROUTINE-UNIFORM-LOCATIONS
    :ACTIVE-SUBROUTINE-UNIFORM-MAX-LENGTH
    :ACTIVE-SUBROUTINE-UNIFORMS
    :ACTIVE-TEXTURE
    :ACTIVE-TEXTURE-ARB
    :ACTIVE-UNIFORM-BLOCK-MAX-NAME-LENGTH
    :ACTIVE-UNIFORM-BLOCKS
    :ACTIVE-UNIFORM-MAX-LENGTH
    :ACTIVE-UNIFORMS
    :ACTIVE-VARIABLES
    :ACTIVE-VARYING-MAX-LENGTH-NV
    :ACTIVE-VARYINGS-NV
    :ACTIVE-VERTEX-UNITS-ARB
    :ADD
    :ADD-ATI
    :ADD-BLEND-IMG
    :ADD-SIGNED
    :ADD-SIGNED-ARB
    :ADD-SIGNED-EXT
    :ADJACENT-PAIRS-NV
    :AFFINE-2D-NV
    :AFFINE-3D-NV
    :ALIASED-LINE-WIDTH-RANGE
    :ALIASED-POINT-SIZE-RANGE
    :ALL-ATTRIB-BITS
    :ALL-BARRIER-BITS
    :ALL-BARRIER-BITS-EXT
    :ALL-COMPLETED-NV
    :ALLOW-DRAW-FRG-HINT-PGI
    :ALLOW-DRAW-MEM-HINT-PGI
    :ALLOW-DRAW-OBJ-HINT-PGI
    :ALLOW-DRAW-WIN-HINT-PGI
    :ALL-SHADER-BITS
    :ALL-SHADER-BITS-EXT
    :ALL-STATIC-DATA-IBM
    :ALPHA
    :ALPHA12
    :ALPHA12-EXT
    :ALPHA16
    :ALPHA16-EXT
    :ALPHA16F-ARB
    :ALPHA16F-EXT
    :ALPHA16-ICC-SGIX
    :ALPHA16I-EXT
    :ALPHA16-SNORM
    :ALPHA16UI-EXT
    :ALPHA32F-ARB
    :ALPHA32F-EXT
    :ALPHA32I-EXT
    :ALPHA32UI-EXT
    :ALPHA4
    :ALPHA4-EXT
    :ALPHA8
    :ALPHA8-EXT
    :ALPHA8I-EXT
    :ALPHA8-OES
    :ALPHA8-SNORM
    :ALPHA8UI-EXT
    :ALPHA-BIAS
    :ALPHA-BITS
    :ALPHA-FLOAT16-APPLE
    :ALPHA-FLOAT16-ATI
    :ALPHA-FLOAT32-APPLE
    :ALPHA-FLOAT32-ATI
    :ALPHA-ICC-SGIX
    :ALPHA-INTEGER
    :ALPHA-INTEGER-EXT
    :ALPHA-MAX-CLAMP-INGR
    :ALPHA-MAX-SGIX
    :ALPHA-MIN-CLAMP-INGR
    :ALPHA-MIN-SGIX
    :ALPHA-REF-COMMAND-NV
    :ALPHA-SCALE
    :ALPHA-SNORM
    :ALPHA-TEST
    :ALPHA-TEST-FUNC
    :ALPHA-TEST-FUNC-QCOM
    :ALPHA-TEST-QCOM
    :ALPHA-TEST-REF
    :ALPHA-TEST-REF-QCOM
    :ALREADY-SIGNALED
    :ALREADY-SIGNALED-APPLE
    :ALWAYS
    :ALWAYS-FAST-HINT-PGI
    :ALWAYS-SOFT-HINT-PGI
    :AMBIENT
    :AMBIENT-AND-DIFFUSE
    :AND
    :AND-INVERTED
    :AND-REVERSE
    :ANY-SAMPLES-PASSED
    :ANY-SAMPLES-PASSED-CONSERVATIVE
    :ANY-SAMPLES-PASSED-CONSERVATIVE-EXT
    :ANY-SAMPLES-PASSED-EXT
    :ARC-TO-NV
    :ARRAY-BUFFER
    :ARRAY-BUFFER-ARB
    :ARRAY-BUFFER-BINDING
    :ARRAY-BUFFER-BINDING-ARB
    :ARRAY-ELEMENT-LOCK-COUNT-EXT
    :ARRAY-ELEMENT-LOCK-FIRST-EXT
    :ARRAY-OBJECT-BUFFER-ATI
    :ARRAY-OBJECT-OFFSET-ATI
    :ARRAY-SIZE
    :ARRAY-STRIDE
    :ASYNC-DRAW-PIXELS-SGIX
    :ASYNC-HISTOGRAM-SGIX
    :ASYNC-MARKER-SGIX
    :ASYNC-READ-PIXELS-SGIX
    :ASYNC-TEX-IMAGE-SGIX
    :ATC-RGBA-EXPLICIT-ALPHA-AMD
    :ATC-RGBA-INTERPOLATED-ALPHA-AMD
    :ATC-RGB-AMD
    :ATOMIC-COUNTER-BARRIER-BIT
    :ATOMIC-COUNTER-BARRIER-BIT-EXT
    :ATOMIC-COUNTER-BUFFER
    :ATOMIC-COUNTER-BUFFER-ACTIVE-ATOMIC-COUNTER-INDICES
    :ATOMIC-COUNTER-BUFFER-ACTIVE-ATOMIC-COUNTERS
    :ATOMIC-COUNTER-BUFFER-BINDING
    :ATOMIC-COUNTER-BUFFER-DATA-SIZE
    :ATOMIC-COUNTER-BUFFER-INDEX
    :ATOMIC-COUNTER-BUFFER-REFERENCED-BY-COMPUTE-SHADER
    :ATOMIC-COUNTER-BUFFER-REFERENCED-BY-FRAGMENT-SHADER
    :ATOMIC-COUNTER-BUFFER-REFERENCED-BY-GEOMETRY-SHADER
    :ATOMIC-COUNTER-BUFFER-REFERENCED-BY-TESS-CONTROL-SHADER
    :ATOMIC-COUNTER-BUFFER-REFERENCED-BY-TESS-EVALUATION-SHADER
    :ATOMIC-COUNTER-BUFFER-REFERENCED-BY-VERTEX-SHADER
    :ATOMIC-COUNTER-BUFFER-SIZE
    :ATOMIC-COUNTER-BUFFER-START
    :ATTACHED-SHADERS
    :ATTENUATION-EXT
    :ATTRIB-ARRAY-POINTER-NV
    :ATTRIB-ARRAY-SIZE-NV
    :ATTRIB-ARRAY-STRIDE-NV
    :ATTRIB-ARRAY-TYPE-NV
    :ATTRIB-STACK-DEPTH
    :ATTRIBUTE-ADDRESS-COMMAND-NV
    :AUTO-GENERATE-MIPMAP
    :AUTO-NORMAL
    :AUX0
    :AUX1
    :AUX2
    :AUX3
    :AUX-BUFFERS
    :AUX-DEPTH-STENCIL-APPLE
    :AVERAGE-EXT
    :AVERAGE-HP
    :BACK
    :BACK-LEFT
    :BACK-NORMALS-HINT-PGI
    :BACK-PRIMARY-COLOR-NV
    :BACK-RIGHT
    :BACK-SECONDARY-COLOR-NV
    :BEVEL-NV
    :BGR
    :BGRA
    :BGRA8-EXT
    :BGRA-EXT
    :BGRA-IMG
    :BGRA-INTEGER
    :BGRA-INTEGER-EXT
    :BGR-EXT
    :BGR-INTEGER
    :BGR-INTEGER-EXT
    :BIAS-BIT-ATI
    :BIAS-BY-NEGATIVE-ONE-HALF-NV
    :BINNING-CONTROL-HINT-QCOM
    :BINORMAL-ARRAY-EXT
    :BINORMAL-ARRAY-POINTER-EXT
    :BINORMAL-ARRAY-STRIDE-EXT
    :BINORMAL-ARRAY-TYPE-EXT
    :BITMAP
    :BITMAP-TOKEN
    :BLEND
    :BLEND-ADVANCED-COHERENT-KHR
    :BLEND-ADVANCED-COHERENT-NV
    :BLEND-COLOR
    :BLEND-COLOR-COMMAND-NV
    :BLEND-COLOR-EXT
    :BLEND-DST
    :BLEND-DST-ALPHA
    :BLEND-DST-ALPHA-EXT
    :BLEND-DST-ALPHA-OES
    :BLEND-DST-RGB
    :BLEND-DST-RGB-EXT
    :BLEND-DST-RGB-OES
    :BLEND-EQUATION
    :BLEND-EQUATION-ALPHA
    :BLEND-EQUATION-ALPHA-EXT
    :BLEND-EQUATION-ALPHA-OES
    :BLEND-EQUATION-EXT
    :BLEND-EQUATION-OES
    :BLEND-EQUATION-RGB
    :BLEND-EQUATION-RGB-EXT
    :BLEND-EQUATION-RGB-OES
    :BLEND-OVERLAP-NV
    :BLEND-PREMULTIPLIED-SRC-NV
    :BLEND-SRC
    :BLEND-SRC-ALPHA
    :BLEND-SRC-ALPHA-EXT
    :BLEND-SRC-ALPHA-OES
    :BLEND-SRC-RGB
    :BLEND-SRC-RGB-EXT
    :BLEND-SRC-RGB-OES
    :BLOCK-INDEX
    :BLUE
    :BLUE-BIAS
    :BLUE-BIT-ATI
    :BLUE-BITS
    :BLUE-INTEGER
    :BLUE-INTEGER-EXT
    :BLUE-MAX-CLAMP-INGR
    :BLUE-MIN-CLAMP-INGR
    :BLUE-NV
    :BLUE-SCALE
    :BOLD-BIT-NV
    :BOOL
    :BOOL-ARB
    :BOOL-VEC2
    :BOOL-VEC2-ARB
    :BOOL-VEC3
    :BOOL-VEC3-ARB
    :BOOL-VEC4
    :BOOL-VEC4-ARB
    :BOUNDING-BOX-NV
    :BOUNDING-BOX-OF-BOUNDING-BOXES-NV
    :BROWSER-DEFAULT-WEBGL
    :BUFFER
    :BUFFER-ACCESS
    :BUFFER-ACCESS-ARB
    :BUFFER-ACCESS-FLAGS
    :BUFFER-ACCESS-OES
    :BUFFER-BINDING
    :BUFFER-DATA-SIZE
    :BUFFER-FLUSHING-UNMAP-APPLE
    :BUFFER-GPU-ADDRESS-NV
    :BUFFER-IMMUTABLE-STORAGE
    :BUFFER-IMMUTABLE-STORAGE-EXT
    :BUFFER-KHR
    :BUFFER-MAP-LENGTH
    :BUFFER-MAP-OFFSET
    :BUFFER-MAPPED
    :BUFFER-MAPPED-ARB
    :BUFFER-MAPPED-OES
    :BUFFER-MAP-POINTER
    :BUFFER-MAP-POINTER-ARB
    :BUFFER-MAP-POINTER-OES
    :BUFFER-OBJECT-APPLE
    :BUFFER-OBJECT-EXT
    :BUFFER-SERIALIZED-MODIFY-APPLE
    :BUFFER-SIZE
    :BUFFER-SIZE-ARB
    :BUFFER-STORAGE-FLAGS
    :BUFFER-STORAGE-FLAGS-EXT
    :BUFFER-UPDATE-BARRIER-BIT
    :BUFFER-UPDATE-BARRIER-BIT-EXT
    :BUFFER-USAGE
    :BUFFER-USAGE-ARB
    :BUFFER-VARIABLE
    :BUMP-ENVMAP-ATI
    :BUMP-NUM-TEX-UNITS-ATI
    :BUMP-ROT-MATRIX-ATI
    :BUMP-ROT-MATRIX-SIZE-ATI
    :BUMP-TARGET-ATI
    :BUMP-TEX-UNITS-ATI
    :BYTE
    :C3F-V3F
    :C4F-N3F-V3F
    :C4UB-V2F
    :C4UB-V3F
    :CALLIGRAPHIC-FRAGMENT-SGIX
    :CAVEAT-SUPPORT
    :CCW
    :CIRCULAR-CCW-ARC-TO-NV
    :CIRCULAR-CW-ARC-TO-NV
    :CIRCULAR-TANGENT-ARC-TO-NV
    :CLAMP
    :CLAMP-FRAGMENT-COLOR
    :CLAMP-FRAGMENT-COLOR-ARB
    :CLAMP-READ-COLOR
    :CLAMP-READ-COLOR-ARB
    :CLAMP-TO-BORDER
    :CLAMP-TO-BORDER-ARB
    :CLAMP-TO-BORDER-EXT
    :CLAMP-TO-BORDER-NV
    :CLAMP-TO-BORDER-OES
    :CLAMP-TO-BORDER-SGIS
    :CLAMP-TO-EDGE
    :CLAMP-TO-EDGE-SGIS
    :CLAMP-VERTEX-COLOR
    :CLAMP-VERTEX-COLOR-ARB
    :CLEAR
    :CLEAR-BUFFER
    :CLEAR-TEXTURE
    :CLIENT-ACTIVE-TEXTURE
    :CLIENT-ACTIVE-TEXTURE-ARB
    :CLIENT-ALL-ATTRIB-BITS
    :CLIENT-ATTRIB-STACK-DEPTH
    :CLIENT-MAPPED-BUFFER-BARRIER-BIT
    :CLIENT-MAPPED-BUFFER-BARRIER-BIT-EXT
    :CLIENT-PIXEL-STORE-BIT
    :CLIENT-STORAGE-BIT
    :CLIENT-STORAGE-BIT-EXT
    :CLIENT-VERTEX-ARRAY-BIT
    :CLIP-DEPTH-MODE
    :CLIP-DISTANCE0
    :CLIP-DISTANCE0-APPLE
    :CLIP-DISTANCE1
    :CLIP-DISTANCE1-APPLE
    :CLIP-DISTANCE2
    :CLIP-DISTANCE2-APPLE
    :CLIP-DISTANCE3
    :CLIP-DISTANCE3-APPLE
    :CLIP-DISTANCE4
    :CLIP-DISTANCE4-APPLE
    :CLIP-DISTANCE5
    :CLIP-DISTANCE5-APPLE
    :CLIP-DISTANCE6
    :CLIP-DISTANCE6-APPLE
    :CLIP-DISTANCE7
    :CLIP-DISTANCE7-APPLE
    :CLIP-DISTANCE-NV
    :CLIP-FAR-HINT-PGI
    :CLIP-NEAR-HINT-PGI
    :CLIP-ORIGIN
    :CLIPPING-INPUT-PRIMITIVES-ARB
    :CLIPPING-OUTPUT-PRIMITIVES-ARB
    :CLIP-PLANE0
    :CLIP-PLANE0-IMG
    :CLIP-PLANE1
    :CLIP-PLANE1-IMG
    :CLIP-PLANE2
    :CLIP-PLANE2-IMG
    :CLIP-PLANE3
    :CLIP-PLANE3-IMG
    :CLIP-PLANE4
    :CLIP-PLANE4-IMG
    :CLIP-PLANE5
    :CLIP-PLANE5-IMG
    :CLIP-VOLUME-CLIPPING-HINT-EXT
    :CLOSE-PATH-NV
    :CMYKA-EXT
    :CMYK-EXT
    :CND0-ATI
    :CND-ATI
    :COEFF
    :COLOR
    :COLOR3-BIT-PGI
    :COLOR4-BIT-PGI
    :COLOR-ALPHA-PAIRING-ATI
    :COLOR-ARRAY
    :COLOR-ARRAY-ADDRESS-NV
    :COLOR-ARRAY-BUFFER-BINDING
    :COLOR-ARRAY-BUFFER-BINDING-ARB
    :COLOR-ARRAY-COUNT-EXT
    :COLOR-ARRAY-EXT
    :COLOR-ARRAY-LENGTH-NV
    :COLOR-ARRAY-LIST-IBM
    :COLOR-ARRAY-LIST-STRIDE-IBM
    :COLOR-ARRAY-PARALLEL-POINTERS-INTEL
    :COLOR-ARRAY-POINTER
    :COLOR-ARRAY-POINTER-EXT
    :COLOR-ARRAY-SIZE
    :COLOR-ARRAY-SIZE-EXT
    :COLOR-ARRAY-STRIDE
    :COLOR-ARRAY-STRIDE-EXT
    :COLOR-ARRAY-TYPE
    :COLOR-ARRAY-TYPE-EXT
    :COLOR-ATTACHMENT0
    :COLOR-ATTACHMENT0-EXT
    :COLOR-ATTACHMENT0-NV
    :COLOR-ATTACHMENT0-OES
    :COLOR-ATTACHMENT1
    :COLOR-ATTACHMENT10
    :COLOR-ATTACHMENT10-EXT
    :COLOR-ATTACHMENT10-NV
    :COLOR-ATTACHMENT11
    :COLOR-ATTACHMENT11-EXT
    :COLOR-ATTACHMENT11-NV
    :COLOR-ATTACHMENT12
    :COLOR-ATTACHMENT12-EXT
    :COLOR-ATTACHMENT12-NV
    :COLOR-ATTACHMENT13
    :COLOR-ATTACHMENT13-EXT
    :COLOR-ATTACHMENT13-NV
    :COLOR-ATTACHMENT14
    :COLOR-ATTACHMENT14-EXT
    :COLOR-ATTACHMENT14-NV
    :COLOR-ATTACHMENT15
    :COLOR-ATTACHMENT15-EXT
    :COLOR-ATTACHMENT15-NV
    :COLOR-ATTACHMENT16
    :COLOR-ATTACHMENT17
    :COLOR-ATTACHMENT18
    :COLOR-ATTACHMENT19
    :COLOR-ATTACHMENT1-EXT
    :COLOR-ATTACHMENT1-NV
    :COLOR-ATTACHMENT2
    :COLOR-ATTACHMENT20
    :COLOR-ATTACHMENT21
    :COLOR-ATTACHMENT22
    :COLOR-ATTACHMENT23
    :COLOR-ATTACHMENT24
    :COLOR-ATTACHMENT25
    :COLOR-ATTACHMENT26
    :COLOR-ATTACHMENT27
    :COLOR-ATTACHMENT28
    :COLOR-ATTACHMENT29
    :COLOR-ATTACHMENT2-EXT
    :COLOR-ATTACHMENT2-NV
    :COLOR-ATTACHMENT3
    :COLOR-ATTACHMENT30
    :COLOR-ATTACHMENT31
    :COLOR-ATTACHMENT3-EXT
    :COLOR-ATTACHMENT3-NV
    :COLOR-ATTACHMENT4
    :COLOR-ATTACHMENT4-EXT
    :COLOR-ATTACHMENT4-NV
    :COLOR-ATTACHMENT5
    :COLOR-ATTACHMENT5-EXT
    :COLOR-ATTACHMENT5-NV
    :COLOR-ATTACHMENT6
    :COLOR-ATTACHMENT6-EXT
    :COLOR-ATTACHMENT6-NV
    :COLOR-ATTACHMENT7
    :COLOR-ATTACHMENT7-EXT
    :COLOR-ATTACHMENT7-NV
    :COLOR-ATTACHMENT8
    :COLOR-ATTACHMENT8-EXT
    :COLOR-ATTACHMENT8-NV
    :COLOR-ATTACHMENT9
    :COLOR-ATTACHMENT9-EXT
    :COLOR-ATTACHMENT9-NV
    :COLOR-ATTACHMENT-EXT
    :COLOR-BUFFER-BIT
    :COLOR-BUFFER-BIT0-QCOM
    :COLOR-BUFFER-BIT1-QCOM
    :COLOR-BUFFER-BIT2-QCOM
    :COLOR-BUFFER-BIT3-QCOM
    :COLOR-BUFFER-BIT4-QCOM
    :COLOR-BUFFER-BIT5-QCOM
    :COLOR-BUFFER-BIT6-QCOM
    :COLOR-BUFFER-BIT7-QCOM
    :COLORBURN
    :COLORBURN-KHR
    :COLORBURN-NV
    :COLOR-CLEAR-UNCLAMPED-VALUE-ATI
    :COLOR-CLEAR-VALUE
    :COLOR-COMPONENTS
    :COLORDODGE
    :COLORDODGE-KHR
    :COLORDODGE-NV
    :COLOR-ENCODING
    :COLOR-EXT
    :COLOR-FLOAT-APPLE
    :COLOR-INDEX
    :COLOR-INDEX12-EXT
    :COLOR-INDEX16-EXT
    :COLOR-INDEX1-EXT
    :COLOR-INDEX2-EXT
    :COLOR-INDEX4-EXT
    :COLOR-INDEX8-EXT
    :COLOR-INDEXES
    :COLOR-LOGIC-OP
    :COLOR-MATERIAL
    :COLOR-MATERIAL-FACE
    :COLOR-MATERIAL-PARAMETER
    :COLOR-MATRIX
    :COLOR-MATRIX-SGI
    :COLOR-MATRIX-STACK-DEPTH
    :COLOR-MATRIX-STACK-DEPTH-SGI
    :COLOR-RENDERABLE
    :COLOR-SAMPLES-NV
    :COLOR-SUM
    :COLOR-SUM-ARB
    :COLOR-SUM-CLAMP-NV
    :COLOR-SUM-EXT
    :COLOR-TABLE
    :COLOR-TABLE-ALPHA-SIZE
    :COLOR-TABLE-ALPHA-SIZE-SGI
    :COLOR-TABLE-BIAS
    :COLOR-TABLE-BIAS-SGI
    :COLOR-TABLE-BLUE-SIZE
    :COLOR-TABLE-BLUE-SIZE-SGI
    :COLOR-TABLE-FORMAT
    :COLOR-TABLE-FORMAT-SGI
    :COLOR-TABLE-GREEN-SIZE
    :COLOR-TABLE-GREEN-SIZE-SGI
    :COLOR-TABLE-INTENSITY-SIZE
    :COLOR-TABLE-INTENSITY-SIZE-SGI
    :COLOR-TABLE-LUMINANCE-SIZE
    :COLOR-TABLE-LUMINANCE-SIZE-SGI
    :COLOR-TABLE-RED-SIZE
    :COLOR-TABLE-RED-SIZE-SGI
    :COLOR-TABLE-SCALE
    :COLOR-TABLE-SCALE-SGI
    :COLOR-TABLE-SGI
    :COLOR-TABLE-WIDTH
    :COLOR-TABLE-WIDTH-SGI
    :COLOR-WRITEMASK
    :COMBINE
    :COMBINE4-NV
    :COMBINE-ALPHA
    :COMBINE-ALPHA-ARB
    :COMBINE-ALPHA-EXT
    :COMBINE-ARB
    :COMBINE-EXT
    :COMBINER0-NV
    :COMBINER1-NV
    :COMBINER2-NV
    :COMBINER3-NV
    :COMBINER4-NV
    :COMBINER5-NV
    :COMBINER6-NV
    :COMBINER7-NV
    :COMBINER-AB-DOT-PRODUCT-NV
    :COMBINER-AB-OUTPUT-NV
    :COMBINER-BIAS-NV
    :COMBINER-CD-DOT-PRODUCT-NV
    :COMBINER-CD-OUTPUT-NV
    :COMBINER-COMPONENT-USAGE-NV
    :COMBINE-RGB
    :COMBINE-RGB-ARB
    :COMBINE-RGB-EXT
    :COMBINER-INPUT-NV
    :COMBINER-MAPPING-NV
    :COMBINER-MUX-SUM-NV
    :COMBINER-SCALE-NV
    :COMBINER-SUM-OUTPUT-NV
    :COMMAND-BARRIER-BIT
    :COMMAND-BARRIER-BIT-EXT
    :COMPARE-REF-DEPTH-TO-TEXTURE-EXT
    :COMPARE-REF-TO-TEXTURE
    :COMPARE-REF-TO-TEXTURE-EXT
    :COMPARE-R-TO-TEXTURE
    :COMPARE-R-TO-TEXTURE-ARB
    :COMPATIBLE-SUBROUTINES
    :COMP-BIT-ATI
    :COMPILE
    :COMPILE-AND-EXECUTE
    :COMPILE-STATUS
    :COMPLETION-STATUS-ARB
    :COMPRESSED-ALPHA
    :COMPRESSED-ALPHA-ARB
    :COMPRESSED-INTENSITY
    :COMPRESSED-INTENSITY-ARB
    :COMPRESSED-LUMINANCE
    :COMPRESSED-LUMINANCE-ALPHA
    :COMPRESSED-LUMINANCE-ALPHA-3DC-ATI
    :COMPRESSED-LUMINANCE-ALPHA-ARB
    :COMPRESSED-LUMINANCE-ALPHA-LATC2-EXT
    :COMPRESSED-LUMINANCE-ARB
    :COMPRESSED-LUMINANCE-LATC1-EXT
    :COMPRESSED-R11-EAC
    :COMPRESSED-R11-EAC-OES
    :COMPRESSED-RED
    :COMPRESSED-RED-GREEN-RGTC2-EXT
    :COMPRESSED-RED-RGTC1
    :COMPRESSED-RED-RGTC1-EXT
    :COMPRESSED-RG
    :COMPRESSED-RG11-EAC
    :COMPRESSED-RG11-EAC-OES
    :COMPRESSED-RGB
    :COMPRESSED-RGB8-ETC2
    :COMPRESSED-RGB8-ETC2-OES
    :COMPRESSED-RGB8-PUNCHTHROUGH-ALPHA1-ETC2
    :COMPRESSED-RGB8-PUNCHTHROUGH-ALPHA1-ETC2-OES
    :COMPRESSED-RGBA
    :COMPRESSED-RGBA8-ETC2-EAC
    :COMPRESSED-RGBA8-ETC2-EAC-OES
    :COMPRESSED-RGBA-ARB
    :COMPRESSED-RGBA-ASTC-10x10
    :COMPRESSED-RGBA-ASTC-10x10-KHR
    :COMPRESSED-RGBA-ASTC-10x5
    :COMPRESSED-RGBA-ASTC-10x5-KHR
    :COMPRESSED-RGBA-ASTC-10x6
    :COMPRESSED-RGBA-ASTC-10x6-KHR
    :COMPRESSED-RGBA-ASTC-10x8
    :COMPRESSED-RGBA-ASTC-10x8-KHR
    :COMPRESSED-RGBA-ASTC-12x10
    :COMPRESSED-RGBA-ASTC-12x10-KHR
    :COMPRESSED-RGBA-ASTC-12x12
    :COMPRESSED-RGBA-ASTC-12x12-KHR
    :COMPRESSED-RGBA-ASTC-3x3x3-OES
    :COMPRESSED-RGBA-ASTC-4x3x3-OES
    :COMPRESSED-RGBA-ASTC-4x4
    :COMPRESSED-RGBA-ASTC-4x4-KHR
    :COMPRESSED-RGBA-ASTC-4x4x3-OES
    :COMPRESSED-RGBA-ASTC-4x4x4-OES
    :COMPRESSED-RGBA-ASTC-5x4
    :COMPRESSED-RGBA-ASTC-5x4-KHR
    :COMPRESSED-RGBA-ASTC-5x4x4-OES
    :COMPRESSED-RGBA-ASTC-5x5
    :COMPRESSED-RGBA-ASTC-5x5-KHR
    :COMPRESSED-RGBA-ASTC-5x5x4-OES
    :COMPRESSED-RGBA-ASTC-5x5x5-OES
    :COMPRESSED-RGBA-ASTC-6x5
    :COMPRESSED-RGBA-ASTC-6x5-KHR
    :COMPRESSED-RGBA-ASTC-6x5x5-OES
    :COMPRESSED-RGBA-ASTC-6x6
    :COMPRESSED-RGBA-ASTC-6x6-KHR
    :COMPRESSED-RGBA-ASTC-6x6x5-OES
    :COMPRESSED-RGBA-ASTC-6x6x6-OES
    :COMPRESSED-RGBA-ASTC-8x5
    :COMPRESSED-RGBA-ASTC-8x5-KHR
    :COMPRESSED-RGBA-ASTC-8x6
    :COMPRESSED-RGBA-ASTC-8x6-KHR
    :COMPRESSED-RGBA-ASTC-8x8
    :COMPRESSED-RGBA-ASTC-8x8-KHR
    :COMPRESSED-RGBA-BPTC-UNORM
    :COMPRESSED-RGBA-BPTC-UNORM-ARB
    :COMPRESSED-RGBA-FXT1-3DFX
    :COMPRESSED-RGBA-PVRTC-2BPPV1-IMG
    :COMPRESSED-RGBA-PVRTC-2BPPV2-IMG
    :COMPRESSED-RGBA-PVRTC-4BPPV1-IMG
    :COMPRESSED-RGBA-PVRTC-4BPPV2-IMG
    :COMPRESSED-RGB-ARB
    :COMPRESSED-RGBA-S3TC-DXT1-EXT
    :COMPRESSED-RGBA-S3TC-DXT3-ANGLE
    :COMPRESSED-RGBA-S3TC-DXT3-EXT
    :COMPRESSED-RGBA-S3TC-DXT5-ANGLE
    :COMPRESSED-RGBA-S3TC-DXT5-EXT
    :COMPRESSED-RGB-BPTC-SIGNED-FLOAT
    :COMPRESSED-RGB-BPTC-SIGNED-FLOAT-ARB
    :COMPRESSED-RGB-BPTC-UNSIGNED-FLOAT
    :COMPRESSED-RGB-BPTC-UNSIGNED-FLOAT-ARB
    :COMPRESSED-RGB-FXT1-3DFX
    :COMPRESSED-RGB-PVRTC-2BPPV1-IMG
    :COMPRESSED-RGB-PVRTC-4BPPV1-IMG
    :COMPRESSED-RGB-S3TC-DXT1-EXT
    :COMPRESSED-RG-RGTC2
    :COMPRESSED-SIGNED-LUMINANCE-ALPHA-LATC2-EXT
    :COMPRESSED-SIGNED-LUMINANCE-LATC1-EXT
    :COMPRESSED-SIGNED-R11-EAC
    :COMPRESSED-SIGNED-R11-EAC-OES
    :COMPRESSED-SIGNED-RED-GREEN-RGTC2-EXT
    :COMPRESSED-SIGNED-RED-RGTC1
    :COMPRESSED-SIGNED-RED-RGTC1-EXT
    :COMPRESSED-SIGNED-RG11-EAC
    :COMPRESSED-SIGNED-RG11-EAC-OES
    :COMPRESSED-SIGNED-RG-RGTC2
    :COMPRESSED-SLUMINANCE
    :COMPRESSED-SLUMINANCE-ALPHA
    :COMPRESSED-SLUMINANCE-ALPHA-EXT
    :COMPRESSED-SLUMINANCE-EXT
    :COMPRESSED-SRGB
    :COMPRESSED-SRGB8-ALPHA8-ASTC-10x10
    :COMPRESSED-SRGB8-ALPHA8-ASTC-10x10-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-10x5
    :COMPRESSED-SRGB8-ALPHA8-ASTC-10x5-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-10x6
    :COMPRESSED-SRGB8-ALPHA8-ASTC-10x6-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-10x8
    :COMPRESSED-SRGB8-ALPHA8-ASTC-10x8-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-12x10
    :COMPRESSED-SRGB8-ALPHA8-ASTC-12x10-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-12x12
    :COMPRESSED-SRGB8-ALPHA8-ASTC-12x12-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-3x3x3-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-4x3x3-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-4x4
    :COMPRESSED-SRGB8-ALPHA8-ASTC-4x4-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-4x4x3-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-4x4x4-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-5x4
    :COMPRESSED-SRGB8-ALPHA8-ASTC-5x4-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-5x4x4-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-5x5
    :COMPRESSED-SRGB8-ALPHA8-ASTC-5x5-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-5x5x4-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-5x5x5-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-6x5
    :COMPRESSED-SRGB8-ALPHA8-ASTC-6x5-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-6x5x5-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-6x6
    :COMPRESSED-SRGB8-ALPHA8-ASTC-6x6-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-6x6x5-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-6x6x6-OES
    :COMPRESSED-SRGB8-ALPHA8-ASTC-8x5
    :COMPRESSED-SRGB8-ALPHA8-ASTC-8x5-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-8x6
    :COMPRESSED-SRGB8-ALPHA8-ASTC-8x6-KHR
    :COMPRESSED-SRGB8-ALPHA8-ASTC-8x8
    :COMPRESSED-SRGB8-ALPHA8-ASTC-8x8-KHR
    :COMPRESSED-SRGB8-ALPHA8-ETC2-EAC
    :COMPRESSED-SRGB8-ALPHA8-ETC2-EAC-OES
    :COMPRESSED-SRGB8-ETC2
    :COMPRESSED-SRGB8-ETC2-OES
    :COMPRESSED-SRGB8-PUNCHTHROUGH-ALPHA1-ETC2
    :COMPRESSED-SRGB8-PUNCHTHROUGH-ALPHA1-ETC2-OES
    :COMPRESSED-SRGB-ALPHA
    :COMPRESSED-SRGB-ALPHA-BPTC-UNORM
    :COMPRESSED-SRGB-ALPHA-BPTC-UNORM-ARB
    :COMPRESSED-SRGB-ALPHA-EXT
    :COMPRESSED-SRGB-ALPHA-PVRTC-2BPPV1-EXT
    :COMPRESSED-SRGB-ALPHA-PVRTC-2BPPV2-IMG
    :COMPRESSED-SRGB-ALPHA-PVRTC-4BPPV1-EXT
    :COMPRESSED-SRGB-ALPHA-PVRTC-4BPPV2-IMG
    :COMPRESSED-SRGB-ALPHA-S3TC-DXT1-EXT
    :COMPRESSED-SRGB-ALPHA-S3TC-DXT1-NV
    :COMPRESSED-SRGB-ALPHA-S3TC-DXT3-EXT
    :COMPRESSED-SRGB-ALPHA-S3TC-DXT3-NV
    :COMPRESSED-SRGB-ALPHA-S3TC-DXT5-EXT
    :COMPRESSED-SRGB-ALPHA-S3TC-DXT5-NV
    :COMPRESSED-SRGB-EXT
    :COMPRESSED-SRGB-PVRTC-2BPPV1-EXT
    :COMPRESSED-SRGB-PVRTC-4BPPV1-EXT
    :COMPRESSED-SRGB-S3TC-DXT1-EXT
    :COMPRESSED-SRGB-S3TC-DXT1-NV
    :COMPRESSED-TEXTURE-FORMATS
    :COMPRESSED-TEXTURE-FORMATS-ARB
    :COMPUTE-PROGRAM-NV
    :COMPUTE-PROGRAM-PARAMETER-BUFFER-NV
    :COMPUTE-SHADER
    :COMPUTE-SHADER-BIT
    :COMPUTE-SHADER-INVOCATIONS-ARB
    :COMPUTE-SUBROUTINE
    :COMPUTE-SUBROUTINE-UNIFORM
    :COMPUTE-TEXTURE
    :COMPUTE-WORK-GROUP-SIZE
    :CON-0-ATI
    :CON-10-ATI
    :CON-11-ATI
    :CON-12-ATI
    :CON-13-ATI
    :CON-14-ATI
    :CON-15-ATI
    :CON-16-ATI
    :CON-17-ATI
    :CON-18-ATI
    :CON-19-ATI
    :CON-1-ATI
    :CON-20-ATI
    :CON-21-ATI
    :CON-22-ATI
    :CON-23-ATI
    :CON-24-ATI
    :CON-25-ATI
    :CON-26-ATI
    :CON-27-ATI
    :CON-28-ATI
    :CON-29-ATI
    :CON-2-ATI
    :CON-30-ATI
    :CON-31-ATI
    :CON-3-ATI
    :CON-4-ATI
    :CON-5-ATI
    :CON-6-ATI
    :CON-7-ATI
    :CON-8-ATI
    :CON-9-ATI
    :CONDITION-SATISFIED
    :CONDITION-SATISFIED-APPLE
    :CONFORMANT-NV
    :CONIC-CURVE-TO-NV
    :CONJOINT-NV
    :CONSERVATIVE-RASTER-DILATE-GRANULARITY-NV
    :CONSERVATIVE-RASTER-DILATE-NV
    :CONSERVATIVE-RASTER-DILATE-RANGE-NV
    :CONSERVATIVE-RASTERIZATION-NV
    :CONSERVE-MEMORY-HINT-PGI
    :CONSTANT
    :CONSTANT-ALPHA
    :CONSTANT-ALPHA-EXT
    :CONSTANT-ARB
    :CONSTANT-ATTENUATION
    :CONSTANT-BORDER
    :CONSTANT-BORDER-HP
    :CONSTANT-COLOR
    :CONSTANT-COLOR0-NV
    :CONSTANT-COLOR1-NV
    :CONSTANT-COLOR-EXT
    :CONSTANT-EXT
    :CONSTANT-NV
    :CONST-EYE-NV
    :CONTEXT-COMPATIBILITY-PROFILE-BIT
    :CONTEXT-CORE-PROFILE-BIT
    :CONTEXT-FLAG-DEBUG-BIT
    :CONTEXT-FLAG-DEBUG-BIT-KHR
    :CONTEXT-FLAG-FORWARD-COMPATIBLE-BIT
    :CONTEXT-FLAG-NO-ERROR-BIT-KHR
    :CONTEXT-FLAG-ROBUST-ACCESS-BIT
    :CONTEXT-FLAG-ROBUST-ACCESS-BIT-ARB
    :CONTEXT-FLAGS
    :CONTEXT-LOST
    :CONTEXT-LOST-KHR
    :CONTEXT-LOST-WEBGL
    :CONTEXT-PROFILE-MASK
    :CONTEXT-RELEASE-BEHAVIOR
    :CONTEXT-RELEASE-BEHAVIOR-FLUSH
    :CONTEXT-RELEASE-BEHAVIOR-FLUSH-KHR
    :CONTEXT-RELEASE-BEHAVIOR-KHR
    :CONTEXT-ROBUST-ACCESS
    :CONTEXT-ROBUST-ACCESS-EXT
    :CONTEXT-ROBUST-ACCESS-KHR
    :CONTINUOUS-AMD
    :CONTRAST-NV
    :CONVEX-HULL-NV
    :CONVOLUTION-1D
    :CONVOLUTION-1D-EXT
    :CONVOLUTION-2D
    :CONVOLUTION-2D-EXT
    :CONVOLUTION-BORDER-COLOR
    :CONVOLUTION-BORDER-COLOR-HP
    :CONVOLUTION-BORDER-MODE
    :CONVOLUTION-BORDER-MODE-EXT
    :CONVOLUTION-FILTER-BIAS
    :CONVOLUTION-FILTER-BIAS-EXT
    :CONVOLUTION-FILTER-SCALE
    :CONVOLUTION-FILTER-SCALE-EXT
    :CONVOLUTION-FORMAT
    :CONVOLUTION-FORMAT-EXT
    :CONVOLUTION-HEIGHT
    :CONVOLUTION-HEIGHT-EXT
    :CONVOLUTION-HINT-SGIX
    :CONVOLUTION-WIDTH
    :CONVOLUTION-WIDTH-EXT
    :COORD-REPLACE
    :COORD-REPLACE-ARB
    :COORD-REPLACE-NV
    :COORD-REPLACE-OES
    :COPY
    :COPY-INVERTED
    :COPY-PIXEL-TOKEN
    :COPY-READ-BUFFER
    :COPY-READ-BUFFER-BINDING
    :COPY-READ-BUFFER-NV
    :COPY-WRITE-BUFFER
    :COPY-WRITE-BUFFER-BINDING
    :COPY-WRITE-BUFFER-NV
    :COUNT-DOWN-NV
    :COUNTER-RANGE-AMD
    :COUNTER-TYPE-AMD
    :COUNT-UP-NV
    :COVERAGE-ALL-FRAGMENTS-NV
    :COVERAGE-ATTACHMENT-NV
    :COVERAGE-AUTOMATIC-NV
    :COVERAGE-BUFFER-BIT-NV
    :COVERAGE-BUFFERS-NV
    :COVERAGE-COMPONENT4-NV
    :COVERAGE-COMPONENT-NV
    :COVERAGE-EDGE-FRAGMENTS-NV
    :COVERAGE-MODULATION-NV
    :COVERAGE-MODULATION-TABLE-NV
    :COVERAGE-MODULATION-TABLE-SIZE-NV
    :COVERAGE-SAMPLES-NV
    :CPU-OPTIMIZED-QCOM
    :CUBIC-CURVE-TO-NV
    :CUBIC-EXT
    :CUBIC-HP
    :CUBIC-IMG
    :CUBIC-MIPMAP-LINEAR-IMG
    :CUBIC-MIPMAP-NEAREST-IMG
    :CULL-FACE
    :CULL-FACE-MODE
    :CULL-FRAGMENT-NV
    :CULL-MODES-NV
    :CULL-VERTEX-EXT
    :CULL-VERTEX-EYE-POSITION-EXT
    :CULL-VERTEX-IBM
    :CULL-VERTEX-OBJECT-POSITION-EXT
    :CURRENT-ATTRIB-NV
    :CURRENT-BINORMAL-EXT
    :CURRENT-BIT
    :CURRENT-COLOR
    :CURRENT-FOG-COORD
    :CURRENT-FOG-COORDINATE
    :CURRENT-FOG-COORDINATE-EXT
    :CURRENT-INDEX
    :CURRENT-MATRIX-ARB
    :CURRENT-MATRIX-INDEX-ARB
    :CURRENT-MATRIX-NV
    :CURRENT-MATRIX-STACK-DEPTH-ARB
    :CURRENT-MATRIX-STACK-DEPTH-NV
    :CURRENT-NORMAL
    :CURRENT-OCCLUSION-QUERY-ID-NV
    :CURRENT-PALETTE-MATRIX-ARB
    :CURRENT-PALETTE-MATRIX-OES
    :CURRENT-PROGRAM
    :CURRENT-QUERY
    :CURRENT-QUERY-ARB
    :CURRENT-QUERY-EXT
    :CURRENT-RASTER-COLOR
    :CURRENT-RASTER-DISTANCE
    :CURRENT-RASTER-INDEX
    :CURRENT-RASTER-NORMAL-SGIX
    :CURRENT-RASTER-POSITION
    :CURRENT-RASTER-POSITION-VALID
    :CURRENT-RASTER-SECONDARY-COLOR
    :CURRENT-RASTER-TEXTURE-COORDS
    :CURRENT-SECONDARY-COLOR
    :CURRENT-SECONDARY-COLOR-EXT
    :CURRENT-TANGENT-EXT
    :CURRENT-TEXTURE-COORDS
    :CURRENT-TIME-NV
    :CURRENT-VERTEX-ATTRIB
    :CURRENT-VERTEX-ATTRIB-ARB
    :CURRENT-VERTEX-EXT
    :CURRENT-VERTEX-WEIGHT-EXT
    :CURRENT-WEIGHT-ARB
    :CW
    :DARKEN
    :DARKEN-KHR
    :DARKEN-NV
    :DATA-BUFFER-AMD
    :DEBUG-ASSERT-MESA
    :DEBUG-CALLBACK-FUNCTION
    :DEBUG-CALLBACK-FUNCTION-ARB
    :DEBUG-CALLBACK-FUNCTION-KHR
    :DEBUG-CALLBACK-USER-PARAM
    :DEBUG-CALLBACK-USER-PARAM-ARB
    :DEBUG-CALLBACK-USER-PARAM-KHR
    :DEBUG-CATEGORY-API-ERROR-AMD
    :DEBUG-CATEGORY-APPLICATION-AMD
    :DEBUG-CATEGORY-DEPRECATION-AMD
    :DEBUG-CATEGORY-OTHER-AMD
    :DEBUG-CATEGORY-PERFORMANCE-AMD
    :DEBUG-CATEGORY-SHADER-COMPILER-AMD
    :DEBUG-CATEGORY-UNDEFINED-BEHAVIOR-AMD
    :DEBUG-CATEGORY-WINDOW-SYSTEM-AMD
    :DEBUG-GROUP-STACK-DEPTH
    :DEBUG-GROUP-STACK-DEPTH-KHR
    :DEBUG-LOGGED-MESSAGES
    :DEBUG-LOGGED-MESSAGES-AMD
    :DEBUG-LOGGED-MESSAGES-ARB
    :DEBUG-LOGGED-MESSAGES-KHR
    :DEBUG-NEXT-LOGGED-MESSAGE-LENGTH
    :DEBUG-NEXT-LOGGED-MESSAGE-LENGTH-ARB
    :DEBUG-NEXT-LOGGED-MESSAGE-LENGTH-KHR
    :DEBUG-OBJECT-MESA
    :DEBUG-OUTPUT
    :DEBUG-OUTPUT-KHR
    :DEBUG-OUTPUT-SYNCHRONOUS
    :DEBUG-OUTPUT-SYNCHRONOUS-ARB
    :DEBUG-OUTPUT-SYNCHRONOUS-KHR
    :DEBUG-PRINT-MESA
    :DEBUG-SEVERITY-HIGH
    :DEBUG-SEVERITY-HIGH-AMD
    :DEBUG-SEVERITY-HIGH-ARB
    :DEBUG-SEVERITY-HIGH-KHR
    :DEBUG-SEVERITY-LOW
    :DEBUG-SEVERITY-LOW-AMD
    :DEBUG-SEVERITY-LOW-ARB
    :DEBUG-SEVERITY-LOW-KHR
    :DEBUG-SEVERITY-MEDIUM
    :DEBUG-SEVERITY-MEDIUM-AMD
    :DEBUG-SEVERITY-MEDIUM-ARB
    :DEBUG-SEVERITY-MEDIUM-KHR
    :DEBUG-SEVERITY-NOTIFICATION
    :DEBUG-SEVERITY-NOTIFICATION-KHR
    :DEBUG-SOURCE-API
    :DEBUG-SOURCE-API-ARB
    :DEBUG-SOURCE-API-KHR
    :DEBUG-SOURCE-APPLICATION
    :DEBUG-SOURCE-APPLICATION-ARB
    :DEBUG-SOURCE-APPLICATION-KHR
    :DEBUG-SOURCE-OTHER
    :DEBUG-SOURCE-OTHER-ARB
    :DEBUG-SOURCE-OTHER-KHR
    :DEBUG-SOURCE-SHADER-COMPILER
    :DEBUG-SOURCE-SHADER-COMPILER-ARB
    :DEBUG-SOURCE-SHADER-COMPILER-KHR
    :DEBUG-SOURCE-THIRD-PARTY
    :DEBUG-SOURCE-THIRD-PARTY-ARB
    :DEBUG-SOURCE-THIRD-PARTY-KHR
    :DEBUG-SOURCE-WINDOW-SYSTEM
    :DEBUG-SOURCE-WINDOW-SYSTEM-ARB
    :DEBUG-SOURCE-WINDOW-SYSTEM-KHR
    :DEBUG-TYPE-DEPRECATED-BEHAVIOR
    :DEBUG-TYPE-DEPRECATED-BEHAVIOR-ARB
    :DEBUG-TYPE-DEPRECATED-BEHAVIOR-KHR
    :DEBUG-TYPE-ERROR
    :DEBUG-TYPE-ERROR-ARB
    :DEBUG-TYPE-ERROR-KHR
    :DEBUG-TYPE-MARKER
    :DEBUG-TYPE-MARKER-KHR
    :DEBUG-TYPE-OTHER
    :DEBUG-TYPE-OTHER-ARB
    :DEBUG-TYPE-OTHER-KHR
    :DEBUG-TYPE-PERFORMANCE
    :DEBUG-TYPE-PERFORMANCE-ARB
    :DEBUG-TYPE-PERFORMANCE-KHR
    :DEBUG-TYPE-POP-GROUP
    :DEBUG-TYPE-POP-GROUP-KHR
    :DEBUG-TYPE-PORTABILITY
    :DEBUG-TYPE-PORTABILITY-ARB
    :DEBUG-TYPE-PORTABILITY-KHR
    :DEBUG-TYPE-PUSH-GROUP
    :DEBUG-TYPE-PUSH-GROUP-KHR
    :DEBUG-TYPE-UNDEFINED-BEHAVIOR
    :DEBUG-TYPE-UNDEFINED-BEHAVIOR-ARB
    :DEBUG-TYPE-UNDEFINED-BEHAVIOR-KHR
    :DECAL
    :DECODE-EXT
    :DECR
    :DECR-WRAP
    :DECR-WRAP-EXT
    :DECR-WRAP-OES
    :DEFORMATIONS-MASK-SGIX
    :DELETE-STATUS
    :DEPENDENT-AR-TEXTURE-2D-NV
    :DEPENDENT-GB-TEXTURE-2D-NV
    :DEPENDENT-HILO-TEXTURE-2D-NV
    :DEPENDENT-RGB-TEXTURE-3D-NV
    :DEPENDENT-RGB-TEXTURE-CUBE-MAP-NV
    :DEPTH
    :DEPTH24-STENCIL8
    :DEPTH24-STENCIL8-EXT
    :DEPTH24-STENCIL8-OES
    :DEPTH32F-STENCIL8
    :DEPTH32F-STENCIL8-NV
    :DEPTH-ATTACHMENT
    :DEPTH-ATTACHMENT-EXT
    :DEPTH-ATTACHMENT-OES
    :DEPTH-BIAS
    :DEPTH-BITS
    :DEPTH-BOUNDS-EXT
    :DEPTH-BOUNDS-TEST-EXT
    :DEPTH-BUFFER-BIT
    :DEPTH-BUFFER-BIT0-QCOM
    :DEPTH-BUFFER-BIT1-QCOM
    :DEPTH-BUFFER-BIT2-QCOM
    :DEPTH-BUFFER-BIT3-QCOM
    :DEPTH-BUFFER-BIT4-QCOM
    :DEPTH-BUFFER-BIT5-QCOM
    :DEPTH-BUFFER-BIT6-QCOM
    :DEPTH-BUFFER-BIT7-QCOM
    :DEPTH-BUFFER-FLOAT-MODE-NV
    :DEPTH-CLAMP
    :DEPTH-CLAMP-FAR-AMD
    :DEPTH-CLAMP-NEAR-AMD
    :DEPTH-CLAMP-NV
    :DEPTH-CLEAR-VALUE
    :DEPTH-COMPONENT
    :DEPTH-COMPONENT16
    :DEPTH-COMPONENT16-ARB
    :DEPTH-COMPONENT16-NONLINEAR-NV
    :DEPTH-COMPONENT16-OES
    :DEPTH-COMPONENT16-SGIX
    :DEPTH-COMPONENT24
    :DEPTH-COMPONENT24-ARB
    :DEPTH-COMPONENT24-OES
    :DEPTH-COMPONENT24-SGIX
    :DEPTH-COMPONENT32
    :DEPTH-COMPONENT32-ARB
    :DEPTH-COMPONENT32F
    :DEPTH-COMPONENT32F-NV
    :DEPTH-COMPONENT32-OES
    :DEPTH-COMPONENT32-SGIX
    :DEPTH-COMPONENTS
    :DEPTH-EXT
    :DEPTH-FUNC
    :DEPTH-PASS-INSTRUMENT-COUNTERS-SGIX
    :DEPTH-PASS-INSTRUMENT-MAX-SGIX
    :DEPTH-PASS-INSTRUMENT-SGIX
    :DEPTH-RANGE
    :DEPTH-RENDERABLE
    :DEPTH-SAMPLES-NV
    :DEPTH-SCALE
    :DEPTH-STENCIL
    :DEPTH-STENCIL-ATTACHMENT
    :DEPTH-STENCIL-EXT
    :DEPTH-STENCIL-MESA
    :DEPTH-STENCIL-NV
    :DEPTH-STENCIL-OES
    :DEPTH-STENCIL-TEXTURE-MODE
    :DEPTH-STENCIL-TO-BGRA-NV
    :DEPTH-STENCIL-TO-RGBA-NV
    :DEPTH-TEST
    :DEPTH-TEXTURE-MODE
    :DEPTH-TEXTURE-MODE-ARB
    :DEPTH-WRITEMASK
    :DETAIL-TEXTURE-2D-BINDING-SGIS
    :DETAIL-TEXTURE-2D-SGIS
    :DETAIL-TEXTURE-FUNC-POINTS-SGIS
    :DETAIL-TEXTURE-LEVEL-SGIS
    :DETAIL-TEXTURE-MODE-SGIS
    :DIFFERENCE
    :DIFFERENCE-KHR
    :DIFFERENCE-NV
    :DIFFUSE
    :DISCARD-ATI
    :DISCARD-NV
    :DISCRETE-AMD
    :DISJOINT-NV
    :DISPATCH-INDIRECT-BUFFER
    :DISPATCH-INDIRECT-BUFFER-BINDING
    :DISPLAY-LIST
    :DISTANCE-ATTENUATION-EXT
    :DISTANCE-ATTENUATION-SGIS
    :DITHER
    :DMP-PROGRAM-BINARY-DMP
    :DOMAIN
    :DONT-CARE
    :DOT2-ADD-ATI
    :DOT3-ATI
    :DOT3-RGB
    :DOT3-RGBA
    :DOT3-RGBA-ARB
    :DOT3-RGBA-EXT
    :DOT3-RGBA-IMG
    :DOT3-RGB-ARB
    :DOT3-RGB-EXT
    :DOT4-ATI
    :DOT-PRODUCT-AFFINE-DEPTH-REPLACE-NV
    :DOT-PRODUCT-CONST-EYE-REFLECT-CUBE-MAP-NV
    :DOT-PRODUCT-DEPTH-REPLACE-NV
    :DOT-PRODUCT-DIFFUSE-CUBE-MAP-NV
    :DOT-PRODUCT-NV
    :DOT-PRODUCT-PASS-THROUGH-NV
    :DOT-PRODUCT-REFLECT-CUBE-MAP-NV
    :DOT-PRODUCT-TEXTURE-1D-NV
    :DOT-PRODUCT-TEXTURE-2D-NV
    :DOT-PRODUCT-TEXTURE-3D-NV
    :DOT-PRODUCT-TEXTURE-CUBE-MAP-NV
    :DOT-PRODUCT-TEXTURE-RECTANGLE-NV
    :DOUBLE
    :DOUBLEBUFFER
    :DOUBLE-EXT
    :DOUBLE-MAT2
    :DOUBLE-MAT2-EXT
    :DOUBLE-MAT2x3
    :DOUBLE-MAT2x3-EXT
    :DOUBLE-MAT2x4
    :DOUBLE-MAT2x4-EXT
    :DOUBLE-MAT3
    :DOUBLE-MAT3-EXT
    :DOUBLE-MAT3x2
    :DOUBLE-MAT3x2-EXT
    :DOUBLE-MAT3x4
    :DOUBLE-MAT3x4-EXT
    :DOUBLE-MAT4
    :DOUBLE-MAT4-EXT
    :DOUBLE-MAT4x2
    :DOUBLE-MAT4x2-EXT
    :DOUBLE-MAT4x3
    :DOUBLE-MAT4x3-EXT
    :DOUBLE-VEC2
    :DOUBLE-VEC2-EXT
    :DOUBLE-VEC3
    :DOUBLE-VEC3-EXT
    :DOUBLE-VEC4
    :DOUBLE-VEC4-EXT
    :DRAW-ARRAYS-COMMAND-NV
    :DRAW-ARRAYS-INSTANCED-COMMAND-NV
    :DRAW-ARRAYS-STRIP-COMMAND-NV
    :DRAW-BUFFER
    :DRAW-BUFFER0
    :DRAW-BUFFER0-ARB
    :DRAW-BUFFER0-ATI
    :DRAW-BUFFER0-EXT
    :DRAW-BUFFER0-NV
    :DRAW-BUFFER1
    :DRAW-BUFFER10
    :DRAW-BUFFER10-ARB
    :DRAW-BUFFER10-ATI
    :DRAW-BUFFER10-EXT
    :DRAW-BUFFER10-NV
    :DRAW-BUFFER11
    :DRAW-BUFFER11-ARB
    :DRAW-BUFFER11-ATI
    :DRAW-BUFFER11-EXT
    :DRAW-BUFFER11-NV
    :DRAW-BUFFER12
    :DRAW-BUFFER12-ARB
    :DRAW-BUFFER12-ATI
    :DRAW-BUFFER12-EXT
    :DRAW-BUFFER12-NV
    :DRAW-BUFFER13
    :DRAW-BUFFER13-ARB
    :DRAW-BUFFER13-ATI
    :DRAW-BUFFER13-EXT
    :DRAW-BUFFER13-NV
    :DRAW-BUFFER14
    :DRAW-BUFFER14-ARB
    :DRAW-BUFFER14-ATI
    :DRAW-BUFFER14-EXT
    :DRAW-BUFFER14-NV
    :DRAW-BUFFER15
    :DRAW-BUFFER15-ARB
    :DRAW-BUFFER15-ATI
    :DRAW-BUFFER15-EXT
    :DRAW-BUFFER15-NV
    :DRAW-BUFFER1-ARB
    :DRAW-BUFFER1-ATI
    :DRAW-BUFFER1-EXT
    :DRAW-BUFFER1-NV
    :DRAW-BUFFER2
    :DRAW-BUFFER2-ARB
    :DRAW-BUFFER2-ATI
    :DRAW-BUFFER2-EXT
    :DRAW-BUFFER2-NV
    :DRAW-BUFFER3
    :DRAW-BUFFER3-ARB
    :DRAW-BUFFER3-ATI
    :DRAW-BUFFER3-EXT
    :DRAW-BUFFER3-NV
    :DRAW-BUFFER4
    :DRAW-BUFFER4-ARB
    :DRAW-BUFFER4-ATI
    :DRAW-BUFFER4-EXT
    :DRAW-BUFFER4-NV
    :DRAW-BUFFER5
    :DRAW-BUFFER5-ARB
    :DRAW-BUFFER5-ATI
    :DRAW-BUFFER5-EXT
    :DRAW-BUFFER5-NV
    :DRAW-BUFFER6
    :DRAW-BUFFER6-ARB
    :DRAW-BUFFER6-ATI
    :DRAW-BUFFER6-EXT
    :DRAW-BUFFER6-NV
    :DRAW-BUFFER7
    :DRAW-BUFFER7-ARB
    :DRAW-BUFFER7-ATI
    :DRAW-BUFFER7-EXT
    :DRAW-BUFFER7-NV
    :DRAW-BUFFER8
    :DRAW-BUFFER8-ARB
    :DRAW-BUFFER8-ATI
    :DRAW-BUFFER8-EXT
    :DRAW-BUFFER8-NV
    :DRAW-BUFFER9
    :DRAW-BUFFER9-ARB
    :DRAW-BUFFER9-ATI
    :DRAW-BUFFER9-EXT
    :DRAW-BUFFER9-NV
    :DRAW-BUFFER-EXT
    :DRAW-ELEMENTS-COMMAND-NV
    :DRAW-ELEMENTS-INSTANCED-COMMAND-NV
    :DRAW-ELEMENTS-STRIP-COMMAND-NV
    :DRAW-FRAMEBUFFER
    :DRAW-FRAMEBUFFER-ANGLE
    :DRAW-FRAMEBUFFER-APPLE
    :DRAW-FRAMEBUFFER-BINDING
    :DRAW-FRAMEBUFFER-BINDING-ANGLE
    :DRAW-FRAMEBUFFER-BINDING-APPLE
    :DRAW-FRAMEBUFFER-BINDING-EXT
    :DRAW-FRAMEBUFFER-BINDING-NV
    :DRAW-FRAMEBUFFER-EXT
    :DRAW-FRAMEBUFFER-NV
    :DRAW-INDIRECT-ADDRESS-NV
    :DRAW-INDIRECT-BUFFER
    :DRAW-INDIRECT-BUFFER-BINDING
    :DRAW-INDIRECT-LENGTH-NV
    :DRAW-INDIRECT-UNIFIED-NV
    :DRAW-PIXELS-APPLE
    :DRAW-PIXEL-TOKEN
    :DS-BIAS-NV
    :DSDT8-MAG8-INTENSITY8-NV
    :DSDT8-MAG8-NV
    :DSDT8-NV
    :DSDT-MAG-INTENSITY-NV
    :DSDT-MAG-NV
    :DSDT-MAG-VIB-NV
    :DSDT-NV
    :DS-SCALE-NV
    :DST-ALPHA
    :DST-ATOP-NV
    :DST-COLOR
    :DST-IN-NV
    :DST-NV
    :DST-OUT-NV
    :DST-OVER-NV
    :DT-BIAS-NV
    :DT-SCALE-NV
    :DU8DV8-ATI
    :DUAL-ALPHA12-SGIS
    :DUAL-ALPHA16-SGIS
    :DUAL-ALPHA4-SGIS
    :DUAL-ALPHA8-SGIS
    :DUAL-INTENSITY12-SGIS
    :DUAL-INTENSITY16-SGIS
    :DUAL-INTENSITY4-SGIS
    :DUAL-INTENSITY8-SGIS
    :DUAL-LUMINANCE12-SGIS
    :DUAL-LUMINANCE16-SGIS
    :DUAL-LUMINANCE4-SGIS
    :DUAL-LUMINANCE8-SGIS
    :DUAL-LUMINANCE-ALPHA4-SGIS
    :DUAL-LUMINANCE-ALPHA8-SGIS
    :DUAL-TEXTURE-SELECT-SGIS
    :DUDV-ATI
    :DUP-FIRST-CUBIC-CURVE-TO-NV
    :DUP-LAST-CUBIC-CURVE-TO-NV
    :DYNAMIC-ATI
    :DYNAMIC-COPY
    :DYNAMIC-COPY-ARB
    :DYNAMIC-DRAW
    :DYNAMIC-DRAW-ARB
    :DYNAMIC-READ
    :DYNAMIC-READ-ARB
    :DYNAMIC-STORAGE-BIT
    :DYNAMIC-STORAGE-BIT-EXT
    :EDGE-FLAG
    :EDGE-FLAG-ARRAY
    :EDGE-FLAG-ARRAY-ADDRESS-NV
    :EDGE-FLAG-ARRAY-BUFFER-BINDING
    :EDGE-FLAG-ARRAY-BUFFER-BINDING-ARB
    :EDGE-FLAG-ARRAY-COUNT-EXT
    :EDGE-FLAG-ARRAY-EXT
    :EDGE-FLAG-ARRAY-LENGTH-NV
    :EDGE-FLAG-ARRAY-LIST-IBM
    :EDGE-FLAG-ARRAY-LIST-STRIDE-IBM
    :EDGE-FLAG-ARRAY-POINTER
    :EDGE-FLAG-ARRAY-POINTER-EXT
    :EDGE-FLAG-ARRAY-STRIDE
    :EDGE-FLAG-ARRAY-STRIDE-EXT
    :EDGEFLAG-BIT-PGI
    :EFFECTIVE-RASTER-SAMPLES-EXT
    :EIGHTH-BIT-ATI
    :ELEMENT-ADDRESS-COMMAND-NV
    :ELEMENT-ARRAY-ADDRESS-NV
    :ELEMENT-ARRAY-APPLE
    :ELEMENT-ARRAY-ATI
    :ELEMENT-ARRAY-BARRIER-BIT
    :ELEMENT-ARRAY-BARRIER-BIT-EXT
    :ELEMENT-ARRAY-BUFFER
    :ELEMENT-ARRAY-BUFFER-ARB
    :ELEMENT-ARRAY-BUFFER-BINDING
    :ELEMENT-ARRAY-BUFFER-BINDING-ARB
    :ELEMENT-ARRAY-LENGTH-NV
    :ELEMENT-ARRAY-POINTER-APPLE
    :ELEMENT-ARRAY-POINTER-ATI
    :ELEMENT-ARRAY-TYPE-APPLE
    :ELEMENT-ARRAY-TYPE-ATI
    :ELEMENT-ARRAY-UNIFIED-NV
    :EMBOSS-CONSTANT-NV
    :EMBOSS-LIGHT-NV
    :EMBOSS-MAP-NV
    :EMISSION
    :ENABLE-BIT
    :EQUAL
    :EQUIV
    :ETC1-RGB8-OES
    :ETC1-SRGB8-NV
    :E-TIMES-F-NV
    :EVAL-2D-NV
    :EVAL-BIT
    :EVAL-FRACTIONAL-TESSELLATION-NV
    :EVAL-TRIANGULAR-2D-NV
    :EVAL-VERTEX-ATTRIB0-NV
    :EVAL-VERTEX-ATTRIB10-NV
    :EVAL-VERTEX-ATTRIB11-NV
    :EVAL-VERTEX-ATTRIB12-NV
    :EVAL-VERTEX-ATTRIB13-NV
    :EVAL-VERTEX-ATTRIB14-NV
    :EVAL-VERTEX-ATTRIB15-NV
    :EVAL-VERTEX-ATTRIB1-NV
    :EVAL-VERTEX-ATTRIB2-NV
    :EVAL-VERTEX-ATTRIB3-NV
    :EVAL-VERTEX-ATTRIB4-NV
    :EVAL-VERTEX-ATTRIB5-NV
    :EVAL-VERTEX-ATTRIB6-NV
    :EVAL-VERTEX-ATTRIB7-NV
    :EVAL-VERTEX-ATTRIB8-NV
    :EVAL-VERTEX-ATTRIB9-NV
    :EXCLUSION
    :EXCLUSION-KHR
    :EXCLUSION-NV
    :EXP
    :EXP2
    :EXPAND-NEGATE-NV
    :EXPAND-NORMAL-NV
    :EXTENSIONS
    :EXTERNAL-VIRTUAL-MEMORY-BUFFER-AMD
    :EYE-DISTANCE-TO-LINE-SGIS
    :EYE-DISTANCE-TO-POINT-SGIS
    :EYE-LINEAR
    :EYE-LINEAR-NV
    :EYE-LINE-SGIS
    :EYE-PLANE
    :EYE-PLANE-ABSOLUTE-NV
    :EYE-POINT-SGIS
    :EYE-RADIAL-NV
    :FACTOR-ALPHA-MODULATE-IMG
    :FACTOR-MAX-AMD
    :FACTOR-MIN-AMD
    :FAILURE-NV
    :FALSE
    :FASTEST
    :FEEDBACK
    :FEEDBACK-BUFFER-POINTER
    :FEEDBACK-BUFFER-SIZE
    :FEEDBACK-BUFFER-TYPE
    :FENCE-APPLE
    :FENCE-CONDITION-NV
    :FENCE-STATUS-NV
    :FETCH-PER-SAMPLE-ARM
    :FIELD-LOWER-NV
    :FIELDS-NV
    :FIELD-UPPER-NV
    :FILE-NAME-NV
    :FILL
    :FILL-NV
    :FILL-RECTANGLE-NV
    :FILTER
    :FILTER4-SGIS
    :FIRST-TO-REST-NV
    :FIRST-VERTEX-CONVENTION
    :FIRST-VERTEX-CONVENTION-EXT
    :FIRST-VERTEX-CONVENTION-OES
    :FIXED
    :FIXED-OES
    :FIXED-ONLY
    :FIXED-ONLY-ARB
    :FLAT
    :FLOAT
    :FLOAT16-NV
    :FLOAT16-VEC2-NV
    :FLOAT16-VEC3-NV
    :FLOAT16-VEC4-NV
    :FLOAT-32-UNSIGNED-INT-24-8-REV
    :FLOAT-32-UNSIGNED-INT-24-8-REV-NV
    :FLOAT-CLEAR-COLOR-VALUE-NV
    :FLOAT-MAT2
    :FLOAT-MAT2-ARB
    :FLOAT-MAT2x3
    :FLOAT-MAT2x3-NV
    :FLOAT-MAT2x4
    :FLOAT-MAT2x4-NV
    :FLOAT-MAT3
    :FLOAT-MAT3-ARB
    :FLOAT-MAT3x2
    :FLOAT-MAT3x2-NV
    :FLOAT-MAT3x4
    :FLOAT-MAT3x4-NV
    :FLOAT-MAT4
    :FLOAT-MAT4-ARB
    :FLOAT-MAT4x2
    :FLOAT-MAT4x2-NV
    :FLOAT-MAT4x3
    :FLOAT-MAT4x3-NV
    :FLOAT-R16-NV
    :FLOAT-R32-NV
    :FLOAT-RG16-NV
    :FLOAT-RG32-NV
    :FLOAT-RGB16-NV
    :FLOAT-RGB32-NV
    :FLOAT-RGBA16-NV
    :FLOAT-RGBA32-NV
    :FLOAT-RGBA-MODE-NV
    :FLOAT-RGBA-NV
    :FLOAT-RGB-NV
    :FLOAT-RG-NV
    :FLOAT-R-NV
    :FLOAT-VEC2
    :FLOAT-VEC2-ARB
    :FLOAT-VEC3
    :FLOAT-VEC3-ARB
    :FLOAT-VEC4
    :FLOAT-VEC4-ARB
    :FOG
    :FOG-BIT
    :FOG-COLOR
    :FOG-COORD
    :FOG-COORD-ARRAY
    :FOG-COORD-ARRAY-ADDRESS-NV
    :FOG-COORD-ARRAY-BUFFER-BINDING
    :FOG-COORD-ARRAY-LENGTH-NV
    :FOG-COORD-ARRAY-POINTER
    :FOG-COORD-ARRAY-STRIDE
    :FOG-COORD-ARRAY-TYPE
    :FOG-COORDINATE
    :FOG-COORDINATE-ARRAY
    :FOG-COORDINATE-ARRAY-BUFFER-BINDING
    :FOG-COORDINATE-ARRAY-BUFFER-BINDING-ARB
    :FOG-COORDINATE-ARRAY-EXT
    :FOG-COORDINATE-ARRAY-LIST-IBM
    :FOG-COORDINATE-ARRAY-LIST-STRIDE-IBM
    :FOG-COORDINATE-ARRAY-POINTER
    :FOG-COORDINATE-ARRAY-POINTER-EXT
    :FOG-COORDINATE-ARRAY-STRIDE
    :FOG-COORDINATE-ARRAY-STRIDE-EXT
    :FOG-COORDINATE-ARRAY-TYPE
    :FOG-COORDINATE-ARRAY-TYPE-EXT
    :FOG-COORDINATE-EXT
    :FOG-COORDINATE-SOURCE
    :FOG-COORDINATE-SOURCE-EXT
    :FOG-COORD-SRC
    :FOG-DENSITY
    :FOG-DISTANCE-MODE-NV
    :FOG-END
    :FOG-FUNC-POINTS-SGIS
    :FOG-FUNC-SGIS
    :FOG-HINT
    :FOG-INDEX
    :FOG-MODE
    :FOG-OFFSET-SGIX
    :FOG-OFFSET-VALUE-SGIX
    :FOG-SPECULAR-TEXTURE-WIN
    :FOG-START
    :FONT-ASCENDER-BIT-NV
    :FONT-DESCENDER-BIT-NV
    :FONT-GLYPHS-AVAILABLE-NV
    :FONT-HAS-KERNING-BIT-NV
    :FONT-HEIGHT-BIT-NV
    :FONT-MAX-ADVANCE-HEIGHT-BIT-NV
    :FONT-MAX-ADVANCE-WIDTH-BIT-NV
    :FONT-NUM-GLYPH-INDICES-BIT-NV
    :FONT-TARGET-UNAVAILABLE-NV
    :FONT-UNAVAILABLE-NV
    :FONT-UNDERLINE-POSITION-BIT-NV
    :FONT-UNDERLINE-THICKNESS-BIT-NV
    :FONT-UNINTELLIGIBLE-NV
    :FONT-UNITS-PER-EM-BIT-NV
    :FONT-X-MAX-BOUNDS-BIT-NV
    :FONT-X-MIN-BOUNDS-BIT-NV
    :FONT-Y-MAX-BOUNDS-BIT-NV
    :FONT-Y-MIN-BOUNDS-BIT-NV
    :FORCE-BLUE-TO-ONE-NV
    :FORMAT-SUBSAMPLE-24-24-OML
    :FORMAT-SUBSAMPLE-244-244-OML
    :FRACTIONAL-EVEN
    :FRACTIONAL-EVEN-EXT
    :FRACTIONAL-EVEN-OES
    :FRACTIONAL-ODD
    :FRACTIONAL-ODD-EXT
    :FRACTIONAL-ODD-OES
    :FRAGMENT-ALPHA-MODULATE-IMG
    :FRAGMENT-COLOR-EXT
    :FRAGMENT-COLOR-MATERIAL-FACE-SGIX
    :FRAGMENT-COLOR-MATERIAL-PARAMETER-SGIX
    :FRAGMENT-COLOR-MATERIAL-SGIX
    :FRAGMENT-COVERAGE-COLOR-NV
    :FRAGMENT-COVERAGE-TO-COLOR-NV
    :FRAGMENT-DEPTH
    :FRAGMENT-DEPTH-EXT
    :FRAGMENT-INPUT-NV
    :FRAGMENT-INTERPOLATION-OFFSET-BITS
    :FRAGMENT-INTERPOLATION-OFFSET-BITS-OES
    :FRAGMENT-LIGHT0-SGIX
    :FRAGMENT-LIGHT1-SGIX
    :FRAGMENT-LIGHT2-SGIX
    :FRAGMENT-LIGHT3-SGIX
    :FRAGMENT-LIGHT4-SGIX
    :FRAGMENT-LIGHT5-SGIX
    :FRAGMENT-LIGHT6-SGIX
    :FRAGMENT-LIGHT7-SGIX
    :FRAGMENT-LIGHTING-SGIX
    :FRAGMENT-LIGHT-MODEL-AMBIENT-SGIX
    :FRAGMENT-LIGHT-MODEL-LOCAL-VIEWER-SGIX
    :FRAGMENT-LIGHT-MODEL-NORMAL-INTERPOLATION-SGIX
    :FRAGMENT-LIGHT-MODEL-TWO-SIDE-SGIX
    :FRAGMENT-MATERIAL-EXT
    :FRAGMENT-NORMAL-EXT
    :FRAGMENT-PROGRAM-ARB
    :FRAGMENT-PROGRAM-BINDING-NV
    :FRAGMENT-PROGRAM-CALLBACK-DATA-MESA
    :FRAGMENT-PROGRAM-CALLBACK-FUNC-MESA
    :FRAGMENT-PROGRAM-CALLBACK-MESA
    :FRAGMENT-PROGRAM-INTERPOLATION-OFFSET-BITS-NV
    :FRAGMENT-PROGRAM-NV
    :FRAGMENT-PROGRAM-PARAMETER-BUFFER-NV
    :FRAGMENT-PROGRAM-POSITION-MESA
    :FRAGMENT-SHADER
    :FRAGMENT-SHADER-ARB
    :FRAGMENT-SHADER-ATI
    :FRAGMENT-SHADER-BIT
    :FRAGMENT-SHADER-BIT-EXT
    :FRAGMENT-SHADER-DERIVATIVE-HINT
    :FRAGMENT-SHADER-DERIVATIVE-HINT-ARB
    :FRAGMENT-SHADER-DERIVATIVE-HINT-OES
    :FRAGMENT-SHADER-DISCARDS-SAMPLES-EXT
    :FRAGMENT-SHADER-FRAMEBUFFER-FETCH-MRT-ARM
    :FRAGMENT-SHADER-INVOCATIONS-ARB
    :FRAGMENTS-INSTRUMENT-COUNTERS-SGIX
    :FRAGMENTS-INSTRUMENT-MAX-SGIX
    :FRAGMENTS-INSTRUMENT-SGIX
    :FRAGMENT-SUBROUTINE
    :FRAGMENT-SUBROUTINE-UNIFORM
    :FRAGMENT-TEXTURE
    :FRAMEBUFFER
    :FRAMEBUFFER-ATTACHMENT-ALPHA-SIZE
    :FRAMEBUFFER-ATTACHMENT-ANGLE
    :FRAMEBUFFER-ATTACHMENT-BLUE-SIZE
    :FRAMEBUFFER-ATTACHMENT-COLOR-ENCODING
    :FRAMEBUFFER-ATTACHMENT-COLOR-ENCODING-EXT
    :FRAMEBUFFER-ATTACHMENT-COMPONENT-TYPE
    :FRAMEBUFFER-ATTACHMENT-COMPONENT-TYPE-EXT
    :FRAMEBUFFER-ATTACHMENT-DEPTH-SIZE
    :FRAMEBUFFER-ATTACHMENT-GREEN-SIZE
    :FRAMEBUFFER-ATTACHMENT-LAYERED
    :FRAMEBUFFER-ATTACHMENT-LAYERED-ARB
    :FRAMEBUFFER-ATTACHMENT-LAYERED-EXT
    :FRAMEBUFFER-ATTACHMENT-LAYERED-OES
    :FRAMEBUFFER-ATTACHMENT-OBJECT-NAME
    :FRAMEBUFFER-ATTACHMENT-OBJECT-NAME-EXT
    :FRAMEBUFFER-ATTACHMENT-OBJECT-NAME-OES
    :FRAMEBUFFER-ATTACHMENT-OBJECT-TYPE
    :FRAMEBUFFER-ATTACHMENT-OBJECT-TYPE-EXT
    :FRAMEBUFFER-ATTACHMENT-OBJECT-TYPE-OES
    :FRAMEBUFFER-ATTACHMENT-RED-SIZE
    :FRAMEBUFFER-ATTACHMENT-STENCIL-SIZE
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-3D-ZOFFSET-EXT
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-3D-ZOFFSET-OES
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-BASE-VIEW-INDEX-OVR
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-CUBE-MAP-FACE
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-CUBE-MAP-FACE-EXT
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-CUBE-MAP-FACE-OES
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-LAYER
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-LAYER-EXT
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-LEVEL
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-LEVEL-EXT
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-LEVEL-OES
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-NUM-VIEWS-OVR
    :FRAMEBUFFER-ATTACHMENT-TEXTURE-SAMPLES-EXT
    :FRAMEBUFFER-BARRIER-BIT
    :FRAMEBUFFER-BARRIER-BIT-EXT
    :FRAMEBUFFER-BINDING
    :FRAMEBUFFER-BINDING-ANGLE
    :FRAMEBUFFER-BINDING-EXT
    :FRAMEBUFFER-BINDING-OES
    :FRAMEBUFFER-BLEND
    :FRAMEBUFFER-COMPLETE
    :FRAMEBUFFER-COMPLETE-EXT
    :FRAMEBUFFER-COMPLETE-OES
    :FRAMEBUFFER-DEFAULT
    :FRAMEBUFFER-DEFAULT-FIXED-SAMPLE-LOCATIONS
    :FRAMEBUFFER-DEFAULT-HEIGHT
    :FRAMEBUFFER-DEFAULT-LAYERS
    :FRAMEBUFFER-DEFAULT-LAYERS-EXT
    :FRAMEBUFFER-DEFAULT-LAYERS-OES
    :FRAMEBUFFER-DEFAULT-SAMPLES
    :FRAMEBUFFER-DEFAULT-WIDTH
    :FRAMEBUFFER-EXT
    :FRAMEBUFFER-INCOMPLETE-ATTACHMENT
    :FRAMEBUFFER-INCOMPLETE-ATTACHMENT-EXT
    :FRAMEBUFFER-INCOMPLETE-ATTACHMENT-OES
    :FRAMEBUFFER-INCOMPLETE-DIMENSIONS
    :FRAMEBUFFER-INCOMPLETE-DIMENSIONS-EXT
    :FRAMEBUFFER-INCOMPLETE-DIMENSIONS-OES
    :FRAMEBUFFER-INCOMPLETE-DRAW-BUFFER
    :FRAMEBUFFER-INCOMPLETE-DRAW-BUFFER-EXT
    :FRAMEBUFFER-INCOMPLETE-DRAW-BUFFER-OES
    :FRAMEBUFFER-INCOMPLETE-FORMATS-EXT
    :FRAMEBUFFER-INCOMPLETE-FORMATS-OES
    :FRAMEBUFFER-INCOMPLETE-LAYER-COUNT-ARB
    :FRAMEBUFFER-INCOMPLETE-LAYER-COUNT-EXT
    :FRAMEBUFFER-INCOMPLETE-LAYER-TARGETS
    :FRAMEBUFFER-INCOMPLETE-LAYER-TARGETS-ARB
    :FRAMEBUFFER-INCOMPLETE-LAYER-TARGETS-EXT
    :FRAMEBUFFER-INCOMPLETE-LAYER-TARGETS-OES
    :FRAMEBUFFER-INCOMPLETE-MISSING-ATTACHMENT
    :FRAMEBUFFER-INCOMPLETE-MISSING-ATTACHMENT-EXT
    :FRAMEBUFFER-INCOMPLETE-MISSING-ATTACHMENT-OES
    :FRAMEBUFFER-INCOMPLETE-MULTISAMPLE
    :FRAMEBUFFER-INCOMPLETE-MULTISAMPLE-ANGLE
    :FRAMEBUFFER-INCOMPLETE-MULTISAMPLE-APPLE
    :FRAMEBUFFER-INCOMPLETE-MULTISAMPLE-EXT
    :FRAMEBUFFER-INCOMPLETE-MULTISAMPLE-IMG
    :FRAMEBUFFER-INCOMPLETE-MULTISAMPLE-NV
    :FRAMEBUFFER-INCOMPLETE-READ-BUFFER
    :FRAMEBUFFER-INCOMPLETE-READ-BUFFER-EXT
    :FRAMEBUFFER-INCOMPLETE-READ-BUFFER-OES
    :FRAMEBUFFER-OES
    :FRAMEBUFFER-PROGRAMMABLE-SAMPLE-LOCATIONS-ARB
    :FRAMEBUFFER-PROGRAMMABLE-SAMPLE-LOCATIONS-NV
    :FRAMEBUFFER-RENDERABLE
    :FRAMEBUFFER-RENDERABLE-LAYERED
    :FRAMEBUFFER-SAMPLE-LOCATION-PIXEL-GRID-ARB
    :FRAMEBUFFER-SAMPLE-LOCATION-PIXEL-GRID-NV
    :FRAMEBUFFER-SRGB
    :FRAMEBUFFER-SRGB-CAPABLE-EXT
    :FRAMEBUFFER-SRGB-EXT
    :FRAMEBUFFER-UNDEFINED
    :FRAMEBUFFER-UNDEFINED-OES
    :FRAMEBUFFER-UNSUPPORTED
    :FRAMEBUFFER-UNSUPPORTED-EXT
    :FRAMEBUFFER-UNSUPPORTED-OES
    :FRAME-NV
    :FRAMEZOOM-FACTOR-SGIX
    :FRAMEZOOM-SGIX
    :FRONT
    :FRONT-AND-BACK
    :FRONT-FACE
    :FRONT-FACE-COMMAND-NV
    :FRONT-LEFT
    :FRONT-RIGHT
    :FULL-RANGE-EXT
    :FULL-STIPPLE-HINT-PGI
    :FULL-SUPPORT
    :FUNC-ADD
    :FUNC-ADD-EXT
    :FUNC-ADD-OES
    :FUNC-REVERSE-SUBTRACT
    :FUNC-REVERSE-SUBTRACT-EXT
    :FUNC-REVERSE-SUBTRACT-OES
    :FUNC-SUBTRACT
    :FUNC-SUBTRACT-EXT
    :FUNC-SUBTRACT-OES
    :GCCSO-SHADER-BINARY-FJ
    :GENERATE-MIPMAP
    :GENERATE-MIPMAP-HINT
    :GENERATE-MIPMAP-HINT-SGIS
    :GENERATE-MIPMAP-SGIS
    :GENERIC-ATTRIB-NV
    :GEOMETRY-DEFORMATION-BIT-SGIX
    :GEOMETRY-DEFORMATION-SGIX
    :GEOMETRY-INPUT-TYPE
    :GEOMETRY-INPUT-TYPE-ARB
    :GEOMETRY-INPUT-TYPE-EXT
    :GEOMETRY-LINKED-INPUT-TYPE-EXT
    :GEOMETRY-LINKED-INPUT-TYPE-OES
    :GEOMETRY-LINKED-OUTPUT-TYPE-EXT
    :GEOMETRY-LINKED-OUTPUT-TYPE-OES
    :GEOMETRY-LINKED-VERTICES-OUT-EXT
    :GEOMETRY-LINKED-VERTICES-OUT-OES
    :GEOMETRY-OUTPUT-TYPE
    :GEOMETRY-OUTPUT-TYPE-ARB
    :GEOMETRY-OUTPUT-TYPE-EXT
    :GEOMETRY-PROGRAM-NV
    :GEOMETRY-PROGRAM-PARAMETER-BUFFER-NV
    :GEOMETRY-SHADER
    :GEOMETRY-SHADER-ARB
    :GEOMETRY-SHADER-BIT
    :GEOMETRY-SHADER-BIT-EXT
    :GEOMETRY-SHADER-BIT-OES
    :GEOMETRY-SHADER-EXT
    :GEOMETRY-SHADER-INVOCATIONS
    :GEOMETRY-SHADER-INVOCATIONS-EXT
    :GEOMETRY-SHADER-INVOCATIONS-OES
    :GEOMETRY-SHADER-OES
    :GEOMETRY-SHADER-PRIMITIVES-EMITTED-ARB
    :GEOMETRY-SUBROUTINE
    :GEOMETRY-SUBROUTINE-UNIFORM
    :GEOMETRY-TEXTURE
    :GEOMETRY-VERTICES-OUT
    :GEOMETRY-VERTICES-OUT-ARB
    :GEOMETRY-VERTICES-OUT-EXT
    :GEQUAL
    :GET-TEXTURE-IMAGE-FORMAT
    :GET-TEXTURE-IMAGE-TYPE
    :GLOBAL-ALPHA-FACTOR-SUN
    :GLOBAL-ALPHA-SUN
    :GLYPH-HAS-KERNING-BIT-NV
    :GLYPH-HEIGHT-BIT-NV
    :GLYPH-HORIZONTAL-BEARING-ADVANCE-BIT-NV
    :GLYPH-HORIZONTAL-BEARING-X-BIT-NV
    :GLYPH-HORIZONTAL-BEARING-Y-BIT-NV
    :GLYPH-VERTICAL-BEARING-ADVANCE-BIT-NV
    :GLYPH-VERTICAL-BEARING-X-BIT-NV
    :GLYPH-VERTICAL-BEARING-Y-BIT-NV
    :GLYPH-WIDTH-BIT-NV
    :GPU-ADDRESS-NV
    :GPU-DISJOINT-EXT
    :GPU-MEMORY-INFO-CURRENT-AVAILABLE-VIDMEM-NVX
    :GPU-MEMORY-INFO-DEDICATED-VIDMEM-NVX
    :GPU-MEMORY-INFO-EVICTED-MEMORY-NVX
    :GPU-MEMORY-INFO-EVICTION-COUNT-NVX
    :GPU-MEMORY-INFO-TOTAL-AVAILABLE-MEMORY-NVX
    :GPU-OPTIMIZED-QCOM
    :GREATER
    :GREEN
    :GREEN-BIAS
    :GREEN-BIT-ATI
    :GREEN-BITS
    :GREEN-INTEGER
    :GREEN-INTEGER-EXT
    :GREEN-MAX-CLAMP-INGR
    :GREEN-MIN-CLAMP-INGR
    :GREEN-NV
    :GREEN-SCALE
    :GS-PROGRAM-BINARY-MTK
    :GS-SHADER-BINARY-MTK
    :GUILTY-CONTEXT-RESET
    :GUILTY-CONTEXT-RESET-ARB
    :GUILTY-CONTEXT-RESET-EXT
    :GUILTY-CONTEXT-RESET-KHR
    :HALF-APPLE
    :HALF-BIAS-NEGATE-NV
    :HALF-BIAS-NORMAL-NV
    :HALF-BIT-ATI
    :HALF-FLOAT
    :HALF-FLOAT-ARB
    :HALF-FLOAT-NV
    :HALF-FLOAT-OES
    :HARDLIGHT
    :HARDLIGHT-KHR
    :HARDLIGHT-NV
    :HARDMIX-NV
    :HI-BIAS-NV
    :HIGH-FLOAT
    :HIGH-INT
    :HILO16-NV
    :HILO8-NV
    :HILO-NV
    :HINT-BIT
    :HI-SCALE-NV
    :HISTOGRAM
    :HISTOGRAM-ALPHA-SIZE
    :HISTOGRAM-ALPHA-SIZE-EXT
    :HISTOGRAM-BLUE-SIZE
    :HISTOGRAM-BLUE-SIZE-EXT
    :HISTOGRAM-EXT
    :HISTOGRAM-FORMAT
    :HISTOGRAM-FORMAT-EXT
    :HISTOGRAM-GREEN-SIZE
    :HISTOGRAM-GREEN-SIZE-EXT
    :HISTOGRAM-LUMINANCE-SIZE
    :HISTOGRAM-LUMINANCE-SIZE-EXT
    :HISTOGRAM-RED-SIZE
    :HISTOGRAM-RED-SIZE-EXT
    :HISTOGRAM-SINK
    :HISTOGRAM-SINK-EXT
    :HISTOGRAM-WIDTH
    :HISTOGRAM-WIDTH-EXT
    :HORIZONTAL-LINE-TO-NV
    :HSL-COLOR
    :HSL-COLOR-KHR
    :HSL-COLOR-NV
    :HSL-HUE
    :HSL-HUE-KHR
    :HSL-HUE-NV
    :HSL-LUMINOSITY
    :HSL-LUMINOSITY-KHR
    :HSL-LUMINOSITY-NV
    :HSL-SATURATION
    :HSL-SATURATION-KHR
    :HSL-SATURATION-NV
    :IDENTITY-NV
    :IGNORE-BORDER-HP
    :IMAGE-1D
    :IMAGE-1D-ARRAY
    :IMAGE-1D-ARRAY-EXT
    :IMAGE-1D-EXT
    :IMAGE-2D
    :IMAGE-2D-ARRAY
    :IMAGE-2D-ARRAY-EXT
    :IMAGE-2D-EXT
    :IMAGE-2D-MULTISAMPLE
    :IMAGE-2D-MULTISAMPLE-ARRAY
    :IMAGE-2D-MULTISAMPLE-ARRAY-EXT
    :IMAGE-2D-MULTISAMPLE-EXT
    :IMAGE-2D-RECT
    :IMAGE-2D-RECT-EXT
    :IMAGE-3D
    :IMAGE-3D-EXT
    :IMAGE-BINDING-ACCESS
    :IMAGE-BINDING-ACCESS-EXT
    :IMAGE-BINDING-FORMAT
    :IMAGE-BINDING-FORMAT-EXT
    :IMAGE-BINDING-LAYER
    :IMAGE-BINDING-LAYERED
    :IMAGE-BINDING-LAYERED-EXT
    :IMAGE-BINDING-LAYER-EXT
    :IMAGE-BINDING-LEVEL
    :IMAGE-BINDING-LEVEL-EXT
    :IMAGE-BINDING-NAME
    :IMAGE-BINDING-NAME-EXT
    :IMAGE-BUFFER
    :IMAGE-BUFFER-EXT
    :IMAGE-BUFFER-OES
    :IMAGE-CLASS-10-10-10-2
    :IMAGE-CLASS-11-11-10
    :IMAGE-CLASS-1-X-16
    :IMAGE-CLASS-1-X-32
    :IMAGE-CLASS-1-X-8
    :IMAGE-CLASS-2-X-16
    :IMAGE-CLASS-2-X-32
    :IMAGE-CLASS-2-X-8
    :IMAGE-CLASS-4-X-16
    :IMAGE-CLASS-4-X-32
    :IMAGE-CLASS-4-X-8
    :IMAGE-COMPATIBILITY-CLASS
    :IMAGE-CUBE
    :IMAGE-CUBE-EXT
    :IMAGE-CUBE-MAP-ARRAY
    :IMAGE-CUBE-MAP-ARRAY-EXT
    :IMAGE-CUBE-MAP-ARRAY-OES
    :IMAGE-CUBIC-WEIGHT-HP
    :IMAGE-FORMAT-COMPATIBILITY-BY-CLASS
    :IMAGE-FORMAT-COMPATIBILITY-BY-SIZE
    :IMAGE-FORMAT-COMPATIBILITY-TYPE
    :IMAGE-MAG-FILTER-HP
    :IMAGE-MIN-FILTER-HP
    :IMAGE-PIXEL-FORMAT
    :IMAGE-PIXEL-TYPE
    :IMAGE-ROTATE-ANGLE-HP
    :IMAGE-ROTATE-ORIGIN-X-HP
    :IMAGE-ROTATE-ORIGIN-Y-HP
    :IMAGE-SCALE-X-HP
    :IMAGE-SCALE-Y-HP
    :IMAGE-TEXEL-SIZE
    :IMAGE-TRANSFORM-2D-HP
    :IMAGE-TRANSLATE-X-HP
    :IMAGE-TRANSLATE-Y-HP
    :IMPLEMENTATION-COLOR-READ-FORMAT
    :IMPLEMENTATION-COLOR-READ-FORMAT-OES
    :IMPLEMENTATION-COLOR-READ-TYPE
    :IMPLEMENTATION-COLOR-READ-TYPE-OES
    :INCR
    :INCR-WRAP
    :INCR-WRAP-EXT
    :INCR-WRAP-OES
    :INDEX
    :INDEX-ARRAY
    :INDEX-ARRAY-ADDRESS-NV
    :INDEX-ARRAY-BUFFER-BINDING
    :INDEX-ARRAY-BUFFER-BINDING-ARB
    :INDEX-ARRAY-COUNT-EXT
    :INDEX-ARRAY-EXT
    :INDEX-ARRAY-LENGTH-NV
    :INDEX-ARRAY-LIST-IBM
    :INDEX-ARRAY-LIST-STRIDE-IBM
    :INDEX-ARRAY-POINTER
    :INDEX-ARRAY-POINTER-EXT
    :INDEX-ARRAY-STRIDE
    :INDEX-ARRAY-STRIDE-EXT
    :INDEX-ARRAY-TYPE
    :INDEX-ARRAY-TYPE-EXT
    :INDEX-BIT-PGI
    :INDEX-BITS
    :INDEX-CLEAR-VALUE
    :INDEX-LOGIC-OP
    :INDEX-MATERIAL-EXT
    :INDEX-MATERIAL-FACE-EXT
    :INDEX-MATERIAL-PARAMETER-EXT
    :INDEX-MODE
    :INDEX-OFFSET
    :INDEX-SHIFT
    :INDEX-TEST-EXT
    :INDEX-TEST-FUNC-EXT
    :INDEX-TEST-REF-EXT
    :INDEX-WRITEMASK
    :INFO-LOG-LENGTH
    :INNOCENT-CONTEXT-RESET
    :INNOCENT-CONTEXT-RESET-ARB
    :INNOCENT-CONTEXT-RESET-EXT
    :INNOCENT-CONTEXT-RESET-KHR
    :INSTRUMENT-BUFFER-POINTER-SGIX
    :INSTRUMENT-MEASUREMENTS-SGIX
    :INT
    :INT-10-10-10-2-OES
    :INT16-NV
    :INT16-VEC2-NV
    :INT16-VEC3-NV
    :INT16-VEC4-NV
    :INT-2-10-10-10-REV
    :INT64-ARB
    :INT64-NV
    :INT64-VEC2-ARB
    :INT64-VEC2-NV
    :INT64-VEC3-ARB
    :INT64-VEC3-NV
    :INT64-VEC4-ARB
    :INT64-VEC4-NV
    :INT8-NV
    :INT8-VEC2-NV
    :INT8-VEC3-NV
    :INT8-VEC4-NV
    :INTENSITY
    :INTENSITY12
    :INTENSITY12-EXT
    :INTENSITY16
    :INTENSITY16-EXT
    :INTENSITY16F-ARB
    :INTENSITY16-ICC-SGIX
    :INTENSITY16I-EXT
    :INTENSITY16-SNORM
    :INTENSITY16UI-EXT
    :INTENSITY32F-ARB
    :INTENSITY32I-EXT
    :INTENSITY32UI-EXT
    :INTENSITY4
    :INTENSITY4-EXT
    :INTENSITY8
    :INTENSITY8-EXT
    :INTENSITY8I-EXT
    :INTENSITY8-SNORM
    :INTENSITY8UI-EXT
    :INTENSITY-EXT
    :INTENSITY-FLOAT16-APPLE
    :INTENSITY-FLOAT16-ATI
    :INTENSITY-FLOAT32-APPLE
    :INTENSITY-FLOAT32-ATI
    :INTENSITY-ICC-SGIX
    :INTENSITY-SNORM
    :INTERLACE-OML
    :INTERLACE-READ-INGR
    :INTERLACE-READ-OML
    :INTERLACE-SGIX
    :INTERLEAVED-ATTRIBS
    :INTERLEAVED-ATTRIBS-EXT
    :INTERLEAVED-ATTRIBS-NV
    :INTERNALFORMAT-ALPHA-SIZE
    :INTERNALFORMAT-ALPHA-TYPE
    :INTERNALFORMAT-BLUE-SIZE
    :INTERNALFORMAT-BLUE-TYPE
    :INTERNALFORMAT-DEPTH-SIZE
    :INTERNALFORMAT-DEPTH-TYPE
    :INTERNALFORMAT-GREEN-SIZE
    :INTERNALFORMAT-GREEN-TYPE
    :INTERNALFORMAT-PREFERRED
    :INTERNALFORMAT-RED-SIZE
    :INTERNALFORMAT-RED-TYPE
    :INTERNALFORMAT-SHARED-SIZE
    :INTERNALFORMAT-STENCIL-SIZE
    :INTERNALFORMAT-STENCIL-TYPE
    :INTERNALFORMAT-SUPPORTED
    :INTERPOLATE
    :INTERPOLATE-ARB
    :INTERPOLATE-EXT
    :INT-IMAGE-1D
    :INT-IMAGE-1D-ARRAY
    :INT-IMAGE-1D-ARRAY-EXT
    :INT-IMAGE-1D-EXT
    :INT-IMAGE-2D
    :INT-IMAGE-2D-ARRAY
    :INT-IMAGE-2D-ARRAY-EXT
    :INT-IMAGE-2D-EXT
    :INT-IMAGE-2D-MULTISAMPLE
    :INT-IMAGE-2D-MULTISAMPLE-ARRAY
    :INT-IMAGE-2D-MULTISAMPLE-ARRAY-EXT
    :INT-IMAGE-2D-MULTISAMPLE-EXT
    :INT-IMAGE-2D-RECT
    :INT-IMAGE-2D-RECT-EXT
    :INT-IMAGE-3D
    :INT-IMAGE-3D-EXT
    :INT-IMAGE-BUFFER
    :INT-IMAGE-BUFFER-EXT
    :INT-IMAGE-BUFFER-OES
    :INT-IMAGE-CUBE
    :INT-IMAGE-CUBE-EXT
    :INT-IMAGE-CUBE-MAP-ARRAY
    :INT-IMAGE-CUBE-MAP-ARRAY-EXT
    :INT-IMAGE-CUBE-MAP-ARRAY-OES
    :INT-SAMPLER-1D
    :INT-SAMPLER-1D-ARRAY
    :INT-SAMPLER-1D-ARRAY-EXT
    :INT-SAMPLER-1D-EXT
    :INT-SAMPLER-2D
    :INT-SAMPLER-2D-ARRAY
    :INT-SAMPLER-2D-ARRAY-EXT
    :INT-SAMPLER-2D-EXT
    :INT-SAMPLER-2D-MULTISAMPLE
    :INT-SAMPLER-2D-MULTISAMPLE-ARRAY
    :INT-SAMPLER-2D-MULTISAMPLE-ARRAY-OES
    :INT-SAMPLER-2D-RECT
    :INT-SAMPLER-2D-RECT-EXT
    :INT-SAMPLER-3D
    :INT-SAMPLER-3D-EXT
    :INT-SAMPLER-BUFFER
    :INT-SAMPLER-BUFFER-AMD
    :INT-SAMPLER-BUFFER-EXT
    :INT-SAMPLER-BUFFER-OES
    :INT-SAMPLER-CUBE
    :INT-SAMPLER-CUBE-EXT
    :INT-SAMPLER-CUBE-MAP-ARRAY
    :INT-SAMPLER-CUBE-MAP-ARRAY-ARB
    :INT-SAMPLER-CUBE-MAP-ARRAY-EXT
    :INT-SAMPLER-CUBE-MAP-ARRAY-OES
    :INT-SAMPLER-RENDERBUFFER-NV
    :INT-VEC2
    :INT-VEC2-ARB
    :INT-VEC3
    :INT-VEC3-ARB
    :INT-VEC4
    :INT-VEC4-ARB
    :INVALID-ENUM
    :INVALID-FRAMEBUFFER-OPERATION
    :INVALID-FRAMEBUFFER-OPERATION-EXT
    :INVALID-FRAMEBUFFER-OPERATION-OES
    :INVALID-INDEX
    :INVALID-OPERATION
    :INVALID-VALUE
    :INVARIANT-DATATYPE-EXT
    :INVARIANT-EXT
    :INVARIANT-VALUE-EXT
    :INVERSE-NV
    :INVERSE-TRANSPOSE-NV
    :INVERT
    :INVERTED-SCREEN-W-REND
    :INVERT-OVG-NV
    :INVERT-RGB-NV
    :IR-INSTRUMENT1-SGIX
    :ISOLINES
    :ISOLINES-EXT
    :ISOLINES-OES
    :IS-PER-PATCH
    :IS-PER-PATCH-EXT
    :IS-PER-PATCH-OES
    :IS-ROW-MAJOR
    :ITALIC-BIT-NV
    :IUI-N3F-V2F-EXT
    :IUI-N3F-V3F-EXT
    :IUI-V2F-EXT
    :IUI-V3F-EXT
    :KEEP
    :LARGE-CCW-ARC-TO-NV
    :LARGE-CW-ARC-TO-NV
    :LAST-VERTEX-CONVENTION
    :LAST-VERTEX-CONVENTION-EXT
    :LAST-VERTEX-CONVENTION-OES
    :LAST-VIDEO-CAPTURE-STATUS-NV
    :LAYER-NV
    :LAYER-PROVOKING-VERTEX
    :LAYER-PROVOKING-VERTEX-EXT
    :LAYER-PROVOKING-VERTEX-OES
    :LAYOUT-DEFAULT-INTEL
    :LAYOUT-LINEAR-CPU-CACHED-INTEL
    :LAYOUT-LINEAR-INTEL
    :LEFT
    :LEQUAL
    :LERP-ATI
    :LESS
    :LIGHT0
    :LIGHT1
    :LIGHT2
    :LIGHT3
    :LIGHT4
    :LIGHT5
    :LIGHT6
    :LIGHT7
    :LIGHTEN
    :LIGHTEN-KHR
    :LIGHTEN-NV
    :LIGHT-ENV-MODE-SGIX
    :LIGHTING
    :LIGHTING-BIT
    :LIGHT-MODEL-AMBIENT
    :LIGHT-MODEL-COLOR-CONTROL
    :LIGHT-MODEL-COLOR-CONTROL-EXT
    :LIGHT-MODEL-LOCAL-VIEWER
    :LIGHT-MODEL-SPECULAR-VECTOR-APPLE
    :LIGHT-MODEL-TWO-SIDE
    :LINE
    :LINEAR
    :LINEAR-ATTENUATION
    :LINEARBURN-NV
    :LINEAR-CLIPMAP-LINEAR-SGIX
    :LINEAR-CLIPMAP-NEAREST-SGIX
    :LINEAR-DETAIL-ALPHA-SGIS
    :LINEAR-DETAIL-COLOR-SGIS
    :LINEAR-DETAIL-SGIS
    :LINEARDODGE-NV
    :LINEARLIGHT-NV
    :LINEAR-MIPMAP-LINEAR
    :LINEAR-MIPMAP-NEAREST
    :LINEAR-SHARPEN-ALPHA-SGIS
    :LINEAR-SHARPEN-COLOR-SGIS
    :LINEAR-SHARPEN-SGIS
    :LINE-BIT
    :LINE-LOOP
    :LINE-NV
    :LINE-QUALITY-HINT-SGIX
    :LINE-RESET-TOKEN
    :LINES
    :LINES-ADJACENCY
    :LINES-ADJACENCY-ARB
    :LINES-ADJACENCY-EXT
    :LINES-ADJACENCY-OES
    :LINE-SMOOTH
    :LINE-SMOOTH-HINT
    :LINE-STIPPLE
    :LINE-STIPPLE-PATTERN
    :LINE-STIPPLE-REPEAT
    :LINE-STRIP
    :LINE-STRIP-ADJACENCY
    :LINE-STRIP-ADJACENCY-ARB
    :LINE-STRIP-ADJACENCY-EXT
    :LINE-STRIP-ADJACENCY-OES
    :LINE-TOKEN
    :LINE-TO-NV
    :LINE-WIDTH
    :LINE-WIDTH-COMMAND-NV
    :LINE-WIDTH-GRANULARITY
    :LINE-WIDTH-RANGE
    :LINK-STATUS
    :LIST-BASE
    :LIST-BIT
    :LIST-INDEX
    :LIST-MODE
    :LIST-PRIORITY-SGIX
    :LOAD
    :LO-BIAS-NV
    :LOCAL-CONSTANT-DATATYPE-EXT
    :LOCAL-CONSTANT-EXT
    :LOCAL-CONSTANT-VALUE-EXT
    :LOCAL-EXT
    :LOCATION
    :LOCATION-COMPONENT
    :LOCATION-INDEX
    :LOCATION-INDEX-EXT
    :LOGIC-OP
    :LOGIC-OP-MODE
    :LO-SCALE-NV
    :LOSE-CONTEXT-ON-RESET
    :LOSE-CONTEXT-ON-RESET-ARB
    :LOSE-CONTEXT-ON-RESET-EXT
    :LOSE-CONTEXT-ON-RESET-KHR
    :LOWER-LEFT
    :LOW-FLOAT
    :LOW-INT
    :LUMINANCE
    :LUMINANCE12
    :LUMINANCE12-ALPHA12
    :LUMINANCE12-ALPHA12-EXT
    :LUMINANCE12-ALPHA4
    :LUMINANCE12-ALPHA4-EXT
    :LUMINANCE12-EXT
    :LUMINANCE16
    :LUMINANCE16-ALPHA16
    :LUMINANCE16-ALPHA16-EXT
    :LUMINANCE16-ALPHA16-SNORM
    :LUMINANCE16-ALPHA8-ICC-SGIX
    :LUMINANCE16-EXT
    :LUMINANCE16F-ARB
    :LUMINANCE16F-EXT
    :LUMINANCE16-ICC-SGIX
    :LUMINANCE16I-EXT
    :LUMINANCE16-SNORM
    :LUMINANCE16UI-EXT
    :LUMINANCE32F-ARB
    :LUMINANCE32F-EXT
    :LUMINANCE32I-EXT
    :LUMINANCE32UI-EXT
    :LUMINANCE4
    :LUMINANCE4-ALPHA4
    :LUMINANCE4-ALPHA4-EXT
    :LUMINANCE4-ALPHA4-OES
    :LUMINANCE4-EXT
    :LUMINANCE6-ALPHA2
    :LUMINANCE6-ALPHA2-EXT
    :LUMINANCE8
    :LUMINANCE8-ALPHA8
    :LUMINANCE8-ALPHA8-EXT
    :LUMINANCE8-ALPHA8-OES
    :LUMINANCE8-ALPHA8-SNORM
    :LUMINANCE8-EXT
    :LUMINANCE8I-EXT
    :LUMINANCE8-OES
    :LUMINANCE8-SNORM
    :LUMINANCE8UI-EXT
    :LUMINANCE-ALPHA
    :LUMINANCE-ALPHA16F-ARB
    :LUMINANCE-ALPHA16F-EXT
    :LUMINANCE-ALPHA16I-EXT
    :LUMINANCE-ALPHA16UI-EXT
    :LUMINANCE-ALPHA32F-ARB
    :LUMINANCE-ALPHA32F-EXT
    :LUMINANCE-ALPHA32I-EXT
    :LUMINANCE-ALPHA32UI-EXT
    :LUMINANCE-ALPHA8I-EXT
    :LUMINANCE-ALPHA8UI-EXT
    :LUMINANCE-ALPHA-FLOAT16-APPLE
    :LUMINANCE-ALPHA-FLOAT16-ATI
    :LUMINANCE-ALPHA-FLOAT32-APPLE
    :LUMINANCE-ALPHA-FLOAT32-ATI
    :LUMINANCE-ALPHA-ICC-SGIX
    :LUMINANCE-ALPHA-INTEGER-EXT
    :LUMINANCE-ALPHA-SNORM
    :LUMINANCE-FLOAT16-APPLE
    :LUMINANCE-FLOAT16-ATI
    :LUMINANCE-FLOAT32-APPLE
    :LUMINANCE-FLOAT32-ATI
    :LUMINANCE-ICC-SGIX
    :LUMINANCE-INTEGER-EXT
    :LUMINANCE-SNORM
    :MAD-ATI
    :MAGNITUDE-BIAS-NV
    :MAGNITUDE-SCALE-NV
    :MAJOR-VERSION
    :MALI-PROGRAM-BINARY-ARM
    :MALI-SHADER-BINARY-ARM
    :MANUAL-GENERATE-MIPMAP
    :MAP1-BINORMAL-EXT
    :MAP1-COLOR-4
    :MAP1-GRID-DOMAIN
    :MAP1-GRID-SEGMENTS
    :MAP1-INDEX
    :MAP1-NORMAL
    :MAP1-TANGENT-EXT
    :MAP1-TEXTURE-COORD-1
    :MAP1-TEXTURE-COORD-2
    :MAP1-TEXTURE-COORD-3
    :MAP1-TEXTURE-COORD-4
    :MAP1-VERTEX-3
    :MAP1-VERTEX-4
    :MAP1-VERTEX-ATTRIB0-4-NV
    :MAP1-VERTEX-ATTRIB10-4-NV
    :MAP1-VERTEX-ATTRIB11-4-NV
    :MAP1-VERTEX-ATTRIB12-4-NV
    :MAP1-VERTEX-ATTRIB13-4-NV
    :MAP1-VERTEX-ATTRIB14-4-NV
    :MAP1-VERTEX-ATTRIB1-4-NV
    :MAP1-VERTEX-ATTRIB15-4-NV
    :MAP1-VERTEX-ATTRIB2-4-NV
    :MAP1-VERTEX-ATTRIB3-4-NV
    :MAP1-VERTEX-ATTRIB4-4-NV
    :MAP1-VERTEX-ATTRIB5-4-NV
    :MAP1-VERTEX-ATTRIB6-4-NV
    :MAP1-VERTEX-ATTRIB7-4-NV
    :MAP1-VERTEX-ATTRIB8-4-NV
    :MAP1-VERTEX-ATTRIB9-4-NV
    :MAP2-BINORMAL-EXT
    :MAP2-COLOR-4
    :MAP2-GRID-DOMAIN
    :MAP2-GRID-SEGMENTS
    :MAP2-INDEX
    :MAP2-NORMAL
    :MAP2-TANGENT-EXT
    :MAP2-TEXTURE-COORD-1
    :MAP2-TEXTURE-COORD-2
    :MAP2-TEXTURE-COORD-3
    :MAP2-TEXTURE-COORD-4
    :MAP2-VERTEX-3
    :MAP2-VERTEX-4
    :MAP2-VERTEX-ATTRIB0-4-NV
    :MAP2-VERTEX-ATTRIB10-4-NV
    :MAP2-VERTEX-ATTRIB11-4-NV
    :MAP2-VERTEX-ATTRIB12-4-NV
    :MAP2-VERTEX-ATTRIB13-4-NV
    :MAP2-VERTEX-ATTRIB14-4-NV
    :MAP2-VERTEX-ATTRIB1-4-NV
    :MAP2-VERTEX-ATTRIB15-4-NV
    :MAP2-VERTEX-ATTRIB2-4-NV
    :MAP2-VERTEX-ATTRIB3-4-NV
    :MAP2-VERTEX-ATTRIB4-4-NV
    :MAP2-VERTEX-ATTRIB5-4-NV
    :MAP2-VERTEX-ATTRIB6-4-NV
    :MAP2-VERTEX-ATTRIB7-4-NV
    :MAP2-VERTEX-ATTRIB8-4-NV
    :MAP2-VERTEX-ATTRIB9-4-NV
    :MAP-ATTRIB-U-ORDER-NV
    :MAP-ATTRIB-V-ORDER-NV
    :MAP-COHERENT-BIT
    :MAP-COHERENT-BIT-EXT
    :MAP-COLOR
    :MAP-FLUSH-EXPLICIT-BIT
    :MAP-FLUSH-EXPLICIT-BIT-EXT
    :MAP-INVALIDATE-BUFFER-BIT
    :MAP-INVALIDATE-BUFFER-BIT-EXT
    :MAP-INVALIDATE-RANGE-BIT
    :MAP-INVALIDATE-RANGE-BIT-EXT
    :MAP-PERSISTENT-BIT
    :MAP-PERSISTENT-BIT-EXT
    :MAP-READ-BIT
    :MAP-READ-BIT-EXT
    :MAP-STENCIL
    :MAP-TESSELLATION-NV
    :MAP-UNSYNCHRONIZED-BIT
    :MAP-UNSYNCHRONIZED-BIT-EXT
    :MAP-WRITE-BIT
    :MAP-WRITE-BIT-EXT
    :MAT-AMBIENT-AND-DIFFUSE-BIT-PGI
    :MAT-AMBIENT-BIT-PGI
    :MAT-COLOR-INDEXES-BIT-PGI
    :MAT-DIFFUSE-BIT-PGI
    :MAT-EMISSION-BIT-PGI
    :MATERIAL-SIDE-HINT-PGI
    :MATRIX0-ARB
    :MATRIX0-NV
    :MATRIX10-ARB
    :MATRIX11-ARB
    :MATRIX12-ARB
    :MATRIX13-ARB
    :MATRIX14-ARB
    :MATRIX15-ARB
    :MATRIX16-ARB
    :MATRIX17-ARB
    :MATRIX18-ARB
    :MATRIX19-ARB
    :MATRIX1-ARB
    :MATRIX1-NV
    :MATRIX20-ARB
    :MATRIX21-ARB
    :MATRIX22-ARB
    :MATRIX23-ARB
    :MATRIX24-ARB
    :MATRIX25-ARB
    :MATRIX26-ARB
    :MATRIX27-ARB
    :MATRIX28-ARB
    :MATRIX29-ARB
    :MATRIX2-ARB
    :MATRIX2-NV
    :MATRIX30-ARB
    :MATRIX31-ARB
    :MATRIX3-ARB
    :MATRIX3-NV
    :MATRIX4-ARB
    :MATRIX4-NV
    :MATRIX5-ARB
    :MATRIX5-NV
    :MATRIX6-ARB
    :MATRIX6-NV
    :MATRIX7-ARB
    :MATRIX7-NV
    :MATRIX8-ARB
    :MATRIX9-ARB
    :MATRIX-EXT
    :MATRIX-INDEX-ARRAY-ARB
    :MATRIX-INDEX-ARRAY-BUFFER-BINDING-OES
    :MATRIX-INDEX-ARRAY-OES
    :MATRIX-INDEX-ARRAY-POINTER-ARB
    :MATRIX-INDEX-ARRAY-POINTER-OES
    :MATRIX-INDEX-ARRAY-SIZE-ARB
    :MATRIX-INDEX-ARRAY-SIZE-OES
    :MATRIX-INDEX-ARRAY-STRIDE-ARB
    :MATRIX-INDEX-ARRAY-STRIDE-OES
    :MATRIX-INDEX-ARRAY-TYPE-ARB
    :MATRIX-INDEX-ARRAY-TYPE-OES
    :MATRIX-MODE
    :MATRIX-PALETTE-ARB
    :MATRIX-PALETTE-OES
    :MATRIX-STRIDE
    :MAT-SHININESS-BIT-PGI
    :MAT-SPECULAR-BIT-PGI
    :MAX
    :MAX-3D-TEXTURE-SIZE
    :MAX-3D-TEXTURE-SIZE-EXT
    :MAX-3D-TEXTURE-SIZE-OES
    :MAX-4D-TEXTURE-SIZE-SGIS
    :MAX-ACTIVE-LIGHTS-SGIX
    :MAX-ARRAY-TEXTURE-LAYERS
    :MAX-ARRAY-TEXTURE-LAYERS-EXT
    :MAX-ASYNC-DRAW-PIXELS-SGIX
    :MAX-ASYNC-HISTOGRAM-SGIX
    :MAX-ASYNC-READ-PIXELS-SGIX
    :MAX-ASYNC-TEX-IMAGE-SGIX
    :MAX-ATOMIC-COUNTER-BUFFER-BINDINGS
    :MAX-ATOMIC-COUNTER-BUFFER-SIZE
    :MAX-ATTRIB-STACK-DEPTH
    :MAX-BINDABLE-UNIFORM-SIZE-EXT
    :MAX-CLIENT-ATTRIB-STACK-DEPTH
    :MAX-CLIP-DISTANCES
    :MAX-CLIP-DISTANCES-APPLE
    :MAX-CLIPMAP-DEPTH-SGIX
    :MAX-CLIPMAP-VIRTUAL-DEPTH-SGIX
    :MAX-CLIP-PLANES
    :MAX-CLIP-PLANES-IMG
    :MAX-COLOR-ATTACHMENTS
    :MAX-COLOR-ATTACHMENTS-EXT
    :MAX-COLOR-ATTACHMENTS-NV
    :MAX-COLOR-MATRIX-STACK-DEPTH
    :MAX-COLOR-MATRIX-STACK-DEPTH-SGI
    :MAX-COLOR-TEXTURE-SAMPLES
    :MAX-COMBINED-ATOMIC-COUNTER-BUFFERS
    :MAX-COMBINED-ATOMIC-COUNTERS
    :MAX-COMBINED-CLIP-AND-CULL-DISTANCES
    :MAX-COMBINED-COMPUTE-UNIFORM-COMPONENTS
    :MAX-COMBINED-DIMENSIONS
    :MAX-COMBINED-FRAGMENT-UNIFORM-COMPONENTS
    :MAX-COMBINED-GEOMETRY-UNIFORM-COMPONENTS
    :MAX-COMBINED-GEOMETRY-UNIFORM-COMPONENTS-EXT
    :MAX-COMBINED-GEOMETRY-UNIFORM-COMPONENTS-OES
    :MAX-COMBINED-IMAGE-UNIFORMS
    :MAX-COMBINED-IMAGE-UNITS-AND-FRAGMENT-OUTPUTS
    :MAX-COMBINED-IMAGE-UNITS-AND-FRAGMENT-OUTPUTS-EXT
    :MAX-COMBINED-SHADER-OUTPUT-RESOURCES
    :MAX-COMBINED-SHADER-STORAGE-BLOCKS
    :MAX-COMBINED-TESS-CONTROL-UNIFORM-COMPONENTS
    :MAX-COMBINED-TESS-CONTROL-UNIFORM-COMPONENTS-EXT
    :MAX-COMBINED-TESS-CONTROL-UNIFORM-COMPONENTS-OES
    :MAX-COMBINED-TESS-EVALUATION-UNIFORM-COMPONENTS
    :MAX-COMBINED-TESS-EVALUATION-UNIFORM-COMPONENTS-EXT
    :MAX-COMBINED-TESS-EVALUATION-UNIFORM-COMPONENTS-OES
    :MAX-COMBINED-TEXTURE-IMAGE-UNITS
    :MAX-COMBINED-TEXTURE-IMAGE-UNITS-ARB
    :MAX-COMBINED-UNIFORM-BLOCKS
    :MAX-COMBINED-VERTEX-UNIFORM-COMPONENTS
    :MAX-COMPUTE-ATOMIC-COUNTER-BUFFERS
    :MAX-COMPUTE-ATOMIC-COUNTERS
    :MAX-COMPUTE-FIXED-GROUP-INVOCATIONS-ARB
    :MAX-COMPUTE-FIXED-GROUP-SIZE-ARB
    :MAX-COMPUTE-IMAGE-UNIFORMS
    :MAX-COMPUTE-SHADER-STORAGE-BLOCKS
    :MAX-COMPUTE-SHARED-MEMORY-SIZE
    :MAX-COMPUTE-TEXTURE-IMAGE-UNITS
    :MAX-COMPUTE-UNIFORM-BLOCKS
    :MAX-COMPUTE-UNIFORM-COMPONENTS
    :MAX-COMPUTE-VARIABLE-GROUP-INVOCATIONS-ARB
    :MAX-COMPUTE-VARIABLE-GROUP-SIZE-ARB
    :MAX-COMPUTE-WORK-GROUP-COUNT
    :MAX-COMPUTE-WORK-GROUP-INVOCATIONS
    :MAX-COMPUTE-WORK-GROUP-SIZE
    :MAX-CONVOLUTION-HEIGHT
    :MAX-CONVOLUTION-HEIGHT-EXT
    :MAX-CONVOLUTION-WIDTH
    :MAX-CONVOLUTION-WIDTH-EXT
    :MAX-CUBE-MAP-TEXTURE-SIZE
    :MAX-CUBE-MAP-TEXTURE-SIZE-ARB
    :MAX-CUBE-MAP-TEXTURE-SIZE-EXT
    :MAX-CUBE-MAP-TEXTURE-SIZE-OES
    :MAX-CULL-DISTANCES
    :MAX-DEBUG-GROUP-STACK-DEPTH
    :MAX-DEBUG-GROUP-STACK-DEPTH-KHR
    :MAX-DEBUG-LOGGED-MESSAGES
    :MAX-DEBUG-LOGGED-MESSAGES-AMD
    :MAX-DEBUG-LOGGED-MESSAGES-ARB
    :MAX-DEBUG-LOGGED-MESSAGES-KHR
    :MAX-DEBUG-MESSAGE-LENGTH
    :MAX-DEBUG-MESSAGE-LENGTH-AMD
    :MAX-DEBUG-MESSAGE-LENGTH-ARB
    :MAX-DEBUG-MESSAGE-LENGTH-KHR
    :MAX-DEEP-3D-TEXTURE-DEPTH-NV
    :MAX-DEEP-3D-TEXTURE-WIDTH-HEIGHT-NV
    :MAX-DEFORMATION-ORDER-SGIX
    :MAX-DEPTH
    :MAX-DEPTH-TEXTURE-SAMPLES
    :MAX-DRAW-BUFFERS
    :MAX-DRAW-BUFFERS-ARB
    :MAX-DRAW-BUFFERS-ATI
    :MAX-DRAW-BUFFERS-EXT
    :MAX-DRAW-BUFFERS-NV
    :MAX-DUAL-SOURCE-DRAW-BUFFERS
    :MAX-DUAL-SOURCE-DRAW-BUFFERS-EXT
    :MAX-ELEMENT-INDEX
    :MAX-ELEMENTS-INDICES
    :MAX-ELEMENTS-INDICES-EXT
    :MAX-ELEMENTS-VERTICES
    :MAX-ELEMENTS-VERTICES-EXT
    :MAX-EVAL-ORDER
    :MAX-EXT
    :MAX-FOG-FUNC-POINTS-SGIS
    :MAX-FRAGMENT-ATOMIC-COUNTER-BUFFERS
    :MAX-FRAGMENT-ATOMIC-COUNTERS
    :MAX-FRAGMENT-BINDABLE-UNIFORMS-EXT
    :MAX-FRAGMENT-IMAGE-UNIFORMS
    :MAX-FRAGMENT-INPUT-COMPONENTS
    :MAX-FRAGMENT-INTERPOLATION-OFFSET
    :MAX-FRAGMENT-INTERPOLATION-OFFSET-NV
    :MAX-FRAGMENT-INTERPOLATION-OFFSET-OES
    :MAX-FRAGMENT-LIGHTS-SGIX
    :MAX-FRAGMENT-PROGRAM-LOCAL-PARAMETERS-NV
    :MAX-FRAGMENT-SHADER-STORAGE-BLOCKS
    :MAX-FRAGMENT-UNIFORM-BLOCKS
    :MAX-FRAGMENT-UNIFORM-COMPONENTS
    :MAX-FRAGMENT-UNIFORM-COMPONENTS-ARB
    :MAX-FRAGMENT-UNIFORM-VECTORS
    :MAX-FRAMEBUFFER-HEIGHT
    :MAX-FRAMEBUFFER-LAYERS
    :MAX-FRAMEBUFFER-LAYERS-EXT
    :MAX-FRAMEBUFFER-LAYERS-OES
    :MAX-FRAMEBUFFER-SAMPLES
    :MAX-FRAMEBUFFER-WIDTH
    :MAX-FRAMEZOOM-FACTOR-SGIX
    :MAX-GENERAL-COMBINERS-NV
    :MAX-GEOMETRY-ATOMIC-COUNTER-BUFFERS
    :MAX-GEOMETRY-ATOMIC-COUNTER-BUFFERS-EXT
    :MAX-GEOMETRY-ATOMIC-COUNTER-BUFFERS-OES
    :MAX-GEOMETRY-ATOMIC-COUNTERS
    :MAX-GEOMETRY-ATOMIC-COUNTERS-EXT
    :MAX-GEOMETRY-ATOMIC-COUNTERS-OES
    :MAX-GEOMETRY-BINDABLE-UNIFORMS-EXT
    :MAX-GEOMETRY-IMAGE-UNIFORMS
    :MAX-GEOMETRY-IMAGE-UNIFORMS-EXT
    :MAX-GEOMETRY-IMAGE-UNIFORMS-OES
    :MAX-GEOMETRY-INPUT-COMPONENTS
    :MAX-GEOMETRY-INPUT-COMPONENTS-EXT
    :MAX-GEOMETRY-INPUT-COMPONENTS-OES
    :MAX-GEOMETRY-OUTPUT-COMPONENTS
    :MAX-GEOMETRY-OUTPUT-COMPONENTS-EXT
    :MAX-GEOMETRY-OUTPUT-COMPONENTS-OES
    :MAX-GEOMETRY-OUTPUT-VERTICES
    :MAX-GEOMETRY-OUTPUT-VERTICES-ARB
    :MAX-GEOMETRY-OUTPUT-VERTICES-EXT
    :MAX-GEOMETRY-OUTPUT-VERTICES-OES
    :MAX-GEOMETRY-PROGRAM-INVOCATIONS-NV
    :MAX-GEOMETRY-SHADER-INVOCATIONS
    :MAX-GEOMETRY-SHADER-INVOCATIONS-EXT
    :MAX-GEOMETRY-SHADER-INVOCATIONS-OES
    :MAX-GEOMETRY-SHADER-STORAGE-BLOCKS
    :MAX-GEOMETRY-SHADER-STORAGE-BLOCKS-EXT
    :MAX-GEOMETRY-SHADER-STORAGE-BLOCKS-OES
    :MAX-GEOMETRY-TEXTURE-IMAGE-UNITS
    :MAX-GEOMETRY-TEXTURE-IMAGE-UNITS-ARB
    :MAX-GEOMETRY-TEXTURE-IMAGE-UNITS-EXT
    :MAX-GEOMETRY-TEXTURE-IMAGE-UNITS-OES
    :MAX-GEOMETRY-TOTAL-OUTPUT-COMPONENTS
    :MAX-GEOMETRY-TOTAL-OUTPUT-COMPONENTS-ARB
    :MAX-GEOMETRY-TOTAL-OUTPUT-COMPONENTS-EXT
    :MAX-GEOMETRY-TOTAL-OUTPUT-COMPONENTS-OES
    :MAX-GEOMETRY-UNIFORM-BLOCKS
    :MAX-GEOMETRY-UNIFORM-BLOCKS-EXT
    :MAX-GEOMETRY-UNIFORM-BLOCKS-OES
    :MAX-GEOMETRY-UNIFORM-COMPONENTS
    :MAX-GEOMETRY-UNIFORM-COMPONENTS-ARB
    :MAX-GEOMETRY-UNIFORM-COMPONENTS-EXT
    :MAX-GEOMETRY-UNIFORM-COMPONENTS-OES
    :MAX-GEOMETRY-VARYING-COMPONENTS-ARB
    :MAX-GEOMETRY-VARYING-COMPONENTS-EXT
    :MAX-HEIGHT
    :MAX-IMAGE-SAMPLES
    :MAX-IMAGE-SAMPLES-EXT
    :MAX-IMAGE-UNITS
    :MAX-IMAGE-UNITS-EXT
    :MAX-INTEGER-SAMPLES
    :MAX-LABEL-LENGTH
    :MAX-LABEL-LENGTH-KHR
    :MAX-LAYERS
    :MAX-LIGHTS
    :MAX-LIST-NESTING
    :MAX-MAP-TESSELLATION-NV
    :MAX-MATRIX-PALETTE-STACK-DEPTH-ARB
    :MAX-MODELVIEW-STACK-DEPTH
    :MAX-MULTISAMPLE-COVERAGE-MODES-NV
    :MAX-MULTIVIEW-BUFFERS-EXT
    :MAX-NAME-LENGTH
    :MAX-NAME-STACK-DEPTH
    :MAX-NUM-ACTIVE-VARIABLES
    :MAX-NUM-COMPATIBLE-SUBROUTINES
    :MAX-OPTIMIZED-VERTEX-SHADER-INSTRUCTIONS-EXT
    :MAX-OPTIMIZED-VERTEX-SHADER-INVARIANTS-EXT
    :MAX-OPTIMIZED-VERTEX-SHADER-LOCAL-CONSTANTS-EXT
    :MAX-OPTIMIZED-VERTEX-SHADER-LOCALS-EXT
    :MAX-OPTIMIZED-VERTEX-SHADER-VARIANTS-EXT
    :MAX-PALETTE-MATRICES-ARB
    :MAX-PALETTE-MATRICES-OES
    :MAX-PATCH-VERTICES
    :MAX-PATCH-VERTICES-EXT
    :MAX-PATCH-VERTICES-OES
    :MAX-PIXEL-MAP-TABLE
    :MAX-PIXEL-TRANSFORM-2D-STACK-DEPTH-EXT
    :MAX-PN-TRIANGLES-TESSELATION-LEVEL-ATI
    :MAX-PROGRAM-ADDRESS-REGISTERS-ARB
    :MAX-PROGRAM-ALU-INSTRUCTIONS-ARB
    :MAX-PROGRAM-ATTRIB-COMPONENTS-NV
    :MAX-PROGRAM-ATTRIBS-ARB
    :MAX-PROGRAM-CALL-DEPTH-NV
    :MAX-PROGRAM-ENV-PARAMETERS-ARB
    :MAX-PROGRAM-EXEC-INSTRUCTIONS-NV
    :MAX-PROGRAM-GENERIC-ATTRIBS-NV
    :MAX-PROGRAM-GENERIC-RESULTS-NV
    :MAX-PROGRAM-IF-DEPTH-NV
    :MAX-PROGRAM-INSTRUCTIONS-ARB
    :MAX-PROGRAM-LOCAL-PARAMETERS-ARB
    :MAX-PROGRAM-LOOP-COUNT-NV
    :MAX-PROGRAM-LOOP-DEPTH-NV
    :MAX-PROGRAM-MATRICES-ARB
    :MAX-PROGRAM-MATRIX-STACK-DEPTH-ARB
    :MAX-PROGRAM-NATIVE-ADDRESS-REGISTERS-ARB
    :MAX-PROGRAM-NATIVE-ALU-INSTRUCTIONS-ARB
    :MAX-PROGRAM-NATIVE-ATTRIBS-ARB
    :MAX-PROGRAM-NATIVE-INSTRUCTIONS-ARB
    :MAX-PROGRAM-NATIVE-PARAMETERS-ARB
    :MAX-PROGRAM-NATIVE-TEMPORARIES-ARB
    :MAX-PROGRAM-NATIVE-TEX-INDIRECTIONS-ARB
    :MAX-PROGRAM-NATIVE-TEX-INSTRUCTIONS-ARB
    :MAX-PROGRAM-OUTPUT-VERTICES-NV
    :MAX-PROGRAM-PARAMETER-BUFFER-BINDINGS-NV
    :MAX-PROGRAM-PARAMETER-BUFFER-SIZE-NV
    :MAX-PROGRAM-PARAMETERS-ARB
    :MAX-PROGRAM-PATCH-ATTRIBS-NV
    :MAX-PROGRAM-RESULT-COMPONENTS-NV
    :MAX-PROGRAM-SUBROUTINE-NUM-NV
    :MAX-PROGRAM-SUBROUTINE-PARAMETERS-NV
    :MAX-PROGRAM-TEMPORARIES-ARB
    :MAX-PROGRAM-TEXEL-OFFSET
    :MAX-PROGRAM-TEXEL-OFFSET-EXT
    :MAX-PROGRAM-TEXEL-OFFSET-NV
    :MAX-PROGRAM-TEX-INDIRECTIONS-ARB
    :MAX-PROGRAM-TEX-INSTRUCTIONS-ARB
    :MAX-PROGRAM-TEXTURE-GATHER-COMPONENTS-ARB
    :MAX-PROGRAM-TEXTURE-GATHER-OFFSET
    :MAX-PROGRAM-TEXTURE-GATHER-OFFSET-ARB
    :MAX-PROGRAM-TEXTURE-GATHER-OFFSET-NV
    :MAX-PROGRAM-TOTAL-OUTPUT-COMPONENTS-NV
    :MAX-PROJECTION-STACK-DEPTH
    :MAX-RASTER-SAMPLES-EXT
    :MAX-RATIONAL-EVAL-ORDER-NV
    :MAX-RECTANGLE-TEXTURE-SIZE
    :MAX-RECTANGLE-TEXTURE-SIZE-ARB
    :MAX-RECTANGLE-TEXTURE-SIZE-NV
    :MAX-RENDERBUFFER-SIZE
    :MAX-RENDERBUFFER-SIZE-EXT
    :MAX-RENDERBUFFER-SIZE-OES
    :MAX-SAMPLE-MASK-WORDS
    :MAX-SAMPLE-MASK-WORDS-NV
    :MAX-SAMPLES
    :MAX-SAMPLES-ANGLE
    :MAX-SAMPLES-APPLE
    :MAX-SAMPLES-EXT
    :MAX-SAMPLES-IMG
    :MAX-SAMPLES-NV
    :MAX-SERVER-WAIT-TIMEOUT
    :MAX-SERVER-WAIT-TIMEOUT-APPLE
    :MAX-SHADER-BUFFER-ADDRESS-NV
    :MAX-SHADER-COMPILER-THREADS-ARB
    :MAX-SHADER-PIXEL-LOCAL-STORAGE-FAST-SIZE-EXT
    :MAX-SHADER-PIXEL-LOCAL-STORAGE-SIZE-EXT
    :MAX-SHADER-STORAGE-BLOCK-SIZE
    :MAX-SHADER-STORAGE-BUFFER-BINDINGS
    :MAX-SHININESS-NV
    :MAX-SPARSE-3D-TEXTURE-SIZE-AMD
    :MAX-SPARSE-3D-TEXTURE-SIZE-ARB
    :MAX-SPARSE-3D-TEXTURE-SIZE-EXT
    :MAX-SPARSE-ARRAY-TEXTURE-LAYERS
    :MAX-SPARSE-ARRAY-TEXTURE-LAYERS-ARB
    :MAX-SPARSE-ARRAY-TEXTURE-LAYERS-EXT
    :MAX-SPARSE-TEXTURE-SIZE-AMD
    :MAX-SPARSE-TEXTURE-SIZE-ARB
    :MAX-SPARSE-TEXTURE-SIZE-EXT
    :MAX-SPOT-EXPONENT-NV
    :MAX-SUBPIXEL-PRECISION-BIAS-BITS-NV
    :MAX-SUBROUTINES
    :MAX-SUBROUTINE-UNIFORM-LOCATIONS
    :MAX-TESS-CONTROL-ATOMIC-COUNTER-BUFFERS
    :MAX-TESS-CONTROL-ATOMIC-COUNTER-BUFFERS-EXT
    :MAX-TESS-CONTROL-ATOMIC-COUNTER-BUFFERS-OES
    :MAX-TESS-CONTROL-ATOMIC-COUNTERS
    :MAX-TESS-CONTROL-ATOMIC-COUNTERS-EXT
    :MAX-TESS-CONTROL-ATOMIC-COUNTERS-OES
    :MAX-TESS-CONTROL-IMAGE-UNIFORMS
    :MAX-TESS-CONTROL-IMAGE-UNIFORMS-EXT
    :MAX-TESS-CONTROL-IMAGE-UNIFORMS-OES
    :MAX-TESS-CONTROL-INPUT-COMPONENTS
    :MAX-TESS-CONTROL-INPUT-COMPONENTS-EXT
    :MAX-TESS-CONTROL-INPUT-COMPONENTS-OES
    :MAX-TESS-CONTROL-OUTPUT-COMPONENTS
    :MAX-TESS-CONTROL-OUTPUT-COMPONENTS-EXT
    :MAX-TESS-CONTROL-OUTPUT-COMPONENTS-OES
    :MAX-TESS-CONTROL-SHADER-STORAGE-BLOCKS
    :MAX-TESS-CONTROL-SHADER-STORAGE-BLOCKS-EXT
    :MAX-TESS-CONTROL-SHADER-STORAGE-BLOCKS-OES
    :MAX-TESS-CONTROL-TEXTURE-IMAGE-UNITS
    :MAX-TESS-CONTROL-TEXTURE-IMAGE-UNITS-EXT
    :MAX-TESS-CONTROL-TEXTURE-IMAGE-UNITS-OES
    :MAX-TESS-CONTROL-TOTAL-OUTPUT-COMPONENTS
    :MAX-TESS-CONTROL-TOTAL-OUTPUT-COMPONENTS-EXT
    :MAX-TESS-CONTROL-TOTAL-OUTPUT-COMPONENTS-OES
    :MAX-TESS-CONTROL-UNIFORM-BLOCKS
    :MAX-TESS-CONTROL-UNIFORM-BLOCKS-EXT
    :MAX-TESS-CONTROL-UNIFORM-BLOCKS-OES
    :MAX-TESS-CONTROL-UNIFORM-COMPONENTS
    :MAX-TESS-CONTROL-UNIFORM-COMPONENTS-EXT
    :MAX-TESS-CONTROL-UNIFORM-COMPONENTS-OES
    :MAX-TESS-EVALUATION-ATOMIC-COUNTER-BUFFERS
    :MAX-TESS-EVALUATION-ATOMIC-COUNTER-BUFFERS-EXT
    :MAX-TESS-EVALUATION-ATOMIC-COUNTER-BUFFERS-OES
    :MAX-TESS-EVALUATION-ATOMIC-COUNTERS
    :MAX-TESS-EVALUATION-ATOMIC-COUNTERS-EXT
    :MAX-TESS-EVALUATION-ATOMIC-COUNTERS-OES
    :MAX-TESS-EVALUATION-IMAGE-UNIFORMS
    :MAX-TESS-EVALUATION-IMAGE-UNIFORMS-EXT
    :MAX-TESS-EVALUATION-IMAGE-UNIFORMS-OES
    :MAX-TESS-EVALUATION-INPUT-COMPONENTS
    :MAX-TESS-EVALUATION-INPUT-COMPONENTS-EXT
    :MAX-TESS-EVALUATION-INPUT-COMPONENTS-OES
    :MAX-TESS-EVALUATION-OUTPUT-COMPONENTS
    :MAX-TESS-EVALUATION-OUTPUT-COMPONENTS-EXT
    :MAX-TESS-EVALUATION-OUTPUT-COMPONENTS-OES
    :MAX-TESS-EVALUATION-SHADER-STORAGE-BLOCKS
    :MAX-TESS-EVALUATION-SHADER-STORAGE-BLOCKS-EXT
    :MAX-TESS-EVALUATION-SHADER-STORAGE-BLOCKS-OES
    :MAX-TESS-EVALUATION-TEXTURE-IMAGE-UNITS
    :MAX-TESS-EVALUATION-TEXTURE-IMAGE-UNITS-EXT
    :MAX-TESS-EVALUATION-TEXTURE-IMAGE-UNITS-OES
    :MAX-TESS-EVALUATION-UNIFORM-BLOCKS
    :MAX-TESS-EVALUATION-UNIFORM-BLOCKS-EXT
    :MAX-TESS-EVALUATION-UNIFORM-BLOCKS-OES
    :MAX-TESS-EVALUATION-UNIFORM-COMPONENTS
    :MAX-TESS-EVALUATION-UNIFORM-COMPONENTS-EXT
    :MAX-TESS-EVALUATION-UNIFORM-COMPONENTS-OES
    :MAX-TESS-GEN-LEVEL
    :MAX-TESS-GEN-LEVEL-EXT
    :MAX-TESS-GEN-LEVEL-OES
    :MAX-TESS-PATCH-COMPONENTS
    :MAX-TESS-PATCH-COMPONENTS-EXT
    :MAX-TESS-PATCH-COMPONENTS-OES
    :MAX-TEXTURE-BUFFER-SIZE
    :MAX-TEXTURE-BUFFER-SIZE-ARB
    :MAX-TEXTURE-BUFFER-SIZE-EXT
    :MAX-TEXTURE-BUFFER-SIZE-OES
    :MAX-TEXTURE-COORDS
    :MAX-TEXTURE-COORDS-ARB
    :MAX-TEXTURE-COORDS-NV
    :MAX-TEXTURE-IMAGE-UNITS
    :MAX-TEXTURE-IMAGE-UNITS-ARB
    :MAX-TEXTURE-IMAGE-UNITS-NV
    :MAX-TEXTURE-LOD-BIAS
    :MAX-TEXTURE-LOD-BIAS-EXT
    :MAX-TEXTURE-MAX-ANISOTROPY-EXT
    :MAX-TEXTURE-SIZE
    :MAX-TEXTURE-STACK-DEPTH
    :MAX-TEXTURE-UNITS
    :MAX-TEXTURE-UNITS-ARB
    :MAX-TRACK-MATRICES-NV
    :MAX-TRACK-MATRIX-STACK-DEPTH-NV
    :MAX-TRANSFORM-FEEDBACK-BUFFERS
    :MAX-TRANSFORM-FEEDBACK-INTERLEAVED-COMPONENTS
    :MAX-TRANSFORM-FEEDBACK-INTERLEAVED-COMPONENTS-EXT
    :MAX-TRANSFORM-FEEDBACK-INTERLEAVED-COMPONENTS-NV
    :MAX-TRANSFORM-FEEDBACK-SEPARATE-ATTRIBS
    :MAX-TRANSFORM-FEEDBACK-SEPARATE-ATTRIBS-EXT
    :MAX-TRANSFORM-FEEDBACK-SEPARATE-ATTRIBS-NV
    :MAX-TRANSFORM-FEEDBACK-SEPARATE-COMPONENTS
    :MAX-TRANSFORM-FEEDBACK-SEPARATE-COMPONENTS-EXT
    :MAX-TRANSFORM-FEEDBACK-SEPARATE-COMPONENTS-NV
    :MAX-UNIFORM-BLOCK-SIZE
    :MAX-UNIFORM-BUFFER-BINDINGS
    :MAX-UNIFORM-LOCATIONS
    :MAX-VARYING-COMPONENTS
    :MAX-VARYING-COMPONENTS-EXT
    :MAX-VARYING-FLOATS
    :MAX-VARYING-FLOATS-ARB
    :MAX-VARYING-VECTORS
    :MAX-VERTEX-ARRAY-RANGE-ELEMENT-NV
    :MAX-VERTEX-ATOMIC-COUNTER-BUFFERS
    :MAX-VERTEX-ATOMIC-COUNTERS
    :MAX-VERTEX-ATTRIB-BINDINGS
    :MAX-VERTEX-ATTRIB-RELATIVE-OFFSET
    :MAX-VERTEX-ATTRIBS
    :MAX-VERTEX-ATTRIBS-ARB
    :MAX-VERTEX-ATTRIB-STRIDE
    :MAX-VERTEX-BINDABLE-UNIFORMS-EXT
    :MAX-VERTEX-HINT-PGI
    :MAX-VERTEX-IMAGE-UNIFORMS
    :MAX-VERTEX-OUTPUT-COMPONENTS
    :MAX-VERTEX-SHADER-INSTRUCTIONS-EXT
    :MAX-VERTEX-SHADER-INVARIANTS-EXT
    :MAX-VERTEX-SHADER-LOCAL-CONSTANTS-EXT
    :MAX-VERTEX-SHADER-LOCALS-EXT
    :MAX-VERTEX-SHADER-STORAGE-BLOCKS
    :MAX-VERTEX-SHADER-VARIANTS-EXT
    :MAX-VERTEX-STREAMS
    :MAX-VERTEX-STREAMS-ATI
    :MAX-VERTEX-TEXTURE-IMAGE-UNITS
    :MAX-VERTEX-TEXTURE-IMAGE-UNITS-ARB
    :MAX-VERTEX-UNIFORM-BLOCKS
    :MAX-VERTEX-UNIFORM-COMPONENTS
    :MAX-VERTEX-UNIFORM-COMPONENTS-ARB
    :MAX-VERTEX-UNIFORM-VECTORS
    :MAX-VERTEX-UNITS-ARB
    :MAX-VERTEX-UNITS-OES
    :MAX-VERTEX-VARYING-COMPONENTS-ARB
    :MAX-VERTEX-VARYING-COMPONENTS-EXT
    :MAX-VIEWPORT-DIMS
    :MAX-VIEWPORTS
    :MAX-VIEWPORTS-NV
    :MAX-VIEWS-OVR
    :MAX-WIDTH
    :MEDIUM-FLOAT
    :MEDIUM-INT
    :MIN
    :MIN-EXT
    :MIN-FRAGMENT-INTERPOLATION-OFFSET
    :MIN-FRAGMENT-INTERPOLATION-OFFSET-NV
    :MIN-FRAGMENT-INTERPOLATION-OFFSET-OES
    :MIN-LOD-WARNING-AMD
    :MIN-MAP-BUFFER-ALIGNMENT
    :MINMAX
    :MINMAX-EXT
    :MINMAX-FORMAT
    :MINMAX-FORMAT-EXT
    :MINMAX-SINK
    :MINMAX-SINK-EXT
    :MINOR-VERSION
    :MIN-PROGRAM-TEXEL-OFFSET
    :MIN-PROGRAM-TEXEL-OFFSET-EXT
    :MIN-PROGRAM-TEXEL-OFFSET-NV
    :MIN-PROGRAM-TEXTURE-GATHER-OFFSET
    :MIN-PROGRAM-TEXTURE-GATHER-OFFSET-ARB
    :MIN-PROGRAM-TEXTURE-GATHER-OFFSET-NV
    :MIN-SAMPLE-SHADING-VALUE
    :MIN-SAMPLE-SHADING-VALUE-ARB
    :MIN-SAMPLE-SHADING-VALUE-OES
    :MIN-SPARSE-LEVEL-AMD
    :MINUS-CLAMPED-NV
    :MINUS-NV
    :MIPMAP
    :MIRROR-CLAMP-ATI
    :MIRROR-CLAMP-EXT
    :MIRROR-CLAMP-TO-BORDER-EXT
    :MIRROR-CLAMP-TO-EDGE
    :MIRROR-CLAMP-TO-EDGE-ATI
    :MIRROR-CLAMP-TO-EDGE-EXT
    :MIRRORED-REPEAT
    :MIRRORED-REPEAT-ARB
    :MIRRORED-REPEAT-IBM
    :MIRRORED-REPEAT-OES
    :MITER-REVERT-NV
    :MITER-TRUNCATE-NV
    :MIXED-DEPTH-SAMPLES-SUPPORTED-NV
    :MIXED-STENCIL-SAMPLES-SUPPORTED-NV
    :MODELVIEW
    :MODELVIEW0-ARB
    :MODELVIEW0-EXT
    :MODELVIEW0-MATRIX-EXT
    :MODELVIEW0-STACK-DEPTH-EXT
    :MODELVIEW10-ARB
    :MODELVIEW11-ARB
    :MODELVIEW12-ARB
    :MODELVIEW13-ARB
    :MODELVIEW14-ARB
    :MODELVIEW15-ARB
    :MODELVIEW16-ARB
    :MODELVIEW17-ARB
    :MODELVIEW18-ARB
    :MODELVIEW19-ARB
    :MODELVIEW1-ARB
    :MODELVIEW1-EXT
    :MODELVIEW1-MATRIX-EXT
    :MODELVIEW1-STACK-DEPTH-EXT
    :MODELVIEW20-ARB
    :MODELVIEW21-ARB
    :MODELVIEW22-ARB
    :MODELVIEW23-ARB
    :MODELVIEW24-ARB
    :MODELVIEW25-ARB
    :MODELVIEW26-ARB
    :MODELVIEW27-ARB
    :MODELVIEW28-ARB
    :MODELVIEW29-ARB
    :MODELVIEW2-ARB
    :MODELVIEW30-ARB
    :MODELVIEW31-ARB
    :MODELVIEW3-ARB
    :MODELVIEW4-ARB
    :MODELVIEW5-ARB
    :MODELVIEW6-ARB
    :MODELVIEW7-ARB
    :MODELVIEW8-ARB
    :MODELVIEW9-ARB
    :MODELVIEW-MATRIX
    :MODELVIEW-MATRIX-FLOAT-AS-INT-BITS-OES
    :MODELVIEW-PROJECTION-NV
    :MODELVIEW-STACK-DEPTH
    :MODULATE
    :MODULATE-ADD-ATI
    :MODULATE-COLOR-IMG
    :MODULATE-SIGNED-ADD-ATI
    :MODULATE-SUBTRACT-ATI
    :MOV-ATI
    :MOVE-TO-CONTINUES-NV
    :MOVE-TO-NV
    :MOVE-TO-RESETS-NV
    :MUL-ATI
    :MULT
    :MULTIPLY
    :MULTIPLY-KHR
    :MULTIPLY-NV
    :MULTISAMPLE
    :MULTISAMPLE-3DFX
    :MULTISAMPLE-ARB
    :MULTISAMPLE-BIT
    :MULTISAMPLE-BIT-3DFX
    :MULTISAMPLE-BIT-ARB
    :MULTISAMPLE-BIT-EXT
    :MULTISAMPLE-BUFFER-BIT0-QCOM
    :MULTISAMPLE-BUFFER-BIT1-QCOM
    :MULTISAMPLE-BUFFER-BIT2-QCOM
    :MULTISAMPLE-BUFFER-BIT3-QCOM
    :MULTISAMPLE-BUFFER-BIT4-QCOM
    :MULTISAMPLE-BUFFER-BIT5-QCOM
    :MULTISAMPLE-BUFFER-BIT6-QCOM
    :MULTISAMPLE-BUFFER-BIT7-QCOM
    :MULTISAMPLE-COVERAGE-MODES-NV
    :MULTISAMPLE-EXT
    :MULTISAMPLE-FILTER-HINT-NV
    :MULTISAMPLE-LINE-WIDTH-GRANULARITY
    :MULTISAMPLE-LINE-WIDTH-GRANULARITY-ARB
    :MULTISAMPLE-LINE-WIDTH-RANGE
    :MULTISAMPLE-LINE-WIDTH-RANGE-ARB
    :MULTISAMPLE-RASTERIZATION-ALLOWED-EXT
    :MULTISAMPLE-SGIS
    :MULTISAMPLES-NV
    :MULTIVIEW-EXT
    :MVP-MATRIX-EXT
    :N3F-V3F
    :NAMED-STRING-LENGTH-ARB
    :NAMED-STRING-TYPE-ARB
    :NAME-LENGTH
    :NAME-STACK-DEPTH
    :NAND
    :NATIVE-GRAPHICS-BEGIN-HINT-PGI
    :NATIVE-GRAPHICS-END-HINT-PGI
    :NATIVE-GRAPHICS-HANDLE-PGI
    :NEAREST
    :NEAREST-CLIPMAP-LINEAR-SGIX
    :NEAREST-CLIPMAP-NEAREST-SGIX
    :NEAREST-MIPMAP-LINEAR
    :NEAREST-MIPMAP-NEAREST
    :NEGATE-BIT-ATI
    :NEGATIVE-ONE-EXT
    :NEGATIVE-ONE-TO-ONE
    :NEGATIVE-W-EXT
    :NEGATIVE-X-EXT
    :NEGATIVE-Y-EXT
    :NEGATIVE-Z-EXT
    :NEVER
    :NEXT-BUFFER-NV
    :NEXT-VIDEO-CAPTURE-BUFFER-STATUS-NV
    :NICEST
    :NO-ERROR
    :NONE
    :NONE-OES
    :NOOP
    :NOP-COMMAND-NV
    :NOR
    :NO-RESET-NOTIFICATION
    :NO-RESET-NOTIFICATION-ARB
    :NO-RESET-NOTIFICATION-EXT
    :NO-RESET-NOTIFICATION-KHR
    :NORMAL-ARRAY
    :NORMAL-ARRAY-ADDRESS-NV
    :NORMAL-ARRAY-BUFFER-BINDING
    :NORMAL-ARRAY-BUFFER-BINDING-ARB
    :NORMAL-ARRAY-COUNT-EXT
    :NORMAL-ARRAY-EXT
    :NORMAL-ARRAY-LENGTH-NV
    :NORMAL-ARRAY-LIST-IBM
    :NORMAL-ARRAY-LIST-STRIDE-IBM
    :NORMAL-ARRAY-PARALLEL-POINTERS-INTEL
    :NORMAL-ARRAY-POINTER
    :NORMAL-ARRAY-POINTER-EXT
    :NORMAL-ARRAY-STRIDE
    :NORMAL-ARRAY-STRIDE-EXT
    :NORMAL-ARRAY-TYPE
    :NORMAL-ARRAY-TYPE-EXT
    :NORMAL-BIT-PGI
    :NORMALIZE
    :NORMALIZED-RANGE-EXT
    :NORMAL-MAP
    :NORMAL-MAP-ARB
    :NORMAL-MAP-EXT
    :NORMAL-MAP-NV
    :NORMAL-MAP-OES
    :NOTEQUAL
    :NUM-ACTIVE-VARIABLES
    :NUM-COMPATIBLE-SUBROUTINES
    :NUM-COMPRESSED-TEXTURE-FORMATS
    :NUM-COMPRESSED-TEXTURE-FORMATS-ARB
    :NUM-EXTENSIONS
    :NUM-FILL-STREAMS-NV
    :NUM-FRAGMENT-CONSTANTS-ATI
    :NUM-FRAGMENT-REGISTERS-ATI
    :NUM-GENERAL-COMBINERS-NV
    :NUM-INPUT-INTERPOLATOR-COMPONENTS-ATI
    :NUM-INSTRUCTIONS-PER-PASS-ATI
    :NUM-INSTRUCTIONS-TOTAL-ATI
    :NUM-LOOPBACK-COMPONENTS-ATI
    :NUM-PASSES-ATI
    :NUM-PROGRAM-BINARY-FORMATS
    :NUM-PROGRAM-BINARY-FORMATS-OES
    :NUM-SAMPLE-COUNTS
    :NUM-SHADER-BINARY-FORMATS
    :NUM-SHADING-LANGUAGE-VERSIONS
    :NUM-SPARSE-LEVELS-ARB
    :NUM-SPARSE-LEVELS-EXT
    :NUM-VIDEO-CAPTURE-STREAMS-NV
    :NUM-VIRTUAL-PAGE-SIZES-ARB
    :NUM-VIRTUAL-PAGE-SIZES-EXT
    :OBJECT-ACTIVE-ATTRIBUTE-MAX-LENGTH-ARB
    :OBJECT-ACTIVE-ATTRIBUTES-ARB
    :OBJECT-ACTIVE-UNIFORM-MAX-LENGTH-ARB
    :OBJECT-ACTIVE-UNIFORMS-ARB
    :OBJECT-ATTACHED-OBJECTS-ARB
    :OBJECT-BUFFER-SIZE-ATI
    :OBJECT-BUFFER-USAGE-ATI
    :OBJECT-COMPILE-STATUS-ARB
    :OBJECT-DELETE-STATUS-ARB
    :OBJECT-DISTANCE-TO-LINE-SGIS
    :OBJECT-DISTANCE-TO-POINT-SGIS
    :OBJECT-INFO-LOG-LENGTH-ARB
    :OBJECT-LINEAR
    :OBJECT-LINEAR-NV
    :OBJECT-LINE-SGIS
    :OBJECT-LINK-STATUS-ARB
    :OBJECT-PLANE
    :OBJECT-POINT-SGIS
    :OBJECT-SHADER-SOURCE-LENGTH-ARB
    :OBJECT-SUBTYPE-ARB
    :OBJECT-TYPE
    :OBJECT-TYPE-APPLE
    :OBJECT-TYPE-ARB
    :OBJECT-VALIDATE-STATUS-ARB
    :OCCLUSION-QUERY-EVENT-MASK-AMD
    :OCCLUSION-TEST-HP
    :OCCLUSION-TEST-RESULT-HP
    :OFFSET
    :OFFSET-HILO-PROJECTIVE-TEXTURE-2D-NV
    :OFFSET-HILO-PROJECTIVE-TEXTURE-RECTANGLE-NV
    :OFFSET-HILO-TEXTURE-2D-NV
    :OFFSET-HILO-TEXTURE-RECTANGLE-NV
    :OFFSET-PROJECTIVE-TEXTURE-2D-NV
    :OFFSET-PROJECTIVE-TEXTURE-2D-SCALE-NV
    :OFFSET-PROJECTIVE-TEXTURE-RECTANGLE-NV
    :OFFSET-PROJECTIVE-TEXTURE-RECTANGLE-SCALE-NV
    :OFFSET-TEXTURE-2D-BIAS-NV
    :OFFSET-TEXTURE-2D-MATRIX-NV
    :OFFSET-TEXTURE-2D-NV
    :OFFSET-TEXTURE-2D-SCALE-NV
    :OFFSET-TEXTURE-BIAS-NV
    :OFFSET-TEXTURE-MATRIX-NV
    :OFFSET-TEXTURE-RECTANGLE-NV
    :OFFSET-TEXTURE-RECTANGLE-SCALE-NV
    :OFFSET-TEXTURE-SCALE-NV
    :ONE
    :ONE-EXT
    :ONE-MINUS-CONSTANT-ALPHA
    :ONE-MINUS-CONSTANT-ALPHA-EXT
    :ONE-MINUS-CONSTANT-COLOR
    :ONE-MINUS-CONSTANT-COLOR-EXT
    :ONE-MINUS-DST-ALPHA
    :ONE-MINUS-DST-COLOR
    :ONE-MINUS-SRC1-ALPHA
    :ONE-MINUS-SRC1-ALPHA-EXT
    :ONE-MINUS-SRC1-COLOR
    :ONE-MINUS-SRC1-COLOR-EXT
    :ONE-MINUS-SRC-ALPHA
    :ONE-MINUS-SRC-COLOR
    :OP-ADD-EXT
    :OP-CLAMP-EXT
    :OP-CROSS-PRODUCT-EXT
    :OP-DOT3-EXT
    :OP-DOT4-EXT
    :OPERAND0-ALPHA
    :OPERAND0-ALPHA-ARB
    :OPERAND0-ALPHA-EXT
    :OPERAND0-RGB
    :OPERAND0-RGB-ARB
    :OPERAND0-RGB-EXT
    :OPERAND1-ALPHA
    :OPERAND1-ALPHA-ARB
    :OPERAND1-ALPHA-EXT
    :OPERAND1-RGB
    :OPERAND1-RGB-ARB
    :OPERAND1-RGB-EXT
    :OPERAND2-ALPHA
    :OPERAND2-ALPHA-ARB
    :OPERAND2-ALPHA-EXT
    :OPERAND2-RGB
    :OPERAND2-RGB-ARB
    :OPERAND2-RGB-EXT
    :OPERAND3-ALPHA-NV
    :OPERAND3-RGB-NV
    :OP-EXP-BASE-2-EXT
    :OP-FLOOR-EXT
    :OP-FRAC-EXT
    :OP-INDEX-EXT
    :OP-LOG-BASE-2-EXT
    :OP-MADD-EXT
    :OP-MAX-EXT
    :OP-MIN-EXT
    :OP-MOV-EXT
    :OP-MUL-EXT
    :OP-MULTIPLY-MATRIX-EXT
    :OP-NEGATE-EXT
    :OP-POWER-EXT
    :OP-RECIP-EXT
    :OP-RECIP-SQRT-EXT
    :OP-ROUND-EXT
    :OP-SET-GE-EXT
    :OP-SET-LT-EXT
    :OP-SUB-EXT
    :OR
    :ORDER
    :OR-INVERTED
    :OR-REVERSE
    :OUT-OF-MEMORY
    :OUTPUT-COLOR0-EXT
    :OUTPUT-COLOR1-EXT
    :OUTPUT-FOG-EXT
    :OUTPUT-TEXTURE-COORD0-EXT
    :OUTPUT-TEXTURE-COORD10-EXT
    :OUTPUT-TEXTURE-COORD11-EXT
    :OUTPUT-TEXTURE-COORD12-EXT
    :OUTPUT-TEXTURE-COORD13-EXT
    :OUTPUT-TEXTURE-COORD14-EXT
    :OUTPUT-TEXTURE-COORD15-EXT
    :OUTPUT-TEXTURE-COORD16-EXT
    :OUTPUT-TEXTURE-COORD17-EXT
    :OUTPUT-TEXTURE-COORD18-EXT
    :OUTPUT-TEXTURE-COORD19-EXT
    :OUTPUT-TEXTURE-COORD1-EXT
    :OUTPUT-TEXTURE-COORD20-EXT
    :OUTPUT-TEXTURE-COORD21-EXT
    :OUTPUT-TEXTURE-COORD22-EXT
    :OUTPUT-TEXTURE-COORD23-EXT
    :OUTPUT-TEXTURE-COORD24-EXT
    :OUTPUT-TEXTURE-COORD25-EXT
    :OUTPUT-TEXTURE-COORD26-EXT
    :OUTPUT-TEXTURE-COORD27-EXT
    :OUTPUT-TEXTURE-COORD28-EXT
    :OUTPUT-TEXTURE-COORD29-EXT
    :OUTPUT-TEXTURE-COORD2-EXT
    :OUTPUT-TEXTURE-COORD30-EXT
    :OUTPUT-TEXTURE-COORD31-EXT
    :OUTPUT-TEXTURE-COORD3-EXT
    :OUTPUT-TEXTURE-COORD4-EXT
    :OUTPUT-TEXTURE-COORD5-EXT
    :OUTPUT-TEXTURE-COORD6-EXT
    :OUTPUT-TEXTURE-COORD7-EXT
    :OUTPUT-TEXTURE-COORD8-EXT
    :OUTPUT-TEXTURE-COORD9-EXT
    :OUTPUT-VERTEX-EXT
    :OVERLAY
    :OVERLAY-KHR
    :OVERLAY-NV
    :PACK-ALIGNMENT
    :PACK-CMYK-HINT-EXT
    :PACK-COMPRESSED-BLOCK-DEPTH
    :PACK-COMPRESSED-BLOCK-HEIGHT
    :PACK-COMPRESSED-BLOCK-SIZE
    :PACK-COMPRESSED-BLOCK-WIDTH
    :PACK-COMPRESSED-SIZE-SGIX
    :PACK-IMAGE-DEPTH-SGIS
    :PACK-IMAGE-HEIGHT
    :PACK-IMAGE-HEIGHT-EXT
    :PACK-INVERT-MESA
    :PACK-LSB-FIRST
    :PACK-MAX-COMPRESSED-SIZE-SGIX
    :PACK-RESAMPLE-OML
    :PACK-RESAMPLE-SGIX
    :PACK-REVERSE-ROW-ORDER-ANGLE
    :PACK-ROW-BYTES-APPLE
    :PACK-ROW-LENGTH
    :PACK-SKIP-IMAGES
    :PACK-SKIP-IMAGES-EXT
    :PACK-SKIP-PIXELS
    :PACK-SKIP-ROWS
    :PACK-SKIP-VOLUMES-SGIS
    :PACK-SUBSAMPLE-RATE-SGIX
    :PACK-SWAP-BYTES
    :PALETTE4-R5-G6-B5-OES
    :PALETTE4-RGB5-A1-OES
    :PALETTE4-RGB8-OES
    :PALETTE4-RGBA4-OES
    :PALETTE4-RGBA8-OES
    :PALETTE8-R5-G6-B5-OES
    :PALETTE8-RGB5-A1-OES
    :PALETTE8-RGB8-OES
    :PALETTE8-RGBA4-OES
    :PALETTE8-RGBA8-OES
    :PARALLEL-ARRAYS-INTEL
    :PARAMETER-BUFFER-ARB
    :PARAMETER-BUFFER-BINDING-ARB
    :PARTIAL-SUCCESS-NV
    :PASS-THROUGH-NV
    :PASS-THROUGH-TOKEN
    :PATCH-DEFAULT-INNER-LEVEL
    :PATCH-DEFAULT-INNER-LEVEL-EXT
    :PATCH-DEFAULT-OUTER-LEVEL
    :PATCH-DEFAULT-OUTER-LEVEL-EXT
    :PATCHES
    :PATCHES-EXT
    :PATCHES-OES
    :PATCH-VERTICES
    :PATCH-VERTICES-EXT
    :PATCH-VERTICES-OES
    :PATH-CLIENT-LENGTH-NV
    :PATH-COMMAND-COUNT-NV
    :PATH-COMPUTED-LENGTH-NV
    :PATH-COORD-COUNT-NV
    :PATH-COVER-DEPTH-FUNC-NV
    :PATH-DASH-ARRAY-COUNT-NV
    :PATH-DASH-CAPS-NV
    :PATH-DASH-OFFSET-NV
    :PATH-DASH-OFFSET-RESET-NV
    :PATH-END-CAPS-NV
    :PATH-ERROR-POSITION-NV
    :PATH-FILL-BOUNDING-BOX-NV
    :PATH-FILL-COVER-MODE-NV
    :PATH-FILL-MASK-NV
    :PATH-FILL-MODE-NV
    :PATH-FOG-GEN-MODE-NV
    :PATH-FORMAT-PS-NV
    :PATH-FORMAT-SVG-NV
    :PATH-GEN-COEFF-NV
    :PATH-GEN-COLOR-FORMAT-NV
    :PATH-GEN-COMPONENTS-NV
    :PATH-GEN-MODE-NV
    :PATH-INITIAL-DASH-CAP-NV
    :PATH-INITIAL-END-CAP-NV
    :PATH-JOIN-STYLE-NV
    :PATH-MAX-MODELVIEW-STACK-DEPTH-NV
    :PATH-MAX-PROJECTION-STACK-DEPTH-NV
    :PATH-MITER-LIMIT-NV
    :PATH-MODELVIEW-MATRIX-NV
    :PATH-MODELVIEW-NV
    :PATH-MODELVIEW-STACK-DEPTH-NV
    :PATH-OBJECT-BOUNDING-BOX-NV
    :PATH-PROJECTION-MATRIX-NV
    :PATH-PROJECTION-NV
    :PATH-PROJECTION-STACK-DEPTH-NV
    :PATH-STENCIL-DEPTH-OFFSET-FACTOR-NV
    :PATH-STENCIL-DEPTH-OFFSET-UNITS-NV
    :PATH-STENCIL-FUNC-NV
    :PATH-STENCIL-REF-NV
    :PATH-STENCIL-VALUE-MASK-NV
    :PATH-STROKE-BOUNDING-BOX-NV
    :PATH-STROKE-COVER-MODE-NV
    :PATH-STROKE-MASK-NV
    :PATH-STROKE-WIDTH-NV
    :PATH-TERMINAL-DASH-CAP-NV
    :PATH-TERMINAL-END-CAP-NV
    :PATH-TRANSPOSE-MODELVIEW-MATRIX-NV
    :PATH-TRANSPOSE-PROJECTION-MATRIX-NV
    :PERCENTAGE-AMD
    :PERFMON-GLOBAL-MODE-QCOM
    :PERFMON-RESULT-AMD
    :PERFMON-RESULT-AVAILABLE-AMD
    :PERFMON-RESULT-SIZE-AMD
    :PERFORMANCE-MONITOR-AMD
    :PERFQUERY-COUNTER-DATA-BOOL32-INTEL
    :PERFQUERY-COUNTER-DATA-DOUBLE-INTEL
    :PERFQUERY-COUNTER-DATA-FLOAT-INTEL
    :PERFQUERY-COUNTER-DATA-UINT32-INTEL
    :PERFQUERY-COUNTER-DATA-UINT64-INTEL
    :PERFQUERY-COUNTER-DESC-LENGTH-MAX-INTEL
    :PERFQUERY-COUNTER-DURATION-NORM-INTEL
    :PERFQUERY-COUNTER-DURATION-RAW-INTEL
    :PERFQUERY-COUNTER-EVENT-INTEL
    :PERFQUERY-COUNTER-NAME-LENGTH-MAX-INTEL
    :PERFQUERY-COUNTER-RAW-INTEL
    :PERFQUERY-COUNTER-THROUGHPUT-INTEL
    :PERFQUERY-COUNTER-TIMESTAMP-INTEL
    :PERFQUERY-DONOT-FLUSH-INTEL
    :PERFQUERY-FLUSH-INTEL
    :PERFQUERY-GLOBAL-CONTEXT-INTEL
    :PERFQUERY-GPA-EXTENDED-COUNTERS-INTEL
    :PERFQUERY-QUERY-NAME-LENGTH-MAX-INTEL
    :PERFQUERY-SINGLE-CONTEXT-INTEL
    :PERFQUERY-WAIT-INTEL
    :PERSPECTIVE-CORRECTION-HINT
    :PER-STAGE-CONSTANTS-NV
    :PERTURB-EXT
    :PHONG-HINT-WIN
    :PHONG-WIN
    :PINLIGHT-NV
    :PIXEL-BUFFER-BARRIER-BIT
    :PIXEL-BUFFER-BARRIER-BIT-EXT
    :PIXEL-COUNT-AVAILABLE-NV
    :PIXEL-COUNTER-BITS-NV
    :PIXEL-COUNT-NV
    :PIXEL-CUBIC-WEIGHT-EXT
    :PIXEL-FRAGMENT-ALPHA-SOURCE-SGIS
    :PIXEL-FRAGMENT-RGB-SOURCE-SGIS
    :PIXEL-GROUP-COLOR-SGIS
    :PIXEL-MAG-FILTER-EXT
    :PIXEL-MAP-A-TO-A
    :PIXEL-MAP-A-TO-A-SIZE
    :PIXEL-MAP-B-TO-B
    :PIXEL-MAP-B-TO-B-SIZE
    :PIXEL-MAP-G-TO-G
    :PIXEL-MAP-G-TO-G-SIZE
    :PIXEL-MAP-I-TO-A
    :PIXEL-MAP-I-TO-A-SIZE
    :PIXEL-MAP-I-TO-B
    :PIXEL-MAP-I-TO-B-SIZE
    :PIXEL-MAP-I-TO-G
    :PIXEL-MAP-I-TO-G-SIZE
    :PIXEL-MAP-I-TO-I
    :PIXEL-MAP-I-TO-I-SIZE
    :PIXEL-MAP-I-TO-R
    :PIXEL-MAP-I-TO-R-SIZE
    :PIXEL-MAP-R-TO-R
    :PIXEL-MAP-R-TO-R-SIZE
    :PIXEL-MAP-S-TO-S
    :PIXEL-MAP-S-TO-S-SIZE
    :PIXEL-MIN-FILTER-EXT
    :PIXEL-MODE-BIT
    :PIXEL-PACK-BUFFER
    :PIXEL-PACK-BUFFER-ARB
    :PIXEL-PACK-BUFFER-BINDING
    :PIXEL-PACK-BUFFER-BINDING-ARB
    :PIXEL-PACK-BUFFER-BINDING-EXT
    :PIXEL-PACK-BUFFER-EXT
    :PIXEL-SUBSAMPLE-2424-SGIX
    :PIXEL-SUBSAMPLE-4242-SGIX
    :PIXEL-SUBSAMPLE-4444-SGIX
    :PIXEL-TEX-GEN-ALPHA-LS-SGIX
    :PIXEL-TEX-GEN-ALPHA-MS-SGIX
    :PIXEL-TEX-GEN-ALPHA-NO-REPLACE-SGIX
    :PIXEL-TEX-GEN-ALPHA-REPLACE-SGIX
    :PIXEL-TEX-GEN-MODE-SGIX
    :PIXEL-TEX-GEN-Q-CEILING-SGIX
    :PIXEL-TEX-GEN-Q-FLOOR-SGIX
    :PIXEL-TEX-GEN-Q-ROUND-SGIX
    :PIXEL-TEX-GEN-SGIX
    :PIXEL-TEXTURE-SGIS
    :PIXEL-TILE-BEST-ALIGNMENT-SGIX
    :PIXEL-TILE-CACHE-INCREMENT-SGIX
    :PIXEL-TILE-CACHE-SIZE-SGIX
    :PIXEL-TILE-GRID-DEPTH-SGIX
    :PIXEL-TILE-GRID-HEIGHT-SGIX
    :PIXEL-TILE-GRID-WIDTH-SGIX
    :PIXEL-TILE-HEIGHT-SGIX
    :PIXEL-TILE-WIDTH-SGIX
    :PIXEL-TRANSFORM-2D-EXT
    :PIXEL-TRANSFORM-2D-MATRIX-EXT
    :PIXEL-TRANSFORM-2D-STACK-DEPTH-EXT
    :PIXEL-UNPACK-BUFFER
    :PIXEL-UNPACK-BUFFER-ARB
    :PIXEL-UNPACK-BUFFER-BINDING
    :PIXEL-UNPACK-BUFFER-BINDING-ARB
    :PIXEL-UNPACK-BUFFER-BINDING-EXT
    :PIXEL-UNPACK-BUFFER-EXT
    :PLUS-CLAMPED-ALPHA-NV
    :PLUS-CLAMPED-NV
    :PLUS-DARKER-NV
    :PLUS-NV
    :PN-TRIANGLES-ATI
    :PN-TRIANGLES-NORMAL-MODE-ATI
    :PN-TRIANGLES-NORMAL-MODE-LINEAR-ATI
    :PN-TRIANGLES-NORMAL-MODE-QUADRATIC-ATI
    :PN-TRIANGLES-POINT-MODE-ATI
    :PN-TRIANGLES-POINT-MODE-CUBIC-ATI
    :PN-TRIANGLES-POINT-MODE-LINEAR-ATI
    :PN-TRIANGLES-TESSELATION-LEVEL-ATI
    :POINT
    :POINT-BIT
    :POINT-DISTANCE-ATTENUATION
    :POINT-DISTANCE-ATTENUATION-ARB
    :POINT-FADE-THRESHOLD-SIZE
    :POINT-FADE-THRESHOLD-SIZE-ARB
    :POINT-FADE-THRESHOLD-SIZE-EXT
    :POINT-FADE-THRESHOLD-SIZE-SGIS
    :POINT-NV
    :POINTS
    :POINT-SIZE
    :POINT-SIZE-ARRAY-BUFFER-BINDING-OES
    :POINT-SIZE-ARRAY-OES
    :POINT-SIZE-ARRAY-POINTER-OES
    :POINT-SIZE-ARRAY-STRIDE-OES
    :POINT-SIZE-ARRAY-TYPE-OES
    :POINT-SIZE-GRANULARITY
    :POINT-SIZE-MAX
    :POINT-SIZE-MAX-ARB
    :POINT-SIZE-MAX-EXT
    :POINT-SIZE-MAX-SGIS
    :POINT-SIZE-MIN
    :POINT-SIZE-MIN-ARB
    :POINT-SIZE-MIN-EXT
    :POINT-SIZE-MIN-SGIS
    :POINT-SIZE-RANGE
    :POINT-SMOOTH
    :POINT-SMOOTH-HINT
    :POINT-SPRITE
    :POINT-SPRITE-ARB
    :POINT-SPRITE-COORD-ORIGIN
    :POINT-SPRITE-NV
    :POINT-SPRITE-OES
    :POINT-SPRITE-R-MODE-NV
    :POINT-TOKEN
    :POLYGON
    :POLYGON-BIT
    :POLYGON-MODE
    :POLYGON-MODE-NV
    :POLYGON-OFFSET-BIAS-EXT
    :POLYGON-OFFSET-CLAMP-EXT
    :POLYGON-OFFSET-COMMAND-NV
    :POLYGON-OFFSET-EXT
    :POLYGON-OFFSET-FACTOR
    :POLYGON-OFFSET-FACTOR-EXT
    :POLYGON-OFFSET-FILL
    :POLYGON-OFFSET-LINE
    :POLYGON-OFFSET-LINE-NV
    :POLYGON-OFFSET-POINT
    :POLYGON-OFFSET-POINT-NV
    :POLYGON-OFFSET-UNITS
    :POLYGON-SMOOTH
    :POLYGON-SMOOTH-HINT
    :POLYGON-STIPPLE
    :POLYGON-STIPPLE-BIT
    :POLYGON-TOKEN
    :POSITION
    :POST-COLOR-MATRIX-ALPHA-BIAS
    :POST-COLOR-MATRIX-ALPHA-BIAS-SGI
    :POST-COLOR-MATRIX-ALPHA-SCALE
    :POST-COLOR-MATRIX-ALPHA-SCALE-SGI
    :POST-COLOR-MATRIX-BLUE-BIAS
    :POST-COLOR-MATRIX-BLUE-BIAS-SGI
    :POST-COLOR-MATRIX-BLUE-SCALE
    :POST-COLOR-MATRIX-BLUE-SCALE-SGI
    :POST-COLOR-MATRIX-COLOR-TABLE
    :POST-COLOR-MATRIX-COLOR-TABLE-SGI
    :POST-COLOR-MATRIX-GREEN-BIAS
    :POST-COLOR-MATRIX-GREEN-BIAS-SGI
    :POST-COLOR-MATRIX-GREEN-SCALE
    :POST-COLOR-MATRIX-GREEN-SCALE-SGI
    :POST-COLOR-MATRIX-RED-BIAS
    :POST-COLOR-MATRIX-RED-BIAS-SGI
    :POST-COLOR-MATRIX-RED-SCALE
    :POST-COLOR-MATRIX-RED-SCALE-SGI
    :POST-CONVOLUTION-ALPHA-BIAS
    :POST-CONVOLUTION-ALPHA-BIAS-EXT
    :POST-CONVOLUTION-ALPHA-SCALE
    :POST-CONVOLUTION-ALPHA-SCALE-EXT
    :POST-CONVOLUTION-BLUE-BIAS
    :POST-CONVOLUTION-BLUE-BIAS-EXT
    :POST-CONVOLUTION-BLUE-SCALE
    :POST-CONVOLUTION-BLUE-SCALE-EXT
    :POST-CONVOLUTION-COLOR-TABLE
    :POST-CONVOLUTION-COLOR-TABLE-SGI
    :POST-CONVOLUTION-GREEN-BIAS
    :POST-CONVOLUTION-GREEN-BIAS-EXT
    :POST-CONVOLUTION-GREEN-SCALE
    :POST-CONVOLUTION-GREEN-SCALE-EXT
    :POST-CONVOLUTION-RED-BIAS
    :POST-CONVOLUTION-RED-BIAS-EXT
    :POST-CONVOLUTION-RED-SCALE
    :POST-CONVOLUTION-RED-SCALE-EXT
    :POST-IMAGE-TRANSFORM-COLOR-TABLE-HP
    :POST-TEXTURE-FILTER-BIAS-RANGE-SGIX
    :POST-TEXTURE-FILTER-BIAS-SGIX
    :POST-TEXTURE-FILTER-SCALE-RANGE-SGIX
    :POST-TEXTURE-FILTER-SCALE-SGIX
    :PREFER-DOUBLEBUFFER-HINT-PGI
    :PRESENT-DURATION-NV
    :PRESENT-TIME-NV
    :PRESERVE-ATI
    :PREVIOUS
    :PREVIOUS-ARB
    :PREVIOUS-EXT
    :PREVIOUS-TEXTURE-INPUT-NV
    :PRIMARY-COLOR
    :PRIMARY-COLOR-ARB
    :PRIMARY-COLOR-EXT
    :PRIMARY-COLOR-NV
    :PRIMITIVE-BOUNDING-BOX
    :PRIMITIVE-BOUNDING-BOX-ARB
    :PRIMITIVE-BOUNDING-BOX-EXT
    :PRIMITIVE-BOUNDING-BOX-OES
    :PRIMITIVE-ID-NV
    :PRIMITIVE-RESTART
    :PRIMITIVE-RESTART-FIXED-INDEX
    :PRIMITIVE-RESTART-FOR-PATCHES-SUPPORTED
    :PRIMITIVE-RESTART-FOR-PATCHES-SUPPORTED-OES
    :PRIMITIVE-RESTART-INDEX
    :PRIMITIVE-RESTART-INDEX-NV
    :PRIMITIVE-RESTART-NV
    :PRIMITIVES-GENERATED
    :PRIMITIVES-GENERATED-EXT
    :PRIMITIVES-GENERATED-NV
    :PRIMITIVES-GENERATED-OES
    :PRIMITIVES-SUBMITTED-ARB
    :PROGRAM
    :PROGRAM-ADDRESS-REGISTERS-ARB
    :PROGRAM-ALU-INSTRUCTIONS-ARB
    :PROGRAM-ATTRIB-COMPONENTS-NV
    :PROGRAM-ATTRIBS-ARB
    :PROGRAM-BINARY-ANGLE
    :PROGRAM-BINARY-FORMATS
    :PROGRAM-BINARY-FORMATS-OES
    :PROGRAM-BINARY-LENGTH
    :PROGRAM-BINARY-LENGTH-OES
    :PROGRAM-BINARY-RETRIEVABLE-HINT
    :PROGRAM-BINDING-ARB
    :PROGRAM-ERROR-POSITION-ARB
    :PROGRAM-ERROR-POSITION-NV
    :PROGRAM-ERROR-STRING-ARB
    :PROGRAM-ERROR-STRING-NV
    :PROGRAM-FORMAT-ARB
    :PROGRAM-FORMAT-ASCII-ARB
    :PROGRAM-INPUT
    :PROGRAM-INSTRUCTIONS-ARB
    :PROGRAM-KHR
    :PROGRAM-LENGTH-ARB
    :PROGRAM-LENGTH-NV
    :PROGRAMMABLE-SAMPLE-LOCATION-ARB
    :PROGRAMMABLE-SAMPLE-LOCATION-NV
    :PROGRAMMABLE-SAMPLE-LOCATION-TABLE-SIZE-ARB
    :PROGRAMMABLE-SAMPLE-LOCATION-TABLE-SIZE-NV
    :PROGRAM-MATRIX-EXT
    :PROGRAM-MATRIX-STACK-DEPTH-EXT
    :PROGRAM-NATIVE-ADDRESS-REGISTERS-ARB
    :PROGRAM-NATIVE-ALU-INSTRUCTIONS-ARB
    :PROGRAM-NATIVE-ATTRIBS-ARB
    :PROGRAM-NATIVE-INSTRUCTIONS-ARB
    :PROGRAM-NATIVE-PARAMETERS-ARB
    :PROGRAM-NATIVE-TEMPORARIES-ARB
    :PROGRAM-NATIVE-TEX-INDIRECTIONS-ARB
    :PROGRAM-NATIVE-TEX-INSTRUCTIONS-ARB
    :PROGRAM-OBJECT-ARB
    :PROGRAM-OBJECT-EXT
    :PROGRAM-OUTPUT
    :PROGRAM-PARAMETER-NV
    :PROGRAM-PARAMETERS-ARB
    :PROGRAM-PIPELINE
    :PROGRAM-PIPELINE-BINDING
    :PROGRAM-PIPELINE-BINDING-EXT
    :PROGRAM-PIPELINE-KHR
    :PROGRAM-PIPELINE-OBJECT-EXT
    :PROGRAM-POINT-SIZE
    :PROGRAM-POINT-SIZE-ARB
    :PROGRAM-POINT-SIZE-EXT
    :PROGRAM-RESIDENT-NV
    :PROGRAM-RESULT-COMPONENTS-NV
    :PROGRAM-SEPARABLE
    :PROGRAM-SEPARABLE-EXT
    :PROGRAM-STRING-ARB
    :PROGRAM-STRING-NV
    :PROGRAM-TARGET-NV
    :PROGRAM-TEMPORARIES-ARB
    :PROGRAM-TEX-INDIRECTIONS-ARB
    :PROGRAM-TEX-INSTRUCTIONS-ARB
    :PROGRAM-UNDER-NATIVE-LIMITS-ARB
    :PROJECTION
    :PROJECTION-MATRIX
    :PROJECTION-MATRIX-FLOAT-AS-INT-BITS-OES
    :PROJECTION-STACK-DEPTH
    :PROVOKING-VERTEX
    :PROVOKING-VERTEX-EXT
    :PROXY-COLOR-TABLE
    :PROXY-COLOR-TABLE-SGI
    :PROXY-HISTOGRAM
    :PROXY-HISTOGRAM-EXT
    :PROXY-POST-COLOR-MATRIX-COLOR-TABLE
    :PROXY-POST-COLOR-MATRIX-COLOR-TABLE-SGI
    :PROXY-POST-CONVOLUTION-COLOR-TABLE
    :PROXY-POST-CONVOLUTION-COLOR-TABLE-SGI
    :PROXY-POST-IMAGE-TRANSFORM-COLOR-TABLE-HP
    :PROXY-TEXTURE-1D
    :PROXY-TEXTURE-1D-ARRAY
    :PROXY-TEXTURE-1D-ARRAY-EXT
    :PROXY-TEXTURE-1D-EXT
    :PROXY-TEXTURE-1D-STACK-MESAX
    :PROXY-TEXTURE-2D
    :PROXY-TEXTURE-2D-ARRAY
    :PROXY-TEXTURE-2D-ARRAY-EXT
    :PROXY-TEXTURE-2D-EXT
    :PROXY-TEXTURE-2D-MULTISAMPLE
    :PROXY-TEXTURE-2D-MULTISAMPLE-ARRAY
    :PROXY-TEXTURE-2D-STACK-MESAX
    :PROXY-TEXTURE-3D
    :PROXY-TEXTURE-3D-EXT
    :PROXY-TEXTURE-4D-SGIS
    :PROXY-TEXTURE-COLOR-TABLE-SGI
    :PROXY-TEXTURE-CUBE-MAP
    :PROXY-TEXTURE-CUBE-MAP-ARB
    :PROXY-TEXTURE-CUBE-MAP-ARRAY
    :PROXY-TEXTURE-CUBE-MAP-ARRAY-ARB
    :PROXY-TEXTURE-CUBE-MAP-EXT
    :PROXY-TEXTURE-RECTANGLE
    :PROXY-TEXTURE-RECTANGLE-ARB
    :PROXY-TEXTURE-RECTANGLE-NV
    :PURGEABLE-APPLE
    :Q
    :QUAD-ALPHA4-SGIS
    :QUAD-ALPHA8-SGIS
    :QUAD-INTENSITY4-SGIS
    :QUAD-INTENSITY8-SGIS
    :QUAD-LUMINANCE4-SGIS
    :QUAD-LUMINANCE8-SGIS
    :QUAD-MESH-SUN
    :QUADRATIC-ATTENUATION
    :QUADRATIC-CURVE-TO-NV
    :QUADS
    :QUADS-EXT
    :QUADS-FOLLOW-PROVOKING-VERTEX-CONVENTION
    :QUADS-FOLLOW-PROVOKING-VERTEX-CONVENTION-EXT
    :QUADS-OES
    :QUAD-STRIP
    :QUAD-TEXTURE-SELECT-SGIS
    :QUARTER-BIT-ATI
    :QUERY
    :QUERY-ALL-EVENT-BITS-AMD
    :QUERY-BUFFER
    :QUERY-BUFFER-AMD
    :QUERY-BUFFER-BARRIER-BIT
    :QUERY-BUFFER-BINDING
    :QUERY-BUFFER-BINDING-AMD
    :QUERY-BY-REGION-NO-WAIT
    :QUERY-BY-REGION-NO-WAIT-INVERTED
    :QUERY-BY-REGION-NO-WAIT-NV
    :QUERY-BY-REGION-WAIT
    :QUERY-BY-REGION-WAIT-INVERTED
    :QUERY-BY-REGION-WAIT-NV
    :QUERY-COUNTER-BITS
    :QUERY-COUNTER-BITS-ARB
    :QUERY-COUNTER-BITS-EXT
    :QUERY-DEPTH-BOUNDS-FAIL-EVENT-BIT-AMD
    :QUERY-DEPTH-FAIL-EVENT-BIT-AMD
    :QUERY-DEPTH-PASS-EVENT-BIT-AMD
    :QUERY-KHR
    :QUERY-NO-WAIT
    :QUERY-NO-WAIT-INVERTED
    :QUERY-NO-WAIT-NV
    :QUERY-OBJECT-AMD
    :QUERY-OBJECT-EXT
    :QUERY-RESULT
    :QUERY-RESULT-ARB
    :QUERY-RESULT-AVAILABLE
    :QUERY-RESULT-AVAILABLE-ARB
    :QUERY-RESULT-AVAILABLE-EXT
    :QUERY-RESULT-EXT
    :QUERY-RESULT-NO-WAIT
    :QUERY-RESULT-NO-WAIT-AMD
    :QUERY-STENCIL-FAIL-EVENT-BIT-AMD
    :QUERY-TARGET
    :QUERY-WAIT
    :QUERY-WAIT-INVERTED
    :QUERY-WAIT-NV
    :R
    :R11F-G11F-B10F
    :R11F-G11F-B10F-APPLE
    :R11F-G11F-B10F-EXT
    :R16
    :R16-EXT
    :R16F
    :R16F-EXT
    :R16I
    :R16-SNORM
    :R16-SNORM-EXT
    :R16UI
    :R1UI-C3F-V3F-SUN
    :R1UI-C4F-N3F-V3F-SUN
    :R1UI-C4UB-V3F-SUN
    :R1UI-N3F-V3F-SUN
    :R1UI-T2F-C4F-N3F-V3F-SUN
    :R1UI-T2F-N3F-V3F-SUN
    :R1UI-T2F-V3F-SUN
    :R1UI-V3F-SUN
    :R32F
    :R32F-EXT
    :R32I
    :R32UI
    :R3-G3-B2
    :R5-G6-B5-A8-ICC-SGIX
    :R5-G6-B5-ICC-SGIX
    :R8
    :R8-EXT
    :R8I
    :R8-SNORM
    :R8UI
    :RASTER-FIXED-SAMPLE-LOCATIONS-EXT
    :RASTERIZER-DISCARD
    :RASTERIZER-DISCARD-EXT
    :RASTERIZER-DISCARD-NV
    :RASTER-MULTISAMPLE-EXT
    :RASTER-POSITION-UNCLIPPED-IBM
    :RASTER-SAMPLES-EXT
    :READ-BUFFER
    :READ-BUFFER-EXT
    :READ-BUFFER-NV
    :READ-FRAMEBUFFER
    :READ-FRAMEBUFFER-ANGLE
    :READ-FRAMEBUFFER-APPLE
    :READ-FRAMEBUFFER-BINDING
    :READ-FRAMEBUFFER-BINDING-ANGLE
    :READ-FRAMEBUFFER-BINDING-APPLE
    :READ-FRAMEBUFFER-BINDING-EXT
    :READ-FRAMEBUFFER-BINDING-NV
    :READ-FRAMEBUFFER-EXT
    :READ-FRAMEBUFFER-NV
    :READ-ONLY
    :READ-ONLY-ARB
    :READ-PIXEL-DATA-RANGE-LENGTH-NV
    :READ-PIXEL-DATA-RANGE-NV
    :READ-PIXEL-DATA-RANGE-POINTER-NV
    :READ-PIXELS
    :READ-PIXELS-FORMAT
    :READ-PIXELS-TYPE
    :READ-WRITE
    :READ-WRITE-ARB
    :RECIP-ADD-SIGNED-ALPHA-IMG
    :RECLAIM-MEMORY-HINT-PGI
    :RECT-NV
    :RED
    :RED-BIAS
    :RED-BIT-ATI
    :RED-BITS
    :RED-EXT
    :RED-INTEGER
    :RED-INTEGER-EXT
    :RED-MAX-CLAMP-INGR
    :RED-MIN-CLAMP-INGR
    :RED-NV
    :RED-SCALE
    :RED-SNORM
    :REDUCE
    :REDUCE-EXT
    :REFERENCED-BY-COMPUTE-SHADER
    :REFERENCED-BY-FRAGMENT-SHADER
    :REFERENCED-BY-GEOMETRY-SHADER
    :REFERENCED-BY-GEOMETRY-SHADER-EXT
    :REFERENCED-BY-GEOMETRY-SHADER-OES
    :REFERENCED-BY-TESS-CONTROL-SHADER
    :REFERENCED-BY-TESS-CONTROL-SHADER-EXT
    :REFERENCED-BY-TESS-CONTROL-SHADER-OES
    :REFERENCED-BY-TESS-EVALUATION-SHADER
    :REFERENCED-BY-TESS-EVALUATION-SHADER-EXT
    :REFERENCED-BY-TESS-EVALUATION-SHADER-OES
    :REFERENCED-BY-VERTEX-SHADER
    :REFERENCE-PLANE-EQUATION-SGIX
    :REFERENCE-PLANE-SGIX
    :REFLECTION-MAP
    :REFLECTION-MAP-ARB
    :REFLECTION-MAP-EXT
    :REFLECTION-MAP-NV
    :REFLECTION-MAP-OES
    :REG-0-ATI
    :REG-10-ATI
    :REG-11-ATI
    :REG-12-ATI
    :REG-13-ATI
    :REG-14-ATI
    :REG-15-ATI
    :REG-16-ATI
    :REG-17-ATI
    :REG-18-ATI
    :REG-19-ATI
    :REG-1-ATI
    :REG-20-ATI
    :REG-21-ATI
    :REG-22-ATI
    :REG-23-ATI
    :REG-24-ATI
    :REG-25-ATI
    :REG-26-ATI
    :REG-27-ATI
    :REG-28-ATI
    :REG-29-ATI
    :REG-2-ATI
    :REG-30-ATI
    :REG-31-ATI
    :REG-3-ATI
    :REG-4-ATI
    :REG-5-ATI
    :REG-6-ATI
    :REG-7-ATI
    :REG-8-ATI
    :REG-9-ATI
    :REGISTER-COMBINERS-NV
    :RELATIVE-ARC-TO-NV
    :RELATIVE-CONIC-CURVE-TO-NV
    :RELATIVE-CUBIC-CURVE-TO-NV
    :RELATIVE-HORIZONTAL-LINE-TO-NV
    :RELATIVE-LARGE-CCW-ARC-TO-NV
    :RELATIVE-LARGE-CW-ARC-TO-NV
    :RELATIVE-LINE-TO-NV
    :RELATIVE-MOVE-TO-NV
    :RELATIVE-QUADRATIC-CURVE-TO-NV
    :RELATIVE-RECT-NV
    :RELATIVE-ROUNDED-RECT2-NV
    :RELATIVE-ROUNDED-RECT4-NV
    :RELATIVE-ROUNDED-RECT8-NV
    :RELATIVE-ROUNDED-RECT-NV
    :RELATIVE-SMALL-CCW-ARC-TO-NV
    :RELATIVE-SMALL-CW-ARC-TO-NV
    :RELATIVE-SMOOTH-CUBIC-CURVE-TO-NV
    :RELATIVE-SMOOTH-QUADRATIC-CURVE-TO-NV
    :RELATIVE-VERTICAL-LINE-TO-NV
    :RELEASED-APPLE
    :RENDER
    :RENDERBUFFER
    :RENDERBUFFER-ALPHA-SIZE
    :RENDERBUFFER-ALPHA-SIZE-EXT
    :RENDERBUFFER-ALPHA-SIZE-OES
    :RENDERBUFFER-BINDING
    :RENDERBUFFER-BINDING-ANGLE
    :RENDERBUFFER-BINDING-EXT
    :RENDERBUFFER-BINDING-OES
    :RENDERBUFFER-BLUE-SIZE
    :RENDERBUFFER-BLUE-SIZE-EXT
    :RENDERBUFFER-BLUE-SIZE-OES
    :RENDERBUFFER-COLOR-SAMPLES-NV
    :RENDERBUFFER-COVERAGE-SAMPLES-NV
    :RENDERBUFFER-DEPTH-SIZE
    :RENDERBUFFER-DEPTH-SIZE-EXT
    :RENDERBUFFER-DEPTH-SIZE-OES
    :RENDERBUFFER-EXT
    :RENDERBUFFER-FREE-MEMORY-ATI
    :RENDERBUFFER-GREEN-SIZE
    :RENDERBUFFER-GREEN-SIZE-EXT
    :RENDERBUFFER-GREEN-SIZE-OES
    :RENDERBUFFER-HEIGHT
    :RENDERBUFFER-HEIGHT-EXT
    :RENDERBUFFER-HEIGHT-OES
    :RENDERBUFFER-INTERNAL-FORMAT
    :RENDERBUFFER-INTERNAL-FORMAT-EXT
    :RENDERBUFFER-INTERNAL-FORMAT-OES
    :RENDERBUFFER-OES
    :RENDERBUFFER-RED-SIZE
    :RENDERBUFFER-RED-SIZE-EXT
    :RENDERBUFFER-RED-SIZE-OES
    :RENDERBUFFER-SAMPLES
    :RENDERBUFFER-SAMPLES-ANGLE
    :RENDERBUFFER-SAMPLES-APPLE
    :RENDERBUFFER-SAMPLES-EXT
    :RENDERBUFFER-SAMPLES-IMG
    :RENDERBUFFER-SAMPLES-NV
    :RENDERBUFFER-STENCIL-SIZE
    :RENDERBUFFER-STENCIL-SIZE-EXT
    :RENDERBUFFER-STENCIL-SIZE-OES
    :RENDERBUFFER-WIDTH
    :RENDERBUFFER-WIDTH-EXT
    :RENDERBUFFER-WIDTH-OES
    :RENDER-DIRECT-TO-FRAMEBUFFER-QCOM
    :RENDERER
    :RENDER-MODE
    :REPEAT
    :REPLACE
    :REPLACE-EXT
    :REPLACEMENT-CODE-ARRAY-POINTER-SUN
    :REPLACEMENT-CODE-ARRAY-STRIDE-SUN
    :REPLACEMENT-CODE-ARRAY-SUN
    :REPLACEMENT-CODE-ARRAY-TYPE-SUN
    :REPLACEMENT-CODE-SUN
    :REPLACE-MIDDLE-SUN
    :REPLACE-OLDEST-SUN
    :REPLACE-VALUE-AMD
    :REPLICATE-BORDER
    :REPLICATE-BORDER-HP
    :REQUIRED-TEXTURE-IMAGE-UNITS-OES
    :RESAMPLE-AVERAGE-OML
    :RESAMPLE-DECIMATE-OML
    :RESAMPLE-DECIMATE-SGIX
    :RESAMPLE-REPLICATE-OML
    :RESAMPLE-REPLICATE-SGIX
    :RESAMPLE-ZERO-FILL-OML
    :RESAMPLE-ZERO-FILL-SGIX
    :RESCALE-NORMAL
    :RESCALE-NORMAL-EXT
    :RESET-NOTIFICATION-STRATEGY
    :RESET-NOTIFICATION-STRATEGY-ARB
    :RESET-NOTIFICATION-STRATEGY-EXT
    :RESET-NOTIFICATION-STRATEGY-KHR
    :RESTART-PATH-NV
    :RESTART-SUN
    :RETAINED-APPLE
    :RETURN
    :RG
    :RG16
    :RG16-EXT
    :RG16F
    :RG16F-EXT
    :RG16I
    :RG16-SNORM
    :RG16-SNORM-EXT
    :RG16UI
    :RG32F
    :RG32F-EXT
    :RG32I
    :RG32UI
    :RG8
    :RG8-EXT
    :RG8I
    :RG8-SNORM
    :RG8UI
    :RGB
    :RGB10
    :RGB10-A2
    :RGB10-A2-EXT
    :RGB10-A2UI
    :RGB10-EXT
    :RGB12
    :RGB12-EXT
    :RGB16
    :RGB16-EXT
    :RGB16F
    :RGB16F-ARB
    :RGB16F-EXT
    :RGB16I
    :RGB16I-EXT
    :RGB16-SNORM
    :RGB16-SNORM-EXT
    :RGB16UI
    :RGB16UI-EXT
    :RGB2-EXT
    :RGB32F
    :RGB32F-ARB
    :RGB32F-EXT
    :RGB32I
    :RGB32I-EXT
    :RGB32UI
    :RGB32UI-EXT
    :RGB4
    :RGB-422-APPLE
    :RGB4-EXT
    :RGB4-S3TC
    :RGB5
    :RGB565
    :RGB565-OES
    :RGB5-A1
    :RGB5-A1-EXT
    :RGB5-A1-OES
    :RGB5-EXT
    :RGB8
    :RGB8-EXT
    :RGB8I
    :RGB8I-EXT
    :RGB8-OES
    :RGB8-SNORM
    :RGB8UI
    :RGB8UI-EXT
    :RGB9-E5
    :RGB9-E5-APPLE
    :RGB9-E5-EXT
    :RGBA
    :RGBA12
    :RGBA12-EXT
    :RGBA16
    :RGBA16-EXT
    :RGBA16F
    :RGBA16F-ARB
    :RGBA16F-EXT
    :RGBA16I
    :RGBA16I-EXT
    :RGBA16-SNORM
    :RGBA16-SNORM-EXT
    :RGBA16UI
    :RGBA16UI-EXT
    :RGBA2
    :RGBA2-EXT
    :RGBA32F
    :RGBA32F-ARB
    :RGBA32F-EXT
    :RGBA32I
    :RGBA32I-EXT
    :RGBA32UI
    :RGBA32UI-EXT
    :RGBA4
    :RGBA4-DXT5-S3TC
    :RGBA4-EXT
    :RGBA4-OES
    :RGBA4-S3TC
    :RGBA8
    :RGBA8-EXT
    :RGBA8I
    :RGBA8I-EXT
    :RGBA8-OES
    :RGBA8-SNORM
    :RGBA8UI
    :RGBA8UI-EXT
    :RGBA-DXT5-S3TC
    :RGBA-FLOAT16-APPLE
    :RGBA-FLOAT16-ATI
    :RGBA-FLOAT32-APPLE
    :RGBA-FLOAT32-ATI
    :RGBA-FLOAT-MODE-ARB
    :RGBA-FLOAT-MODE-ATI
    :RGBA-ICC-SGIX
    :RGBA-INTEGER
    :RGBA-INTEGER-EXT
    :RGBA-INTEGER-MODE-EXT
    :RGBA-MODE
    :RGBA-S3TC
    :RGBA-SIGNED-COMPONENTS-EXT
    :RGBA-SNORM
    :RGBA-UNSIGNED-DOT-PRODUCT-MAPPING-NV
    :RGB-FLOAT16-APPLE
    :RGB-FLOAT16-ATI
    :RGB-FLOAT32-APPLE
    :RGB-FLOAT32-ATI
    :RGB-ICC-SGIX
    :RGB-INTEGER
    :RGB-INTEGER-EXT
    :RGB-RAW-422-APPLE
    :RGB-S3TC
    :RGB-SCALE
    :RGB-SCALE-ARB
    :RGB-SCALE-EXT
    :RGB-SNORM
    :RG-EXT
    :RG-INTEGER
    :RG-SNORM
    :RIGHT
    :ROUNDED-RECT2-NV
    :ROUNDED-RECT4-NV
    :ROUNDED-RECT8-NV
    :ROUNDED-RECT-NV
    :ROUND-NV
    :S
    :SAMPLE-ALPHA-TO-COVERAGE
    :SAMPLE-ALPHA-TO-COVERAGE-ARB
    :SAMPLE-ALPHA-TO-MASK-EXT
    :SAMPLE-ALPHA-TO-MASK-SGIS
    :SAMPLE-ALPHA-TO-ONE
    :SAMPLE-ALPHA-TO-ONE-ARB
    :SAMPLE-ALPHA-TO-ONE-EXT
    :SAMPLE-ALPHA-TO-ONE-SGIS
    :SAMPLE-BUFFERS
    :SAMPLE-BUFFERS-3DFX
    :SAMPLE-BUFFERS-ARB
    :SAMPLE-BUFFERS-EXT
    :SAMPLE-BUFFERS-SGIS
    :SAMPLE-COVERAGE
    :SAMPLE-COVERAGE-ARB
    :SAMPLE-COVERAGE-INVERT
    :SAMPLE-COVERAGE-INVERT-ARB
    :SAMPLE-COVERAGE-VALUE
    :SAMPLE-COVERAGE-VALUE-ARB
    :SAMPLE-LOCATION-ARB
    :SAMPLE-LOCATION-NV
    :SAMPLE-LOCATION-PIXEL-GRID-HEIGHT-ARB
    :SAMPLE-LOCATION-PIXEL-GRID-HEIGHT-NV
    :SAMPLE-LOCATION-PIXEL-GRID-WIDTH-ARB
    :SAMPLE-LOCATION-PIXEL-GRID-WIDTH-NV
    :SAMPLE-LOCATION-SUBPIXEL-BITS-ARB
    :SAMPLE-LOCATION-SUBPIXEL-BITS-NV
    :SAMPLE-MASK
    :SAMPLE-MASK-EXT
    :SAMPLE-MASK-INVERT-EXT
    :SAMPLE-MASK-INVERT-SGIS
    :SAMPLE-MASK-NV
    :SAMPLE-MASK-SGIS
    :SAMPLE-MASK-VALUE
    :SAMPLE-MASK-VALUE-EXT
    :SAMPLE-MASK-VALUE-NV
    :SAMPLE-MASK-VALUE-SGIS
    :SAMPLE-PATTERN-EXT
    :SAMPLE-PATTERN-SGIS
    :SAMPLE-POSITION
    :SAMPLE-POSITION-NV
    :SAMPLER
    :SAMPLER-1D
    :SAMPLER-1D-ARB
    :SAMPLER-1D-ARRAY
    :SAMPLER-1D-ARRAY-EXT
    :SAMPLER-1D-ARRAY-SHADOW
    :SAMPLER-1D-ARRAY-SHADOW-EXT
    :SAMPLER-1D-SHADOW
    :SAMPLER-1D-SHADOW-ARB
    :SAMPLER-2D
    :SAMPLER-2D-ARB
    :SAMPLER-2D-ARRAY
    :SAMPLER-2D-ARRAY-EXT
    :SAMPLER-2D-ARRAY-SHADOW
    :SAMPLER-2D-ARRAY-SHADOW-EXT
    :SAMPLER-2D-ARRAY-SHADOW-NV
    :SAMPLER-2D-MULTISAMPLE
    :SAMPLER-2D-MULTISAMPLE-ARRAY
    :SAMPLER-2D-MULTISAMPLE-ARRAY-OES
    :SAMPLER-2D-RECT
    :SAMPLER-2D-RECT-ARB
    :SAMPLER-2D-RECT-SHADOW
    :SAMPLER-2D-RECT-SHADOW-ARB
    :SAMPLER-2D-SHADOW
    :SAMPLER-2D-SHADOW-ARB
    :SAMPLER-2D-SHADOW-EXT
    :SAMPLER-3D
    :SAMPLER-3D-ARB
    :SAMPLER-3D-OES
    :SAMPLER-BINDING
    :SAMPLER-BUFFER
    :SAMPLER-BUFFER-AMD
    :SAMPLER-BUFFER-EXT
    :SAMPLER-BUFFER-OES
    :SAMPLER-CUBE
    :SAMPLER-CUBE-ARB
    :SAMPLER-CUBE-MAP-ARRAY
    :SAMPLER-CUBE-MAP-ARRAY-ARB
    :SAMPLER-CUBE-MAP-ARRAY-EXT
    :SAMPLER-CUBE-MAP-ARRAY-OES
    :SAMPLER-CUBE-MAP-ARRAY-SHADOW
    :SAMPLER-CUBE-MAP-ARRAY-SHADOW-ARB
    :SAMPLER-CUBE-MAP-ARRAY-SHADOW-EXT
    :SAMPLER-CUBE-MAP-ARRAY-SHADOW-OES
    :SAMPLER-CUBE-SHADOW
    :SAMPLER-CUBE-SHADOW-EXT
    :SAMPLER-CUBE-SHADOW-NV
    :SAMPLER-EXTERNAL-2D-Y2Y-EXT
    :SAMPLER-EXTERNAL-OES
    :SAMPLER-KHR
    :SAMPLER-OBJECT-AMD
    :SAMPLER-RENDERBUFFER-NV
    :SAMPLES
    :SAMPLES-3DFX
    :SAMPLES-ARB
    :SAMPLES-EXT
    :SAMPLE-SHADING
    :SAMPLE-SHADING-ARB
    :SAMPLE-SHADING-OES
    :SAMPLES-PASSED
    :SAMPLES-PASSED-ARB
    :SAMPLES-SGIS
    :SATURATE-BIT-ATI
    :SCALAR-EXT
    :SCALEBIAS-HINT-SGIX
    :SCALE-BY-FOUR-NV
    :SCALE-BY-ONE-HALF-NV
    :SCALE-BY-TWO-NV
    :SCALED-RESOLVE-FASTEST-EXT
    :SCALED-RESOLVE-NICEST-EXT
    :SCISSOR-BIT
    :SCISSOR-BOX
    :SCISSOR-COMMAND-NV
    :SCISSOR-TEST
    :SCREEN
    :SCREEN-COORDINATES-REND
    :SCREEN-KHR
    :SCREEN-NV
    :SECONDARY-COLOR-ARRAY
    :SECONDARY-COLOR-ARRAY-ADDRESS-NV
    :SECONDARY-COLOR-ARRAY-BUFFER-BINDING
    :SECONDARY-COLOR-ARRAY-BUFFER-BINDING-ARB
    :SECONDARY-COLOR-ARRAY-EXT
    :SECONDARY-COLOR-ARRAY-LENGTH-NV
    :SECONDARY-COLOR-ARRAY-LIST-IBM
    :SECONDARY-COLOR-ARRAY-LIST-STRIDE-IBM
    :SECONDARY-COLOR-ARRAY-POINTER
    :SECONDARY-COLOR-ARRAY-POINTER-EXT
    :SECONDARY-COLOR-ARRAY-SIZE
    :SECONDARY-COLOR-ARRAY-SIZE-EXT
    :SECONDARY-COLOR-ARRAY-STRIDE
    :SECONDARY-COLOR-ARRAY-STRIDE-EXT
    :SECONDARY-COLOR-ARRAY-TYPE
    :SECONDARY-COLOR-ARRAY-TYPE-EXT
    :SECONDARY-COLOR-NV
    :SECONDARY-INTERPOLATOR-ATI
    :SELECT
    :SELECTION-BUFFER-POINTER
    :SELECTION-BUFFER-SIZE
    :SEPARABLE-2D
    :SEPARABLE-2D-EXT
    :SEPARATE-ATTRIBS
    :SEPARATE-ATTRIBS-EXT
    :SEPARATE-ATTRIBS-NV
    :SEPARATE-SPECULAR-COLOR
    :SEPARATE-SPECULAR-COLOR-EXT
    :SET
    :SET-AMD
    :SGX-BINARY-IMG
    :SGX-PROGRAM-BINARY-IMG
    :SHADE-MODEL
    :SHADER
    :SHADER-BINARY-DMP
    :SHADER-BINARY-FORMATS
    :SHADER-BINARY-VIV
    :SHADER-COMPILER
    :SHADER-CONSISTENT-NV
    :SHADER-GLOBAL-ACCESS-BARRIER-BIT-NV
    :SHADER-IMAGE-ACCESS-BARRIER-BIT
    :SHADER-IMAGE-ACCESS-BARRIER-BIT-EXT
    :SHADER-IMAGE-ATOMIC
    :SHADER-IMAGE-LOAD
    :SHADER-IMAGE-STORE
    :SHADER-INCLUDE-ARB
    :SHADER-KHR
    :SHADER-OBJECT-ARB
    :SHADER-OBJECT-EXT
    :SHADER-OPERATION-NV
    :SHADER-PIXEL-LOCAL-STORAGE-EXT
    :SHADER-SOURCE-LENGTH
    :SHADER-STORAGE-BARRIER-BIT
    :SHADER-STORAGE-BLOCK
    :SHADER-STORAGE-BUFFER
    :SHADER-STORAGE-BUFFER-BINDING
    :SHADER-STORAGE-BUFFER-OFFSET-ALIGNMENT
    :SHADER-STORAGE-BUFFER-SIZE
    :SHADER-STORAGE-BUFFER-START
    :SHADER-TYPE
    :SHADING-LANGUAGE-VERSION
    :SHADING-LANGUAGE-VERSION-ARB
    :SHADOW-AMBIENT-SGIX
    :SHADOW-ATTENUATION-EXT
    :SHARED-EDGE-NV
    :SHARED-TEXTURE-PALETTE-EXT
    :SHARPEN-TEXTURE-FUNC-POINTS-SGIS
    :SHININESS
    :SHORT
    :SIGNALED
    :SIGNALED-APPLE
    :SIGNED-ALPHA8-NV
    :SIGNED-ALPHA-NV
    :SIGNED-HILO16-NV
    :SIGNED-HILO8-NV
    :SIGNED-HILO-NV
    :SIGNED-IDENTITY-NV
    :SIGNED-INTENSITY8-NV
    :SIGNED-INTENSITY-NV
    :SIGNED-LUMINANCE8-ALPHA8-NV
    :SIGNED-LUMINANCE8-NV
    :SIGNED-LUMINANCE-ALPHA-NV
    :SIGNED-LUMINANCE-NV
    :SIGNED-NEGATE-NV
    :SIGNED-NORMALIZED
    :SIGNED-RGB8-NV
    :SIGNED-RGB8-UNSIGNED-ALPHA8-NV
    :SIGNED-RGBA8-NV
    :SIGNED-RGBA-NV
    :SIGNED-RGB-NV
    :SIGNED-RGB-UNSIGNED-ALPHA-NV
    :SIMULTANEOUS-TEXTURE-AND-DEPTH-TEST
    :SIMULTANEOUS-TEXTURE-AND-DEPTH-WRITE
    :SIMULTANEOUS-TEXTURE-AND-STENCIL-TEST
    :SIMULTANEOUS-TEXTURE-AND-STENCIL-WRITE
    :SINGLE-COLOR
    :SINGLE-COLOR-EXT
    :SKIP-COMPONENTS1-NV
    :SKIP-COMPONENTS2-NV
    :SKIP-COMPONENTS3-NV
    :SKIP-COMPONENTS4-NV
    :SKIP-DECODE-EXT
    :SKIP-MISSING-GLYPH-NV
    :SLICE-ACCUM-SUN
    :SLIM10U-SGIX
    :SLIM12S-SGIX
    :SLIM8U-SGIX
    :SLUMINANCE
    :SLUMINANCE8
    :SLUMINANCE8-ALPHA8
    :SLUMINANCE8-ALPHA8-EXT
    :SLUMINANCE8-ALPHA8-NV
    :SLUMINANCE8-EXT
    :SLUMINANCE8-NV
    :SLUMINANCE-ALPHA
    :SLUMINANCE-ALPHA-EXT
    :SLUMINANCE-ALPHA-NV
    :SLUMINANCE-EXT
    :SLUMINANCE-NV
    :SMALL-CCW-ARC-TO-NV
    :SMALL-CW-ARC-TO-NV
    :SMAPHS30-PROGRAM-BINARY-DMP
    :SMAPHS-PROGRAM-BINARY-DMP
    :SM-COUNT-NV
    :SMOOTH
    :SMOOTH-CUBIC-CURVE-TO-NV
    :SMOOTH-LINE-WIDTH-GRANULARITY
    :SMOOTH-LINE-WIDTH-RANGE
    :SMOOTH-POINT-SIZE-GRANULARITY
    :SMOOTH-POINT-SIZE-RANGE
    :SMOOTH-QUADRATIC-CURVE-TO-NV
    :SOFTLIGHT
    :SOFTLIGHT-KHR
    :SOFTLIGHT-NV
    :SOURCE0-ALPHA
    :SOURCE0-ALPHA-ARB
    :SOURCE0-ALPHA-EXT
    :SOURCE0-RGB
    :SOURCE0-RGB-ARB
    :SOURCE0-RGB-EXT
    :SOURCE1-ALPHA
    :SOURCE1-ALPHA-ARB
    :SOURCE1-ALPHA-EXT
    :SOURCE1-RGB
    :SOURCE1-RGB-ARB
    :SOURCE1-RGB-EXT
    :SOURCE2-ALPHA
    :SOURCE2-ALPHA-ARB
    :SOURCE2-ALPHA-EXT
    :SOURCE2-RGB
    :SOURCE2-RGB-ARB
    :SOURCE2-RGB-EXT
    :SOURCE3-ALPHA-NV
    :SOURCE3-RGB-NV
    :SPARE0-NV
    :SPARE0-PLUS-SECONDARY-COLOR-NV
    :SPARE1-NV
    :SPARSE-BUFFER-PAGE-SIZE-ARB
    :SPARSE-STORAGE-BIT-ARB
    :SPARSE-TEXTURE-FULL-ARRAY-CUBE-MIPMAPS-ARB
    :SPARSE-TEXTURE-FULL-ARRAY-CUBE-MIPMAPS-EXT
    :SPECULAR
    :SPHERE-MAP
    :SPOT-CUTOFF
    :SPOT-DIRECTION
    :SPOT-EXPONENT
    :SPRITE-AXIAL-SGIX
    :SPRITE-AXIS-SGIX
    :SPRITE-EYE-ALIGNED-SGIX
    :SPRITE-MODE-SGIX
    :SPRITE-OBJECT-ALIGNED-SGIX
    :SPRITE-SGIX
    :SPRITE-TRANSLATION-SGIX
    :SQUARE-NV
    :SR8-EXT
    :SRC0-ALPHA
    :SRC0-RGB
    :SRC1-ALPHA
    :SRC1-ALPHA-EXT
    :SRC1-COLOR
    :SRC1-COLOR-EXT
    :SRC1-RGB
    :SRC2-ALPHA
    :SRC2-RGB
    :SRC-ALPHA
    :SRC-ALPHA-SATURATE
    :SRC-ALPHA-SATURATE-EXT
    :SRC-ATOP-NV
    :SRC-COLOR
    :SRC-IN-NV
    :SRC-NV
    :SRC-OUT-NV
    :SRC-OVER-NV
    :SRG8-EXT
    :SRGB
    :SRGB8
    :SRGB8-ALPHA8
    :SRGB8-ALPHA8-EXT
    :SRGB8-EXT
    :SRGB8-NV
    :SRGB-ALPHA
    :SRGB-ALPHA-EXT
    :SRGB-DECODE-ARB
    :SRGB-EXT
    :SRGB-READ
    :SRGB-WRITE
    :STACK-OVERFLOW
    :STACK-OVERFLOW-KHR
    :STACK-UNDERFLOW
    :STACK-UNDERFLOW-KHR
    :STANDARD-FONT-FORMAT-NV
    :STANDARD-FONT-NAME-NV
    :STATE-RESTORE
    :STATIC-ATI
    :STATIC-COPY
    :STATIC-COPY-ARB
    :STATIC-DRAW
    :STATIC-DRAW-ARB
    :STATIC-READ
    :STATIC-READ-ARB
    :STATIC-VERTEX-ARRAY-IBM
    :STENCIL
    :STENCIL-ATTACHMENT
    :STENCIL-ATTACHMENT-EXT
    :STENCIL-ATTACHMENT-OES
    :STENCIL-BACK-FAIL
    :STENCIL-BACK-FAIL-ATI
    :STENCIL-BACK-FUNC
    :STENCIL-BACK-FUNC-ATI
    :STENCIL-BACK-OP-VALUE-AMD
    :STENCIL-BACK-PASS-DEPTH-FAIL
    :STENCIL-BACK-PASS-DEPTH-FAIL-ATI
    :STENCIL-BACK-PASS-DEPTH-PASS
    :STENCIL-BACK-PASS-DEPTH-PASS-ATI
    :STENCIL-BACK-REF
    :STENCIL-BACK-VALUE-MASK
    :STENCIL-BACK-WRITEMASK
    :STENCIL-BITS
    :STENCIL-BUFFER-BIT
    :STENCIL-BUFFER-BIT0-QCOM
    :STENCIL-BUFFER-BIT1-QCOM
    :STENCIL-BUFFER-BIT2-QCOM
    :STENCIL-BUFFER-BIT3-QCOM
    :STENCIL-BUFFER-BIT4-QCOM
    :STENCIL-BUFFER-BIT5-QCOM
    :STENCIL-BUFFER-BIT6-QCOM
    :STENCIL-BUFFER-BIT7-QCOM
    :STENCIL-CLEAR-TAG-VALUE-EXT
    :STENCIL-CLEAR-VALUE
    :STENCIL-COMPONENTS
    :STENCIL-EXT
    :STENCIL-FAIL
    :STENCIL-FUNC
    :STENCIL-INDEX
    :STENCIL-INDEX1
    :STENCIL-INDEX16
    :STENCIL-INDEX16-EXT
    :STENCIL-INDEX1-EXT
    :STENCIL-INDEX1-OES
    :STENCIL-INDEX4
    :STENCIL-INDEX4-EXT
    :STENCIL-INDEX4-OES
    :STENCIL-INDEX8
    :STENCIL-INDEX8-EXT
    :STENCIL-INDEX8-OES
    :STENCIL-INDEX-OES
    :STENCIL-OP-VALUE-AMD
    :STENCIL-PASS-DEPTH-FAIL
    :STENCIL-PASS-DEPTH-PASS
    :STENCIL-REF
    :STENCIL-REF-COMMAND-NV
    :STENCIL-RENDERABLE
    :STENCIL-SAMPLES-NV
    :STENCIL-TAG-BITS-EXT
    :STENCIL-TEST
    :STENCIL-TEST-TWO-SIDE-EXT
    :STENCIL-VALUE-MASK
    :STENCIL-WRITEMASK
    :STEREO
    :STORAGE-CACHED-APPLE
    :STORAGE-CLIENT-APPLE
    :STORAGE-PRIVATE-APPLE
    :STORAGE-SHARED-APPLE
    :STREAM-COPY
    :STREAM-COPY-ARB
    :STREAM-DRAW
    :STREAM-DRAW-ARB
    :STREAM-RASTERIZATION-AMD
    :STREAM-READ
    :STREAM-READ-ARB
    :STRICT-DEPTHFUNC-HINT-PGI
    :STRICT-LIGHTING-HINT-PGI
    :STRICT-SCISSOR-HINT-PGI
    :SUB-ATI
    :SUBPIXEL-BITS
    :SUBPIXEL-PRECISION-BIAS-X-BITS-NV
    :SUBPIXEL-PRECISION-BIAS-Y-BITS-NV
    :SUBSAMPLE-DISTANCE-AMD
    :SUBTRACT
    :SUBTRACT-ARB
    :SUCCESS-NV
    :SUPERSAMPLE-SCALE-X-NV
    :SUPERSAMPLE-SCALE-Y-NV
    :SURFACE-MAPPED-NV
    :SURFACE-REGISTERED-NV
    :SURFACE-STATE-NV
    :SWIZZLE-STQ-ATI
    :SWIZZLE-STQ-DQ-ATI
    :SWIZZLE-STR-ATI
    :SWIZZLE-STR-DR-ATI
    :SWIZZLE-STRQ-ATI
    :SWIZZLE-STRQ-DQ-ATI
    :SYNC-CL-EVENT-ARB
    :SYNC-CL-EVENT-COMPLETE-ARB
    :SYNC-CONDITION
    :SYNC-CONDITION-APPLE
    :SYNC-FENCE
    :SYNC-FENCE-APPLE
    :SYNC-FLAGS
    :SYNC-FLAGS-APPLE
    :SYNC-FLUSH-COMMANDS-BIT
    :SYNC-FLUSH-COMMANDS-BIT-APPLE
    :SYNC-GPU-COMMANDS-COMPLETE
    :SYNC-GPU-COMMANDS-COMPLETE-APPLE
    :SYNC-OBJECT-APPLE
    :SYNC-STATUS
    :SYNC-STATUS-APPLE
    :SYNC-X11-FENCE-EXT
    :SYSTEM-FONT-NAME-NV
    :T
    :T2F-C3F-V3F
    :T2F-C4F-N3F-V3F
    :T2F-C4UB-V3F
    :T2F-IUI-N3F-V2F-EXT
    :T2F-IUI-N3F-V3F-EXT
    :T2F-IUI-V2F-EXT
    :T2F-IUI-V3F-EXT
    :T2F-N3F-V3F
    :T2F-V3F
    :T4F-C4F-N3F-V4F
    :T4F-V4F
    :TABLE-TOO-LARGE
    :TABLE-TOO-LARGE-EXT
    :TANGENT-ARRAY-EXT
    :TANGENT-ARRAY-POINTER-EXT
    :TANGENT-ARRAY-STRIDE-EXT
    :TANGENT-ARRAY-TYPE-EXT
    :TERMINATE-SEQUENCE-COMMAND-NV
    :TESS-CONTROL-OUTPUT-VERTICES
    :TESS-CONTROL-OUTPUT-VERTICES-EXT
    :TESS-CONTROL-OUTPUT-VERTICES-OES
    :TESS-CONTROL-PROGRAM-NV
    :TESS-CONTROL-PROGRAM-PARAMETER-BUFFER-NV
    :TESS-CONTROL-SHADER
    :TESS-CONTROL-SHADER-BIT
    :TESS-CONTROL-SHADER-BIT-EXT
    :TESS-CONTROL-SHADER-BIT-OES
    :TESS-CONTROL-SHADER-EXT
    :TESS-CONTROL-SHADER-OES
    :TESS-CONTROL-SHADER-PATCHES-ARB
    :TESS-CONTROL-SUBROUTINE
    :TESS-CONTROL-SUBROUTINE-UNIFORM
    :TESS-CONTROL-TEXTURE
    :TESSELLATION-FACTOR-AMD
    :TESSELLATION-MODE-AMD
    :TESS-EVALUATION-PROGRAM-NV
    :TESS-EVALUATION-PROGRAM-PARAMETER-BUFFER-NV
    :TESS-EVALUATION-SHADER
    :TESS-EVALUATION-SHADER-BIT
    :TESS-EVALUATION-SHADER-BIT-EXT
    :TESS-EVALUATION-SHADER-BIT-OES
    :TESS-EVALUATION-SHADER-EXT
    :TESS-EVALUATION-SHADER-INVOCATIONS-ARB
    :TESS-EVALUATION-SHADER-OES
    :TESS-EVALUATION-SUBROUTINE
    :TESS-EVALUATION-SUBROUTINE-UNIFORM
    :TESS-EVALUATION-TEXTURE
    :TESS-GEN-MODE
    :TESS-GEN-MODE-EXT
    :TESS-GEN-MODE-OES
    :TESS-GEN-POINT-MODE
    :TESS-GEN-POINT-MODE-EXT
    :TESS-GEN-POINT-MODE-OES
    :TESS-GEN-SPACING
    :TESS-GEN-SPACING-EXT
    :TESS-GEN-SPACING-OES
    :TESS-GEN-VERTEX-ORDER
    :TESS-GEN-VERTEX-ORDER-EXT
    :TESS-GEN-VERTEX-ORDER-OES
    :TEXCOORD1-BIT-PGI
    :TEXCOORD2-BIT-PGI
    :TEXCOORD3-BIT-PGI
    :TEXCOORD4-BIT-PGI
    :TEXT-FRAGMENT-SHADER-ATI
    :TEXTURE
    :TEXTURE0
    :TEXTURE0-ARB
    :TEXTURE1
    :TEXTURE10
    :TEXTURE10-ARB
    :TEXTURE11
    :TEXTURE11-ARB
    :TEXTURE12
    :TEXTURE12-ARB
    :TEXTURE13
    :TEXTURE13-ARB
    :TEXTURE14
    :TEXTURE14-ARB
    :TEXTURE15
    :TEXTURE15-ARB
    :TEXTURE16
    :TEXTURE16-ARB
    :TEXTURE17
    :TEXTURE17-ARB
    :TEXTURE18
    :TEXTURE18-ARB
    :TEXTURE19
    :TEXTURE19-ARB
    :TEXTURE1-ARB
    :TEXTURE-1D
    :TEXTURE-1D-ARRAY
    :TEXTURE-1D-ARRAY-EXT
    :TEXTURE-1D-BINDING-EXT
    :TEXTURE-1D-STACK-BINDING-MESAX
    :TEXTURE-1D-STACK-MESAX
    :TEXTURE2
    :TEXTURE20
    :TEXTURE20-ARB
    :TEXTURE21
    :TEXTURE21-ARB
    :TEXTURE22
    :TEXTURE22-ARB
    :TEXTURE23
    :TEXTURE23-ARB
    :TEXTURE24
    :TEXTURE24-ARB
    :TEXTURE25
    :TEXTURE25-ARB
    :TEXTURE26
    :TEXTURE26-ARB
    :TEXTURE27
    :TEXTURE27-ARB
    :TEXTURE28
    :TEXTURE28-ARB
    :TEXTURE29
    :TEXTURE29-ARB
    :TEXTURE2-ARB
    :TEXTURE-2D
    :TEXTURE-2D-ARRAY
    :TEXTURE-2D-ARRAY-EXT
    :TEXTURE-2D-BINDING-EXT
    :TEXTURE-2D-MULTISAMPLE
    :TEXTURE-2D-MULTISAMPLE-ARRAY
    :TEXTURE-2D-MULTISAMPLE-ARRAY-OES
    :TEXTURE-2D-STACK-BINDING-MESAX
    :TEXTURE-2D-STACK-MESAX
    :TEXTURE3
    :TEXTURE30
    :TEXTURE30-ARB
    :TEXTURE31
    :TEXTURE31-ARB
    :TEXTURE3-ARB
    :TEXTURE-3D
    :TEXTURE-3D-BINDING-EXT
    :TEXTURE-3D-BINDING-OES
    :TEXTURE-3D-EXT
    :TEXTURE-3D-OES
    :TEXTURE4
    :TEXTURE4-ARB
    :TEXTURE-4D-BINDING-SGIS
    :TEXTURE-4D-SGIS
    :TEXTURE-4DSIZE-SGIS
    :TEXTURE5
    :TEXTURE5-ARB
    :TEXTURE6
    :TEXTURE6-ARB
    :TEXTURE7
    :TEXTURE7-ARB
    :TEXTURE8
    :TEXTURE8-ARB
    :TEXTURE9
    :TEXTURE9-ARB
    :TEXTURE-ALPHA-MODULATE-IMG
    :TEXTURE-ALPHA-SIZE
    :TEXTURE-ALPHA-SIZE-EXT
    :TEXTURE-ALPHA-TYPE
    :TEXTURE-ALPHA-TYPE-ARB
    :TEXTURE-APPLICATION-MODE-EXT
    :TEXTURE-BASE-LEVEL
    :TEXTURE-BASE-LEVEL-SGIS
    :TEXTURE-BINDING-1D
    :TEXTURE-BINDING-1D-ARRAY
    :TEXTURE-BINDING-1D-ARRAY-EXT
    :TEXTURE-BINDING-2D
    :TEXTURE-BINDING-2D-ARRAY
    :TEXTURE-BINDING-2D-ARRAY-EXT
    :TEXTURE-BINDING-2D-MULTISAMPLE
    :TEXTURE-BINDING-2D-MULTISAMPLE-ARRAY
    :TEXTURE-BINDING-2D-MULTISAMPLE-ARRAY-OES
    :TEXTURE-BINDING-3D
    :TEXTURE-BINDING-3D-OES
    :TEXTURE-BINDING-BUFFER
    :TEXTURE-BINDING-BUFFER-ARB
    :TEXTURE-BINDING-BUFFER-EXT
    :TEXTURE-BINDING-BUFFER-OES
    :TEXTURE-BINDING-CUBE-MAP
    :TEXTURE-BINDING-CUBE-MAP-ARB
    :TEXTURE-BINDING-CUBE-MAP-ARRAY
    :TEXTURE-BINDING-CUBE-MAP-ARRAY-ARB
    :TEXTURE-BINDING-CUBE-MAP-ARRAY-EXT
    :TEXTURE-BINDING-CUBE-MAP-ARRAY-OES
    :TEXTURE-BINDING-CUBE-MAP-EXT
    :TEXTURE-BINDING-CUBE-MAP-OES
    :TEXTURE-BINDING-EXTERNAL-OES
    :TEXTURE-BINDING-RECTANGLE
    :TEXTURE-BINDING-RECTANGLE-ARB
    :TEXTURE-BINDING-RECTANGLE-NV
    :TEXTURE-BINDING-RENDERBUFFER-NV
    :TEXTURE-BIT
    :TEXTURE-BLUE-SIZE
    :TEXTURE-BLUE-SIZE-EXT
    :TEXTURE-BLUE-TYPE
    :TEXTURE-BLUE-TYPE-ARB
    :TEXTURE-BORDER
    :TEXTURE-BORDER-COLOR
    :TEXTURE-BORDER-COLOR-EXT
    :TEXTURE-BORDER-COLOR-NV
    :TEXTURE-BORDER-COLOR-OES
    :TEXTURE-BORDER-VALUES-NV
    :TEXTURE-BUFFER
    :TEXTURE-BUFFER-ARB
    :TEXTURE-BUFFER-BINDING
    :TEXTURE-BUFFER-BINDING-EXT
    :TEXTURE-BUFFER-BINDING-OES
    :TEXTURE-BUFFER-DATA-STORE-BINDING
    :TEXTURE-BUFFER-DATA-STORE-BINDING-ARB
    :TEXTURE-BUFFER-DATA-STORE-BINDING-EXT
    :TEXTURE-BUFFER-DATA-STORE-BINDING-OES
    :TEXTURE-BUFFER-EXT
    :TEXTURE-BUFFER-FORMAT-ARB
    :TEXTURE-BUFFER-FORMAT-EXT
    :TEXTURE-BUFFER-OES
    :TEXTURE-BUFFER-OFFSET
    :TEXTURE-BUFFER-OFFSET-ALIGNMENT
    :TEXTURE-BUFFER-OFFSET-ALIGNMENT-EXT
    :TEXTURE-BUFFER-OFFSET-ALIGNMENT-OES
    :TEXTURE-BUFFER-OFFSET-EXT
    :TEXTURE-BUFFER-OFFSET-OES
    :TEXTURE-BUFFER-SIZE
    :TEXTURE-BUFFER-SIZE-EXT
    :TEXTURE-BUFFER-SIZE-OES
    :TEXTURE-CLIPMAP-CENTER-SGIX
    :TEXTURE-CLIPMAP-DEPTH-SGIX
    :TEXTURE-CLIPMAP-FRAME-SGIX
    :TEXTURE-CLIPMAP-LOD-OFFSET-SGIX
    :TEXTURE-CLIPMAP-OFFSET-SGIX
    :TEXTURE-CLIPMAP-VIRTUAL-DEPTH-SGIX
    :TEXTURE-COLOR-SAMPLES-NV
    :TEXTURE-COLOR-TABLE-SGI
    :TEXTURE-COLOR-WRITEMASK-SGIS
    :TEXTURE-COMPARE-FAIL-VALUE-ARB
    :TEXTURE-COMPARE-FUNC
    :TEXTURE-COMPARE-FUNC-ARB
    :TEXTURE-COMPARE-FUNC-EXT
    :TEXTURE-COMPARE-MODE
    :TEXTURE-COMPARE-MODE-ARB
    :TEXTURE-COMPARE-MODE-EXT
    :TEXTURE-COMPARE-OPERATOR-SGIX
    :TEXTURE-COMPARE-SGIX
    :TEXTURE-COMPONENTS
    :TEXTURE-COMPRESSED
    :TEXTURE-COMPRESSED-ARB
    :TEXTURE-COMPRESSED-BLOCK-HEIGHT
    :TEXTURE-COMPRESSED-BLOCK-SIZE
    :TEXTURE-COMPRESSED-BLOCK-WIDTH
    :TEXTURE-COMPRESSED-IMAGE-SIZE
    :TEXTURE-COMPRESSED-IMAGE-SIZE-ARB
    :TEXTURE-COMPRESSION-HINT
    :TEXTURE-COMPRESSION-HINT-ARB
    :TEXTURE-CONSTANT-DATA-SUNX
    :TEXTURE-COORD-ARRAY
    :TEXTURE-COORD-ARRAY-ADDRESS-NV
    :TEXTURE-COORD-ARRAY-BUFFER-BINDING
    :TEXTURE-COORD-ARRAY-BUFFER-BINDING-ARB
    :TEXTURE-COORD-ARRAY-COUNT-EXT
    :TEXTURE-COORD-ARRAY-EXT
    :TEXTURE-COORD-ARRAY-LENGTH-NV
    :TEXTURE-COORD-ARRAY-LIST-IBM
    :TEXTURE-COORD-ARRAY-LIST-STRIDE-IBM
    :TEXTURE-COORD-ARRAY-PARALLEL-POINTERS-INTEL
    :TEXTURE-COORD-ARRAY-POINTER
    :TEXTURE-COORD-ARRAY-POINTER-EXT
    :TEXTURE-COORD-ARRAY-SIZE
    :TEXTURE-COORD-ARRAY-SIZE-EXT
    :TEXTURE-COORD-ARRAY-STRIDE
    :TEXTURE-COORD-ARRAY-STRIDE-EXT
    :TEXTURE-COORD-ARRAY-TYPE
    :TEXTURE-COORD-ARRAY-TYPE-EXT
    :TEXTURE-COORD-NV
    :TEXTURE-COVERAGE-SAMPLES-NV
    :TEXTURE-CROP-RECT-OES
    :TEXTURE-CUBE-MAP
    :TEXTURE-CUBE-MAP-ARB
    :TEXTURE-CUBE-MAP-ARRAY
    :TEXTURE-CUBE-MAP-ARRAY-ARB
    :TEXTURE-CUBE-MAP-ARRAY-EXT
    :TEXTURE-CUBE-MAP-ARRAY-OES
    :TEXTURE-CUBE-MAP-EXT
    :TEXTURE-CUBE-MAP-NEGATIVE-X
    :TEXTURE-CUBE-MAP-NEGATIVE-X-ARB
    :TEXTURE-CUBE-MAP-NEGATIVE-X-EXT
    :TEXTURE-CUBE-MAP-NEGATIVE-X-OES
    :TEXTURE-CUBE-MAP-NEGATIVE-Y
    :TEXTURE-CUBE-MAP-NEGATIVE-Y-ARB
    :TEXTURE-CUBE-MAP-NEGATIVE-Y-EXT
    :TEXTURE-CUBE-MAP-NEGATIVE-Y-OES
    :TEXTURE-CUBE-MAP-NEGATIVE-Z
    :TEXTURE-CUBE-MAP-NEGATIVE-Z-ARB
    :TEXTURE-CUBE-MAP-NEGATIVE-Z-EXT
    :TEXTURE-CUBE-MAP-NEGATIVE-Z-OES
    :TEXTURE-CUBE-MAP-OES
    :TEXTURE-CUBE-MAP-POSITIVE-X
    :TEXTURE-CUBE-MAP-POSITIVE-X-ARB
    :TEXTURE-CUBE-MAP-POSITIVE-X-EXT
    :TEXTURE-CUBE-MAP-POSITIVE-X-OES
    :TEXTURE-CUBE-MAP-POSITIVE-Y
    :TEXTURE-CUBE-MAP-POSITIVE-Y-ARB
    :TEXTURE-CUBE-MAP-POSITIVE-Y-EXT
    :TEXTURE-CUBE-MAP-POSITIVE-Y-OES
    :TEXTURE-CUBE-MAP-POSITIVE-Z
    :TEXTURE-CUBE-MAP-POSITIVE-Z-ARB
    :TEXTURE-CUBE-MAP-POSITIVE-Z-EXT
    :TEXTURE-CUBE-MAP-POSITIVE-Z-OES
    :TEXTURE-CUBE-MAP-SEAMLESS
    :TEXTURE-DEFORMATION-BIT-SGIX
    :TEXTURE-DEFORMATION-SGIX
    :TEXTURE-DEPTH
    :TEXTURE-DEPTH-EXT
    :TEXTURE-DEPTH-QCOM
    :TEXTURE-DEPTH-SIZE
    :TEXTURE-DEPTH-SIZE-ARB
    :TEXTURE-DEPTH-TYPE
    :TEXTURE-DEPTH-TYPE-ARB
    :TEXTURE-DS-SIZE-NV
    :TEXTURE-DT-SIZE-NV
    :TEXTURE-ENV
    :TEXTURE-ENV-BIAS-SGIX
    :TEXTURE-ENV-COLOR
    :TEXTURE-ENV-MODE
    :TEXTURE-EXTERNAL-OES
    :TEXTURE-FETCH-BARRIER-BIT
    :TEXTURE-FETCH-BARRIER-BIT-EXT
    :TEXTURE-FILTER4-SIZE-SGIS
    :TEXTURE-FILTER-CONTROL
    :TEXTURE-FILTER-CONTROL-EXT
    :TEXTURE-FIXED-SAMPLE-LOCATIONS
    :TEXTURE-FLOAT-COMPONENTS-NV
    :TEXTURE-FORMAT-QCOM
    :TEXTURE-FREE-MEMORY-ATI
    :TEXTURE-GATHER
    :TEXTURE-GATHER-SHADOW
    :TEXTURE-GEN-MODE
    :TEXTURE-GEN-MODE-OES
    :TEXTURE-GEN-Q
    :TEXTURE-GEN-R
    :TEXTURE-GEN-S
    :TEXTURE-GEN-STR-OES
    :TEXTURE-GEN-T
    :TEXTURE-GEQUAL-R-SGIX
    :TEXTURE-GREEN-SIZE
    :TEXTURE-GREEN-SIZE-EXT
    :TEXTURE-GREEN-TYPE
    :TEXTURE-GREEN-TYPE-ARB
    :TEXTURE-HEIGHT
    :TEXTURE-HEIGHT-QCOM
    :TEXTURE-HI-SIZE-NV
    :TEXTURE-IMAGE-FORMAT
    :TEXTURE-IMAGE-TYPE
    :TEXTURE-IMAGE-VALID-QCOM
    :TEXTURE-IMMUTABLE-FORMAT
    :TEXTURE-IMMUTABLE-FORMAT-EXT
    :TEXTURE-IMMUTABLE-LEVELS
    :TEXTURE-INDEX-SIZE-EXT
    :TEXTURE-INTENSITY-SIZE
    :TEXTURE-INTENSITY-SIZE-EXT
    :TEXTURE-INTENSITY-TYPE
    :TEXTURE-INTENSITY-TYPE-ARB
    :TEXTURE-INTERNAL-FORMAT
    :TEXTURE-INTERNAL-FORMAT-QCOM
    :TEXTURE-LEQUAL-R-SGIX
    :TEXTURE-LIGHT-EXT
    :TEXTURE-LIGHTING-MODE-HP
    :TEXTURE-LOD-BIAS
    :TEXTURE-LOD-BIAS-EXT
    :TEXTURE-LOD-BIAS-R-SGIX
    :TEXTURE-LOD-BIAS-S-SGIX
    :TEXTURE-LOD-BIAS-T-SGIX
    :TEXTURE-LO-SIZE-NV
    :TEXTURE-LUMINANCE-SIZE
    :TEXTURE-LUMINANCE-SIZE-EXT
    :TEXTURE-LUMINANCE-TYPE
    :TEXTURE-LUMINANCE-TYPE-ARB
    :TEXTURE-MAG-FILTER
    :TEXTURE-MAG-SIZE-NV
    :TEXTURE-MATERIAL-FACE-EXT
    :TEXTURE-MATERIAL-PARAMETER-EXT
    :TEXTURE-MATRIX
    :TEXTURE-MATRIX-FLOAT-AS-INT-BITS-OES
    :TEXTURE-MAX-ANISOTROPY-EXT
    :TEXTURE-MAX-CLAMP-R-SGIX
    :TEXTURE-MAX-CLAMP-S-SGIX
    :TEXTURE-MAX-CLAMP-T-SGIX
    :TEXTURE-MAX-LEVEL
    :TEXTURE-MAX-LEVEL-APPLE
    :TEXTURE-MAX-LEVEL-SGIS
    :TEXTURE-MAX-LOD
    :TEXTURE-MAX-LOD-SGIS
    :TEXTURE-MEMORY-LAYOUT-INTEL
    :TEXTURE-MIN-FILTER
    :TEXTURE-MIN-LOD
    :TEXTURE-MIN-LOD-SGIS
    :TEXTURE-MULTI-BUFFER-HINT-SGIX
    :TEXTURE-NORMAL-EXT
    :TEXTURE-NUM-LEVELS-QCOM
    :TEXTURE-OBJECT-VALID-QCOM
    :TEXTURE-POST-SPECULAR-HP
    :TEXTURE-PRE-SPECULAR-HP
    :TEXTURE-PRIORITY
    :TEXTURE-PRIORITY-EXT
    :TEXTURE-RANGE-LENGTH-APPLE
    :TEXTURE-RANGE-POINTER-APPLE
    :TEXTURE-RECTANGLE
    :TEXTURE-RECTANGLE-ARB
    :TEXTURE-RECTANGLE-NV
    :TEXTURE-RED-SIZE
    :TEXTURE-RED-SIZE-EXT
    :TEXTURE-RED-TYPE
    :TEXTURE-RED-TYPE-ARB
    :TEXTURE-REDUCTION-MODE-ARB
    :TEXTURE-RENDERBUFFER-DATA-STORE-BINDING-NV
    :TEXTURE-RENDERBUFFER-NV
    :TEXTURE-RESIDENT
    :TEXTURE-RESIDENT-EXT
    :TEXTURE-SAMPLES
    :TEXTURE-SAMPLES-IMG
    :TEXTURE-SHADER-NV
    :TEXTURE-SHADOW
    :TEXTURE-SHARED-SIZE
    :TEXTURE-SHARED-SIZE-EXT
    :TEXTURE-SPARSE-ARB
    :TEXTURE-SPARSE-EXT
    :TEXTURE-SRGB-DECODE-EXT
    :TEXTURE-STACK-DEPTH
    :TEXTURE-STENCIL-SIZE
    :TEXTURE-STENCIL-SIZE-EXT
    :TEXTURE-STORAGE-HINT-APPLE
    :TEXTURE-STORAGE-SPARSE-BIT-AMD
    :TEXTURE-SWIZZLE-A
    :TEXTURE-SWIZZLE-A-EXT
    :TEXTURE-SWIZZLE-B
    :TEXTURE-SWIZZLE-B-EXT
    :TEXTURE-SWIZZLE-G
    :TEXTURE-SWIZZLE-G-EXT
    :TEXTURE-SWIZZLE-R
    :TEXTURE-SWIZZLE-R-EXT
    :TEXTURE-SWIZZLE-RGBA
    :TEXTURE-SWIZZLE-RGBA-EXT
    :TEXTURE-TARGET
    :TEXTURE-TARGET-QCOM
    :TEXTURE-TOO-LARGE-EXT
    :TEXTURE-TYPE-QCOM
    :TEXTURE-UNSIGNED-REMAP-MODE-NV
    :TEXTURE-UPDATE-BARRIER-BIT
    :TEXTURE-UPDATE-BARRIER-BIT-EXT
    :TEXTURE-USAGE-ANGLE
    :TEXTURE-VIEW
    :TEXTURE-VIEW-MIN-LAYER
    :TEXTURE-VIEW-MIN-LAYER-EXT
    :TEXTURE-VIEW-MIN-LAYER-OES
    :TEXTURE-VIEW-MIN-LEVEL
    :TEXTURE-VIEW-MIN-LEVEL-EXT
    :TEXTURE-VIEW-MIN-LEVEL-OES
    :TEXTURE-VIEW-NUM-LAYERS
    :TEXTURE-VIEW-NUM-LAYERS-EXT
    :TEXTURE-VIEW-NUM-LAYERS-OES
    :TEXTURE-VIEW-NUM-LEVELS
    :TEXTURE-VIEW-NUM-LEVELS-EXT
    :TEXTURE-VIEW-NUM-LEVELS-OES
    :TEXTURE-WIDTH
    :TEXTURE-WIDTH-QCOM
    :TEXTURE-WRAP-Q-SGIS
    :TEXTURE-WRAP-R
    :TEXTURE-WRAP-R-EXT
    :TEXTURE-WRAP-R-OES
    :TEXTURE-WRAP-S
    :TEXTURE-WRAP-T
    :TIME-ELAPSED
    :TIME-ELAPSED-EXT
    :TIMEOUT-EXPIRED
    :TIMEOUT-EXPIRED-APPLE
    :TIMEOUT-IGNORED
    :TIMEOUT-IGNORED-APPLE
    :TIMESTAMP
    :TIMESTAMP-EXT
    :TOP-LEVEL-ARRAY-SIZE
    :TOP-LEVEL-ARRAY-STRIDE
    :TRACE-ALL-BITS-MESA
    :TRACE-ARRAYS-BIT-MESA
    :TRACE-ERRORS-BIT-MESA
    :TRACE-MASK-MESA
    :TRACE-NAME-MESA
    :TRACE-OPERATIONS-BIT-MESA
    :TRACE-PIXELS-BIT-MESA
    :TRACE-PRIMITIVES-BIT-MESA
    :TRACE-TEXTURES-BIT-MESA
    :TRACK-MATRIX-NV
    :TRACK-MATRIX-TRANSFORM-NV
    :TRANSFORM-BIT
    :TRANSFORM-FEEDBACK
    :TRANSFORM-FEEDBACK-ACTIVE
    :TRANSFORM-FEEDBACK-ATTRIBS-NV
    :TRANSFORM-FEEDBACK-BARRIER-BIT
    :TRANSFORM-FEEDBACK-BARRIER-BIT-EXT
    :TRANSFORM-FEEDBACK-BINDING
    :TRANSFORM-FEEDBACK-BINDING-NV
    :TRANSFORM-FEEDBACK-BUFFER
    :TRANSFORM-FEEDBACK-BUFFER-ACTIVE
    :TRANSFORM-FEEDBACK-BUFFER-ACTIVE-NV
    :TRANSFORM-FEEDBACK-BUFFER-BINDING
    :TRANSFORM-FEEDBACK-BUFFER-BINDING-EXT
    :TRANSFORM-FEEDBACK-BUFFER-BINDING-NV
    :TRANSFORM-FEEDBACK-BUFFER-EXT
    :TRANSFORM-FEEDBACK-BUFFER-INDEX
    :TRANSFORM-FEEDBACK-BUFFER-MODE
    :TRANSFORM-FEEDBACK-BUFFER-MODE-EXT
    :TRANSFORM-FEEDBACK-BUFFER-MODE-NV
    :TRANSFORM-FEEDBACK-BUFFER-NV
    :TRANSFORM-FEEDBACK-BUFFER-PAUSED
    :TRANSFORM-FEEDBACK-BUFFER-PAUSED-NV
    :TRANSFORM-FEEDBACK-BUFFER-SIZE
    :TRANSFORM-FEEDBACK-BUFFER-SIZE-EXT
    :TRANSFORM-FEEDBACK-BUFFER-SIZE-NV
    :TRANSFORM-FEEDBACK-BUFFER-START
    :TRANSFORM-FEEDBACK-BUFFER-START-EXT
    :TRANSFORM-FEEDBACK-BUFFER-START-NV
    :TRANSFORM-FEEDBACK-BUFFER-STRIDE
    :TRANSFORM-FEEDBACK-NV
    :TRANSFORM-FEEDBACK-OVERFLOW-ARB
    :TRANSFORM-FEEDBACK-PAUSED
    :TRANSFORM-FEEDBACK-PRIMITIVES-WRITTEN
    :TRANSFORM-FEEDBACK-PRIMITIVES-WRITTEN-EXT
    :TRANSFORM-FEEDBACK-PRIMITIVES-WRITTEN-NV
    :TRANSFORM-FEEDBACK-RECORD-NV
    :TRANSFORM-FEEDBACK-STREAM-OVERFLOW-ARB
    :TRANSFORM-FEEDBACK-VARYING
    :TRANSFORM-FEEDBACK-VARYING-MAX-LENGTH
    :TRANSFORM-FEEDBACK-VARYING-MAX-LENGTH-EXT
    :TRANSFORM-FEEDBACK-VARYINGS
    :TRANSFORM-FEEDBACK-VARYINGS-EXT
    :TRANSFORM-FEEDBACK-VARYINGS-NV
    :TRANSFORM-HINT-APPLE
    :TRANSLATE-2D-NV
    :TRANSLATE-3D-NV
    :TRANSLATED-SHADER-SOURCE-LENGTH-ANGLE
    :TRANSLATE-X-NV
    :TRANSLATE-Y-NV
    :TRANSPOSE-AFFINE-2D-NV
    :TRANSPOSE-AFFINE-3D-NV
    :TRANSPOSE-COLOR-MATRIX
    :TRANSPOSE-COLOR-MATRIX-ARB
    :TRANSPOSE-CURRENT-MATRIX-ARB
    :TRANSPOSE-MODELVIEW-MATRIX
    :TRANSPOSE-MODELVIEW-MATRIX-ARB
    :TRANSPOSE-NV
    :TRANSPOSE-PROGRAM-MATRIX-EXT
    :TRANSPOSE-PROJECTION-MATRIX
    :TRANSPOSE-PROJECTION-MATRIX-ARB
    :TRANSPOSE-TEXTURE-MATRIX
    :TRANSPOSE-TEXTURE-MATRIX-ARB
    :TRIANGLE-FAN
    :TRIANGLE-LIST-SUN
    :TRIANGLE-MESH-SUN
    :TRIANGLES
    :TRIANGLES-ADJACENCY
    :TRIANGLES-ADJACENCY-ARB
    :TRIANGLES-ADJACENCY-EXT
    :TRIANGLES-ADJACENCY-OES
    :TRIANGLE-STRIP
    :TRIANGLE-STRIP-ADJACENCY
    :TRIANGLE-STRIP-ADJACENCY-ARB
    :TRIANGLE-STRIP-ADJACENCY-EXT
    :TRIANGLE-STRIP-ADJACENCY-OES
    :TRIANGULAR-NV
    :TRUE
    :TYPE
    :UNCORRELATED-NV
    :UNDEFINED-APPLE
    :UNDEFINED-VERTEX
    :UNDEFINED-VERTEX-EXT
    :UNDEFINED-VERTEX-OES
    :UNIFORM
    :UNIFORM-ADDRESS-COMMAND-NV
    :UNIFORM-ARRAY-STRIDE
    :UNIFORM-ATOMIC-COUNTER-BUFFER-INDEX
    :UNIFORM-BARRIER-BIT
    :UNIFORM-BARRIER-BIT-EXT
    :UNIFORM-BLOCK
    :UNIFORM-BLOCK-ACTIVE-UNIFORM-INDICES
    :UNIFORM-BLOCK-ACTIVE-UNIFORMS
    :UNIFORM-BLOCK-BINDING
    :UNIFORM-BLOCK-DATA-SIZE
    :UNIFORM-BLOCK-INDEX
    :UNIFORM-BLOCK-NAME-LENGTH
    :UNIFORM-BLOCK-REFERENCED-BY-COMPUTE-SHADER
    :UNIFORM-BLOCK-REFERENCED-BY-FRAGMENT-SHADER
    :UNIFORM-BLOCK-REFERENCED-BY-GEOMETRY-SHADER
    :UNIFORM-BLOCK-REFERENCED-BY-TESS-CONTROL-SHADER
    :UNIFORM-BLOCK-REFERENCED-BY-TESS-EVALUATION-SHADER
    :UNIFORM-BLOCK-REFERENCED-BY-VERTEX-SHADER
    :UNIFORM-BUFFER
    :UNIFORM-BUFFER-ADDRESS-NV
    :UNIFORM-BUFFER-BINDING
    :UNIFORM-BUFFER-BINDING-EXT
    :UNIFORM-BUFFER-EXT
    :UNIFORM-BUFFER-LENGTH-NV
    :UNIFORM-BUFFER-OFFSET-ALIGNMENT
    :UNIFORM-BUFFER-SIZE
    :UNIFORM-BUFFER-START
    :UNIFORM-BUFFER-UNIFIED-NV
    :UNIFORM-IS-ROW-MAJOR
    :UNIFORM-MATRIX-STRIDE
    :UNIFORM-NAME-LENGTH
    :UNIFORM-OFFSET
    :UNIFORM-SIZE
    :UNIFORM-TYPE
    :UNKNOWN-CONTEXT-RESET
    :UNKNOWN-CONTEXT-RESET-ARB
    :UNKNOWN-CONTEXT-RESET-EXT
    :UNKNOWN-CONTEXT-RESET-KHR
    :UNPACK-ALIGNMENT
    :UNPACK-CLIENT-STORAGE-APPLE
    :UNPACK-CMYK-HINT-EXT
    :UNPACK-COLORSPACE-CONVERSION-WEBGL
    :UNPACK-COMPRESSED-BLOCK-DEPTH
    :UNPACK-COMPRESSED-BLOCK-HEIGHT
    :UNPACK-COMPRESSED-BLOCK-SIZE
    :UNPACK-COMPRESSED-BLOCK-WIDTH
    :UNPACK-COMPRESSED-SIZE-SGIX
    :UNPACK-CONSTANT-DATA-SUNX
    :UNPACK-FLIP-Y-WEBGL
    :UNPACK-IMAGE-DEPTH-SGIS
    :UNPACK-IMAGE-HEIGHT
    :UNPACK-IMAGE-HEIGHT-EXT
    :UNPACK-LSB-FIRST
    :UNPACK-PREMULTIPLY-ALPHA-WEBGL
    :UNPACK-RESAMPLE-OML
    :UNPACK-RESAMPLE-SGIX
    :UNPACK-ROW-BYTES-APPLE
    :UNPACK-ROW-LENGTH
    :UNPACK-ROW-LENGTH-EXT
    :UNPACK-SKIP-IMAGES
    :UNPACK-SKIP-IMAGES-EXT
    :UNPACK-SKIP-PIXELS
    :UNPACK-SKIP-PIXELS-EXT
    :UNPACK-SKIP-ROWS
    :UNPACK-SKIP-ROWS-EXT
    :UNPACK-SKIP-VOLUMES-SGIS
    :UNPACK-SUBSAMPLE-RATE-SGIX
    :UNPACK-SWAP-BYTES
    :UNSIGNALED
    :UNSIGNALED-APPLE
    :UNSIGNED-BYTE
    :UNSIGNED-BYTE-2-3-3-REV
    :UNSIGNED-BYTE-2-3-3-REV-EXT
    :UNSIGNED-BYTE-3-3-2
    :UNSIGNED-BYTE-3-3-2-EXT
    :UNSIGNED-IDENTITY-NV
    :UNSIGNED-INT
    :UNSIGNED-INT-10-10-10-2
    :UNSIGNED-INT-10-10-10-2-EXT
    :UNSIGNED-INT-10-10-10-2-OES
    :UNSIGNED-INT-10F-11F-11F-REV
    :UNSIGNED-INT-10F-11F-11F-REV-APPLE
    :UNSIGNED-INT-10F-11F-11F-REV-EXT
    :UNSIGNED-INT16-NV
    :UNSIGNED-INT16-VEC2-NV
    :UNSIGNED-INT16-VEC3-NV
    :UNSIGNED-INT16-VEC4-NV
    :UNSIGNED-INT-2-10-10-10-REV
    :UNSIGNED-INT-2-10-10-10-REV-EXT
    :UNSIGNED-INT-24-8
    :UNSIGNED-INT-24-8-EXT
    :UNSIGNED-INT-24-8-MESA
    :UNSIGNED-INT-24-8-NV
    :UNSIGNED-INT-24-8-OES
    :UNSIGNED-INT-5-9-9-9-REV
    :UNSIGNED-INT-5-9-9-9-REV-APPLE
    :UNSIGNED-INT-5-9-9-9-REV-EXT
    :UNSIGNED-INT64-AMD
    :UNSIGNED-INT64-ARB
    :UNSIGNED-INT64-NV
    :UNSIGNED-INT64-VEC2-ARB
    :UNSIGNED-INT64-VEC2-NV
    :UNSIGNED-INT64-VEC3-ARB
    :UNSIGNED-INT64-VEC3-NV
    :UNSIGNED-INT64-VEC4-ARB
    :UNSIGNED-INT64-VEC4-NV
    :UNSIGNED-INT-8-24-REV-MESA
    :UNSIGNED-INT-8-8-8-8
    :UNSIGNED-INT-8-8-8-8-EXT
    :UNSIGNED-INT-8-8-8-8-REV
    :UNSIGNED-INT-8-8-8-8-REV-EXT
    :UNSIGNED-INT-8-8-S8-S8-REV-NV
    :UNSIGNED-INT8-NV
    :UNSIGNED-INT8-VEC2-NV
    :UNSIGNED-INT8-VEC3-NV
    :UNSIGNED-INT8-VEC4-NV
    :UNSIGNED-INT-ATOMIC-COUNTER
    :UNSIGNED-INT-IMAGE-1D
    :UNSIGNED-INT-IMAGE-1D-ARRAY
    :UNSIGNED-INT-IMAGE-1D-ARRAY-EXT
    :UNSIGNED-INT-IMAGE-1D-EXT
    :UNSIGNED-INT-IMAGE-2D
    :UNSIGNED-INT-IMAGE-2D-ARRAY
    :UNSIGNED-INT-IMAGE-2D-ARRAY-EXT
    :UNSIGNED-INT-IMAGE-2D-EXT
    :UNSIGNED-INT-IMAGE-2D-MULTISAMPLE
    :UNSIGNED-INT-IMAGE-2D-MULTISAMPLE-ARRAY
    :UNSIGNED-INT-IMAGE-2D-MULTISAMPLE-ARRAY-EXT
    :UNSIGNED-INT-IMAGE-2D-MULTISAMPLE-EXT
    :UNSIGNED-INT-IMAGE-2D-RECT
    :UNSIGNED-INT-IMAGE-2D-RECT-EXT
    :UNSIGNED-INT-IMAGE-3D
    :UNSIGNED-INT-IMAGE-3D-EXT
    :UNSIGNED-INT-IMAGE-BUFFER
    :UNSIGNED-INT-IMAGE-BUFFER-EXT
    :UNSIGNED-INT-IMAGE-BUFFER-OES
    :UNSIGNED-INT-IMAGE-CUBE
    :UNSIGNED-INT-IMAGE-CUBE-EXT
    :UNSIGNED-INT-IMAGE-CUBE-MAP-ARRAY
    :UNSIGNED-INT-IMAGE-CUBE-MAP-ARRAY-EXT
    :UNSIGNED-INT-IMAGE-CUBE-MAP-ARRAY-OES
    :UNSIGNED-INT-S8-S8-8-8-NV
    :UNSIGNED-INT-SAMPLER-1D
    :UNSIGNED-INT-SAMPLER-1D-ARRAY
    :UNSIGNED-INT-SAMPLER-1D-ARRAY-EXT
    :UNSIGNED-INT-SAMPLER-1D-EXT
    :UNSIGNED-INT-SAMPLER-2D
    :UNSIGNED-INT-SAMPLER-2D-ARRAY
    :UNSIGNED-INT-SAMPLER-2D-ARRAY-EXT
    :UNSIGNED-INT-SAMPLER-2D-EXT
    :UNSIGNED-INT-SAMPLER-2D-MULTISAMPLE
    :UNSIGNED-INT-SAMPLER-2D-MULTISAMPLE-ARRAY
    :UNSIGNED-INT-SAMPLER-2D-MULTISAMPLE-ARRAY-OES
    :UNSIGNED-INT-SAMPLER-2D-RECT
    :UNSIGNED-INT-SAMPLER-2D-RECT-EXT
    :UNSIGNED-INT-SAMPLER-3D
    :UNSIGNED-INT-SAMPLER-3D-EXT
    :UNSIGNED-INT-SAMPLER-BUFFER
    :UNSIGNED-INT-SAMPLER-BUFFER-AMD
    :UNSIGNED-INT-SAMPLER-BUFFER-EXT
    :UNSIGNED-INT-SAMPLER-BUFFER-OES
    :UNSIGNED-INT-SAMPLER-CUBE
    :UNSIGNED-INT-SAMPLER-CUBE-EXT
    :UNSIGNED-INT-SAMPLER-CUBE-MAP-ARRAY
    :UNSIGNED-INT-SAMPLER-CUBE-MAP-ARRAY-ARB
    :UNSIGNED-INT-SAMPLER-CUBE-MAP-ARRAY-EXT
    :UNSIGNED-INT-SAMPLER-CUBE-MAP-ARRAY-OES
    :UNSIGNED-INT-SAMPLER-RENDERBUFFER-NV
    :UNSIGNED-INT-VEC2
    :UNSIGNED-INT-VEC2-EXT
    :UNSIGNED-INT-VEC3
    :UNSIGNED-INT-VEC3-EXT
    :UNSIGNED-INT-VEC4
    :UNSIGNED-INT-VEC4-EXT
    :UNSIGNED-INVERT-NV
    :UNSIGNED-NORMALIZED
    :UNSIGNED-NORMALIZED-ARB
    :UNSIGNED-NORMALIZED-EXT
    :UNSIGNED-SHORT
    :UNSIGNED-SHORT-1-15-REV-MESA
    :UNSIGNED-SHORT-15-1-MESA
    :UNSIGNED-SHORT-1-5-5-5-REV
    :UNSIGNED-SHORT-1-5-5-5-REV-EXT
    :UNSIGNED-SHORT-4-4-4-4
    :UNSIGNED-SHORT-4-4-4-4-EXT
    :UNSIGNED-SHORT-4-4-4-4-REV
    :UNSIGNED-SHORT-4-4-4-4-REV-EXT
    :UNSIGNED-SHORT-4-4-4-4-REV-IMG
    :UNSIGNED-SHORT-5-5-5-1
    :UNSIGNED-SHORT-5-5-5-1-EXT
    :UNSIGNED-SHORT-5-6-5
    :UNSIGNED-SHORT-5-6-5-EXT
    :UNSIGNED-SHORT-5-6-5-REV
    :UNSIGNED-SHORT-5-6-5-REV-EXT
    :UNSIGNED-SHORT-8-8-APPLE
    :UNSIGNED-SHORT-8-8-MESA
    :UNSIGNED-SHORT-8-8-REV-APPLE
    :UNSIGNED-SHORT-8-8-REV-MESA
    :UPPER-LEFT
    :USE-MISSING-GLYPH-NV
    :UTF16-NV
    :UTF8-NV
    :V2F
    :V3F
    :VALIDATE-STATUS
    :VARIABLE-A-NV
    :VARIABLE-B-NV
    :VARIABLE-C-NV
    :VARIABLE-D-NV
    :VARIABLE-E-NV
    :VARIABLE-F-NV
    :VARIABLE-G-NV
    :VARIANT-ARRAY-EXT
    :VARIANT-ARRAY-POINTER-EXT
    :VARIANT-ARRAY-STRIDE-EXT
    :VARIANT-ARRAY-TYPE-EXT
    :VARIANT-DATATYPE-EXT
    :VARIANT-EXT
    :VARIANT-VALUE-EXT
    :VBO-FREE-MEMORY-ATI
    :VECTOR-EXT
    :VENDOR
    :VERSION
    :VERSION-ES-CL-1-0
    :VERSION-ES-CL-1-1
    :VERSION-ES-CM-1-1
    :VERTEX23-BIT-PGI
    :VERTEX4-BIT-PGI
    :VERTEX-ARRAY
    :VERTEX-ARRAY-ADDRESS-NV
    :VERTEX-ARRAY-BINDING
    :VERTEX-ARRAY-BINDING-APPLE
    :VERTEX-ARRAY-BINDING-OES
    :VERTEX-ARRAY-BUFFER-BINDING
    :VERTEX-ARRAY-BUFFER-BINDING-ARB
    :VERTEX-ARRAY-COUNT-EXT
    :VERTEX-ARRAY-EXT
    :VERTEX-ARRAY-KHR
    :VERTEX-ARRAY-LENGTH-NV
    :VERTEX-ARRAY-LIST-IBM
    :VERTEX-ARRAY-LIST-STRIDE-IBM
    :VERTEX-ARRAY-OBJECT-AMD
    :VERTEX-ARRAY-OBJECT-EXT
    :VERTEX-ARRAY-PARALLEL-POINTERS-INTEL
    :VERTEX-ARRAY-POINTER
    :VERTEX-ARRAY-POINTER-EXT
    :VERTEX-ARRAY-RANGE-APPLE
    :VERTEX-ARRAY-RANGE-LENGTH-APPLE
    :VERTEX-ARRAY-RANGE-LENGTH-NV
    :VERTEX-ARRAY-RANGE-NV
    :VERTEX-ARRAY-RANGE-POINTER-APPLE
    :VERTEX-ARRAY-RANGE-POINTER-NV
    :VERTEX-ARRAY-RANGE-VALID-NV
    :VERTEX-ARRAY-RANGE-WITHOUT-FLUSH-NV
    :VERTEX-ARRAY-SIZE
    :VERTEX-ARRAY-SIZE-EXT
    :VERTEX-ARRAY-STORAGE-HINT-APPLE
    :VERTEX-ARRAY-STRIDE
    :VERTEX-ARRAY-STRIDE-EXT
    :VERTEX-ARRAY-TYPE
    :VERTEX-ARRAY-TYPE-EXT
    :VERTEX-ATTRIB-ARRAY0-NV
    :VERTEX-ATTRIB-ARRAY10-NV
    :VERTEX-ATTRIB-ARRAY11-NV
    :VERTEX-ATTRIB-ARRAY12-NV
    :VERTEX-ATTRIB-ARRAY13-NV
    :VERTEX-ATTRIB-ARRAY14-NV
    :VERTEX-ATTRIB-ARRAY15-NV
    :VERTEX-ATTRIB-ARRAY1-NV
    :VERTEX-ATTRIB-ARRAY2-NV
    :VERTEX-ATTRIB-ARRAY3-NV
    :VERTEX-ATTRIB-ARRAY4-NV
    :VERTEX-ATTRIB-ARRAY5-NV
    :VERTEX-ATTRIB-ARRAY6-NV
    :VERTEX-ATTRIB-ARRAY7-NV
    :VERTEX-ATTRIB-ARRAY8-NV
    :VERTEX-ATTRIB-ARRAY9-NV
    :VERTEX-ATTRIB-ARRAY-ADDRESS-NV
    :VERTEX-ATTRIB-ARRAY-BARRIER-BIT
    :VERTEX-ATTRIB-ARRAY-BARRIER-BIT-EXT
    :VERTEX-ATTRIB-ARRAY-BUFFER-BINDING
    :VERTEX-ATTRIB-ARRAY-BUFFER-BINDING-ARB
    :VERTEX-ATTRIB-ARRAY-DIVISOR
    :VERTEX-ATTRIB-ARRAY-DIVISOR-ANGLE
    :VERTEX-ATTRIB-ARRAY-DIVISOR-ARB
    :VERTEX-ATTRIB-ARRAY-DIVISOR-EXT
    :VERTEX-ATTRIB-ARRAY-DIVISOR-NV
    :VERTEX-ATTRIB-ARRAY-ENABLED
    :VERTEX-ATTRIB-ARRAY-ENABLED-ARB
    :VERTEX-ATTRIB-ARRAY-INTEGER
    :VERTEX-ATTRIB-ARRAY-INTEGER-EXT
    :VERTEX-ATTRIB-ARRAY-INTEGER-NV
    :VERTEX-ATTRIB-ARRAY-LENGTH-NV
    :VERTEX-ATTRIB-ARRAY-LONG
    :VERTEX-ATTRIB-ARRAY-NORMALIZED
    :VERTEX-ATTRIB-ARRAY-NORMALIZED-ARB
    :VERTEX-ATTRIB-ARRAY-POINTER
    :VERTEX-ATTRIB-ARRAY-POINTER-ARB
    :VERTEX-ATTRIB-ARRAY-SIZE
    :VERTEX-ATTRIB-ARRAY-SIZE-ARB
    :VERTEX-ATTRIB-ARRAY-STRIDE
    :VERTEX-ATTRIB-ARRAY-STRIDE-ARB
    :VERTEX-ATTRIB-ARRAY-TYPE
    :VERTEX-ATTRIB-ARRAY-TYPE-ARB
    :VERTEX-ATTRIB-ARRAY-UNIFIED-NV
    :VERTEX-ATTRIB-BINDING
    :VERTEX-ATTRIB-MAP1-APPLE
    :VERTEX-ATTRIB-MAP1-COEFF-APPLE
    :VERTEX-ATTRIB-MAP1-DOMAIN-APPLE
    :VERTEX-ATTRIB-MAP1-ORDER-APPLE
    :VERTEX-ATTRIB-MAP1-SIZE-APPLE
    :VERTEX-ATTRIB-MAP2-APPLE
    :VERTEX-ATTRIB-MAP2-COEFF-APPLE
    :VERTEX-ATTRIB-MAP2-DOMAIN-APPLE
    :VERTEX-ATTRIB-MAP2-ORDER-APPLE
    :VERTEX-ATTRIB-MAP2-SIZE-APPLE
    :VERTEX-ATTRIB-RELATIVE-OFFSET
    :VERTEX-BINDING-BUFFER
    :VERTEX-BINDING-DIVISOR
    :VERTEX-BINDING-OFFSET
    :VERTEX-BINDING-STRIDE
    :VERTEX-BLEND-ARB
    :VERTEX-CONSISTENT-HINT-PGI
    :VERTEX-DATA-HINT-PGI
    :VERTEX-ELEMENT-SWIZZLE-AMD
    :VERTEX-ID-NV
    :VERTEX-ID-SWIZZLE-AMD
    :VERTEX-PRECLIP-HINT-SGIX
    :VERTEX-PRECLIP-SGIX
    :VERTEX-PROGRAM-ARB
    :VERTEX-PROGRAM-BINDING-NV
    :VERTEX-PROGRAM-CALLBACK-DATA-MESA
    :VERTEX-PROGRAM-CALLBACK-FUNC-MESA
    :VERTEX-PROGRAM-CALLBACK-MESA
    :VERTEX-PROGRAM-NV
    :VERTEX-PROGRAM-PARAMETER-BUFFER-NV
    :VERTEX-PROGRAM-POINT-SIZE
    :VERTEX-PROGRAM-POINT-SIZE-ARB
    :VERTEX-PROGRAM-POINT-SIZE-NV
    :VERTEX-PROGRAM-POSITION-MESA
    :VERTEX-PROGRAM-TWO-SIDE
    :VERTEX-PROGRAM-TWO-SIDE-ARB
    :VERTEX-PROGRAM-TWO-SIDE-NV
    :VERTEX-SHADER
    :VERTEX-SHADER-ARB
    :VERTEX-SHADER-BINDING-EXT
    :VERTEX-SHADER-BIT
    :VERTEX-SHADER-BIT-EXT
    :VERTEX-SHADER-EXT
    :VERTEX-SHADER-INSTRUCTIONS-EXT
    :VERTEX-SHADER-INVARIANTS-EXT
    :VERTEX-SHADER-INVOCATIONS-ARB
    :VERTEX-SHADER-LOCAL-CONSTANTS-EXT
    :VERTEX-SHADER-LOCALS-EXT
    :VERTEX-SHADER-OPTIMIZED-EXT
    :VERTEX-SHADER-VARIANTS-EXT
    :VERTEX-SOURCE-ATI
    :VERTEX-STATE-PROGRAM-NV
    :VERTEX-STREAM0-ATI
    :VERTEX-STREAM1-ATI
    :VERTEX-STREAM2-ATI
    :VERTEX-STREAM3-ATI
    :VERTEX-STREAM4-ATI
    :VERTEX-STREAM5-ATI
    :VERTEX-STREAM6-ATI
    :VERTEX-STREAM7-ATI
    :VERTEX-SUBROUTINE
    :VERTEX-SUBROUTINE-UNIFORM
    :VERTEX-TEXTURE
    :VERTEX-WEIGHT-ARRAY-EXT
    :VERTEX-WEIGHT-ARRAY-POINTER-EXT
    :VERTEX-WEIGHT-ARRAY-SIZE-EXT
    :VERTEX-WEIGHT-ARRAY-STRIDE-EXT
    :VERTEX-WEIGHT-ARRAY-TYPE-EXT
    :VERTEX-WEIGHTING-EXT
    :VERTICAL-LINE-TO-NV
    :VERTICES-SUBMITTED-ARB
    :VIBRANCE-BIAS-NV
    :VIBRANCE-SCALE-NV
    :VIDEO-BUFFER-BINDING-NV
    :VIDEO-BUFFER-INTERNAL-FORMAT-NV
    :VIDEO-BUFFER-NV
    :VIDEO-BUFFER-PITCH-NV
    :VIDEO-CAPTURE-FIELD-LOWER-HEIGHT-NV
    :VIDEO-CAPTURE-FIELD-UPPER-HEIGHT-NV
    :VIDEO-CAPTURE-FRAME-HEIGHT-NV
    :VIDEO-CAPTURE-FRAME-WIDTH-NV
    :VIDEO-CAPTURE-SURFACE-ORIGIN-NV
    :VIDEO-CAPTURE-TO-422-SUPPORTED-NV
    :VIDEO-COLOR-CONVERSION-MATRIX-NV
    :VIDEO-COLOR-CONVERSION-MAX-NV
    :VIDEO-COLOR-CONVERSION-MIN-NV
    :VIDEO-COLOR-CONVERSION-OFFSET-NV
    :VIEW-CLASS-128-BITS
    :VIEW-CLASS-16-BITS
    :VIEW-CLASS-24-BITS
    :VIEW-CLASS-32-BITS
    :VIEW-CLASS-48-BITS
    :VIEW-CLASS-64-BITS
    :VIEW-CLASS-8-BITS
    :VIEW-CLASS-96-BITS
    :VIEW-CLASS-BPTC-FLOAT
    :VIEW-CLASS-BPTC-UNORM
    :VIEW-CLASS-RGTC1-RED
    :VIEW-CLASS-RGTC2-RG
    :VIEW-CLASS-S3TC-DXT1-RGB
    :VIEW-CLASS-S3TC-DXT1-RGBA
    :VIEW-CLASS-S3TC-DXT3-RGBA
    :VIEW-CLASS-S3TC-DXT5-RGBA
    :VIEW-COMPATIBILITY-CLASS
    :VIEWPORT
    :VIEWPORT-BIT
    :VIEWPORT-BOUNDS-RANGE
    :VIEWPORT-BOUNDS-RANGE-EXT
    :VIEWPORT-BOUNDS-RANGE-NV
    :VIEWPORT-COMMAND-NV
    :VIEWPORT-INDEX-PROVOKING-VERTEX
    :VIEWPORT-INDEX-PROVOKING-VERTEX-EXT
    :VIEWPORT-INDEX-PROVOKING-VERTEX-NV
    :VIEWPORT-SUBPIXEL-BITS
    :VIEWPORT-SUBPIXEL-BITS-EXT
    :VIEWPORT-SUBPIXEL-BITS-NV
    :VIRTUAL-PAGE-SIZE-INDEX-ARB
    :VIRTUAL-PAGE-SIZE-INDEX-EXT
    :VIRTUAL-PAGE-SIZE-X-AMD
    :VIRTUAL-PAGE-SIZE-X-ARB
    :VIRTUAL-PAGE-SIZE-X-EXT
    :VIRTUAL-PAGE-SIZE-Y-AMD
    :VIRTUAL-PAGE-SIZE-Y-ARB
    :VIRTUAL-PAGE-SIZE-Y-EXT
    :VIRTUAL-PAGE-SIZE-Z-AMD
    :VIRTUAL-PAGE-SIZE-Z-ARB
    :VIRTUAL-PAGE-SIZE-Z-EXT
    :VIVIDLIGHT-NV
    :VOLATILE-APPLE
    :WAIT-FAILED
    :WAIT-FAILED-APPLE
    :WARP-SIZE-NV
    :WARPS-PER-SM-NV
    :WEIGHT-ARRAY-ARB
    :WEIGHT-ARRAY-BUFFER-BINDING
    :WEIGHT-ARRAY-BUFFER-BINDING-ARB
    :WEIGHT-ARRAY-BUFFER-BINDING-OES
    :WEIGHT-ARRAY-OES
    :WEIGHT-ARRAY-POINTER-ARB
    :WEIGHT-ARRAY-POINTER-OES
    :WEIGHT-ARRAY-SIZE-ARB
    :WEIGHT-ARRAY-SIZE-OES
    :WEIGHT-ARRAY-STRIDE-ARB
    :WEIGHT-ARRAY-STRIDE-OES
    :WEIGHT-ARRAY-TYPE-ARB
    :WEIGHT-ARRAY-TYPE-OES
    :WEIGHTED-AVERAGE-ARB
    :WEIGHT-SUM-UNITY-ARB
    :W-EXT
    :WIDE-LINE-HINT-PGI
    :WRAP-BORDER-SUN
    :WRITE-DISCARD-NV
    :WRITE-ONLY
    :WRITE-ONLY-ARB
    :WRITE-ONLY-OES
    :WRITEONLY-RENDERING-QCOM
    :WRITE-PIXEL-DATA-RANGE-LENGTH-NV
    :WRITE-PIXEL-DATA-RANGE-NV
    :WRITE-PIXEL-DATA-RANGE-POINTER-NV
    :X-EXT
    :XOR
    :XOR-NV
    :YCBAYCR8A-4224-NV
    :YCBCR-422-APPLE
    :YCBCR-MESA
    :YCBYCR8-422-NV
    :YCRCB-422-SGIX
    :YCRCB-444-SGIX
    :YCRCBA-SGIX
    :YCRCB-SGIX
    :Y-EXT
    :Z400-BINARY-AMD
    :Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12-4224-NV
    :Z4Y12Z4CB12Z4CR12-444-NV
    :Z4Y12Z4CB12Z4Y12Z4CR12-422-NV
    :Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10-4224-NV
    :Z6Y10Z6CB10Z6Y10Z6CR10-422-NV
    :ZERO
    :ZERO-EXT
    :ZERO-TO-ONE
    :Z-EXT
    :ZOOM-X
    :ZOOM-Y
    ))
(defparameter gl::abgr-ext cg-user::|gl_abgr_ext|)
(defparameter gl::accum cg-user::|gl_accum|)
(defparameter gl::accum-adjacent-pairs-nv cg-user::|gl_accum_adjacent_pairs_nv|)
(defparameter gl::accum-alpha-bits cg-user::|gl_accum_alpha_bits|)
(defparameter gl::accum-blue-bits cg-user::|gl_accum_blue_bits|)
(defparameter gl::accum-buffer-bit cg-user::|gl_accum_buffer_bit|)
(defparameter gl::accum-clear-value cg-user::|gl_accum_clear_value|)
(defparameter gl::accum-green-bits cg-user::|gl_accum_green_bits|)
(defparameter gl::accum-red-bits cg-user::|gl_accum_red_bits|)
(defparameter gl::active-atomic-counter-buffers cg-user::|gl_active_atomic_counter_buffers|)
(defparameter gl::active-attribute-max-length cg-user::|gl_active_attribute_max_length|)
(defparameter gl::active-attributes cg-user::|gl_active_attributes|)
(defparameter gl::active-program cg-user::|gl_active_program|)
(defparameter gl::active-program-ext cg-user::|gl_active_program_ext|)
(defparameter gl::active-resources cg-user::|gl_active_resources|)
(defparameter gl::active-stencil-face-ext cg-user::|gl_active_stencil_face_ext|)
(defparameter gl::active-subroutine-max-length cg-user::|gl_active_subroutine_max_length|)
(defparameter gl::active-subroutines cg-user::|gl_active_subroutines|)
(defparameter gl::active-subroutine-uniform-locations cg-user::|gl_active_subroutine_uniform_locations|)
(defparameter gl::active-subroutine-uniform-max-length cg-user::|gl_active_subroutine_uniform_max_length|)
(defparameter gl::active-subroutine-uniforms cg-user::|gl_active_subroutine_uniforms|)
(defparameter gl::active-texture cg-user::|gl_active_texture|)
(defparameter gl::active-texture-arb cg-user::|gl_active_texture_arb|)
(defparameter gl::active-uniform-block-max-name-length cg-user::|gl_active_uniform_block_max_name_length|)
(defparameter gl::active-uniform-blocks cg-user::|gl_active_uniform_blocks|)
(defparameter gl::active-uniform-max-length cg-user::|gl_active_uniform_max_length|)
(defparameter gl::active-uniforms cg-user::|gl_active_uniforms|)
(defparameter gl::active-variables cg-user::|gl_active_variables|)
(defparameter gl::active-varying-max-length-nv cg-user::|gl_active_varying_max_length_nv|)
(defparameter gl::active-varyings-nv cg-user::|gl_active_varyings_nv|)
(defparameter gl::active-vertex-units-arb cg-user::|gl_active_vertex_units_arb|)
(defparameter gl::add cg-user::|gl_add|)
(defparameter gl::add-ati cg-user::|gl_add_ati|)
(defparameter gl::add-blend-img cg-user::|gl_add_blend_img|)
(defparameter gl::add-signed cg-user::|gl_add_signed|)
(defparameter gl::add-signed-arb cg-user::|gl_add_signed_arb|)
(defparameter gl::add-signed-ext cg-user::|gl_add_signed_ext|)
(defparameter gl::adjacent-pairs-nv cg-user::|gl_adjacent_pairs_nv|)
(defparameter gl::affine-2d-nv cg-user::|gl_affine_2d_nv|)
(defparameter gl::affine-3d-nv cg-user::|gl_affine_3d_nv|)
(defparameter gl::aliased-line-width-range cg-user::|gl_aliased_line_width_range|)
(defparameter gl::aliased-point-size-range cg-user::|gl_aliased_point_size_range|)
(defparameter gl::all-attrib-bits cg-user::|gl_all_attrib_bits|)
(defparameter gl::all-barrier-bits cg-user::|gl_all_barrier_bits|)
(defparameter gl::all-barrier-bits-ext cg-user::|gl_all_barrier_bits_ext|)
(defparameter gl::all-completed-nv cg-user::|gl_all_completed_nv|)
(defparameter gl::allow-draw-frg-hint-pgi cg-user::|gl_allow_draw_frg_hint_pgi|)
(defparameter gl::allow-draw-mem-hint-pgi cg-user::|gl_allow_draw_mem_hint_pgi|)
(defparameter gl::allow-draw-obj-hint-pgi cg-user::|gl_allow_draw_obj_hint_pgi|)
(defparameter gl::allow-draw-win-hint-pgi cg-user::|gl_allow_draw_win_hint_pgi|)
(defparameter gl::all-shader-bits cg-user::|gl_all_shader_bits|)
(defparameter gl::all-shader-bits-ext cg-user::|gl_all_shader_bits_ext|)
(defparameter gl::all-static-data-ibm cg-user::|gl_all_static_data_ibm|)
(defparameter gl::alpha cg-user::|gl_alpha|)
(defparameter gl::alpha12 cg-user::|gl_alpha12|)
(defparameter gl::alpha12-ext cg-user::|gl_alpha12_ext|)
(defparameter gl::alpha16 cg-user::|gl_alpha16|)
(defparameter gl::alpha16-ext cg-user::|gl_alpha16_ext|)
(defparameter gl::alpha16f-arb cg-user::|gl_alpha16f_arb|)
(defparameter gl::alpha16f-ext cg-user::|gl_alpha16f_ext|)
(defparameter gl::alpha16-icc-sgix cg-user::|gl_alpha16_icc_sgix|)
(defparameter gl::alpha16i-ext cg-user::|gl_alpha16i_ext|)
(defparameter gl::alpha16-snorm cg-user::|gl_alpha16_snorm|)
(defparameter gl::alpha16ui-ext cg-user::|gl_alpha16ui_ext|)
(defparameter gl::alpha32f-arb cg-user::|gl_alpha32f_arb|)
(defparameter gl::alpha32f-ext cg-user::|gl_alpha32f_ext|)
(defparameter gl::alpha32i-ext cg-user::|gl_alpha32i_ext|)
(defparameter gl::alpha32ui-ext cg-user::|gl_alpha32ui_ext|)
(defparameter gl::alpha4 cg-user::|gl_alpha4|)
(defparameter gl::alpha4-ext cg-user::|gl_alpha4_ext|)
(defparameter gl::alpha8 cg-user::|gl_alpha8|)
(defparameter gl::alpha8-ext cg-user::|gl_alpha8_ext|)
(defparameter gl::alpha8i-ext cg-user::|gl_alpha8i_ext|)
(defparameter gl::alpha8-oes cg-user::|gl_alpha8_oes|)
(defparameter gl::alpha8-snorm cg-user::|gl_alpha8_snorm|)
(defparameter gl::alpha8ui-ext cg-user::|gl_alpha8ui_ext|)
(defparameter gl::alpha-bias cg-user::|gl_alpha_bias|)
(defparameter gl::alpha-bits cg-user::|gl_alpha_bits|)
(defparameter gl::alpha-float16-apple cg-user::|gl_alpha_float16_apple|)
(defparameter gl::alpha-float16-ati cg-user::|gl_alpha_float16_ati|)
(defparameter gl::alpha-float32-apple cg-user::|gl_alpha_float32_apple|)
(defparameter gl::alpha-float32-ati cg-user::|gl_alpha_float32_ati|)
(defparameter gl::alpha-icc-sgix cg-user::|gl_alpha_icc_sgix|)
(defparameter gl::alpha-integer cg-user::|gl_alpha_integer|)
(defparameter gl::alpha-integer-ext cg-user::|gl_alpha_integer_ext|)
(defparameter gl::alpha-max-clamp-ingr cg-user::|gl_alpha_max_clamp_ingr|)
(defparameter gl::alpha-max-sgix cg-user::|gl_alpha_max_sgix|)
(defparameter gl::alpha-min-clamp-ingr cg-user::|gl_alpha_min_clamp_ingr|)
(defparameter gl::alpha-min-sgix cg-user::|gl_alpha_min_sgix|)
(defparameter gl::alpha-ref-command-nv cg-user::|gl_alpha_ref_command_nv|)
(defparameter gl::alpha-scale cg-user::|gl_alpha_scale|)
(defparameter gl::alpha-snorm cg-user::|gl_alpha_snorm|)
(defparameter gl::alpha-test cg-user::|gl_alpha_test|)
(defparameter gl::alpha-test-func cg-user::|gl_alpha_test_func|)
(defparameter gl::alpha-test-func-qcom cg-user::|gl_alpha_test_func_qcom|)
(defparameter gl::alpha-test-qcom cg-user::|gl_alpha_test_qcom|)
(defparameter gl::alpha-test-ref cg-user::|gl_alpha_test_ref|)
(defparameter gl::alpha-test-ref-qcom cg-user::|gl_alpha_test_ref_qcom|)
(defparameter gl::already-signaled cg-user::|gl_already_signaled|)
(defparameter gl::already-signaled-apple cg-user::|gl_already_signaled_apple|)
(defparameter gl::always cg-user::|gl_always|)
(defparameter gl::always-fast-hint-pgi cg-user::|gl_always_fast_hint_pgi|)
(defparameter gl::always-soft-hint-pgi cg-user::|gl_always_soft_hint_pgi|)
(defparameter gl::ambient cg-user::|gl_ambient|)
(defparameter gl::ambient-and-diffuse cg-user::|gl_ambient_and_diffuse|)
(defparameter gl::and cg-user::|gl_and|)
(defparameter gl::and-inverted cg-user::|gl_and_inverted|)
(defparameter gl::and-reverse cg-user::|gl_and_reverse|)
(defparameter gl::any-samples-passed cg-user::|gl_any_samples_passed|)
(defparameter gl::any-samples-passed-conservative cg-user::|gl_any_samples_passed_conservative|)
(defparameter gl::any-samples-passed-conservative-ext cg-user::|gl_any_samples_passed_conservative_ext|)
(defparameter gl::any-samples-passed-ext cg-user::|gl_any_samples_passed_ext|)
(defparameter gl::arc-to-nv cg-user::|gl_arc_to_nv|)
(defparameter gl::array-buffer cg-user::|gl_array_buffer|)
(defparameter gl::array-buffer-arb cg-user::|gl_array_buffer_arb|)
(defparameter gl::array-buffer-binding cg-user::|gl_array_buffer_binding|)
(defparameter gl::array-buffer-binding-arb cg-user::|gl_array_buffer_binding_arb|)
(defparameter gl::array-element-lock-count-ext cg-user::|gl_array_element_lock_count_ext|)
(defparameter gl::array-element-lock-first-ext cg-user::|gl_array_element_lock_first_ext|)
(defparameter gl::array-object-buffer-ati cg-user::|gl_array_object_buffer_ati|)
(defparameter gl::array-object-offset-ati cg-user::|gl_array_object_offset_ati|)
(defparameter gl::array-size cg-user::|gl_array_size|)
(defparameter gl::array-stride cg-user::|gl_array_stride|)
(defparameter gl::async-draw-pixels-sgix cg-user::|gl_async_draw_pixels_sgix|)
(defparameter gl::async-histogram-sgix cg-user::|gl_async_histogram_sgix|)
(defparameter gl::async-marker-sgix cg-user::|gl_async_marker_sgix|)
(defparameter gl::async-read-pixels-sgix cg-user::|gl_async_read_pixels_sgix|)
(defparameter gl::async-tex-image-sgix cg-user::|gl_async_tex_image_sgix|)
(defparameter gl::atc-rgba-explicit-alpha-amd cg-user::|gl_atc_rgba_explicit_alpha_amd|)
(defparameter gl::atc-rgba-interpolated-alpha-amd cg-user::|gl_atc_rgba_interpolated_alpha_amd|)
(defparameter gl::atc-rgb-amd cg-user::|gl_atc_rgb_amd|)
(defparameter gl::atomic-counter-barrier-bit cg-user::|gl_atomic_counter_barrier_bit|)
(defparameter gl::atomic-counter-barrier-bit-ext cg-user::|gl_atomic_counter_barrier_bit_ext|)
(defparameter gl::atomic-counter-buffer cg-user::|gl_atomic_counter_buffer|)
(defparameter gl::atomic-counter-buffer-active-atomic-counter-indices cg-user::|gl_atomic_counter_buffer_active_atomic_counter_indices|)
(defparameter gl::atomic-counter-buffer-active-atomic-counters cg-user::|gl_atomic_counter_buffer_active_atomic_counters|)
(defparameter gl::atomic-counter-buffer-binding cg-user::|gl_atomic_counter_buffer_binding|)
(defparameter gl::atomic-counter-buffer-data-size cg-user::|gl_atomic_counter_buffer_data_size|)
(defparameter gl::atomic-counter-buffer-index cg-user::|gl_atomic_counter_buffer_index|)
(defparameter gl::atomic-counter-buffer-referenced-by-compute-shader cg-user::|gl_atomic_counter_buffer_referenced_by_compute_shader|)
(defparameter gl::atomic-counter-buffer-referenced-by-fragment-shader cg-user::|gl_atomic_counter_buffer_referenced_by_fragment_shader|)
(defparameter gl::atomic-counter-buffer-referenced-by-geometry-shader cg-user::|gl_atomic_counter_buffer_referenced_by_geometry_shader|)
(defparameter gl::atomic-counter-buffer-referenced-by-tess-control-shader cg-user::|gl_atomic_counter_buffer_referenced_by_tess_control_shader|)
(defparameter gl::atomic-counter-buffer-referenced-by-tess-evaluation-shader cg-user::|gl_atomic_counter_buffer_referenced_by_tess_evaluation_shader|)
(defparameter gl::atomic-counter-buffer-referenced-by-vertex-shader cg-user::|gl_atomic_counter_buffer_referenced_by_vertex_shader|)
(defparameter gl::atomic-counter-buffer-size cg-user::|gl_atomic_counter_buffer_size|)
(defparameter gl::atomic-counter-buffer-start cg-user::|gl_atomic_counter_buffer_start|)
(defparameter gl::attached-shaders cg-user::|gl_attached_shaders|)
(defparameter gl::attenuation-ext cg-user::|gl_attenuation_ext|)
(defparameter gl::attrib-array-pointer-nv cg-user::|gl_attrib_array_pointer_nv|)
(defparameter gl::attrib-array-size-nv cg-user::|gl_attrib_array_size_nv|)
(defparameter gl::attrib-array-stride-nv cg-user::|gl_attrib_array_stride_nv|)
(defparameter gl::attrib-array-type-nv cg-user::|gl_attrib_array_type_nv|)
(defparameter gl::attrib-stack-depth cg-user::|gl_attrib_stack_depth|)
(defparameter gl::attribute-address-command-nv cg-user::|gl_attribute_address_command_nv|)
(defparameter gl::auto-generate-mipmap cg-user::|gl_auto_generate_mipmap|)
(defparameter gl::auto-normal cg-user::|gl_auto_normal|)
(defparameter gl::aux0 cg-user::|gl_aux0|)
(defparameter gl::aux1 cg-user::|gl_aux1|)
(defparameter gl::aux2 cg-user::|gl_aux2|)
(defparameter gl::aux3 cg-user::|gl_aux3|)
(defparameter gl::aux-buffers cg-user::|gl_aux_buffers|)
(defparameter gl::aux-depth-stencil-apple cg-user::|gl_aux_depth_stencil_apple|)
(defparameter gl::average-ext cg-user::|gl_average_ext|)
(defparameter gl::average-hp cg-user::|gl_average_hp|)
(defparameter gl::back cg-user::|gl_back|)
(defparameter gl::back-left cg-user::|gl_back_left|)
(defparameter gl::back-normals-hint-pgi cg-user::|gl_back_normals_hint_pgi|)
(defparameter gl::back-primary-color-nv cg-user::|gl_back_primary_color_nv|)
(defparameter gl::back-right cg-user::|gl_back_right|)
(defparameter gl::back-secondary-color-nv cg-user::|gl_back_secondary_color_nv|)
(defparameter gl::bevel-nv cg-user::|gl_bevel_nv|)
(defparameter gl::bgr cg-user::|gl_bgr|)
(defparameter gl::bgra cg-user::|gl_bgra|)
(defparameter gl::bgra8-ext cg-user::|gl_bgra8_ext|)
(defparameter gl::bgra-ext cg-user::|gl_bgra_ext|)
(defparameter gl::bgra-img cg-user::|gl_bgra_img|)
(defparameter gl::bgra-integer cg-user::|gl_bgra_integer|)
(defparameter gl::bgra-integer-ext cg-user::|gl_bgra_integer_ext|)
(defparameter gl::bgr-ext cg-user::|gl_bgr_ext|)
(defparameter gl::bgr-integer cg-user::|gl_bgr_integer|)
(defparameter gl::bgr-integer-ext cg-user::|gl_bgr_integer_ext|)
(defparameter gl::bias-bit-ati cg-user::|gl_bias_bit_ati|)
(defparameter gl::bias-by-negative-one-half-nv cg-user::|gl_bias_by_negative_one_half_nv|)
(defparameter gl::binning-control-hint-qcom cg-user::|gl_binning_control_hint_qcom|)
(defparameter gl::binormal-array-ext cg-user::|gl_binormal_array_ext|)
(defparameter gl::binormal-array-pointer-ext cg-user::|gl_binormal_array_pointer_ext|)
(defparameter gl::binormal-array-stride-ext cg-user::|gl_binormal_array_stride_ext|)
(defparameter gl::binormal-array-type-ext cg-user::|gl_binormal_array_type_ext|)
(defparameter gl::bitmap cg-user::|gl_bitmap|)
(defparameter gl::bitmap-token cg-user::|gl_bitmap_token|)
(defparameter gl::blend cg-user::|gl_blend|)
(defparameter gl::blend-advanced-coherent-khr cg-user::|gl_blend_advanced_coherent_khr|)
(defparameter gl::blend-advanced-coherent-nv cg-user::|gl_blend_advanced_coherent_nv|)
(defparameter gl::blend-color cg-user::|gl_blend_color|)
(defparameter gl::blend-color-command-nv cg-user::|gl_blend_color_command_nv|)
(defparameter gl::blend-color-ext cg-user::|gl_blend_color_ext|)
(defparameter gl::blend-dst cg-user::|gl_blend_dst|)
(defparameter gl::blend-dst-alpha cg-user::|gl_blend_dst_alpha|)
(defparameter gl::blend-dst-alpha-ext cg-user::|gl_blend_dst_alpha_ext|)
(defparameter gl::blend-dst-alpha-oes cg-user::|gl_blend_dst_alpha_oes|)
(defparameter gl::blend-dst-rgb cg-user::|gl_blend_dst_rgb|)
(defparameter gl::blend-dst-rgb-ext cg-user::|gl_blend_dst_rgb_ext|)
(defparameter gl::blend-dst-rgb-oes cg-user::|gl_blend_dst_rgb_oes|)
(defparameter gl::blend-equation cg-user::|gl_blend_equation|)
(defparameter gl::blend-equation-alpha cg-user::|gl_blend_equation_alpha|)
(defparameter gl::blend-equation-alpha-ext cg-user::|gl_blend_equation_alpha_ext|)
(defparameter gl::blend-equation-alpha-oes cg-user::|gl_blend_equation_alpha_oes|)
(defparameter gl::blend-equation-ext cg-user::|gl_blend_equation_ext|)
(defparameter gl::blend-equation-oes cg-user::|gl_blend_equation_oes|)
(defparameter gl::blend-equation-rgb cg-user::|gl_blend_equation_rgb|)
(defparameter gl::blend-equation-rgb-ext cg-user::|gl_blend_equation_rgb_ext|)
(defparameter gl::blend-equation-rgb-oes cg-user::|gl_blend_equation_rgb_oes|)
(defparameter gl::blend-overlap-nv cg-user::|gl_blend_overlap_nv|)
(defparameter gl::blend-premultiplied-src-nv cg-user::|gl_blend_premultiplied_src_nv|)
(defparameter gl::blend-src cg-user::|gl_blend_src|)
(defparameter gl::blend-src-alpha cg-user::|gl_blend_src_alpha|)
(defparameter gl::blend-src-alpha-ext cg-user::|gl_blend_src_alpha_ext|)
(defparameter gl::blend-src-alpha-oes cg-user::|gl_blend_src_alpha_oes|)
(defparameter gl::blend-src-rgb cg-user::|gl_blend_src_rgb|)
(defparameter gl::blend-src-rgb-ext cg-user::|gl_blend_src_rgb_ext|)
(defparameter gl::blend-src-rgb-oes cg-user::|gl_blend_src_rgb_oes|)
(defparameter gl::block-index cg-user::|gl_block_index|)
(defparameter gl::blue cg-user::|gl_blue|)
(defparameter gl::blue-bias cg-user::|gl_blue_bias|)
(defparameter gl::blue-bit-ati cg-user::|gl_blue_bit_ati|)
(defparameter gl::blue-bits cg-user::|gl_blue_bits|)
(defparameter gl::blue-integer cg-user::|gl_blue_integer|)
(defparameter gl::blue-integer-ext cg-user::|gl_blue_integer_ext|)
(defparameter gl::blue-max-clamp-ingr cg-user::|gl_blue_max_clamp_ingr|)
(defparameter gl::blue-min-clamp-ingr cg-user::|gl_blue_min_clamp_ingr|)
(defparameter gl::blue-nv cg-user::|gl_blue_nv|)
(defparameter gl::blue-scale cg-user::|gl_blue_scale|)
(defparameter gl::bold-bit-nv cg-user::|gl_bold_bit_nv|)
(defparameter gl::bool cg-user::|gl_bool|)
(defparameter gl::bool-arb cg-user::|gl_bool_arb|)
(defparameter gl::bool-vec2 cg-user::|gl_bool_vec2|)
(defparameter gl::bool-vec2-arb cg-user::|gl_bool_vec2_arb|)
(defparameter gl::bool-vec3 cg-user::|gl_bool_vec3|)
(defparameter gl::bool-vec3-arb cg-user::|gl_bool_vec3_arb|)
(defparameter gl::bool-vec4 cg-user::|gl_bool_vec4|)
(defparameter gl::bool-vec4-arb cg-user::|gl_bool_vec4_arb|)
(defparameter gl::bounding-box-nv cg-user::|gl_bounding_box_nv|)
(defparameter gl::bounding-box-of-bounding-boxes-nv cg-user::|gl_bounding_box_of_bounding_boxes_nv|)
(defparameter gl::browser-default-webgl cg-user::|gl_browser_default_webgl|)
(defparameter gl::buffer cg-user::|gl_buffer|)
(defparameter gl::buffer-access cg-user::|gl_buffer_access|)
(defparameter gl::buffer-access-arb cg-user::|gl_buffer_access_arb|)
(defparameter gl::buffer-access-flags cg-user::|gl_buffer_access_flags|)
(defparameter gl::buffer-access-oes cg-user::|gl_buffer_access_oes|)
(defparameter gl::buffer-binding cg-user::|gl_buffer_binding|)
(defparameter gl::buffer-data-size cg-user::|gl_buffer_data_size|)
(defparameter gl::buffer-flushing-unmap-apple cg-user::|gl_buffer_flushing_unmap_apple|)
(defparameter gl::buffer-gpu-address-nv cg-user::|gl_buffer_gpu_address_nv|)
(defparameter gl::buffer-immutable-storage cg-user::|gl_buffer_immutable_storage|)
(defparameter gl::buffer-immutable-storage-ext cg-user::|gl_buffer_immutable_storage_ext|)
(defparameter gl::buffer-khr cg-user::|gl_buffer_khr|)
(defparameter gl::buffer-map-length cg-user::|gl_buffer_map_length|)
(defparameter gl::buffer-map-offset cg-user::|gl_buffer_map_offset|)
(defparameter gl::buffer-mapped cg-user::|gl_buffer_mapped|)
(defparameter gl::buffer-mapped-arb cg-user::|gl_buffer_mapped_arb|)
(defparameter gl::buffer-mapped-oes cg-user::|gl_buffer_mapped_oes|)
(defparameter gl::buffer-map-pointer cg-user::|gl_buffer_map_pointer|)
(defparameter gl::buffer-map-pointer-arb cg-user::|gl_buffer_map_pointer_arb|)
(defparameter gl::buffer-map-pointer-oes cg-user::|gl_buffer_map_pointer_oes|)
(defparameter gl::buffer-object-apple cg-user::|gl_buffer_object_apple|)
(defparameter gl::buffer-object-ext cg-user::|gl_buffer_object_ext|)
(defparameter gl::buffer-serialized-modify-apple cg-user::|gl_buffer_serialized_modify_apple|)
(defparameter gl::buffer-size cg-user::|gl_buffer_size|)
(defparameter gl::buffer-size-arb cg-user::|gl_buffer_size_arb|)
(defparameter gl::buffer-storage-flags cg-user::|gl_buffer_storage_flags|)
(defparameter gl::buffer-storage-flags-ext cg-user::|gl_buffer_storage_flags_ext|)
(defparameter gl::buffer-update-barrier-bit cg-user::|gl_buffer_update_barrier_bit|)
(defparameter gl::buffer-update-barrier-bit-ext cg-user::|gl_buffer_update_barrier_bit_ext|)
(defparameter gl::buffer-usage cg-user::|gl_buffer_usage|)
(defparameter gl::buffer-usage-arb cg-user::|gl_buffer_usage_arb|)
(defparameter gl::buffer-variable cg-user::|gl_buffer_variable|)
(defparameter gl::bump-envmap-ati cg-user::|gl_bump_envmap_ati|)
(defparameter gl::bump-num-tex-units-ati cg-user::|gl_bump_num_tex_units_ati|)
(defparameter gl::bump-rot-matrix-ati cg-user::|gl_bump_rot_matrix_ati|)
(defparameter gl::bump-rot-matrix-size-ati cg-user::|gl_bump_rot_matrix_size_ati|)
(defparameter gl::bump-target-ati cg-user::|gl_bump_target_ati|)
(defparameter gl::bump-tex-units-ati cg-user::|gl_bump_tex_units_ati|)
(defparameter gl::byte cg-user::|gl_byte|)
(defparameter gl::c3f-v3f cg-user::|gl_c3f_v3f|)
(defparameter gl::c4f-n3f-v3f cg-user::|gl_c4f_n3f_v3f|)
(defparameter gl::c4ub-v2f cg-user::|gl_c4ub_v2f|)
(defparameter gl::c4ub-v3f cg-user::|gl_c4ub_v3f|)
(defparameter gl::calligraphic-fragment-sgix cg-user::|gl_calligraphic_fragment_sgix|)
(defparameter gl::caveat-support cg-user::|gl_caveat_support|)
(defparameter gl::ccw cg-user::|gl_ccw|)
(defparameter gl::circular-ccw-arc-to-nv cg-user::|gl_circular_ccw_arc_to_nv|)
(defparameter gl::circular-cw-arc-to-nv cg-user::|gl_circular_cw_arc_to_nv|)
(defparameter gl::circular-tangent-arc-to-nv cg-user::|gl_circular_tangent_arc_to_nv|)
(defparameter gl::clamp cg-user::|gl_clamp|)
(defparameter gl::clamp-fragment-color cg-user::|gl_clamp_fragment_color|)
(defparameter gl::clamp-fragment-color-arb cg-user::|gl_clamp_fragment_color_arb|)
(defparameter gl::clamp-read-color cg-user::|gl_clamp_read_color|)
(defparameter gl::clamp-read-color-arb cg-user::|gl_clamp_read_color_arb|)
(defparameter gl::clamp-to-border cg-user::|gl_clamp_to_border|)
(defparameter gl::clamp-to-border-arb cg-user::|gl_clamp_to_border_arb|)
(defparameter gl::clamp-to-border-ext cg-user::|gl_clamp_to_border_ext|)
(defparameter gl::clamp-to-border-nv cg-user::|gl_clamp_to_border_nv|)
(defparameter gl::clamp-to-border-oes cg-user::|gl_clamp_to_border_oes|)
(defparameter gl::clamp-to-border-sgis cg-user::|gl_clamp_to_border_sgis|)
(defparameter gl::clamp-to-edge cg-user::|gl_clamp_to_edge|)
(defparameter gl::clamp-to-edge-sgis cg-user::|gl_clamp_to_edge_sgis|)
(defparameter gl::clamp-vertex-color cg-user::|gl_clamp_vertex_color|)
(defparameter gl::clamp-vertex-color-arb cg-user::|gl_clamp_vertex_color_arb|)
(defparameter gl::clear cg-user::|gl_clear|)
(defparameter gl::clear-buffer cg-user::|gl_clear_buffer|)
(defparameter gl::clear-texture cg-user::|gl_clear_texture|)
(defparameter gl::client-active-texture cg-user::|gl_client_active_texture|)
(defparameter gl::client-active-texture-arb cg-user::|gl_client_active_texture_arb|)
(defparameter gl::client-all-attrib-bits cg-user::|gl_client_all_attrib_bits|)
(defparameter gl::client-attrib-stack-depth cg-user::|gl_client_attrib_stack_depth|)
(defparameter gl::client-mapped-buffer-barrier-bit cg-user::|gl_client_mapped_buffer_barrier_bit|)
(defparameter gl::client-mapped-buffer-barrier-bit-ext cg-user::|gl_client_mapped_buffer_barrier_bit_ext|)
(defparameter gl::client-pixel-store-bit cg-user::|gl_client_pixel_store_bit|)
(defparameter gl::client-storage-bit cg-user::|gl_client_storage_bit|)
(defparameter gl::client-storage-bit-ext cg-user::|gl_client_storage_bit_ext|)
(defparameter gl::client-vertex-array-bit cg-user::|gl_client_vertex_array_bit|)
(defparameter gl::clip-depth-mode cg-user::|gl_clip_depth_mode|)
(defparameter gl::clip-distance0 cg-user::|gl_clip_distance0|)
(defparameter gl::clip-distance0-apple cg-user::|gl_clip_distance0_apple|)
(defparameter gl::clip-distance1 cg-user::|gl_clip_distance1|)
(defparameter gl::clip-distance1-apple cg-user::|gl_clip_distance1_apple|)
(defparameter gl::clip-distance2 cg-user::|gl_clip_distance2|)
(defparameter gl::clip-distance2-apple cg-user::|gl_clip_distance2_apple|)
(defparameter gl::clip-distance3 cg-user::|gl_clip_distance3|)
(defparameter gl::clip-distance3-apple cg-user::|gl_clip_distance3_apple|)
(defparameter gl::clip-distance4 cg-user::|gl_clip_distance4|)
(defparameter gl::clip-distance4-apple cg-user::|gl_clip_distance4_apple|)
(defparameter gl::clip-distance5 cg-user::|gl_clip_distance5|)
(defparameter gl::clip-distance5-apple cg-user::|gl_clip_distance5_apple|)
(defparameter gl::clip-distance6 cg-user::|gl_clip_distance6|)
(defparameter gl::clip-distance6-apple cg-user::|gl_clip_distance6_apple|)
(defparameter gl::clip-distance7 cg-user::|gl_clip_distance7|)
(defparameter gl::clip-distance7-apple cg-user::|gl_clip_distance7_apple|)
(defparameter gl::clip-distance-nv cg-user::|gl_clip_distance_nv|)
(defparameter gl::clip-far-hint-pgi cg-user::|gl_clip_far_hint_pgi|)
(defparameter gl::clip-near-hint-pgi cg-user::|gl_clip_near_hint_pgi|)
(defparameter gl::clip-origin cg-user::|gl_clip_origin|)
(defparameter gl::clipping-input-primitives-arb cg-user::|gl_clipping_input_primitives_arb|)
(defparameter gl::clipping-output-primitives-arb cg-user::|gl_clipping_output_primitives_arb|)
(defparameter gl::clip-plane0 cg-user::|gl_clip_plane0|)
(defparameter gl::clip-plane0-img cg-user::|gl_clip_plane0_img|)
(defparameter gl::clip-plane1 cg-user::|gl_clip_plane1|)
(defparameter gl::clip-plane1-img cg-user::|gl_clip_plane1_img|)
(defparameter gl::clip-plane2 cg-user::|gl_clip_plane2|)
(defparameter gl::clip-plane2-img cg-user::|gl_clip_plane2_img|)
(defparameter gl::clip-plane3 cg-user::|gl_clip_plane3|)
(defparameter gl::clip-plane3-img cg-user::|gl_clip_plane3_img|)
(defparameter gl::clip-plane4 cg-user::|gl_clip_plane4|)
(defparameter gl::clip-plane4-img cg-user::|gl_clip_plane4_img|)
(defparameter gl::clip-plane5 cg-user::|gl_clip_plane5|)
(defparameter gl::clip-plane5-img cg-user::|gl_clip_plane5_img|)
(defparameter gl::clip-volume-clipping-hint-ext cg-user::|gl_clip_volume_clipping_hint_ext|)
(defparameter gl::close-path-nv cg-user::|gl_close_path_nv|)
(defparameter gl::cmyka-ext cg-user::|gl_cmyka_ext|)
(defparameter gl::cmyk-ext cg-user::|gl_cmyk_ext|)
(defparameter gl::cnd0-ati cg-user::|gl_cnd0_ati|)
(defparameter gl::cnd-ati cg-user::|gl_cnd_ati|)
(defparameter gl::coeff cg-user::|gl_coeff|)
(defparameter gl::color cg-user::|gl_color|)
(defparameter gl::color3-bit-pgi cg-user::|gl_color3_bit_pgi|)
(defparameter gl::color4-bit-pgi cg-user::|gl_color4_bit_pgi|)
(defparameter gl::color-alpha-pairing-ati cg-user::|gl_color_alpha_pairing_ati|)
(defparameter gl::color-array cg-user::|gl_color_array|)
(defparameter gl::color-array-address-nv cg-user::|gl_color_array_address_nv|)
(defparameter gl::color-array-buffer-binding cg-user::|gl_color_array_buffer_binding|)
(defparameter gl::color-array-buffer-binding-arb cg-user::|gl_color_array_buffer_binding_arb|)
(defparameter gl::color-array-count-ext cg-user::|gl_color_array_count_ext|)
(defparameter gl::color-array-ext cg-user::|gl_color_array_ext|)
(defparameter gl::color-array-length-nv cg-user::|gl_color_array_length_nv|)
(defparameter gl::color-array-list-ibm cg-user::|gl_color_array_list_ibm|)
(defparameter gl::color-array-list-stride-ibm cg-user::|gl_color_array_list_stride_ibm|)
(defparameter gl::color-array-parallel-pointers-intel cg-user::|gl_color_array_parallel_pointers_intel|)
(defparameter gl::color-array-pointer cg-user::|gl_color_array_pointer|)
(defparameter gl::color-array-pointer-ext cg-user::|gl_color_array_pointer_ext|)
(defparameter gl::color-array-size cg-user::|gl_color_array_size|)
(defparameter gl::color-array-size-ext cg-user::|gl_color_array_size_ext|)
(defparameter gl::color-array-stride cg-user::|gl_color_array_stride|)
(defparameter gl::color-array-stride-ext cg-user::|gl_color_array_stride_ext|)
(defparameter gl::color-array-type cg-user::|gl_color_array_type|)
(defparameter gl::color-array-type-ext cg-user::|gl_color_array_type_ext|)
(defparameter gl::color-attachment0 cg-user::|gl_color_attachment0|)
(defparameter gl::color-attachment0-ext cg-user::|gl_color_attachment0_ext|)
(defparameter gl::color-attachment0-nv cg-user::|gl_color_attachment0_nv|)
(defparameter gl::color-attachment0-oes cg-user::|gl_color_attachment0_oes|)
(defparameter gl::color-attachment1 cg-user::|gl_color_attachment1|)
(defparameter gl::color-attachment10 cg-user::|gl_color_attachment10|)
(defparameter gl::color-attachment10-ext cg-user::|gl_color_attachment10_ext|)
(defparameter gl::color-attachment10-nv cg-user::|gl_color_attachment10_nv|)
(defparameter gl::color-attachment11 cg-user::|gl_color_attachment11|)
(defparameter gl::color-attachment11-ext cg-user::|gl_color_attachment11_ext|)
(defparameter gl::color-attachment11-nv cg-user::|gl_color_attachment11_nv|)
(defparameter gl::color-attachment12 cg-user::|gl_color_attachment12|)
(defparameter gl::color-attachment12-ext cg-user::|gl_color_attachment12_ext|)
(defparameter gl::color-attachment12-nv cg-user::|gl_color_attachment12_nv|)
(defparameter gl::color-attachment13 cg-user::|gl_color_attachment13|)
(defparameter gl::color-attachment13-ext cg-user::|gl_color_attachment13_ext|)
(defparameter gl::color-attachment13-nv cg-user::|gl_color_attachment13_nv|)
(defparameter gl::color-attachment14 cg-user::|gl_color_attachment14|)
(defparameter gl::color-attachment14-ext cg-user::|gl_color_attachment14_ext|)
(defparameter gl::color-attachment14-nv cg-user::|gl_color_attachment14_nv|)
(defparameter gl::color-attachment15 cg-user::|gl_color_attachment15|)
(defparameter gl::color-attachment15-ext cg-user::|gl_color_attachment15_ext|)
(defparameter gl::color-attachment15-nv cg-user::|gl_color_attachment15_nv|)
(defparameter gl::color-attachment16 cg-user::|gl_color_attachment16|)
(defparameter gl::color-attachment17 cg-user::|gl_color_attachment17|)
(defparameter gl::color-attachment18 cg-user::|gl_color_attachment18|)
(defparameter gl::color-attachment19 cg-user::|gl_color_attachment19|)
(defparameter gl::color-attachment1-ext cg-user::|gl_color_attachment1_ext|)
(defparameter gl::color-attachment1-nv cg-user::|gl_color_attachment1_nv|)
(defparameter gl::color-attachment2 cg-user::|gl_color_attachment2|)
(defparameter gl::color-attachment20 cg-user::|gl_color_attachment20|)
(defparameter gl::color-attachment21 cg-user::|gl_color_attachment21|)
(defparameter gl::color-attachment22 cg-user::|gl_color_attachment22|)
(defparameter gl::color-attachment23 cg-user::|gl_color_attachment23|)
(defparameter gl::color-attachment24 cg-user::|gl_color_attachment24|)
(defparameter gl::color-attachment25 cg-user::|gl_color_attachment25|)
(defparameter gl::color-attachment26 cg-user::|gl_color_attachment26|)
(defparameter gl::color-attachment27 cg-user::|gl_color_attachment27|)
(defparameter gl::color-attachment28 cg-user::|gl_color_attachment28|)
(defparameter gl::color-attachment29 cg-user::|gl_color_attachment29|)
(defparameter gl::color-attachment2-ext cg-user::|gl_color_attachment2_ext|)
(defparameter gl::color-attachment2-nv cg-user::|gl_color_attachment2_nv|)
(defparameter gl::color-attachment3 cg-user::|gl_color_attachment3|)
(defparameter gl::color-attachment30 cg-user::|gl_color_attachment30|)
(defparameter gl::color-attachment31 cg-user::|gl_color_attachment31|)
(defparameter gl::color-attachment3-ext cg-user::|gl_color_attachment3_ext|)
(defparameter gl::color-attachment3-nv cg-user::|gl_color_attachment3_nv|)
(defparameter gl::color-attachment4 cg-user::|gl_color_attachment4|)
(defparameter gl::color-attachment4-ext cg-user::|gl_color_attachment4_ext|)
(defparameter gl::color-attachment4-nv cg-user::|gl_color_attachment4_nv|)
(defparameter gl::color-attachment5 cg-user::|gl_color_attachment5|)
(defparameter gl::color-attachment5-ext cg-user::|gl_color_attachment5_ext|)
(defparameter gl::color-attachment5-nv cg-user::|gl_color_attachment5_nv|)
(defparameter gl::color-attachment6 cg-user::|gl_color_attachment6|)
(defparameter gl::color-attachment6-ext cg-user::|gl_color_attachment6_ext|)
(defparameter gl::color-attachment6-nv cg-user::|gl_color_attachment6_nv|)
(defparameter gl::color-attachment7 cg-user::|gl_color_attachment7|)
(defparameter gl::color-attachment7-ext cg-user::|gl_color_attachment7_ext|)
(defparameter gl::color-attachment7-nv cg-user::|gl_color_attachment7_nv|)
(defparameter gl::color-attachment8 cg-user::|gl_color_attachment8|)
(defparameter gl::color-attachment8-ext cg-user::|gl_color_attachment8_ext|)
(defparameter gl::color-attachment8-nv cg-user::|gl_color_attachment8_nv|)
(defparameter gl::color-attachment9 cg-user::|gl_color_attachment9|)
(defparameter gl::color-attachment9-ext cg-user::|gl_color_attachment9_ext|)
(defparameter gl::color-attachment9-nv cg-user::|gl_color_attachment9_nv|)
(defparameter gl::color-attachment-ext cg-user::|gl_color_attachment_ext|)
(defparameter gl::color-buffer-bit cg-user::|gl_color_buffer_bit|)
(defparameter gl::color-buffer-bit0-qcom cg-user::|gl_color_buffer_bit0_qcom|)
(defparameter gl::color-buffer-bit1-qcom cg-user::|gl_color_buffer_bit1_qcom|)
(defparameter gl::color-buffer-bit2-qcom cg-user::|gl_color_buffer_bit2_qcom|)
(defparameter gl::color-buffer-bit3-qcom cg-user::|gl_color_buffer_bit3_qcom|)
(defparameter gl::color-buffer-bit4-qcom cg-user::|gl_color_buffer_bit4_qcom|)
(defparameter gl::color-buffer-bit5-qcom cg-user::|gl_color_buffer_bit5_qcom|)
(defparameter gl::color-buffer-bit6-qcom cg-user::|gl_color_buffer_bit6_qcom|)
(defparameter gl::color-buffer-bit7-qcom cg-user::|gl_color_buffer_bit7_qcom|)
(defparameter gl::colorburn cg-user::|gl_colorburn|)
(defparameter gl::colorburn-khr cg-user::|gl_colorburn_khr|)
(defparameter gl::colorburn-nv cg-user::|gl_colorburn_nv|)
(defparameter gl::color-clear-unclamped-value-ati cg-user::|gl_color_clear_unclamped_value_ati|)
(defparameter gl::color-clear-value cg-user::|gl_color_clear_value|)
(defparameter gl::color-components cg-user::|gl_color_components|)
(defparameter gl::colordodge cg-user::|gl_colordodge|)
(defparameter gl::colordodge-khr cg-user::|gl_colordodge_khr|)
(defparameter gl::colordodge-nv cg-user::|gl_colordodge_nv|)
(defparameter gl::color-encoding cg-user::|gl_color_encoding|)
(defparameter gl::color-ext cg-user::|gl_color_ext|)
(defparameter gl::color-float-apple cg-user::|gl_color_float_apple|)
(defparameter gl::color-index cg-user::|gl_color_index|)
(defparameter gl::color-index12-ext cg-user::|gl_color_index12_ext|)
(defparameter gl::color-index16-ext cg-user::|gl_color_index16_ext|)
(defparameter gl::color-index1-ext cg-user::|gl_color_index1_ext|)
(defparameter gl::color-index2-ext cg-user::|gl_color_index2_ext|)
(defparameter gl::color-index4-ext cg-user::|gl_color_index4_ext|)
(defparameter gl::color-index8-ext cg-user::|gl_color_index8_ext|)
(defparameter gl::color-indexes cg-user::|gl_color_indexes|)
(defparameter gl::color-logic-op cg-user::|gl_color_logic_op|)
(defparameter gl::color-material cg-user::|gl_color_material|)
(defparameter gl::color-material-face cg-user::|gl_color_material_face|)
(defparameter gl::color-material-parameter cg-user::|gl_color_material_parameter|)
(defparameter gl::color-matrix cg-user::|gl_color_matrix|)
(defparameter gl::color-matrix-sgi cg-user::|gl_color_matrix_sgi|)
(defparameter gl::color-matrix-stack-depth cg-user::|gl_color_matrix_stack_depth|)
(defparameter gl::color-matrix-stack-depth-sgi cg-user::|gl_color_matrix_stack_depth_sgi|)
(defparameter gl::color-renderable cg-user::|gl_color_renderable|)
(defparameter gl::color-samples-nv cg-user::|gl_color_samples_nv|)
(defparameter gl::color-sum cg-user::|gl_color_sum|)
(defparameter gl::color-sum-arb cg-user::|gl_color_sum_arb|)
(defparameter gl::color-sum-clamp-nv cg-user::|gl_color_sum_clamp_nv|)
(defparameter gl::color-sum-ext cg-user::|gl_color_sum_ext|)
(defparameter gl::color-table cg-user::|gl_color_table|)
(defparameter gl::color-table-alpha-size cg-user::|gl_color_table_alpha_size|)
(defparameter gl::color-table-alpha-size-sgi cg-user::|gl_color_table_alpha_size_sgi|)
(defparameter gl::color-table-bias cg-user::|gl_color_table_bias|)
(defparameter gl::color-table-bias-sgi cg-user::|gl_color_table_bias_sgi|)
(defparameter gl::color-table-blue-size cg-user::|gl_color_table_blue_size|)
(defparameter gl::color-table-blue-size-sgi cg-user::|gl_color_table_blue_size_sgi|)
(defparameter gl::color-table-format cg-user::|gl_color_table_format|)
(defparameter gl::color-table-format-sgi cg-user::|gl_color_table_format_sgi|)
(defparameter gl::color-table-green-size cg-user::|gl_color_table_green_size|)
(defparameter gl::color-table-green-size-sgi cg-user::|gl_color_table_green_size_sgi|)
(defparameter gl::color-table-intensity-size cg-user::|gl_color_table_intensity_size|)
(defparameter gl::color-table-intensity-size-sgi cg-user::|gl_color_table_intensity_size_sgi|)
(defparameter gl::color-table-luminance-size cg-user::|gl_color_table_luminance_size|)
(defparameter gl::color-table-luminance-size-sgi cg-user::|gl_color_table_luminance_size_sgi|)
(defparameter gl::color-table-red-size cg-user::|gl_color_table_red_size|)
(defparameter gl::color-table-red-size-sgi cg-user::|gl_color_table_red_size_sgi|)
(defparameter gl::color-table-scale cg-user::|gl_color_table_scale|)
(defparameter gl::color-table-scale-sgi cg-user::|gl_color_table_scale_sgi|)
(defparameter gl::color-table-sgi cg-user::|gl_color_table_sgi|)
(defparameter gl::color-table-width cg-user::|gl_color_table_width|)
(defparameter gl::color-table-width-sgi cg-user::|gl_color_table_width_sgi|)
(defparameter gl::color-writemask cg-user::|gl_color_writemask|)
(defparameter gl::combine cg-user::|gl_combine|)
(defparameter gl::combine4-nv cg-user::|gl_combine4_nv|)
(defparameter gl::combine-alpha cg-user::|gl_combine_alpha|)
(defparameter gl::combine-alpha-arb cg-user::|gl_combine_alpha_arb|)
(defparameter gl::combine-alpha-ext cg-user::|gl_combine_alpha_ext|)
(defparameter gl::combine-arb cg-user::|gl_combine_arb|)
(defparameter gl::combine-ext cg-user::|gl_combine_ext|)
(defparameter gl::combiner0-nv cg-user::|gl_combiner0_nv|)
(defparameter gl::combiner1-nv cg-user::|gl_combiner1_nv|)
(defparameter gl::combiner2-nv cg-user::|gl_combiner2_nv|)
(defparameter gl::combiner3-nv cg-user::|gl_combiner3_nv|)
(defparameter gl::combiner4-nv cg-user::|gl_combiner4_nv|)
(defparameter gl::combiner5-nv cg-user::|gl_combiner5_nv|)
(defparameter gl::combiner6-nv cg-user::|gl_combiner6_nv|)
(defparameter gl::combiner7-nv cg-user::|gl_combiner7_nv|)
(defparameter gl::combiner-ab-dot-product-nv cg-user::|gl_combiner_ab_dot_product_nv|)
(defparameter gl::combiner-ab-output-nv cg-user::|gl_combiner_ab_output_nv|)
(defparameter gl::combiner-bias-nv cg-user::|gl_combiner_bias_nv|)
(defparameter gl::combiner-cd-dot-product-nv cg-user::|gl_combiner_cd_dot_product_nv|)
(defparameter gl::combiner-cd-output-nv cg-user::|gl_combiner_cd_output_nv|)
(defparameter gl::combiner-component-usage-nv cg-user::|gl_combiner_component_usage_nv|)
(defparameter gl::combine-rgb cg-user::|gl_combine_rgb|)
(defparameter gl::combine-rgb-arb cg-user::|gl_combine_rgb_arb|)
(defparameter gl::combine-rgb-ext cg-user::|gl_combine_rgb_ext|)
(defparameter gl::combiner-input-nv cg-user::|gl_combiner_input_nv|)
(defparameter gl::combiner-mapping-nv cg-user::|gl_combiner_mapping_nv|)
(defparameter gl::combiner-mux-sum-nv cg-user::|gl_combiner_mux_sum_nv|)
(defparameter gl::combiner-scale-nv cg-user::|gl_combiner_scale_nv|)
(defparameter gl::combiner-sum-output-nv cg-user::|gl_combiner_sum_output_nv|)
(defparameter gl::command-barrier-bit cg-user::|gl_command_barrier_bit|)
(defparameter gl::command-barrier-bit-ext cg-user::|gl_command_barrier_bit_ext|)
(defparameter gl::compare-ref-depth-to-texture-ext cg-user::|gl_compare_ref_depth_to_texture_ext|)
(defparameter gl::compare-ref-to-texture cg-user::|gl_compare_ref_to_texture|)
(defparameter gl::compare-ref-to-texture-ext cg-user::|gl_compare_ref_to_texture_ext|)
(defparameter gl::compare-r-to-texture cg-user::|gl_compare_r_to_texture|)
(defparameter gl::compare-r-to-texture-arb cg-user::|gl_compare_r_to_texture_arb|)
(defparameter gl::compatible-subroutines cg-user::|gl_compatible_subroutines|)
(defparameter gl::comp-bit-ati cg-user::|gl_comp_bit_ati|)
(defparameter gl::compile cg-user::|gl_compile|)
(defparameter gl::compile-and-execute cg-user::|gl_compile_and_execute|)
(defparameter gl::compile-status cg-user::|gl_compile_status|)
(defparameter gl::completion-status-arb cg-user::|gl_completion_status_arb|)
(defparameter gl::compressed-alpha cg-user::|gl_compressed_alpha|)
(defparameter gl::compressed-alpha-arb cg-user::|gl_compressed_alpha_arb|)
(defparameter gl::compressed-intensity cg-user::|gl_compressed_intensity|)
(defparameter gl::compressed-intensity-arb cg-user::|gl_compressed_intensity_arb|)
(defparameter gl::compressed-luminance cg-user::|gl_compressed_luminance|)
(defparameter gl::compressed-luminance-alpha cg-user::|gl_compressed_luminance_alpha|)
(defparameter gl::compressed-luminance-alpha-3dc-ati cg-user::|gl_compressed_luminance_alpha_3dc_ati|)
(defparameter gl::compressed-luminance-alpha-arb cg-user::|gl_compressed_luminance_alpha_arb|)
(defparameter gl::compressed-luminance-alpha-latc2-ext cg-user::|gl_compressed_luminance_alpha_latc2_ext|)
(defparameter gl::compressed-luminance-arb cg-user::|gl_compressed_luminance_arb|)
(defparameter gl::compressed-luminance-latc1-ext cg-user::|gl_compressed_luminance_latc1_ext|)
(defparameter gl::compressed-r11-eac cg-user::|gl_compressed_r11_eac|)
(defparameter gl::compressed-r11-eac-oes cg-user::|gl_compressed_r11_eac_oes|)
(defparameter gl::compressed-red cg-user::|gl_compressed_red|)
(defparameter gl::compressed-red-green-rgtc2-ext cg-user::|gl_compressed_red_green_rgtc2_ext|)
(defparameter gl::compressed-red-rgtc1 cg-user::|gl_compressed_red_rgtc1|)
(defparameter gl::compressed-red-rgtc1-ext cg-user::|gl_compressed_red_rgtc1_ext|)
(defparameter gl::compressed-rg cg-user::|gl_compressed_rg|)
(defparameter gl::compressed-rg11-eac cg-user::|gl_compressed_rg11_eac|)
(defparameter gl::compressed-rg11-eac-oes cg-user::|gl_compressed_rg11_eac_oes|)
(defparameter gl::compressed-rgb cg-user::|gl_compressed_rgb|)
(defparameter gl::compressed-rgb8-etc2 cg-user::|gl_compressed_rgb8_etc2|)
(defparameter gl::compressed-rgb8-etc2-oes cg-user::|gl_compressed_rgb8_etc2_oes|)
(defparameter gl::compressed-rgb8-punchthrough-alpha1-etc2 cg-user::|gl_compressed_rgb8_punchthrough_alpha1_etc2|)
(defparameter gl::compressed-rgb8-punchthrough-alpha1-etc2-oes cg-user::|gl_compressed_rgb8_punchthrough_alpha1_etc2_oes|)
(defparameter gl::compressed-rgba cg-user::|gl_compressed_rgba|)
(defparameter gl::compressed-rgba8-etc2-eac cg-user::|gl_compressed_rgba8_etc2_eac|)
(defparameter gl::compressed-rgba8-etc2-eac-oes cg-user::|gl_compressed_rgba8_etc2_eac_oes|)
(defparameter gl::compressed-rgba-arb cg-user::|gl_compressed_rgba_arb|)
(defparameter gl::compressed-rgba-astc-10x10 cg-user::|gl_compressed_rgba_astc_10x10|)
(defparameter gl::compressed-rgba-astc-10x10-khr cg-user::|gl_compressed_rgba_astc_10x10_khr|)
(defparameter gl::compressed-rgba-astc-10x5 cg-user::|gl_compressed_rgba_astc_10x5|)
(defparameter gl::compressed-rgba-astc-10x5-khr cg-user::|gl_compressed_rgba_astc_10x5_khr|)
(defparameter gl::compressed-rgba-astc-10x6 cg-user::|gl_compressed_rgba_astc_10x6|)
(defparameter gl::compressed-rgba-astc-10x6-khr cg-user::|gl_compressed_rgba_astc_10x6_khr|)
(defparameter gl::compressed-rgba-astc-10x8 cg-user::|gl_compressed_rgba_astc_10x8|)
(defparameter gl::compressed-rgba-astc-10x8-khr cg-user::|gl_compressed_rgba_astc_10x8_khr|)
(defparameter gl::compressed-rgba-astc-12x10 cg-user::|gl_compressed_rgba_astc_12x10|)
(defparameter gl::compressed-rgba-astc-12x10-khr cg-user::|gl_compressed_rgba_astc_12x10_khr|)
(defparameter gl::compressed-rgba-astc-12x12 cg-user::|gl_compressed_rgba_astc_12x12|)
(defparameter gl::compressed-rgba-astc-12x12-khr cg-user::|gl_compressed_rgba_astc_12x12_khr|)
(defparameter gl::compressed-rgba-astc-3x3x3-oes cg-user::|gl_compressed_rgba_astc_3x3x3_oes|)
(defparameter gl::compressed-rgba-astc-4x3x3-oes cg-user::|gl_compressed_rgba_astc_4x3x3_oes|)
(defparameter gl::compressed-rgba-astc-4x4 cg-user::|gl_compressed_rgba_astc_4x4|)
(defparameter gl::compressed-rgba-astc-4x4-khr cg-user::|gl_compressed_rgba_astc_4x4_khr|)
(defparameter gl::compressed-rgba-astc-4x4x3-oes cg-user::|gl_compressed_rgba_astc_4x4x3_oes|)
(defparameter gl::compressed-rgba-astc-4x4x4-oes cg-user::|gl_compressed_rgba_astc_4x4x4_oes|)
(defparameter gl::compressed-rgba-astc-5x4 cg-user::|gl_compressed_rgba_astc_5x4|)
(defparameter gl::compressed-rgba-astc-5x4-khr cg-user::|gl_compressed_rgba_astc_5x4_khr|)
(defparameter gl::compressed-rgba-astc-5x4x4-oes cg-user::|gl_compressed_rgba_astc_5x4x4_oes|)
(defparameter gl::compressed-rgba-astc-5x5 cg-user::|gl_compressed_rgba_astc_5x5|)
(defparameter gl::compressed-rgba-astc-5x5-khr cg-user::|gl_compressed_rgba_astc_5x5_khr|)
(defparameter gl::compressed-rgba-astc-5x5x4-oes cg-user::|gl_compressed_rgba_astc_5x5x4_oes|)
(defparameter gl::compressed-rgba-astc-5x5x5-oes cg-user::|gl_compressed_rgba_astc_5x5x5_oes|)
(defparameter gl::compressed-rgba-astc-6x5 cg-user::|gl_compressed_rgba_astc_6x5|)
(defparameter gl::compressed-rgba-astc-6x5-khr cg-user::|gl_compressed_rgba_astc_6x5_khr|)
(defparameter gl::compressed-rgba-astc-6x5x5-oes cg-user::|gl_compressed_rgba_astc_6x5x5_oes|)
(defparameter gl::compressed-rgba-astc-6x6 cg-user::|gl_compressed_rgba_astc_6x6|)
(defparameter gl::compressed-rgba-astc-6x6-khr cg-user::|gl_compressed_rgba_astc_6x6_khr|)
(defparameter gl::compressed-rgba-astc-6x6x5-oes cg-user::|gl_compressed_rgba_astc_6x6x5_oes|)
(defparameter gl::compressed-rgba-astc-6x6x6-oes cg-user::|gl_compressed_rgba_astc_6x6x6_oes|)
(defparameter gl::compressed-rgba-astc-8x5 cg-user::|gl_compressed_rgba_astc_8x5|)
(defparameter gl::compressed-rgba-astc-8x5-khr cg-user::|gl_compressed_rgba_astc_8x5_khr|)
(defparameter gl::compressed-rgba-astc-8x6 cg-user::|gl_compressed_rgba_astc_8x6|)
(defparameter gl::compressed-rgba-astc-8x6-khr cg-user::|gl_compressed_rgba_astc_8x6_khr|)
(defparameter gl::compressed-rgba-astc-8x8 cg-user::|gl_compressed_rgba_astc_8x8|)
(defparameter gl::compressed-rgba-astc-8x8-khr cg-user::|gl_compressed_rgba_astc_8x8_khr|)
(defparameter gl::compressed-rgba-bptc-unorm cg-user::|gl_compressed_rgba_bptc_unorm|)
(defparameter gl::compressed-rgba-bptc-unorm-arb cg-user::|gl_compressed_rgba_bptc_unorm_arb|)
(defparameter gl::compressed-rgba-fxt1-3dfx cg-user::|gl_compressed_rgba_fxt1_3dfx|)
(defparameter gl::compressed-rgba-pvrtc-2bppv1-img cg-user::|gl_compressed_rgba_pvrtc_2bppv1_img|)
(defparameter gl::compressed-rgba-pvrtc-2bppv2-img cg-user::|gl_compressed_rgba_pvrtc_2bppv2_img|)
(defparameter gl::compressed-rgba-pvrtc-4bppv1-img cg-user::|gl_compressed_rgba_pvrtc_4bppv1_img|)
(defparameter gl::compressed-rgba-pvrtc-4bppv2-img cg-user::|gl_compressed_rgba_pvrtc_4bppv2_img|)
(defparameter gl::compressed-rgb-arb cg-user::|gl_compressed_rgb_arb|)
(defparameter gl::compressed-rgba-s3tc-dxt1-ext cg-user::|gl_compressed_rgba_s3tc_dxt1_ext|)
(defparameter gl::compressed-rgba-s3tc-dxt3-angle cg-user::|gl_compressed_rgba_s3tc_dxt3_angle|)
(defparameter gl::compressed-rgba-s3tc-dxt3-ext cg-user::|gl_compressed_rgba_s3tc_dxt3_ext|)
(defparameter gl::compressed-rgba-s3tc-dxt5-angle cg-user::|gl_compressed_rgba_s3tc_dxt5_angle|)
(defparameter gl::compressed-rgba-s3tc-dxt5-ext cg-user::|gl_compressed_rgba_s3tc_dxt5_ext|)
(defparameter gl::compressed-rgb-bptc-signed-float cg-user::|gl_compressed_rgb_bptc_signed_float|)
(defparameter gl::compressed-rgb-bptc-signed-float-arb cg-user::|gl_compressed_rgb_bptc_signed_float_arb|)
(defparameter gl::compressed-rgb-bptc-unsigned-float cg-user::|gl_compressed_rgb_bptc_unsigned_float|)
(defparameter gl::compressed-rgb-bptc-unsigned-float-arb cg-user::|gl_compressed_rgb_bptc_unsigned_float_arb|)
(defparameter gl::compressed-rgb-fxt1-3dfx cg-user::|gl_compressed_rgb_fxt1_3dfx|)
(defparameter gl::compressed-rgb-pvrtc-2bppv1-img cg-user::|gl_compressed_rgb_pvrtc_2bppv1_img|)
(defparameter gl::compressed-rgb-pvrtc-4bppv1-img cg-user::|gl_compressed_rgb_pvrtc_4bppv1_img|)
(defparameter gl::compressed-rgb-s3tc-dxt1-ext cg-user::|gl_compressed_rgb_s3tc_dxt1_ext|)
(defparameter gl::compressed-rg-rgtc2 cg-user::|gl_compressed_rg_rgtc2|)
(defparameter gl::compressed-signed-luminance-alpha-latc2-ext cg-user::|gl_compressed_signed_luminance_alpha_latc2_ext|)
(defparameter gl::compressed-signed-luminance-latc1-ext cg-user::|gl_compressed_signed_luminance_latc1_ext|)
(defparameter gl::compressed-signed-r11-eac cg-user::|gl_compressed_signed_r11_eac|)
(defparameter gl::compressed-signed-r11-eac-oes cg-user::|gl_compressed_signed_r11_eac_oes|)
(defparameter gl::compressed-signed-red-green-rgtc2-ext cg-user::|gl_compressed_signed_red_green_rgtc2_ext|)
(defparameter gl::compressed-signed-red-rgtc1 cg-user::|gl_compressed_signed_red_rgtc1|)
(defparameter gl::compressed-signed-red-rgtc1-ext cg-user::|gl_compressed_signed_red_rgtc1_ext|)
(defparameter gl::compressed-signed-rg11-eac cg-user::|gl_compressed_signed_rg11_eac|)
(defparameter gl::compressed-signed-rg11-eac-oes cg-user::|gl_compressed_signed_rg11_eac_oes|)
(defparameter gl::compressed-signed-rg-rgtc2 cg-user::|gl_compressed_signed_rg_rgtc2|)
(defparameter gl::compressed-sluminance cg-user::|gl_compressed_sluminance|)
(defparameter gl::compressed-sluminance-alpha cg-user::|gl_compressed_sluminance_alpha|)
(defparameter gl::compressed-sluminance-alpha-ext cg-user::|gl_compressed_sluminance_alpha_ext|)
(defparameter gl::compressed-sluminance-ext cg-user::|gl_compressed_sluminance_ext|)
(defparameter gl::compressed-srgb cg-user::|gl_compressed_srgb|)
(defparameter gl::compressed-srgb8-alpha8-astc-10x10 cg-user::|gl_compressed_srgb8_alpha8_astc_10x10|)
(defparameter gl::compressed-srgb8-alpha8-astc-10x10-khr cg-user::|gl_compressed_srgb8_alpha8_astc_10x10_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-10x5 cg-user::|gl_compressed_srgb8_alpha8_astc_10x5|)
(defparameter gl::compressed-srgb8-alpha8-astc-10x5-khr cg-user::|gl_compressed_srgb8_alpha8_astc_10x5_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-10x6 cg-user::|gl_compressed_srgb8_alpha8_astc_10x6|)
(defparameter gl::compressed-srgb8-alpha8-astc-10x6-khr cg-user::|gl_compressed_srgb8_alpha8_astc_10x6_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-10x8 cg-user::|gl_compressed_srgb8_alpha8_astc_10x8|)
(defparameter gl::compressed-srgb8-alpha8-astc-10x8-khr cg-user::|gl_compressed_srgb8_alpha8_astc_10x8_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-12x10 cg-user::|gl_compressed_srgb8_alpha8_astc_12x10|)
(defparameter gl::compressed-srgb8-alpha8-astc-12x10-khr cg-user::|gl_compressed_srgb8_alpha8_astc_12x10_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-12x12 cg-user::|gl_compressed_srgb8_alpha8_astc_12x12|)
(defparameter gl::compressed-srgb8-alpha8-astc-12x12-khr cg-user::|gl_compressed_srgb8_alpha8_astc_12x12_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-3x3x3-oes cg-user::|gl_compressed_srgb8_alpha8_astc_3x3x3_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-4x3x3-oes cg-user::|gl_compressed_srgb8_alpha8_astc_4x3x3_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-4x4 cg-user::|gl_compressed_srgb8_alpha8_astc_4x4|)
(defparameter gl::compressed-srgb8-alpha8-astc-4x4-khr cg-user::|gl_compressed_srgb8_alpha8_astc_4x4_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-4x4x3-oes cg-user::|gl_compressed_srgb8_alpha8_astc_4x4x3_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-4x4x4-oes cg-user::|gl_compressed_srgb8_alpha8_astc_4x4x4_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-5x4 cg-user::|gl_compressed_srgb8_alpha8_astc_5x4|)
(defparameter gl::compressed-srgb8-alpha8-astc-5x4-khr cg-user::|gl_compressed_srgb8_alpha8_astc_5x4_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-5x4x4-oes cg-user::|gl_compressed_srgb8_alpha8_astc_5x4x4_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-5x5 cg-user::|gl_compressed_srgb8_alpha8_astc_5x5|)
(defparameter gl::compressed-srgb8-alpha8-astc-5x5-khr cg-user::|gl_compressed_srgb8_alpha8_astc_5x5_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-5x5x4-oes cg-user::|gl_compressed_srgb8_alpha8_astc_5x5x4_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-5x5x5-oes cg-user::|gl_compressed_srgb8_alpha8_astc_5x5x5_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-6x5 cg-user::|gl_compressed_srgb8_alpha8_astc_6x5|)
(defparameter gl::compressed-srgb8-alpha8-astc-6x5-khr cg-user::|gl_compressed_srgb8_alpha8_astc_6x5_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-6x5x5-oes cg-user::|gl_compressed_srgb8_alpha8_astc_6x5x5_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-6x6 cg-user::|gl_compressed_srgb8_alpha8_astc_6x6|)
(defparameter gl::compressed-srgb8-alpha8-astc-6x6-khr cg-user::|gl_compressed_srgb8_alpha8_astc_6x6_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-6x6x5-oes cg-user::|gl_compressed_srgb8_alpha8_astc_6x6x5_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-6x6x6-oes cg-user::|gl_compressed_srgb8_alpha8_astc_6x6x6_oes|)
(defparameter gl::compressed-srgb8-alpha8-astc-8x5 cg-user::|gl_compressed_srgb8_alpha8_astc_8x5|)
(defparameter gl::compressed-srgb8-alpha8-astc-8x5-khr cg-user::|gl_compressed_srgb8_alpha8_astc_8x5_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-8x6 cg-user::|gl_compressed_srgb8_alpha8_astc_8x6|)
(defparameter gl::compressed-srgb8-alpha8-astc-8x6-khr cg-user::|gl_compressed_srgb8_alpha8_astc_8x6_khr|)
(defparameter gl::compressed-srgb8-alpha8-astc-8x8 cg-user::|gl_compressed_srgb8_alpha8_astc_8x8|)
(defparameter gl::compressed-srgb8-alpha8-astc-8x8-khr cg-user::|gl_compressed_srgb8_alpha8_astc_8x8_khr|)
(defparameter gl::compressed-srgb8-alpha8-etc2-eac cg-user::|gl_compressed_srgb8_alpha8_etc2_eac|)
(defparameter gl::compressed-srgb8-alpha8-etc2-eac-oes cg-user::|gl_compressed_srgb8_alpha8_etc2_eac_oes|)
(defparameter gl::compressed-srgb8-etc2 cg-user::|gl_compressed_srgb8_etc2|)
(defparameter gl::compressed-srgb8-etc2-oes cg-user::|gl_compressed_srgb8_etc2_oes|)
(defparameter gl::compressed-srgb8-punchthrough-alpha1-etc2 cg-user::|gl_compressed_srgb8_punchthrough_alpha1_etc2|)
(defparameter gl::compressed-srgb8-punchthrough-alpha1-etc2-oes cg-user::|gl_compressed_srgb8_punchthrough_alpha1_etc2_oes|)
(defparameter gl::compressed-srgb-alpha cg-user::|gl_compressed_srgb_alpha|)
(defparameter gl::compressed-srgb-alpha-bptc-unorm cg-user::|gl_compressed_srgb_alpha_bptc_unorm|)
(defparameter gl::compressed-srgb-alpha-bptc-unorm-arb cg-user::|gl_compressed_srgb_alpha_bptc_unorm_arb|)
(defparameter gl::compressed-srgb-alpha-ext cg-user::|gl_compressed_srgb_alpha_ext|)
(defparameter gl::compressed-srgb-alpha-pvrtc-2bppv1-ext cg-user::|gl_compressed_srgb_alpha_pvrtc_2bppv1_ext|)
(defparameter gl::compressed-srgb-alpha-pvrtc-2bppv2-img cg-user::|gl_compressed_srgb_alpha_pvrtc_2bppv2_img|)
(defparameter gl::compressed-srgb-alpha-pvrtc-4bppv1-ext cg-user::|gl_compressed_srgb_alpha_pvrtc_4bppv1_ext|)
(defparameter gl::compressed-srgb-alpha-pvrtc-4bppv2-img cg-user::|gl_compressed_srgb_alpha_pvrtc_4bppv2_img|)
(defparameter gl::compressed-srgb-alpha-s3tc-dxt1-ext cg-user::|gl_compressed_srgb_alpha_s3tc_dxt1_ext|)
(defparameter gl::compressed-srgb-alpha-s3tc-dxt1-nv cg-user::|gl_compressed_srgb_alpha_s3tc_dxt1_nv|)
(defparameter gl::compressed-srgb-alpha-s3tc-dxt3-ext cg-user::|gl_compressed_srgb_alpha_s3tc_dxt3_ext|)
(defparameter gl::compressed-srgb-alpha-s3tc-dxt3-nv cg-user::|gl_compressed_srgb_alpha_s3tc_dxt3_nv|)
(defparameter gl::compressed-srgb-alpha-s3tc-dxt5-ext cg-user::|gl_compressed_srgb_alpha_s3tc_dxt5_ext|)
(defparameter gl::compressed-srgb-alpha-s3tc-dxt5-nv cg-user::|gl_compressed_srgb_alpha_s3tc_dxt5_nv|)
(defparameter gl::compressed-srgb-ext cg-user::|gl_compressed_srgb_ext|)
(defparameter gl::compressed-srgb-pvrtc-2bppv1-ext cg-user::|gl_compressed_srgb_pvrtc_2bppv1_ext|)
(defparameter gl::compressed-srgb-pvrtc-4bppv1-ext cg-user::|gl_compressed_srgb_pvrtc_4bppv1_ext|)
(defparameter gl::compressed-srgb-s3tc-dxt1-ext cg-user::|gl_compressed_srgb_s3tc_dxt1_ext|)
(defparameter gl::compressed-srgb-s3tc-dxt1-nv cg-user::|gl_compressed_srgb_s3tc_dxt1_nv|)
(defparameter gl::compressed-texture-formats cg-user::|gl_compressed_texture_formats|)
(defparameter gl::compressed-texture-formats-arb cg-user::|gl_compressed_texture_formats_arb|)
(defparameter gl::compute-program-nv cg-user::|gl_compute_program_nv|)
(defparameter gl::compute-program-parameter-buffer-nv cg-user::|gl_compute_program_parameter_buffer_nv|)
(defparameter gl::compute-shader cg-user::|gl_compute_shader|)
(defparameter gl::compute-shader-bit cg-user::|gl_compute_shader_bit|)
(defparameter gl::compute-shader-invocations-arb cg-user::|gl_compute_shader_invocations_arb|)
(defparameter gl::compute-subroutine cg-user::|gl_compute_subroutine|)
(defparameter gl::compute-subroutine-uniform cg-user::|gl_compute_subroutine_uniform|)
(defparameter gl::compute-texture cg-user::|gl_compute_texture|)
(defparameter gl::compute-work-group-size cg-user::|gl_compute_work_group_size|)
(defparameter gl::con-0-ati cg-user::|gl_con_0_ati|)
(defparameter gl::con-10-ati cg-user::|gl_con_10_ati|)
(defparameter gl::con-11-ati cg-user::|gl_con_11_ati|)
(defparameter gl::con-12-ati cg-user::|gl_con_12_ati|)
(defparameter gl::con-13-ati cg-user::|gl_con_13_ati|)
(defparameter gl::con-14-ati cg-user::|gl_con_14_ati|)
(defparameter gl::con-15-ati cg-user::|gl_con_15_ati|)
(defparameter gl::con-16-ati cg-user::|gl_con_16_ati|)
(defparameter gl::con-17-ati cg-user::|gl_con_17_ati|)
(defparameter gl::con-18-ati cg-user::|gl_con_18_ati|)
(defparameter gl::con-19-ati cg-user::|gl_con_19_ati|)
(defparameter gl::con-1-ati cg-user::|gl_con_1_ati|)
(defparameter gl::con-20-ati cg-user::|gl_con_20_ati|)
(defparameter gl::con-21-ati cg-user::|gl_con_21_ati|)
(defparameter gl::con-22-ati cg-user::|gl_con_22_ati|)
(defparameter gl::con-23-ati cg-user::|gl_con_23_ati|)
(defparameter gl::con-24-ati cg-user::|gl_con_24_ati|)
(defparameter gl::con-25-ati cg-user::|gl_con_25_ati|)
(defparameter gl::con-26-ati cg-user::|gl_con_26_ati|)
(defparameter gl::con-27-ati cg-user::|gl_con_27_ati|)
(defparameter gl::con-28-ati cg-user::|gl_con_28_ati|)
(defparameter gl::con-29-ati cg-user::|gl_con_29_ati|)
(defparameter gl::con-2-ati cg-user::|gl_con_2_ati|)
(defparameter gl::con-30-ati cg-user::|gl_con_30_ati|)
(defparameter gl::con-31-ati cg-user::|gl_con_31_ati|)
(defparameter gl::con-3-ati cg-user::|gl_con_3_ati|)
(defparameter gl::con-4-ati cg-user::|gl_con_4_ati|)
(defparameter gl::con-5-ati cg-user::|gl_con_5_ati|)
(defparameter gl::con-6-ati cg-user::|gl_con_6_ati|)
(defparameter gl::con-7-ati cg-user::|gl_con_7_ati|)
(defparameter gl::con-8-ati cg-user::|gl_con_8_ati|)
(defparameter gl::con-9-ati cg-user::|gl_con_9_ati|)
(defparameter gl::condition-satisfied cg-user::|gl_condition_satisfied|)
(defparameter gl::condition-satisfied-apple cg-user::|gl_condition_satisfied_apple|)
(defparameter gl::conformant-nv cg-user::|gl_conformant_nv|)
(defparameter gl::conic-curve-to-nv cg-user::|gl_conic_curve_to_nv|)
(defparameter gl::conjoint-nv cg-user::|gl_conjoint_nv|)
(defparameter gl::conservative-raster-dilate-granularity-nv cg-user::|gl_conservative_raster_dilate_granularity_nv|)
(defparameter gl::conservative-raster-dilate-nv cg-user::|gl_conservative_raster_dilate_nv|)
(defparameter gl::conservative-raster-dilate-range-nv cg-user::|gl_conservative_raster_dilate_range_nv|)
(defparameter gl::conservative-rasterization-nv cg-user::|gl_conservative_rasterization_nv|)
(defparameter gl::conserve-memory-hint-pgi cg-user::|gl_conserve_memory_hint_pgi|)
(defparameter gl::constant cg-user::|gl_constant|)
(defparameter gl::constant-alpha cg-user::|gl_constant_alpha|)
(defparameter gl::constant-alpha-ext cg-user::|gl_constant_alpha_ext|)
(defparameter gl::constant-arb cg-user::|gl_constant_arb|)
(defparameter gl::constant-attenuation cg-user::|gl_constant_attenuation|)
(defparameter gl::constant-border cg-user::|gl_constant_border|)
(defparameter gl::constant-border-hp cg-user::|gl_constant_border_hp|)
(defparameter gl::constant-color cg-user::|gl_constant_color|)
(defparameter gl::constant-color0-nv cg-user::|gl_constant_color0_nv|)
(defparameter gl::constant-color1-nv cg-user::|gl_constant_color1_nv|)
(defparameter gl::constant-color-ext cg-user::|gl_constant_color_ext|)
(defparameter gl::constant-ext cg-user::|gl_constant_ext|)
(defparameter gl::constant-nv cg-user::|gl_constant_nv|)
(defparameter gl::const-eye-nv cg-user::|gl_const_eye_nv|)
(defparameter gl::context-compatibility-profile-bit cg-user::|gl_context_compatibility_profile_bit|)
(defparameter gl::context-core-profile-bit cg-user::|gl_context_core_profile_bit|)
(defparameter gl::context-flag-debug-bit cg-user::|gl_context_flag_debug_bit|)
(defparameter gl::context-flag-debug-bit-khr cg-user::|gl_context_flag_debug_bit_khr|)
(defparameter gl::context-flag-forward-compatible-bit cg-user::|gl_context_flag_forward_compatible_bit|)
(defparameter gl::context-flag-no-error-bit-khr cg-user::|gl_context_flag_no_error_bit_khr|)
(defparameter gl::context-flag-robust-access-bit cg-user::|gl_context_flag_robust_access_bit|)
(defparameter gl::context-flag-robust-access-bit-arb cg-user::|gl_context_flag_robust_access_bit_arb|)
(defparameter gl::context-flags cg-user::|gl_context_flags|)
(defparameter gl::context-lost cg-user::|gl_context_lost|)
(defparameter gl::context-lost-khr cg-user::|gl_context_lost_khr|)
(defparameter gl::context-lost-webgl cg-user::|gl_context_lost_webgl|)
(defparameter gl::context-profile-mask cg-user::|gl_context_profile_mask|)
(defparameter gl::context-release-behavior cg-user::|gl_context_release_behavior|)
(defparameter gl::context-release-behavior-flush cg-user::|gl_context_release_behavior_flush|)
(defparameter gl::context-release-behavior-flush-khr cg-user::|gl_context_release_behavior_flush_khr|)
(defparameter gl::context-release-behavior-khr cg-user::|gl_context_release_behavior_khr|)
(defparameter gl::context-robust-access cg-user::|gl_context_robust_access|)
(defparameter gl::context-robust-access-ext cg-user::|gl_context_robust_access_ext|)
(defparameter gl::context-robust-access-khr cg-user::|gl_context_robust_access_khr|)
(defparameter gl::continuous-amd cg-user::|gl_continuous_amd|)
(defparameter gl::contrast-nv cg-user::|gl_contrast_nv|)
(defparameter gl::convex-hull-nv cg-user::|gl_convex_hull_nv|)
(defparameter gl::convolution-1d cg-user::|gl_convolution_1d|)
(defparameter gl::convolution-1d-ext cg-user::|gl_convolution_1d_ext|)
(defparameter gl::convolution-2d cg-user::|gl_convolution_2d|)
(defparameter gl::convolution-2d-ext cg-user::|gl_convolution_2d_ext|)
(defparameter gl::convolution-border-color cg-user::|gl_convolution_border_color|)
(defparameter gl::convolution-border-color-hp cg-user::|gl_convolution_border_color_hp|)
(defparameter gl::convolution-border-mode cg-user::|gl_convolution_border_mode|)
(defparameter gl::convolution-border-mode-ext cg-user::|gl_convolution_border_mode_ext|)
(defparameter gl::convolution-filter-bias cg-user::|gl_convolution_filter_bias|)
(defparameter gl::convolution-filter-bias-ext cg-user::|gl_convolution_filter_bias_ext|)
(defparameter gl::convolution-filter-scale cg-user::|gl_convolution_filter_scale|)
(defparameter gl::convolution-filter-scale-ext cg-user::|gl_convolution_filter_scale_ext|)
(defparameter gl::convolution-format cg-user::|gl_convolution_format|)
(defparameter gl::convolution-format-ext cg-user::|gl_convolution_format_ext|)
(defparameter gl::convolution-height cg-user::|gl_convolution_height|)
(defparameter gl::convolution-height-ext cg-user::|gl_convolution_height_ext|)
(defparameter gl::convolution-hint-sgix cg-user::|gl_convolution_hint_sgix|)
(defparameter gl::convolution-width cg-user::|gl_convolution_width|)
(defparameter gl::convolution-width-ext cg-user::|gl_convolution_width_ext|)
(defparameter gl::coord-replace cg-user::|gl_coord_replace|)
(defparameter gl::coord-replace-arb cg-user::|gl_coord_replace_arb|)
(defparameter gl::coord-replace-nv cg-user::|gl_coord_replace_nv|)
(defparameter gl::coord-replace-oes cg-user::|gl_coord_replace_oes|)
(defparameter gl::copy cg-user::|gl_copy|)
(defparameter gl::copy-inverted cg-user::|gl_copy_inverted|)
(defparameter gl::copy-pixel-token cg-user::|gl_copy_pixel_token|)
(defparameter gl::copy-read-buffer cg-user::|gl_copy_read_buffer|)
(defparameter gl::copy-read-buffer-binding cg-user::|gl_copy_read_buffer_binding|)
(defparameter gl::copy-read-buffer-nv cg-user::|gl_copy_read_buffer_nv|)
(defparameter gl::copy-write-buffer cg-user::|gl_copy_write_buffer|)
(defparameter gl::copy-write-buffer-binding cg-user::|gl_copy_write_buffer_binding|)
(defparameter gl::copy-write-buffer-nv cg-user::|gl_copy_write_buffer_nv|)
(defparameter gl::count-down-nv cg-user::|gl_count_down_nv|)
(defparameter gl::counter-range-amd cg-user::|gl_counter_range_amd|)
(defparameter gl::counter-type-amd cg-user::|gl_counter_type_amd|)
(defparameter gl::count-up-nv cg-user::|gl_count_up_nv|)
(defparameter gl::coverage-all-fragments-nv cg-user::|gl_coverage_all_fragments_nv|)
(defparameter gl::coverage-attachment-nv cg-user::|gl_coverage_attachment_nv|)
(defparameter gl::coverage-automatic-nv cg-user::|gl_coverage_automatic_nv|)
(defparameter gl::coverage-buffer-bit-nv cg-user::|gl_coverage_buffer_bit_nv|)
(defparameter gl::coverage-buffers-nv cg-user::|gl_coverage_buffers_nv|)
(defparameter gl::coverage-component4-nv cg-user::|gl_coverage_component4_nv|)
(defparameter gl::coverage-component-nv cg-user::|gl_coverage_component_nv|)
(defparameter gl::coverage-edge-fragments-nv cg-user::|gl_coverage_edge_fragments_nv|)
(defparameter gl::coverage-modulation-nv cg-user::|gl_coverage_modulation_nv|)
(defparameter gl::coverage-modulation-table-nv cg-user::|gl_coverage_modulation_table_nv|)
(defparameter gl::coverage-modulation-table-size-nv cg-user::|gl_coverage_modulation_table_size_nv|)
(defparameter gl::coverage-samples-nv cg-user::|gl_coverage_samples_nv|)
(defparameter gl::cpu-optimized-qcom cg-user::|gl_cpu_optimized_qcom|)
(defparameter gl::cubic-curve-to-nv cg-user::|gl_cubic_curve_to_nv|)
(defparameter gl::cubic-ext cg-user::|gl_cubic_ext|)
(defparameter gl::cubic-hp cg-user::|gl_cubic_hp|)
(defparameter gl::cubic-img cg-user::|gl_cubic_img|)
(defparameter gl::cubic-mipmap-linear-img cg-user::|gl_cubic_mipmap_linear_img|)
(defparameter gl::cubic-mipmap-nearest-img cg-user::|gl_cubic_mipmap_nearest_img|)
(defparameter gl::cull-face cg-user::|gl_cull_face|)
(defparameter gl::cull-face-mode cg-user::|gl_cull_face_mode|)
(defparameter gl::cull-fragment-nv cg-user::|gl_cull_fragment_nv|)
(defparameter gl::cull-modes-nv cg-user::|gl_cull_modes_nv|)
(defparameter gl::cull-vertex-ext cg-user::|gl_cull_vertex_ext|)
(defparameter gl::cull-vertex-eye-position-ext cg-user::|gl_cull_vertex_eye_position_ext|)
(defparameter gl::cull-vertex-ibm cg-user::|gl_cull_vertex_ibm|)
(defparameter gl::cull-vertex-object-position-ext cg-user::|gl_cull_vertex_object_position_ext|)
(defparameter gl::current-attrib-nv cg-user::|gl_current_attrib_nv|)
(defparameter gl::current-binormal-ext cg-user::|gl_current_binormal_ext|)
(defparameter gl::current-bit cg-user::|gl_current_bit|)
(defparameter gl::current-color cg-user::|gl_current_color|)
(defparameter gl::current-fog-coord cg-user::|gl_current_fog_coord|)
(defparameter gl::current-fog-coordinate cg-user::|gl_current_fog_coordinate|)
(defparameter gl::current-fog-coordinate-ext cg-user::|gl_current_fog_coordinate_ext|)
(defparameter gl::current-index cg-user::|gl_current_index|)
(defparameter gl::current-matrix-arb cg-user::|gl_current_matrix_arb|)
(defparameter gl::current-matrix-index-arb cg-user::|gl_current_matrix_index_arb|)
(defparameter gl::current-matrix-nv cg-user::|gl_current_matrix_nv|)
(defparameter gl::current-matrix-stack-depth-arb cg-user::|gl_current_matrix_stack_depth_arb|)
(defparameter gl::current-matrix-stack-depth-nv cg-user::|gl_current_matrix_stack_depth_nv|)
(defparameter gl::current-normal cg-user::|gl_current_normal|)
(defparameter gl::current-occlusion-query-id-nv cg-user::|gl_current_occlusion_query_id_nv|)
(defparameter gl::current-palette-matrix-arb cg-user::|gl_current_palette_matrix_arb|)
(defparameter gl::current-palette-matrix-oes cg-user::|gl_current_palette_matrix_oes|)
(defparameter gl::current-program cg-user::|gl_current_program|)
(defparameter gl::current-query cg-user::|gl_current_query|)
(defparameter gl::current-query-arb cg-user::|gl_current_query_arb|)
(defparameter gl::current-query-ext cg-user::|gl_current_query_ext|)
(defparameter gl::current-raster-color cg-user::|gl_current_raster_color|)
(defparameter gl::current-raster-distance cg-user::|gl_current_raster_distance|)
(defparameter gl::current-raster-index cg-user::|gl_current_raster_index|)
(defparameter gl::current-raster-normal-sgix cg-user::|gl_current_raster_normal_sgix|)
(defparameter gl::current-raster-position cg-user::|gl_current_raster_position|)
(defparameter gl::current-raster-position-valid cg-user::|gl_current_raster_position_valid|)
(defparameter gl::current-raster-secondary-color cg-user::|gl_current_raster_secondary_color|)
(defparameter gl::current-raster-texture-coords cg-user::|gl_current_raster_texture_coords|)
(defparameter gl::current-secondary-color cg-user::|gl_current_secondary_color|)
(defparameter gl::current-secondary-color-ext cg-user::|gl_current_secondary_color_ext|)
(defparameter gl::current-tangent-ext cg-user::|gl_current_tangent_ext|)
(defparameter gl::current-texture-coords cg-user::|gl_current_texture_coords|)
(defparameter gl::current-time-nv cg-user::|gl_current_time_nv|)
(defparameter gl::current-vertex-attrib cg-user::|gl_current_vertex_attrib|)
(defparameter gl::current-vertex-attrib-arb cg-user::|gl_current_vertex_attrib_arb|)
(defparameter gl::current-vertex-ext cg-user::|gl_current_vertex_ext|)
(defparameter gl::current-vertex-weight-ext cg-user::|gl_current_vertex_weight_ext|)
(defparameter gl::current-weight-arb cg-user::|gl_current_weight_arb|)
(defparameter gl::cw cg-user::|gl_cw|)
(defparameter gl::darken cg-user::|gl_darken|)
(defparameter gl::darken-khr cg-user::|gl_darken_khr|)
(defparameter gl::darken-nv cg-user::|gl_darken_nv|)
(defparameter gl::data-buffer-amd cg-user::|gl_data_buffer_amd|)
(defparameter gl::debug-assert-mesa cg-user::|gl_debug_assert_mesa|)
(defparameter gl::debug-callback-function cg-user::|gl_debug_callback_function|)
(defparameter gl::debug-callback-function-arb cg-user::|gl_debug_callback_function_arb|)
(defparameter gl::debug-callback-function-khr cg-user::|gl_debug_callback_function_khr|)
(defparameter gl::debug-callback-user-param cg-user::|gl_debug_callback_user_param|)
(defparameter gl::debug-callback-user-param-arb cg-user::|gl_debug_callback_user_param_arb|)
(defparameter gl::debug-callback-user-param-khr cg-user::|gl_debug_callback_user_param_khr|)
(defparameter gl::debug-category-api-error-amd cg-user::|gl_debug_category_api_error_amd|)
(defparameter gl::debug-category-application-amd cg-user::|gl_debug_category_application_amd|)
(defparameter gl::debug-category-deprecation-amd cg-user::|gl_debug_category_deprecation_amd|)
(defparameter gl::debug-category-other-amd cg-user::|gl_debug_category_other_amd|)
(defparameter gl::debug-category-performance-amd cg-user::|gl_debug_category_performance_amd|)
(defparameter gl::debug-category-shader-compiler-amd cg-user::|gl_debug_category_shader_compiler_amd|)
(defparameter gl::debug-category-undefined-behavior-amd cg-user::|gl_debug_category_undefined_behavior_amd|)
(defparameter gl::debug-category-window-system-amd cg-user::|gl_debug_category_window_system_amd|)
(defparameter gl::debug-group-stack-depth cg-user::|gl_debug_group_stack_depth|)
(defparameter gl::debug-group-stack-depth-khr cg-user::|gl_debug_group_stack_depth_khr|)
(defparameter gl::debug-logged-messages cg-user::|gl_debug_logged_messages|)
(defparameter gl::debug-logged-messages-amd cg-user::|gl_debug_logged_messages_amd|)
(defparameter gl::debug-logged-messages-arb cg-user::|gl_debug_logged_messages_arb|)
(defparameter gl::debug-logged-messages-khr cg-user::|gl_debug_logged_messages_khr|)
(defparameter gl::debug-next-logged-message-length cg-user::|gl_debug_next_logged_message_length|)
(defparameter gl::debug-next-logged-message-length-arb cg-user::|gl_debug_next_logged_message_length_arb|)
(defparameter gl::debug-next-logged-message-length-khr cg-user::|gl_debug_next_logged_message_length_khr|)
(defparameter gl::debug-object-mesa cg-user::|gl_debug_object_mesa|)
(defparameter gl::debug-output cg-user::|gl_debug_output|)
(defparameter gl::debug-output-khr cg-user::|gl_debug_output_khr|)
(defparameter gl::debug-output-synchronous cg-user::|gl_debug_output_synchronous|)
(defparameter gl::debug-output-synchronous-arb cg-user::|gl_debug_output_synchronous_arb|)
(defparameter gl::debug-output-synchronous-khr cg-user::|gl_debug_output_synchronous_khr|)
(defparameter gl::debug-print-mesa cg-user::|gl_debug_print_mesa|)
(defparameter gl::debug-severity-high cg-user::|gl_debug_severity_high|)
(defparameter gl::debug-severity-high-amd cg-user::|gl_debug_severity_high_amd|)
(defparameter gl::debug-severity-high-arb cg-user::|gl_debug_severity_high_arb|)
(defparameter gl::debug-severity-high-khr cg-user::|gl_debug_severity_high_khr|)
(defparameter gl::debug-severity-low cg-user::|gl_debug_severity_low|)
(defparameter gl::debug-severity-low-amd cg-user::|gl_debug_severity_low_amd|)
(defparameter gl::debug-severity-low-arb cg-user::|gl_debug_severity_low_arb|)
(defparameter gl::debug-severity-low-khr cg-user::|gl_debug_severity_low_khr|)
(defparameter gl::debug-severity-medium cg-user::|gl_debug_severity_medium|)
(defparameter gl::debug-severity-medium-amd cg-user::|gl_debug_severity_medium_amd|)
(defparameter gl::debug-severity-medium-arb cg-user::|gl_debug_severity_medium_arb|)
(defparameter gl::debug-severity-medium-khr cg-user::|gl_debug_severity_medium_khr|)
(defparameter gl::debug-severity-notification cg-user::|gl_debug_severity_notification|)
(defparameter gl::debug-severity-notification-khr cg-user::|gl_debug_severity_notification_khr|)
(defparameter gl::debug-source-api cg-user::|gl_debug_source_api|)
(defparameter gl::debug-source-api-arb cg-user::|gl_debug_source_api_arb|)
(defparameter gl::debug-source-api-khr cg-user::|gl_debug_source_api_khr|)
(defparameter gl::debug-source-application cg-user::|gl_debug_source_application|)
(defparameter gl::debug-source-application-arb cg-user::|gl_debug_source_application_arb|)
(defparameter gl::debug-source-application-khr cg-user::|gl_debug_source_application_khr|)
(defparameter gl::debug-source-other cg-user::|gl_debug_source_other|)
(defparameter gl::debug-source-other-arb cg-user::|gl_debug_source_other_arb|)
(defparameter gl::debug-source-other-khr cg-user::|gl_debug_source_other_khr|)
(defparameter gl::debug-source-shader-compiler cg-user::|gl_debug_source_shader_compiler|)
(defparameter gl::debug-source-shader-compiler-arb cg-user::|gl_debug_source_shader_compiler_arb|)
(defparameter gl::debug-source-shader-compiler-khr cg-user::|gl_debug_source_shader_compiler_khr|)
(defparameter gl::debug-source-third-party cg-user::|gl_debug_source_third_party|)
(defparameter gl::debug-source-third-party-arb cg-user::|gl_debug_source_third_party_arb|)
(defparameter gl::debug-source-third-party-khr cg-user::|gl_debug_source_third_party_khr|)
(defparameter gl::debug-source-window-system cg-user::|gl_debug_source_window_system|)
(defparameter gl::debug-source-window-system-arb cg-user::|gl_debug_source_window_system_arb|)
(defparameter gl::debug-source-window-system-khr cg-user::|gl_debug_source_window_system_khr|)
(defparameter gl::debug-type-deprecated-behavior cg-user::|gl_debug_type_deprecated_behavior|)
(defparameter gl::debug-type-deprecated-behavior-arb cg-user::|gl_debug_type_deprecated_behavior_arb|)
(defparameter gl::debug-type-deprecated-behavior-khr cg-user::|gl_debug_type_deprecated_behavior_khr|)
(defparameter gl::debug-type-error cg-user::|gl_debug_type_error|)
(defparameter gl::debug-type-error-arb cg-user::|gl_debug_type_error_arb|)
(defparameter gl::debug-type-error-khr cg-user::|gl_debug_type_error_khr|)
(defparameter gl::debug-type-marker cg-user::|gl_debug_type_marker|)
(defparameter gl::debug-type-marker-khr cg-user::|gl_debug_type_marker_khr|)
(defparameter gl::debug-type-other cg-user::|gl_debug_type_other|)
(defparameter gl::debug-type-other-arb cg-user::|gl_debug_type_other_arb|)
(defparameter gl::debug-type-other-khr cg-user::|gl_debug_type_other_khr|)
(defparameter gl::debug-type-performance cg-user::|gl_debug_type_performance|)
(defparameter gl::debug-type-performance-arb cg-user::|gl_debug_type_performance_arb|)
(defparameter gl::debug-type-performance-khr cg-user::|gl_debug_type_performance_khr|)
(defparameter gl::debug-type-pop-group cg-user::|gl_debug_type_pop_group|)
(defparameter gl::debug-type-pop-group-khr cg-user::|gl_debug_type_pop_group_khr|)
(defparameter gl::debug-type-portability cg-user::|gl_debug_type_portability|)
(defparameter gl::debug-type-portability-arb cg-user::|gl_debug_type_portability_arb|)
(defparameter gl::debug-type-portability-khr cg-user::|gl_debug_type_portability_khr|)
(defparameter gl::debug-type-push-group cg-user::|gl_debug_type_push_group|)
(defparameter gl::debug-type-push-group-khr cg-user::|gl_debug_type_push_group_khr|)
(defparameter gl::debug-type-undefined-behavior cg-user::|gl_debug_type_undefined_behavior|)
(defparameter gl::debug-type-undefined-behavior-arb cg-user::|gl_debug_type_undefined_behavior_arb|)
(defparameter gl::debug-type-undefined-behavior-khr cg-user::|gl_debug_type_undefined_behavior_khr|)
(defparameter gl::decal cg-user::|gl_decal|)
(defparameter gl::decode-ext cg-user::|gl_decode_ext|)
(defparameter gl::decr cg-user::|gl_decr|)
(defparameter gl::decr-wrap cg-user::|gl_decr_wrap|)
(defparameter gl::decr-wrap-ext cg-user::|gl_decr_wrap_ext|)
(defparameter gl::decr-wrap-oes cg-user::|gl_decr_wrap_oes|)
(defparameter gl::deformations-mask-sgix cg-user::|gl_deformations_mask_sgix|)
(defparameter gl::delete-status cg-user::|gl_delete_status|)
(defparameter gl::dependent-ar-texture-2d-nv cg-user::|gl_dependent_ar_texture_2d_nv|)
(defparameter gl::dependent-gb-texture-2d-nv cg-user::|gl_dependent_gb_texture_2d_nv|)
(defparameter gl::dependent-hilo-texture-2d-nv cg-user::|gl_dependent_hilo_texture_2d_nv|)
(defparameter gl::dependent-rgb-texture-3d-nv cg-user::|gl_dependent_rgb_texture_3d_nv|)
(defparameter gl::dependent-rgb-texture-cube-map-nv cg-user::|gl_dependent_rgb_texture_cube_map_nv|)
(defparameter gl::depth cg-user::|gl_depth|)
(defparameter gl::depth24-stencil8 cg-user::|gl_depth24_stencil8|)
(defparameter gl::depth24-stencil8-ext cg-user::|gl_depth24_stencil8_ext|)
(defparameter gl::depth24-stencil8-oes cg-user::|gl_depth24_stencil8_oes|)
(defparameter gl::depth32f-stencil8 cg-user::|gl_depth32f_stencil8|)
(defparameter gl::depth32f-stencil8-nv cg-user::|gl_depth32f_stencil8_nv|)
(defparameter gl::depth-attachment cg-user::|gl_depth_attachment|)
(defparameter gl::depth-attachment-ext cg-user::|gl_depth_attachment_ext|)
(defparameter gl::depth-attachment-oes cg-user::|gl_depth_attachment_oes|)
(defparameter gl::depth-bias cg-user::|gl_depth_bias|)
(defparameter gl::depth-bits cg-user::|gl_depth_bits|)
(defparameter gl::depth-bounds-ext cg-user::|gl_depth_bounds_ext|)
(defparameter gl::depth-bounds-test-ext cg-user::|gl_depth_bounds_test_ext|)
(defparameter gl::depth-buffer-bit cg-user::|gl_depth_buffer_bit|)
(defparameter gl::depth-buffer-bit0-qcom cg-user::|gl_depth_buffer_bit0_qcom|)
(defparameter gl::depth-buffer-bit1-qcom cg-user::|gl_depth_buffer_bit1_qcom|)
(defparameter gl::depth-buffer-bit2-qcom cg-user::|gl_depth_buffer_bit2_qcom|)
(defparameter gl::depth-buffer-bit3-qcom cg-user::|gl_depth_buffer_bit3_qcom|)
(defparameter gl::depth-buffer-bit4-qcom cg-user::|gl_depth_buffer_bit4_qcom|)
(defparameter gl::depth-buffer-bit5-qcom cg-user::|gl_depth_buffer_bit5_qcom|)
(defparameter gl::depth-buffer-bit6-qcom cg-user::|gl_depth_buffer_bit6_qcom|)
(defparameter gl::depth-buffer-bit7-qcom cg-user::|gl_depth_buffer_bit7_qcom|)
(defparameter gl::depth-buffer-float-mode-nv cg-user::|gl_depth_buffer_float_mode_nv|)
(defparameter gl::depth-clamp cg-user::|gl_depth_clamp|)
(defparameter gl::depth-clamp-far-amd cg-user::|gl_depth_clamp_far_amd|)
(defparameter gl::depth-clamp-near-amd cg-user::|gl_depth_clamp_near_amd|)
(defparameter gl::depth-clamp-nv cg-user::|gl_depth_clamp_nv|)
(defparameter gl::depth-clear-value cg-user::|gl_depth_clear_value|)
(defparameter gl::depth-component cg-user::|gl_depth_component|)
(defparameter gl::depth-component16 cg-user::|gl_depth_component16|)
(defparameter gl::depth-component16-arb cg-user::|gl_depth_component16_arb|)
(defparameter gl::depth-component16-nonlinear-nv cg-user::|gl_depth_component16_nonlinear_nv|)
(defparameter gl::depth-component16-oes cg-user::|gl_depth_component16_oes|)
(defparameter gl::depth-component16-sgix cg-user::|gl_depth_component16_sgix|)
(defparameter gl::depth-component24 cg-user::|gl_depth_component24|)
(defparameter gl::depth-component24-arb cg-user::|gl_depth_component24_arb|)
(defparameter gl::depth-component24-oes cg-user::|gl_depth_component24_oes|)
(defparameter gl::depth-component24-sgix cg-user::|gl_depth_component24_sgix|)
(defparameter gl::depth-component32 cg-user::|gl_depth_component32|)
(defparameter gl::depth-component32-arb cg-user::|gl_depth_component32_arb|)
(defparameter gl::depth-component32f cg-user::|gl_depth_component32f|)
(defparameter gl::depth-component32f-nv cg-user::|gl_depth_component32f_nv|)
(defparameter gl::depth-component32-oes cg-user::|gl_depth_component32_oes|)
(defparameter gl::depth-component32-sgix cg-user::|gl_depth_component32_sgix|)
(defparameter gl::depth-components cg-user::|gl_depth_components|)
(defparameter gl::depth-ext cg-user::|gl_depth_ext|)
(defparameter gl::depth-func cg-user::|gl_depth_func|)
(defparameter gl::depth-pass-instrument-counters-sgix cg-user::|gl_depth_pass_instrument_counters_sgix|)
(defparameter gl::depth-pass-instrument-max-sgix cg-user::|gl_depth_pass_instrument_max_sgix|)
(defparameter gl::depth-pass-instrument-sgix cg-user::|gl_depth_pass_instrument_sgix|)
(defparameter gl::depth-range cg-user::|gl_depth_range|)
(defparameter gl::depth-renderable cg-user::|gl_depth_renderable|)
(defparameter gl::depth-samples-nv cg-user::|gl_depth_samples_nv|)
(defparameter gl::depth-scale cg-user::|gl_depth_scale|)
(defparameter gl::depth-stencil cg-user::|gl_depth_stencil|)
(defparameter gl::depth-stencil-attachment cg-user::|gl_depth_stencil_attachment|)
(defparameter gl::depth-stencil-ext cg-user::|gl_depth_stencil_ext|)
(defparameter gl::depth-stencil-mesa cg-user::|gl_depth_stencil_mesa|)
(defparameter gl::depth-stencil-nv cg-user::|gl_depth_stencil_nv|)
(defparameter gl::depth-stencil-oes cg-user::|gl_depth_stencil_oes|)
(defparameter gl::depth-stencil-texture-mode cg-user::|gl_depth_stencil_texture_mode|)
(defparameter gl::depth-stencil-to-bgra-nv cg-user::|gl_depth_stencil_to_bgra_nv|)
(defparameter gl::depth-stencil-to-rgba-nv cg-user::|gl_depth_stencil_to_rgba_nv|)
(defparameter gl::depth-test cg-user::|gl_depth_test|)
(defparameter gl::depth-texture-mode cg-user::|gl_depth_texture_mode|)
(defparameter gl::depth-texture-mode-arb cg-user::|gl_depth_texture_mode_arb|)
(defparameter gl::depth-writemask cg-user::|gl_depth_writemask|)
(defparameter gl::detail-texture-2d-binding-sgis cg-user::|gl_detail_texture_2d_binding_sgis|)
(defparameter gl::detail-texture-2d-sgis cg-user::|gl_detail_texture_2d_sgis|)
(defparameter gl::detail-texture-func-points-sgis cg-user::|gl_detail_texture_func_points_sgis|)
(defparameter gl::detail-texture-level-sgis cg-user::|gl_detail_texture_level_sgis|)
(defparameter gl::detail-texture-mode-sgis cg-user::|gl_detail_texture_mode_sgis|)
(defparameter gl::difference cg-user::|gl_difference|)
(defparameter gl::difference-khr cg-user::|gl_difference_khr|)
(defparameter gl::difference-nv cg-user::|gl_difference_nv|)
(defparameter gl::diffuse cg-user::|gl_diffuse|)
(defparameter gl::discard-ati cg-user::|gl_discard_ati|)
(defparameter gl::discard-nv cg-user::|gl_discard_nv|)
(defparameter gl::discrete-amd cg-user::|gl_discrete_amd|)
(defparameter gl::disjoint-nv cg-user::|gl_disjoint_nv|)
(defparameter gl::dispatch-indirect-buffer cg-user::|gl_dispatch_indirect_buffer|)
(defparameter gl::dispatch-indirect-buffer-binding cg-user::|gl_dispatch_indirect_buffer_binding|)
(defparameter gl::display-list cg-user::|gl_display_list|)
(defparameter gl::distance-attenuation-ext cg-user::|gl_distance_attenuation_ext|)
(defparameter gl::distance-attenuation-sgis cg-user::|gl_distance_attenuation_sgis|)
(defparameter gl::dither cg-user::|gl_dither|)
(defparameter gl::dmp-program-binary-dmp cg-user::|gl_dmp_program_binary_dmp|)
(defparameter gl::domain cg-user::|gl_domain|)
(defparameter gl::dont-care cg-user::|gl_dont_care|)
(defparameter gl::dot2-add-ati cg-user::|gl_dot2_add_ati|)
(defparameter gl::dot3-ati cg-user::|gl_dot3_ati|)
(defparameter gl::dot3-rgb cg-user::|gl_dot3_rgb|)
(defparameter gl::dot3-rgba cg-user::|gl_dot3_rgba|)
(defparameter gl::dot3-rgba-arb cg-user::|gl_dot3_rgba_arb|)
(defparameter gl::dot3-rgba-ext cg-user::|gl_dot3_rgba_ext|)
(defparameter gl::dot3-rgba-img cg-user::|gl_dot3_rgba_img|)
(defparameter gl::dot3-rgb-arb cg-user::|gl_dot3_rgb_arb|)
(defparameter gl::dot3-rgb-ext cg-user::|gl_dot3_rgb_ext|)
(defparameter gl::dot4-ati cg-user::|gl_dot4_ati|)
(defparameter gl::dot-product-affine-depth-replace-nv cg-user::|gl_dot_product_affine_depth_replace_nv|)
(defparameter gl::dot-product-const-eye-reflect-cube-map-nv cg-user::|gl_dot_product_const_eye_reflect_cube_map_nv|)
(defparameter gl::dot-product-depth-replace-nv cg-user::|gl_dot_product_depth_replace_nv|)
(defparameter gl::dot-product-diffuse-cube-map-nv cg-user::|gl_dot_product_diffuse_cube_map_nv|)
(defparameter gl::dot-product-nv cg-user::|gl_dot_product_nv|)
(defparameter gl::dot-product-pass-through-nv cg-user::|gl_dot_product_pass_through_nv|)
(defparameter gl::dot-product-reflect-cube-map-nv cg-user::|gl_dot_product_reflect_cube_map_nv|)
(defparameter gl::dot-product-texture-1d-nv cg-user::|gl_dot_product_texture_1d_nv|)
(defparameter gl::dot-product-texture-2d-nv cg-user::|gl_dot_product_texture_2d_nv|)
(defparameter gl::dot-product-texture-3d-nv cg-user::|gl_dot_product_texture_3d_nv|)
(defparameter gl::dot-product-texture-cube-map-nv cg-user::|gl_dot_product_texture_cube_map_nv|)
(defparameter gl::dot-product-texture-rectangle-nv cg-user::|gl_dot_product_texture_rectangle_nv|)
(defparameter gl::double cg-user::|gl_double|)
(defparameter gl::doublebuffer cg-user::|gl_doublebuffer|)
(defparameter gl::double-ext cg-user::|gl_double_ext|)
(defparameter gl::double-mat2 cg-user::|gl_double_mat2|)
(defparameter gl::double-mat2-ext cg-user::|gl_double_mat2_ext|)
(defparameter gl::double-mat2x3 cg-user::|gl_double_mat2x3|)
(defparameter gl::double-mat2x3-ext cg-user::|gl_double_mat2x3_ext|)
(defparameter gl::double-mat2x4 cg-user::|gl_double_mat2x4|)
(defparameter gl::double-mat2x4-ext cg-user::|gl_double_mat2x4_ext|)
(defparameter gl::double-mat3 cg-user::|gl_double_mat3|)
(defparameter gl::double-mat3-ext cg-user::|gl_double_mat3_ext|)
(defparameter gl::double-mat3x2 cg-user::|gl_double_mat3x2|)
(defparameter gl::double-mat3x2-ext cg-user::|gl_double_mat3x2_ext|)
(defparameter gl::double-mat3x4 cg-user::|gl_double_mat3x4|)
(defparameter gl::double-mat3x4-ext cg-user::|gl_double_mat3x4_ext|)
(defparameter gl::double-mat4 cg-user::|gl_double_mat4|)
(defparameter gl::double-mat4-ext cg-user::|gl_double_mat4_ext|)
(defparameter gl::double-mat4x2 cg-user::|gl_double_mat4x2|)
(defparameter gl::double-mat4x2-ext cg-user::|gl_double_mat4x2_ext|)
(defparameter gl::double-mat4x3 cg-user::|gl_double_mat4x3|)
(defparameter gl::double-mat4x3-ext cg-user::|gl_double_mat4x3_ext|)
(defparameter gl::double-vec2 cg-user::|gl_double_vec2|)
(defparameter gl::double-vec2-ext cg-user::|gl_double_vec2_ext|)
(defparameter gl::double-vec3 cg-user::|gl_double_vec3|)
(defparameter gl::double-vec3-ext cg-user::|gl_double_vec3_ext|)
(defparameter gl::double-vec4 cg-user::|gl_double_vec4|)
(defparameter gl::double-vec4-ext cg-user::|gl_double_vec4_ext|)
(defparameter gl::draw-arrays-command-nv cg-user::|gl_draw_arrays_command_nv|)
(defparameter gl::draw-arrays-instanced-command-nv cg-user::|gl_draw_arrays_instanced_command_nv|)
(defparameter gl::draw-arrays-strip-command-nv cg-user::|gl_draw_arrays_strip_command_nv|)
(defparameter gl::draw-buffer cg-user::|gl_draw_buffer|)
(defparameter gl::draw-buffer0 cg-user::|gl_draw_buffer0|)
(defparameter gl::draw-buffer0-arb cg-user::|gl_draw_buffer0_arb|)
(defparameter gl::draw-buffer0-ati cg-user::|gl_draw_buffer0_ati|)
(defparameter gl::draw-buffer0-ext cg-user::|gl_draw_buffer0_ext|)
(defparameter gl::draw-buffer0-nv cg-user::|gl_draw_buffer0_nv|)
(defparameter gl::draw-buffer1 cg-user::|gl_draw_buffer1|)
(defparameter gl::draw-buffer10 cg-user::|gl_draw_buffer10|)
(defparameter gl::draw-buffer10-arb cg-user::|gl_draw_buffer10_arb|)
(defparameter gl::draw-buffer10-ati cg-user::|gl_draw_buffer10_ati|)
(defparameter gl::draw-buffer10-ext cg-user::|gl_draw_buffer10_ext|)
(defparameter gl::draw-buffer10-nv cg-user::|gl_draw_buffer10_nv|)
(defparameter gl::draw-buffer11 cg-user::|gl_draw_buffer11|)
(defparameter gl::draw-buffer11-arb cg-user::|gl_draw_buffer11_arb|)
(defparameter gl::draw-buffer11-ati cg-user::|gl_draw_buffer11_ati|)
(defparameter gl::draw-buffer11-ext cg-user::|gl_draw_buffer11_ext|)
(defparameter gl::draw-buffer11-nv cg-user::|gl_draw_buffer11_nv|)
(defparameter gl::draw-buffer12 cg-user::|gl_draw_buffer12|)
(defparameter gl::draw-buffer12-arb cg-user::|gl_draw_buffer12_arb|)
(defparameter gl::draw-buffer12-ati cg-user::|gl_draw_buffer12_ati|)
(defparameter gl::draw-buffer12-ext cg-user::|gl_draw_buffer12_ext|)
(defparameter gl::draw-buffer12-nv cg-user::|gl_draw_buffer12_nv|)
(defparameter gl::draw-buffer13 cg-user::|gl_draw_buffer13|)
(defparameter gl::draw-buffer13-arb cg-user::|gl_draw_buffer13_arb|)
(defparameter gl::draw-buffer13-ati cg-user::|gl_draw_buffer13_ati|)
(defparameter gl::draw-buffer13-ext cg-user::|gl_draw_buffer13_ext|)
(defparameter gl::draw-buffer13-nv cg-user::|gl_draw_buffer13_nv|)
(defparameter gl::draw-buffer14 cg-user::|gl_draw_buffer14|)
(defparameter gl::draw-buffer14-arb cg-user::|gl_draw_buffer14_arb|)
(defparameter gl::draw-buffer14-ati cg-user::|gl_draw_buffer14_ati|)
(defparameter gl::draw-buffer14-ext cg-user::|gl_draw_buffer14_ext|)
(defparameter gl::draw-buffer14-nv cg-user::|gl_draw_buffer14_nv|)
(defparameter gl::draw-buffer15 cg-user::|gl_draw_buffer15|)
(defparameter gl::draw-buffer15-arb cg-user::|gl_draw_buffer15_arb|)
(defparameter gl::draw-buffer15-ati cg-user::|gl_draw_buffer15_ati|)
(defparameter gl::draw-buffer15-ext cg-user::|gl_draw_buffer15_ext|)
(defparameter gl::draw-buffer15-nv cg-user::|gl_draw_buffer15_nv|)
(defparameter gl::draw-buffer1-arb cg-user::|gl_draw_buffer1_arb|)
(defparameter gl::draw-buffer1-ati cg-user::|gl_draw_buffer1_ati|)
(defparameter gl::draw-buffer1-ext cg-user::|gl_draw_buffer1_ext|)
(defparameter gl::draw-buffer1-nv cg-user::|gl_draw_buffer1_nv|)
(defparameter gl::draw-buffer2 cg-user::|gl_draw_buffer2|)
(defparameter gl::draw-buffer2-arb cg-user::|gl_draw_buffer2_arb|)
(defparameter gl::draw-buffer2-ati cg-user::|gl_draw_buffer2_ati|)
(defparameter gl::draw-buffer2-ext cg-user::|gl_draw_buffer2_ext|)
(defparameter gl::draw-buffer2-nv cg-user::|gl_draw_buffer2_nv|)
(defparameter gl::draw-buffer3 cg-user::|gl_draw_buffer3|)
(defparameter gl::draw-buffer3-arb cg-user::|gl_draw_buffer3_arb|)
(defparameter gl::draw-buffer3-ati cg-user::|gl_draw_buffer3_ati|)
(defparameter gl::draw-buffer3-ext cg-user::|gl_draw_buffer3_ext|)
(defparameter gl::draw-buffer3-nv cg-user::|gl_draw_buffer3_nv|)
(defparameter gl::draw-buffer4 cg-user::|gl_draw_buffer4|)
(defparameter gl::draw-buffer4-arb cg-user::|gl_draw_buffer4_arb|)
(defparameter gl::draw-buffer4-ati cg-user::|gl_draw_buffer4_ati|)
(defparameter gl::draw-buffer4-ext cg-user::|gl_draw_buffer4_ext|)
(defparameter gl::draw-buffer4-nv cg-user::|gl_draw_buffer4_nv|)
(defparameter gl::draw-buffer5 cg-user::|gl_draw_buffer5|)
(defparameter gl::draw-buffer5-arb cg-user::|gl_draw_buffer5_arb|)
(defparameter gl::draw-buffer5-ati cg-user::|gl_draw_buffer5_ati|)
(defparameter gl::draw-buffer5-ext cg-user::|gl_draw_buffer5_ext|)
(defparameter gl::draw-buffer5-nv cg-user::|gl_draw_buffer5_nv|)
(defparameter gl::draw-buffer6 cg-user::|gl_draw_buffer6|)
(defparameter gl::draw-buffer6-arb cg-user::|gl_draw_buffer6_arb|)
(defparameter gl::draw-buffer6-ati cg-user::|gl_draw_buffer6_ati|)
(defparameter gl::draw-buffer6-ext cg-user::|gl_draw_buffer6_ext|)
(defparameter gl::draw-buffer6-nv cg-user::|gl_draw_buffer6_nv|)
(defparameter gl::draw-buffer7 cg-user::|gl_draw_buffer7|)
(defparameter gl::draw-buffer7-arb cg-user::|gl_draw_buffer7_arb|)
(defparameter gl::draw-buffer7-ati cg-user::|gl_draw_buffer7_ati|)
(defparameter gl::draw-buffer7-ext cg-user::|gl_draw_buffer7_ext|)
(defparameter gl::draw-buffer7-nv cg-user::|gl_draw_buffer7_nv|)
(defparameter gl::draw-buffer8 cg-user::|gl_draw_buffer8|)
(defparameter gl::draw-buffer8-arb cg-user::|gl_draw_buffer8_arb|)
(defparameter gl::draw-buffer8-ati cg-user::|gl_draw_buffer8_ati|)
(defparameter gl::draw-buffer8-ext cg-user::|gl_draw_buffer8_ext|)
(defparameter gl::draw-buffer8-nv cg-user::|gl_draw_buffer8_nv|)
(defparameter gl::draw-buffer9 cg-user::|gl_draw_buffer9|)
(defparameter gl::draw-buffer9-arb cg-user::|gl_draw_buffer9_arb|)
(defparameter gl::draw-buffer9-ati cg-user::|gl_draw_buffer9_ati|)
(defparameter gl::draw-buffer9-ext cg-user::|gl_draw_buffer9_ext|)
(defparameter gl::draw-buffer9-nv cg-user::|gl_draw_buffer9_nv|)
(defparameter gl::draw-buffer-ext cg-user::|gl_draw_buffer_ext|)
(defparameter gl::draw-elements-command-nv cg-user::|gl_draw_elements_command_nv|)
(defparameter gl::draw-elements-instanced-command-nv cg-user::|gl_draw_elements_instanced_command_nv|)
(defparameter gl::draw-elements-strip-command-nv cg-user::|gl_draw_elements_strip_command_nv|)
(defparameter gl::draw-framebuffer cg-user::|gl_draw_framebuffer|)
(defparameter gl::draw-framebuffer-angle cg-user::|gl_draw_framebuffer_angle|)
(defparameter gl::draw-framebuffer-apple cg-user::|gl_draw_framebuffer_apple|)
(defparameter gl::draw-framebuffer-binding cg-user::|gl_draw_framebuffer_binding|)
(defparameter gl::draw-framebuffer-binding-angle cg-user::|gl_draw_framebuffer_binding_angle|)
(defparameter gl::draw-framebuffer-binding-apple cg-user::|gl_draw_framebuffer_binding_apple|)
(defparameter gl::draw-framebuffer-binding-ext cg-user::|gl_draw_framebuffer_binding_ext|)
(defparameter gl::draw-framebuffer-binding-nv cg-user::|gl_draw_framebuffer_binding_nv|)
(defparameter gl::draw-framebuffer-ext cg-user::|gl_draw_framebuffer_ext|)
(defparameter gl::draw-framebuffer-nv cg-user::|gl_draw_framebuffer_nv|)
(defparameter gl::draw-indirect-address-nv cg-user::|gl_draw_indirect_address_nv|)
(defparameter gl::draw-indirect-buffer cg-user::|gl_draw_indirect_buffer|)
(defparameter gl::draw-indirect-buffer-binding cg-user::|gl_draw_indirect_buffer_binding|)
(defparameter gl::draw-indirect-length-nv cg-user::|gl_draw_indirect_length_nv|)
(defparameter gl::draw-indirect-unified-nv cg-user::|gl_draw_indirect_unified_nv|)
(defparameter gl::draw-pixels-apple cg-user::|gl_draw_pixels_apple|)
(defparameter gl::draw-pixel-token cg-user::|gl_draw_pixel_token|)
(defparameter gl::ds-bias-nv cg-user::|gl_ds_bias_nv|)
(defparameter gl::dsdt8-mag8-intensity8-nv cg-user::|gl_dsdt8_mag8_intensity8_nv|)
(defparameter gl::dsdt8-mag8-nv cg-user::|gl_dsdt8_mag8_nv|)
(defparameter gl::dsdt8-nv cg-user::|gl_dsdt8_nv|)
(defparameter gl::dsdt-mag-intensity-nv cg-user::|gl_dsdt_mag_intensity_nv|)
(defparameter gl::dsdt-mag-nv cg-user::|gl_dsdt_mag_nv|)
(defparameter gl::dsdt-mag-vib-nv cg-user::|gl_dsdt_mag_vib_nv|)
(defparameter gl::dsdt-nv cg-user::|gl_dsdt_nv|)
(defparameter gl::ds-scale-nv cg-user::|gl_ds_scale_nv|)
(defparameter gl::dst-alpha cg-user::|gl_dst_alpha|)
(defparameter gl::dst-atop-nv cg-user::|gl_dst_atop_nv|)
(defparameter gl::dst-color cg-user::|gl_dst_color|)
(defparameter gl::dst-in-nv cg-user::|gl_dst_in_nv|)
(defparameter gl::dst-nv cg-user::|gl_dst_nv|)
(defparameter gl::dst-out-nv cg-user::|gl_dst_out_nv|)
(defparameter gl::dst-over-nv cg-user::|gl_dst_over_nv|)
(defparameter gl::dt-bias-nv cg-user::|gl_dt_bias_nv|)
(defparameter gl::dt-scale-nv cg-user::|gl_dt_scale_nv|)
(defparameter gl::du8dv8-ati cg-user::|gl_du8dv8_ati|)
(defparameter gl::dual-alpha12-sgis cg-user::|gl_dual_alpha12_sgis|)
(defparameter gl::dual-alpha16-sgis cg-user::|gl_dual_alpha16_sgis|)
(defparameter gl::dual-alpha4-sgis cg-user::|gl_dual_alpha4_sgis|)
(defparameter gl::dual-alpha8-sgis cg-user::|gl_dual_alpha8_sgis|)
(defparameter gl::dual-intensity12-sgis cg-user::|gl_dual_intensity12_sgis|)
(defparameter gl::dual-intensity16-sgis cg-user::|gl_dual_intensity16_sgis|)
(defparameter gl::dual-intensity4-sgis cg-user::|gl_dual_intensity4_sgis|)
(defparameter gl::dual-intensity8-sgis cg-user::|gl_dual_intensity8_sgis|)
(defparameter gl::dual-luminance12-sgis cg-user::|gl_dual_luminance12_sgis|)
(defparameter gl::dual-luminance16-sgis cg-user::|gl_dual_luminance16_sgis|)
(defparameter gl::dual-luminance4-sgis cg-user::|gl_dual_luminance4_sgis|)
(defparameter gl::dual-luminance8-sgis cg-user::|gl_dual_luminance8_sgis|)
(defparameter gl::dual-luminance-alpha4-sgis cg-user::|gl_dual_luminance_alpha4_sgis|)
(defparameter gl::dual-luminance-alpha8-sgis cg-user::|gl_dual_luminance_alpha8_sgis|)
(defparameter gl::dual-texture-select-sgis cg-user::|gl_dual_texture_select_sgis|)
(defparameter gl::dudv-ati cg-user::|gl_dudv_ati|)
(defparameter gl::dup-first-cubic-curve-to-nv cg-user::|gl_dup_first_cubic_curve_to_nv|)
(defparameter gl::dup-last-cubic-curve-to-nv cg-user::|gl_dup_last_cubic_curve_to_nv|)
(defparameter gl::dynamic-ati cg-user::|gl_dynamic_ati|)
(defparameter gl::dynamic-copy cg-user::|gl_dynamic_copy|)
(defparameter gl::dynamic-copy-arb cg-user::|gl_dynamic_copy_arb|)
(defparameter gl::dynamic-draw cg-user::|gl_dynamic_draw|)
(defparameter gl::dynamic-draw-arb cg-user::|gl_dynamic_draw_arb|)
(defparameter gl::dynamic-read cg-user::|gl_dynamic_read|)
(defparameter gl::dynamic-read-arb cg-user::|gl_dynamic_read_arb|)
(defparameter gl::dynamic-storage-bit cg-user::|gl_dynamic_storage_bit|)
(defparameter gl::dynamic-storage-bit-ext cg-user::|gl_dynamic_storage_bit_ext|)
(defparameter gl::edge-flag cg-user::|gl_edge_flag|)
(defparameter gl::edge-flag-array cg-user::|gl_edge_flag_array|)
(defparameter gl::edge-flag-array-address-nv cg-user::|gl_edge_flag_array_address_nv|)
(defparameter gl::edge-flag-array-buffer-binding cg-user::|gl_edge_flag_array_buffer_binding|)
(defparameter gl::edge-flag-array-buffer-binding-arb cg-user::|gl_edge_flag_array_buffer_binding_arb|)
(defparameter gl::edge-flag-array-count-ext cg-user::|gl_edge_flag_array_count_ext|)
(defparameter gl::edge-flag-array-ext cg-user::|gl_edge_flag_array_ext|)
(defparameter gl::edge-flag-array-length-nv cg-user::|gl_edge_flag_array_length_nv|)
(defparameter gl::edge-flag-array-list-ibm cg-user::|gl_edge_flag_array_list_ibm|)
(defparameter gl::edge-flag-array-list-stride-ibm cg-user::|gl_edge_flag_array_list_stride_ibm|)
(defparameter gl::edge-flag-array-pointer cg-user::|gl_edge_flag_array_pointer|)
(defparameter gl::edge-flag-array-pointer-ext cg-user::|gl_edge_flag_array_pointer_ext|)
(defparameter gl::edge-flag-array-stride cg-user::|gl_edge_flag_array_stride|)
(defparameter gl::edge-flag-array-stride-ext cg-user::|gl_edge_flag_array_stride_ext|)
(defparameter gl::edgeflag-bit-pgi cg-user::|gl_edgeflag_bit_pgi|)
(defparameter gl::effective-raster-samples-ext cg-user::|gl_effective_raster_samples_ext|)
(defparameter gl::eighth-bit-ati cg-user::|gl_eighth_bit_ati|)
(defparameter gl::element-address-command-nv cg-user::|gl_element_address_command_nv|)
(defparameter gl::element-array-address-nv cg-user::|gl_element_array_address_nv|)
(defparameter gl::element-array-apple cg-user::|gl_element_array_apple|)
(defparameter gl::element-array-ati cg-user::|gl_element_array_ati|)
(defparameter gl::element-array-barrier-bit cg-user::|gl_element_array_barrier_bit|)
(defparameter gl::element-array-barrier-bit-ext cg-user::|gl_element_array_barrier_bit_ext|)
(defparameter gl::element-array-buffer cg-user::|gl_element_array_buffer|)
(defparameter gl::element-array-buffer-arb cg-user::|gl_element_array_buffer_arb|)
(defparameter gl::element-array-buffer-binding cg-user::|gl_element_array_buffer_binding|)
(defparameter gl::element-array-buffer-binding-arb cg-user::|gl_element_array_buffer_binding_arb|)
(defparameter gl::element-array-length-nv cg-user::|gl_element_array_length_nv|)
(defparameter gl::element-array-pointer-apple cg-user::|gl_element_array_pointer_apple|)
(defparameter gl::element-array-pointer-ati cg-user::|gl_element_array_pointer_ati|)
(defparameter gl::element-array-type-apple cg-user::|gl_element_array_type_apple|)
(defparameter gl::element-array-type-ati cg-user::|gl_element_array_type_ati|)
(defparameter gl::element-array-unified-nv cg-user::|gl_element_array_unified_nv|)
(defparameter gl::emboss-constant-nv cg-user::|gl_emboss_constant_nv|)
(defparameter gl::emboss-light-nv cg-user::|gl_emboss_light_nv|)
(defparameter gl::emboss-map-nv cg-user::|gl_emboss_map_nv|)
(defparameter gl::emission cg-user::|gl_emission|)
(defparameter gl::enable-bit cg-user::|gl_enable_bit|)
(defparameter gl::equal cg-user::|gl_equal|)
(defparameter gl::equiv cg-user::|gl_equiv|)
(defparameter gl::etc1-rgb8-oes cg-user::|gl_etc1_rgb8_oes|)
(defparameter gl::etc1-srgb8-nv cg-user::|gl_etc1_srgb8_nv|)
(defparameter gl::e-times-f-nv cg-user::|gl_e_times_f_nv|)
(defparameter gl::eval-2d-nv cg-user::|gl_eval_2d_nv|)
(defparameter gl::eval-bit cg-user::|gl_eval_bit|)
(defparameter gl::eval-fractional-tessellation-nv cg-user::|gl_eval_fractional_tessellation_nv|)
(defparameter gl::eval-triangular-2d-nv cg-user::|gl_eval_triangular_2d_nv|)
(defparameter gl::eval-vertex-attrib0-nv cg-user::|gl_eval_vertex_attrib0_nv|)
(defparameter gl::eval-vertex-attrib10-nv cg-user::|gl_eval_vertex_attrib10_nv|)
(defparameter gl::eval-vertex-attrib11-nv cg-user::|gl_eval_vertex_attrib11_nv|)
(defparameter gl::eval-vertex-attrib12-nv cg-user::|gl_eval_vertex_attrib12_nv|)
(defparameter gl::eval-vertex-attrib13-nv cg-user::|gl_eval_vertex_attrib13_nv|)
(defparameter gl::eval-vertex-attrib14-nv cg-user::|gl_eval_vertex_attrib14_nv|)
(defparameter gl::eval-vertex-attrib15-nv cg-user::|gl_eval_vertex_attrib15_nv|)
(defparameter gl::eval-vertex-attrib1-nv cg-user::|gl_eval_vertex_attrib1_nv|)
(defparameter gl::eval-vertex-attrib2-nv cg-user::|gl_eval_vertex_attrib2_nv|)
(defparameter gl::eval-vertex-attrib3-nv cg-user::|gl_eval_vertex_attrib3_nv|)
(defparameter gl::eval-vertex-attrib4-nv cg-user::|gl_eval_vertex_attrib4_nv|)
(defparameter gl::eval-vertex-attrib5-nv cg-user::|gl_eval_vertex_attrib5_nv|)
(defparameter gl::eval-vertex-attrib6-nv cg-user::|gl_eval_vertex_attrib6_nv|)
(defparameter gl::eval-vertex-attrib7-nv cg-user::|gl_eval_vertex_attrib7_nv|)
(defparameter gl::eval-vertex-attrib8-nv cg-user::|gl_eval_vertex_attrib8_nv|)
(defparameter gl::eval-vertex-attrib9-nv cg-user::|gl_eval_vertex_attrib9_nv|)
(defparameter gl::exclusion cg-user::|gl_exclusion|)
(defparameter gl::exclusion-khr cg-user::|gl_exclusion_khr|)
(defparameter gl::exclusion-nv cg-user::|gl_exclusion_nv|)
(defparameter gl::exp cg-user::|gl_exp|)
(defparameter gl::exp2 cg-user::|gl_exp2|)
(defparameter gl::expand-negate-nv cg-user::|gl_expand_negate_nv|)
(defparameter gl::expand-normal-nv cg-user::|gl_expand_normal_nv|)
(defparameter gl::extensions cg-user::|gl_extensions|)
(defparameter gl::external-virtual-memory-buffer-amd cg-user::|gl_external_virtual_memory_buffer_amd|)
(defparameter gl::eye-distance-to-line-sgis cg-user::|gl_eye_distance_to_line_sgis|)
(defparameter gl::eye-distance-to-point-sgis cg-user::|gl_eye_distance_to_point_sgis|)
(defparameter gl::eye-linear cg-user::|gl_eye_linear|)
(defparameter gl::eye-linear-nv cg-user::|gl_eye_linear_nv|)
(defparameter gl::eye-line-sgis cg-user::|gl_eye_line_sgis|)
(defparameter gl::eye-plane cg-user::|gl_eye_plane|)
(defparameter gl::eye-plane-absolute-nv cg-user::|gl_eye_plane_absolute_nv|)
(defparameter gl::eye-point-sgis cg-user::|gl_eye_point_sgis|)
(defparameter gl::eye-radial-nv cg-user::|gl_eye_radial_nv|)
(defparameter gl::factor-alpha-modulate-img cg-user::|gl_factor_alpha_modulate_img|)
(defparameter gl::factor-max-amd cg-user::|gl_factor_max_amd|)
(defparameter gl::factor-min-amd cg-user::|gl_factor_min_amd|)
(defparameter gl::failure-nv cg-user::|gl_failure_nv|)
(defparameter gl::false cg-user::|gl_false|)
(defparameter gl::fastest cg-user::|gl_fastest|)
(defparameter gl::feedback cg-user::|gl_feedback|)
(defparameter gl::feedback-buffer-pointer cg-user::|gl_feedback_buffer_pointer|)
(defparameter gl::feedback-buffer-size cg-user::|gl_feedback_buffer_size|)
(defparameter gl::feedback-buffer-type cg-user::|gl_feedback_buffer_type|)
(defparameter gl::fence-apple cg-user::|gl_fence_apple|)
(defparameter gl::fence-condition-nv cg-user::|gl_fence_condition_nv|)
(defparameter gl::fence-status-nv cg-user::|gl_fence_status_nv|)
(defparameter gl::fetch-per-sample-arm cg-user::|gl_fetch_per_sample_arm|)
(defparameter gl::field-lower-nv cg-user::|gl_field_lower_nv|)
(defparameter gl::fields-nv cg-user::|gl_fields_nv|)
(defparameter gl::field-upper-nv cg-user::|gl_field_upper_nv|)
(defparameter gl::file-name-nv cg-user::|gl_file_name_nv|)
(defparameter gl::fill cg-user::|gl_fill|)
(defparameter gl::fill-nv cg-user::|gl_fill_nv|)
(defparameter gl::fill-rectangle-nv cg-user::|gl_fill_rectangle_nv|)
(defparameter gl::filter cg-user::|gl_filter|)
(defparameter gl::filter4-sgis cg-user::|gl_filter4_sgis|)
(defparameter gl::first-to-rest-nv cg-user::|gl_first_to_rest_nv|)
(defparameter gl::first-vertex-convention cg-user::|gl_first_vertex_convention|)
(defparameter gl::first-vertex-convention-ext cg-user::|gl_first_vertex_convention_ext|)
(defparameter gl::first-vertex-convention-oes cg-user::|gl_first_vertex_convention_oes|)
(defparameter gl::fixed cg-user::|gl_fixed|)
(defparameter gl::fixed-oes cg-user::|gl_fixed_oes|)
(defparameter gl::fixed-only cg-user::|gl_fixed_only|)
(defparameter gl::fixed-only-arb cg-user::|gl_fixed_only_arb|)
(defparameter gl::flat cg-user::|gl_flat|)
(defparameter gl::float cg-user::|gl_float|)
(defparameter gl::float16-nv cg-user::|gl_float16_nv|)
(defparameter gl::float16-vec2-nv cg-user::|gl_float16_vec2_nv|)
(defparameter gl::float16-vec3-nv cg-user::|gl_float16_vec3_nv|)
(defparameter gl::float16-vec4-nv cg-user::|gl_float16_vec4_nv|)
(defparameter gl::float-32-unsigned-int-24-8-rev cg-user::|gl_float_32_unsigned_int_24_8_rev|)
(defparameter gl::float-32-unsigned-int-24-8-rev-nv cg-user::|gl_float_32_unsigned_int_24_8_rev_nv|)
(defparameter gl::float-clear-color-value-nv cg-user::|gl_float_clear_color_value_nv|)
(defparameter gl::float-mat2 cg-user::|gl_float_mat2|)
(defparameter gl::float-mat2-arb cg-user::|gl_float_mat2_arb|)
(defparameter gl::float-mat2x3 cg-user::|gl_float_mat2x3|)
(defparameter gl::float-mat2x3-nv cg-user::|gl_float_mat2x3_nv|)
(defparameter gl::float-mat2x4 cg-user::|gl_float_mat2x4|)
(defparameter gl::float-mat2x4-nv cg-user::|gl_float_mat2x4_nv|)
(defparameter gl::float-mat3 cg-user::|gl_float_mat3|)
(defparameter gl::float-mat3-arb cg-user::|gl_float_mat3_arb|)
(defparameter gl::float-mat3x2 cg-user::|gl_float_mat3x2|)
(defparameter gl::float-mat3x2-nv cg-user::|gl_float_mat3x2_nv|)
(defparameter gl::float-mat3x4 cg-user::|gl_float_mat3x4|)
(defparameter gl::float-mat3x4-nv cg-user::|gl_float_mat3x4_nv|)
(defparameter gl::float-mat4 cg-user::|gl_float_mat4|)
(defparameter gl::float-mat4-arb cg-user::|gl_float_mat4_arb|)
(defparameter gl::float-mat4x2 cg-user::|gl_float_mat4x2|)
(defparameter gl::float-mat4x2-nv cg-user::|gl_float_mat4x2_nv|)
(defparameter gl::float-mat4x3 cg-user::|gl_float_mat4x3|)
(defparameter gl::float-mat4x3-nv cg-user::|gl_float_mat4x3_nv|)
(defparameter gl::float-r16-nv cg-user::|gl_float_r16_nv|)
(defparameter gl::float-r32-nv cg-user::|gl_float_r32_nv|)
(defparameter gl::float-rg16-nv cg-user::|gl_float_rg16_nv|)
(defparameter gl::float-rg32-nv cg-user::|gl_float_rg32_nv|)
(defparameter gl::float-rgb16-nv cg-user::|gl_float_rgb16_nv|)
(defparameter gl::float-rgb32-nv cg-user::|gl_float_rgb32_nv|)
(defparameter gl::float-rgba16-nv cg-user::|gl_float_rgba16_nv|)
(defparameter gl::float-rgba32-nv cg-user::|gl_float_rgba32_nv|)
(defparameter gl::float-rgba-mode-nv cg-user::|gl_float_rgba_mode_nv|)
(defparameter gl::float-rgba-nv cg-user::|gl_float_rgba_nv|)
(defparameter gl::float-rgb-nv cg-user::|gl_float_rgb_nv|)
(defparameter gl::float-rg-nv cg-user::|gl_float_rg_nv|)
(defparameter gl::float-r-nv cg-user::|gl_float_r_nv|)
(defparameter gl::float-vec2 cg-user::|gl_float_vec2|)
(defparameter gl::float-vec2-arb cg-user::|gl_float_vec2_arb|)
(defparameter gl::float-vec3 cg-user::|gl_float_vec3|)
(defparameter gl::float-vec3-arb cg-user::|gl_float_vec3_arb|)
(defparameter gl::float-vec4 cg-user::|gl_float_vec4|)
(defparameter gl::float-vec4-arb cg-user::|gl_float_vec4_arb|)
(defparameter gl::fog cg-user::|gl_fog|)
(defparameter gl::fog-bit cg-user::|gl_fog_bit|)
(defparameter gl::fog-color cg-user::|gl_fog_color|)
(defparameter gl::fog-coord cg-user::|gl_fog_coord|)
(defparameter gl::fog-coord-array cg-user::|gl_fog_coord_array|)
(defparameter gl::fog-coord-array-address-nv cg-user::|gl_fog_coord_array_address_nv|)
(defparameter gl::fog-coord-array-buffer-binding cg-user::|gl_fog_coord_array_buffer_binding|)
(defparameter gl::fog-coord-array-length-nv cg-user::|gl_fog_coord_array_length_nv|)
(defparameter gl::fog-coord-array-pointer cg-user::|gl_fog_coord_array_pointer|)
(defparameter gl::fog-coord-array-stride cg-user::|gl_fog_coord_array_stride|)
(defparameter gl::fog-coord-array-type cg-user::|gl_fog_coord_array_type|)
(defparameter gl::fog-coordinate cg-user::|gl_fog_coordinate|)
(defparameter gl::fog-coordinate-array cg-user::|gl_fog_coordinate_array|)
(defparameter gl::fog-coordinate-array-buffer-binding cg-user::|gl_fog_coordinate_array_buffer_binding|)
(defparameter gl::fog-coordinate-array-buffer-binding-arb cg-user::|gl_fog_coordinate_array_buffer_binding_arb|)
(defparameter gl::fog-coordinate-array-ext cg-user::|gl_fog_coordinate_array_ext|)
(defparameter gl::fog-coordinate-array-list-ibm cg-user::|gl_fog_coordinate_array_list_ibm|)
(defparameter gl::fog-coordinate-array-list-stride-ibm cg-user::|gl_fog_coordinate_array_list_stride_ibm|)
(defparameter gl::fog-coordinate-array-pointer cg-user::|gl_fog_coordinate_array_pointer|)
(defparameter gl::fog-coordinate-array-pointer-ext cg-user::|gl_fog_coordinate_array_pointer_ext|)
(defparameter gl::fog-coordinate-array-stride cg-user::|gl_fog_coordinate_array_stride|)
(defparameter gl::fog-coordinate-array-stride-ext cg-user::|gl_fog_coordinate_array_stride_ext|)
(defparameter gl::fog-coordinate-array-type cg-user::|gl_fog_coordinate_array_type|)
(defparameter gl::fog-coordinate-array-type-ext cg-user::|gl_fog_coordinate_array_type_ext|)
(defparameter gl::fog-coordinate-ext cg-user::|gl_fog_coordinate_ext|)
(defparameter gl::fog-coordinate-source cg-user::|gl_fog_coordinate_source|)
(defparameter gl::fog-coordinate-source-ext cg-user::|gl_fog_coordinate_source_ext|)
(defparameter gl::fog-coord-src cg-user::|gl_fog_coord_src|)
(defparameter gl::fog-density cg-user::|gl_fog_density|)
(defparameter gl::fog-distance-mode-nv cg-user::|gl_fog_distance_mode_nv|)
(defparameter gl::fog-end cg-user::|gl_fog_end|)
(defparameter gl::fog-func-points-sgis cg-user::|gl_fog_func_points_sgis|)
(defparameter gl::fog-func-sgis cg-user::|gl_fog_func_sgis|)
(defparameter gl::fog-hint cg-user::|gl_fog_hint|)
(defparameter gl::fog-index cg-user::|gl_fog_index|)
(defparameter gl::fog-mode cg-user::|gl_fog_mode|)
(defparameter gl::fog-offset-sgix cg-user::|gl_fog_offset_sgix|)
(defparameter gl::fog-offset-value-sgix cg-user::|gl_fog_offset_value_sgix|)
(defparameter gl::fog-specular-texture-win cg-user::|gl_fog_specular_texture_win|)
(defparameter gl::fog-start cg-user::|gl_fog_start|)
(defparameter gl::font-ascender-bit-nv cg-user::|gl_font_ascender_bit_nv|)
(defparameter gl::font-descender-bit-nv cg-user::|gl_font_descender_bit_nv|)
(defparameter gl::font-glyphs-available-nv cg-user::|gl_font_glyphs_available_nv|)
(defparameter gl::font-has-kerning-bit-nv cg-user::|gl_font_has_kerning_bit_nv|)
(defparameter gl::font-height-bit-nv cg-user::|gl_font_height_bit_nv|)
(defparameter gl::font-max-advance-height-bit-nv cg-user::|gl_font_max_advance_height_bit_nv|)
(defparameter gl::font-max-advance-width-bit-nv cg-user::|gl_font_max_advance_width_bit_nv|)
(defparameter gl::font-num-glyph-indices-bit-nv cg-user::|gl_font_num_glyph_indices_bit_nv|)
(defparameter gl::font-target-unavailable-nv cg-user::|gl_font_target_unavailable_nv|)
(defparameter gl::font-unavailable-nv cg-user::|gl_font_unavailable_nv|)
(defparameter gl::font-underline-position-bit-nv cg-user::|gl_font_underline_position_bit_nv|)
(defparameter gl::font-underline-thickness-bit-nv cg-user::|gl_font_underline_thickness_bit_nv|)
(defparameter gl::font-unintelligible-nv cg-user::|gl_font_unintelligible_nv|)
(defparameter gl::font-units-per-em-bit-nv cg-user::|gl_font_units_per_em_bit_nv|)
(defparameter gl::font-x-max-bounds-bit-nv cg-user::|gl_font_x_max_bounds_bit_nv|)
(defparameter gl::font-x-min-bounds-bit-nv cg-user::|gl_font_x_min_bounds_bit_nv|)
(defparameter gl::font-y-max-bounds-bit-nv cg-user::|gl_font_y_max_bounds_bit_nv|)
(defparameter gl::font-y-min-bounds-bit-nv cg-user::|gl_font_y_min_bounds_bit_nv|)
(defparameter gl::force-blue-to-one-nv cg-user::|gl_force_blue_to_one_nv|)
(defparameter gl::format-subsample-24-24-oml cg-user::|gl_format_subsample_24_24_oml|)
(defparameter gl::format-subsample-244-244-oml cg-user::|gl_format_subsample_244_244_oml|)
(defparameter gl::fractional-even cg-user::|gl_fractional_even|)
(defparameter gl::fractional-even-ext cg-user::|gl_fractional_even_ext|)
(defparameter gl::fractional-even-oes cg-user::|gl_fractional_even_oes|)
(defparameter gl::fractional-odd cg-user::|gl_fractional_odd|)
(defparameter gl::fractional-odd-ext cg-user::|gl_fractional_odd_ext|)
(defparameter gl::fractional-odd-oes cg-user::|gl_fractional_odd_oes|)
(defparameter gl::fragment-alpha-modulate-img cg-user::|gl_fragment_alpha_modulate_img|)
(defparameter gl::fragment-color-ext cg-user::|gl_fragment_color_ext|)
(defparameter gl::fragment-color-material-face-sgix cg-user::|gl_fragment_color_material_face_sgix|)
(defparameter gl::fragment-color-material-parameter-sgix cg-user::|gl_fragment_color_material_parameter_sgix|)
(defparameter gl::fragment-color-material-sgix cg-user::|gl_fragment_color_material_sgix|)
(defparameter gl::fragment-coverage-color-nv cg-user::|gl_fragment_coverage_color_nv|)
(defparameter gl::fragment-coverage-to-color-nv cg-user::|gl_fragment_coverage_to_color_nv|)
(defparameter gl::fragment-depth cg-user::|gl_fragment_depth|)
(defparameter gl::fragment-depth-ext cg-user::|gl_fragment_depth_ext|)
(defparameter gl::fragment-input-nv cg-user::|gl_fragment_input_nv|)
(defparameter gl::fragment-interpolation-offset-bits cg-user::|gl_fragment_interpolation_offset_bits|)
(defparameter gl::fragment-interpolation-offset-bits-oes cg-user::|gl_fragment_interpolation_offset_bits_oes|)
(defparameter gl::fragment-light0-sgix cg-user::|gl_fragment_light0_sgix|)
(defparameter gl::fragment-light1-sgix cg-user::|gl_fragment_light1_sgix|)
(defparameter gl::fragment-light2-sgix cg-user::|gl_fragment_light2_sgix|)
(defparameter gl::fragment-light3-sgix cg-user::|gl_fragment_light3_sgix|)
(defparameter gl::fragment-light4-sgix cg-user::|gl_fragment_light4_sgix|)
(defparameter gl::fragment-light5-sgix cg-user::|gl_fragment_light5_sgix|)
(defparameter gl::fragment-light6-sgix cg-user::|gl_fragment_light6_sgix|)
(defparameter gl::fragment-light7-sgix cg-user::|gl_fragment_light7_sgix|)
(defparameter gl::fragment-lighting-sgix cg-user::|gl_fragment_lighting_sgix|)
(defparameter gl::fragment-light-model-ambient-sgix cg-user::|gl_fragment_light_model_ambient_sgix|)
(defparameter gl::fragment-light-model-local-viewer-sgix cg-user::|gl_fragment_light_model_local_viewer_sgix|)
(defparameter gl::fragment-light-model-normal-interpolation-sgix cg-user::|gl_fragment_light_model_normal_interpolation_sgix|)
(defparameter gl::fragment-light-model-two-side-sgix cg-user::|gl_fragment_light_model_two_side_sgix|)
(defparameter gl::fragment-material-ext cg-user::|gl_fragment_material_ext|)
(defparameter gl::fragment-normal-ext cg-user::|gl_fragment_normal_ext|)
(defparameter gl::fragment-program-arb cg-user::|gl_fragment_program_arb|)
(defparameter gl::fragment-program-binding-nv cg-user::|gl_fragment_program_binding_nv|)
(defparameter gl::fragment-program-callback-data-mesa cg-user::|gl_fragment_program_callback_data_mesa|)
(defparameter gl::fragment-program-callback-func-mesa cg-user::|gl_fragment_program_callback_func_mesa|)
(defparameter gl::fragment-program-callback-mesa cg-user::|gl_fragment_program_callback_mesa|)
(defparameter gl::fragment-program-interpolation-offset-bits-nv cg-user::|gl_fragment_program_interpolation_offset_bits_nv|)
(defparameter gl::fragment-program-nv cg-user::|gl_fragment_program_nv|)
(defparameter gl::fragment-program-parameter-buffer-nv cg-user::|gl_fragment_program_parameter_buffer_nv|)
(defparameter gl::fragment-program-position-mesa cg-user::|gl_fragment_program_position_mesa|)
(defparameter gl::fragment-shader cg-user::|gl_fragment_shader|)
(defparameter gl::fragment-shader-arb cg-user::|gl_fragment_shader_arb|)
(defparameter gl::fragment-shader-ati cg-user::|gl_fragment_shader_ati|)
(defparameter gl::fragment-shader-bit cg-user::|gl_fragment_shader_bit|)
(defparameter gl::fragment-shader-bit-ext cg-user::|gl_fragment_shader_bit_ext|)
(defparameter gl::fragment-shader-derivative-hint cg-user::|gl_fragment_shader_derivative_hint|)
(defparameter gl::fragment-shader-derivative-hint-arb cg-user::|gl_fragment_shader_derivative_hint_arb|)
(defparameter gl::fragment-shader-derivative-hint-oes cg-user::|gl_fragment_shader_derivative_hint_oes|)
(defparameter gl::fragment-shader-discards-samples-ext cg-user::|gl_fragment_shader_discards_samples_ext|)
(defparameter gl::fragment-shader-framebuffer-fetch-mrt-arm cg-user::|gl_fragment_shader_framebuffer_fetch_mrt_arm|)
(defparameter gl::fragment-shader-invocations-arb cg-user::|gl_fragment_shader_invocations_arb|)
(defparameter gl::fragments-instrument-counters-sgix cg-user::|gl_fragments_instrument_counters_sgix|)
(defparameter gl::fragments-instrument-max-sgix cg-user::|gl_fragments_instrument_max_sgix|)
(defparameter gl::fragments-instrument-sgix cg-user::|gl_fragments_instrument_sgix|)
(defparameter gl::fragment-subroutine cg-user::|gl_fragment_subroutine|)
(defparameter gl::fragment-subroutine-uniform cg-user::|gl_fragment_subroutine_uniform|)
(defparameter gl::fragment-texture cg-user::|gl_fragment_texture|)
(defparameter gl::framebuffer cg-user::|gl_framebuffer|)
(defparameter gl::framebuffer-attachment-alpha-size cg-user::|gl_framebuffer_attachment_alpha_size|)
(defparameter gl::framebuffer-attachment-angle cg-user::|gl_framebuffer_attachment_angle|)
(defparameter gl::framebuffer-attachment-blue-size cg-user::|gl_framebuffer_attachment_blue_size|)
(defparameter gl::framebuffer-attachment-color-encoding cg-user::|gl_framebuffer_attachment_color_encoding|)
(defparameter gl::framebuffer-attachment-color-encoding-ext cg-user::|gl_framebuffer_attachment_color_encoding_ext|)
(defparameter gl::framebuffer-attachment-component-type cg-user::|gl_framebuffer_attachment_component_type|)
(defparameter gl::framebuffer-attachment-component-type-ext cg-user::|gl_framebuffer_attachment_component_type_ext|)
(defparameter gl::framebuffer-attachment-depth-size cg-user::|gl_framebuffer_attachment_depth_size|)
(defparameter gl::framebuffer-attachment-green-size cg-user::|gl_framebuffer_attachment_green_size|)
(defparameter gl::framebuffer-attachment-layered cg-user::|gl_framebuffer_attachment_layered|)
(defparameter gl::framebuffer-attachment-layered-arb cg-user::|gl_framebuffer_attachment_layered_arb|)
(defparameter gl::framebuffer-attachment-layered-ext cg-user::|gl_framebuffer_attachment_layered_ext|)
(defparameter gl::framebuffer-attachment-layered-oes cg-user::|gl_framebuffer_attachment_layered_oes|)
(defparameter gl::framebuffer-attachment-object-name cg-user::|gl_framebuffer_attachment_object_name|)
(defparameter gl::framebuffer-attachment-object-name-ext cg-user::|gl_framebuffer_attachment_object_name_ext|)
(defparameter gl::framebuffer-attachment-object-name-oes cg-user::|gl_framebuffer_attachment_object_name_oes|)
(defparameter gl::framebuffer-attachment-object-type cg-user::|gl_framebuffer_attachment_object_type|)
(defparameter gl::framebuffer-attachment-object-type-ext cg-user::|gl_framebuffer_attachment_object_type_ext|)
(defparameter gl::framebuffer-attachment-object-type-oes cg-user::|gl_framebuffer_attachment_object_type_oes|)
(defparameter gl::framebuffer-attachment-red-size cg-user::|gl_framebuffer_attachment_red_size|)
(defparameter gl::framebuffer-attachment-stencil-size cg-user::|gl_framebuffer_attachment_stencil_size|)
(defparameter gl::framebuffer-attachment-texture-3d-zoffset-ext cg-user::|gl_framebuffer_attachment_texture_3d_zoffset_ext|)
(defparameter gl::framebuffer-attachment-texture-3d-zoffset-oes cg-user::|gl_framebuffer_attachment_texture_3d_zoffset_oes|)
(defparameter gl::framebuffer-attachment-texture-base-view-index-ovr cg-user::|gl_framebuffer_attachment_texture_base_view_index_ovr|)
(defparameter gl::framebuffer-attachment-texture-cube-map-face cg-user::|gl_framebuffer_attachment_texture_cube_map_face|)
(defparameter gl::framebuffer-attachment-texture-cube-map-face-ext cg-user::|gl_framebuffer_attachment_texture_cube_map_face_ext|)
(defparameter gl::framebuffer-attachment-texture-cube-map-face-oes cg-user::|gl_framebuffer_attachment_texture_cube_map_face_oes|)
(defparameter gl::framebuffer-attachment-texture-layer cg-user::|gl_framebuffer_attachment_texture_layer|)
(defparameter gl::framebuffer-attachment-texture-layer-ext cg-user::|gl_framebuffer_attachment_texture_layer_ext|)
(defparameter gl::framebuffer-attachment-texture-level cg-user::|gl_framebuffer_attachment_texture_level|)
(defparameter gl::framebuffer-attachment-texture-level-ext cg-user::|gl_framebuffer_attachment_texture_level_ext|)
(defparameter gl::framebuffer-attachment-texture-level-oes cg-user::|gl_framebuffer_attachment_texture_level_oes|)
(defparameter gl::framebuffer-attachment-texture-num-views-ovr cg-user::|gl_framebuffer_attachment_texture_num_views_ovr|)
(defparameter gl::framebuffer-attachment-texture-samples-ext cg-user::|gl_framebuffer_attachment_texture_samples_ext|)
(defparameter gl::framebuffer-barrier-bit cg-user::|gl_framebuffer_barrier_bit|)
(defparameter gl::framebuffer-barrier-bit-ext cg-user::|gl_framebuffer_barrier_bit_ext|)
(defparameter gl::framebuffer-binding cg-user::|gl_framebuffer_binding|)
(defparameter gl::framebuffer-binding-angle cg-user::|gl_framebuffer_binding_angle|)
(defparameter gl::framebuffer-binding-ext cg-user::|gl_framebuffer_binding_ext|)
(defparameter gl::framebuffer-binding-oes cg-user::|gl_framebuffer_binding_oes|)
(defparameter gl::framebuffer-blend cg-user::|gl_framebuffer_blend|)
(defparameter gl::framebuffer-complete cg-user::|gl_framebuffer_complete|)
(defparameter gl::framebuffer-complete-ext cg-user::|gl_framebuffer_complete_ext|)
(defparameter gl::framebuffer-complete-oes cg-user::|gl_framebuffer_complete_oes|)
(defparameter gl::framebuffer-default cg-user::|gl_framebuffer_default|)
(defparameter gl::framebuffer-default-fixed-sample-locations cg-user::|gl_framebuffer_default_fixed_sample_locations|)
(defparameter gl::framebuffer-default-height cg-user::|gl_framebuffer_default_height|)
(defparameter gl::framebuffer-default-layers cg-user::|gl_framebuffer_default_layers|)
(defparameter gl::framebuffer-default-layers-ext cg-user::|gl_framebuffer_default_layers_ext|)
(defparameter gl::framebuffer-default-layers-oes cg-user::|gl_framebuffer_default_layers_oes|)
(defparameter gl::framebuffer-default-samples cg-user::|gl_framebuffer_default_samples|)
(defparameter gl::framebuffer-default-width cg-user::|gl_framebuffer_default_width|)
(defparameter gl::framebuffer-ext cg-user::|gl_framebuffer_ext|)
(defparameter gl::framebuffer-incomplete-attachment cg-user::|gl_framebuffer_incomplete_attachment|)
(defparameter gl::framebuffer-incomplete-attachment-ext cg-user::|gl_framebuffer_incomplete_attachment_ext|)
(defparameter gl::framebuffer-incomplete-attachment-oes cg-user::|gl_framebuffer_incomplete_attachment_oes|)
(defparameter gl::framebuffer-incomplete-dimensions cg-user::|gl_framebuffer_incomplete_dimensions|)
(defparameter gl::framebuffer-incomplete-dimensions-ext cg-user::|gl_framebuffer_incomplete_dimensions_ext|)
(defparameter gl::framebuffer-incomplete-dimensions-oes cg-user::|gl_framebuffer_incomplete_dimensions_oes|)
(defparameter gl::framebuffer-incomplete-draw-buffer cg-user::|gl_framebuffer_incomplete_draw_buffer|)
(defparameter gl::framebuffer-incomplete-draw-buffer-ext cg-user::|gl_framebuffer_incomplete_draw_buffer_ext|)
(defparameter gl::framebuffer-incomplete-draw-buffer-oes cg-user::|gl_framebuffer_incomplete_draw_buffer_oes|)
(defparameter gl::framebuffer-incomplete-formats-ext cg-user::|gl_framebuffer_incomplete_formats_ext|)
(defparameter gl::framebuffer-incomplete-formats-oes cg-user::|gl_framebuffer_incomplete_formats_oes|)
(defparameter gl::framebuffer-incomplete-layer-count-arb cg-user::|gl_framebuffer_incomplete_layer_count_arb|)
(defparameter gl::framebuffer-incomplete-layer-count-ext cg-user::|gl_framebuffer_incomplete_layer_count_ext|)
(defparameter gl::framebuffer-incomplete-layer-targets cg-user::|gl_framebuffer_incomplete_layer_targets|)
(defparameter gl::framebuffer-incomplete-layer-targets-arb cg-user::|gl_framebuffer_incomplete_layer_targets_arb|)
(defparameter gl::framebuffer-incomplete-layer-targets-ext cg-user::|gl_framebuffer_incomplete_layer_targets_ext|)
(defparameter gl::framebuffer-incomplete-layer-targets-oes cg-user::|gl_framebuffer_incomplete_layer_targets_oes|)
(defparameter gl::framebuffer-incomplete-missing-attachment cg-user::|gl_framebuffer_incomplete_missing_attachment|)
(defparameter gl::framebuffer-incomplete-missing-attachment-ext cg-user::|gl_framebuffer_incomplete_missing_attachment_ext|)
(defparameter gl::framebuffer-incomplete-missing-attachment-oes cg-user::|gl_framebuffer_incomplete_missing_attachment_oes|)
(defparameter gl::framebuffer-incomplete-multisample cg-user::|gl_framebuffer_incomplete_multisample|)
(defparameter gl::framebuffer-incomplete-multisample-angle cg-user::|gl_framebuffer_incomplete_multisample_angle|)
(defparameter gl::framebuffer-incomplete-multisample-apple cg-user::|gl_framebuffer_incomplete_multisample_apple|)
(defparameter gl::framebuffer-incomplete-multisample-ext cg-user::|gl_framebuffer_incomplete_multisample_ext|)
(defparameter gl::framebuffer-incomplete-multisample-img cg-user::|gl_framebuffer_incomplete_multisample_img|)
(defparameter gl::framebuffer-incomplete-multisample-nv cg-user::|gl_framebuffer_incomplete_multisample_nv|)
(defparameter gl::framebuffer-incomplete-read-buffer cg-user::|gl_framebuffer_incomplete_read_buffer|)
(defparameter gl::framebuffer-incomplete-read-buffer-ext cg-user::|gl_framebuffer_incomplete_read_buffer_ext|)
(defparameter gl::framebuffer-incomplete-read-buffer-oes cg-user::|gl_framebuffer_incomplete_read_buffer_oes|)
(defparameter gl::framebuffer-oes cg-user::|gl_framebuffer_oes|)
(defparameter gl::framebuffer-programmable-sample-locations-arb cg-user::|gl_framebuffer_programmable_sample_locations_arb|)
(defparameter gl::framebuffer-programmable-sample-locations-nv cg-user::|gl_framebuffer_programmable_sample_locations_nv|)
(defparameter gl::framebuffer-renderable cg-user::|gl_framebuffer_renderable|)
(defparameter gl::framebuffer-renderable-layered cg-user::|gl_framebuffer_renderable_layered|)
(defparameter gl::framebuffer-sample-location-pixel-grid-arb cg-user::|gl_framebuffer_sample_location_pixel_grid_arb|)
(defparameter gl::framebuffer-sample-location-pixel-grid-nv cg-user::|gl_framebuffer_sample_location_pixel_grid_nv|)
(defparameter gl::framebuffer-srgb cg-user::|gl_framebuffer_srgb|)
(defparameter gl::framebuffer-srgb-capable-ext cg-user::|gl_framebuffer_srgb_capable_ext|)
(defparameter gl::framebuffer-srgb-ext cg-user::|gl_framebuffer_srgb_ext|)
(defparameter gl::framebuffer-undefined cg-user::|gl_framebuffer_undefined|)
(defparameter gl::framebuffer-undefined-oes cg-user::|gl_framebuffer_undefined_oes|)
(defparameter gl::framebuffer-unsupported cg-user::|gl_framebuffer_unsupported|)
(defparameter gl::framebuffer-unsupported-ext cg-user::|gl_framebuffer_unsupported_ext|)
(defparameter gl::framebuffer-unsupported-oes cg-user::|gl_framebuffer_unsupported_oes|)
(defparameter gl::frame-nv cg-user::|gl_frame_nv|)
(defparameter gl::framezoom-factor-sgix cg-user::|gl_framezoom_factor_sgix|)
(defparameter gl::framezoom-sgix cg-user::|gl_framezoom_sgix|)
(defparameter gl::front cg-user::|gl_front|)
(defparameter gl::front-and-back cg-user::|gl_front_and_back|)
(defparameter gl::front-face cg-user::|gl_front_face|)
(defparameter gl::front-face-command-nv cg-user::|gl_front_face_command_nv|)
(defparameter gl::front-left cg-user::|gl_front_left|)
(defparameter gl::front-right cg-user::|gl_front_right|)
(defparameter gl::full-range-ext cg-user::|gl_full_range_ext|)
(defparameter gl::full-stipple-hint-pgi cg-user::|gl_full_stipple_hint_pgi|)
(defparameter gl::full-support cg-user::|gl_full_support|)
(defparameter gl::func-add cg-user::|gl_func_add|)
(defparameter gl::func-add-ext cg-user::|gl_func_add_ext|)
(defparameter gl::func-add-oes cg-user::|gl_func_add_oes|)
(defparameter gl::func-reverse-subtract cg-user::|gl_func_reverse_subtract|)
(defparameter gl::func-reverse-subtract-ext cg-user::|gl_func_reverse_subtract_ext|)
(defparameter gl::func-reverse-subtract-oes cg-user::|gl_func_reverse_subtract_oes|)
(defparameter gl::func-subtract cg-user::|gl_func_subtract|)
(defparameter gl::func-subtract-ext cg-user::|gl_func_subtract_ext|)
(defparameter gl::func-subtract-oes cg-user::|gl_func_subtract_oes|)
(defparameter gl::gccso-shader-binary-fj cg-user::|gl_gccso_shader_binary_fj|)
(defparameter gl::generate-mipmap cg-user::|gl_generate_mipmap|)
(defparameter gl::generate-mipmap-hint cg-user::|gl_generate_mipmap_hint|)
(defparameter gl::generate-mipmap-hint-sgis cg-user::|gl_generate_mipmap_hint_sgis|)
(defparameter gl::generate-mipmap-sgis cg-user::|gl_generate_mipmap_sgis|)
(defparameter gl::generic-attrib-nv cg-user::|gl_generic_attrib_nv|)
(defparameter gl::geometry-deformation-bit-sgix cg-user::|gl_geometry_deformation_bit_sgix|)
(defparameter gl::geometry-deformation-sgix cg-user::|gl_geometry_deformation_sgix|)
(defparameter gl::geometry-input-type cg-user::|gl_geometry_input_type|)
(defparameter gl::geometry-input-type-arb cg-user::|gl_geometry_input_type_arb|)
(defparameter gl::geometry-input-type-ext cg-user::|gl_geometry_input_type_ext|)
(defparameter gl::geometry-linked-input-type-ext cg-user::|gl_geometry_linked_input_type_ext|)
(defparameter gl::geometry-linked-input-type-oes cg-user::|gl_geometry_linked_input_type_oes|)
(defparameter gl::geometry-linked-output-type-ext cg-user::|gl_geometry_linked_output_type_ext|)
(defparameter gl::geometry-linked-output-type-oes cg-user::|gl_geometry_linked_output_type_oes|)
(defparameter gl::geometry-linked-vertices-out-ext cg-user::|gl_geometry_linked_vertices_out_ext|)
(defparameter gl::geometry-linked-vertices-out-oes cg-user::|gl_geometry_linked_vertices_out_oes|)
(defparameter gl::geometry-output-type cg-user::|gl_geometry_output_type|)
(defparameter gl::geometry-output-type-arb cg-user::|gl_geometry_output_type_arb|)
(defparameter gl::geometry-output-type-ext cg-user::|gl_geometry_output_type_ext|)
(defparameter gl::geometry-program-nv cg-user::|gl_geometry_program_nv|)
(defparameter gl::geometry-program-parameter-buffer-nv cg-user::|gl_geometry_program_parameter_buffer_nv|)
(defparameter gl::geometry-shader cg-user::|gl_geometry_shader|)
(defparameter gl::geometry-shader-arb cg-user::|gl_geometry_shader_arb|)
(defparameter gl::geometry-shader-bit cg-user::|gl_geometry_shader_bit|)
(defparameter gl::geometry-shader-bit-ext cg-user::|gl_geometry_shader_bit_ext|)
(defparameter gl::geometry-shader-bit-oes cg-user::|gl_geometry_shader_bit_oes|)
(defparameter gl::geometry-shader-ext cg-user::|gl_geometry_shader_ext|)
(defparameter gl::geometry-shader-invocations cg-user::|gl_geometry_shader_invocations|)
(defparameter gl::geometry-shader-invocations-ext cg-user::|gl_geometry_shader_invocations_ext|)
(defparameter gl::geometry-shader-invocations-oes cg-user::|gl_geometry_shader_invocations_oes|)
(defparameter gl::geometry-shader-oes cg-user::|gl_geometry_shader_oes|)
(defparameter gl::geometry-shader-primitives-emitted-arb cg-user::|gl_geometry_shader_primitives_emitted_arb|)
(defparameter gl::geometry-subroutine cg-user::|gl_geometry_subroutine|)
(defparameter gl::geometry-subroutine-uniform cg-user::|gl_geometry_subroutine_uniform|)
(defparameter gl::geometry-texture cg-user::|gl_geometry_texture|)
(defparameter gl::geometry-vertices-out cg-user::|gl_geometry_vertices_out|)
(defparameter gl::geometry-vertices-out-arb cg-user::|gl_geometry_vertices_out_arb|)
(defparameter gl::geometry-vertices-out-ext cg-user::|gl_geometry_vertices_out_ext|)
(defparameter gl::gequal cg-user::|gl_gequal|)
(defparameter gl::get-texture-image-format cg-user::|gl_get_texture_image_format|)
(defparameter gl::get-texture-image-type cg-user::|gl_get_texture_image_type|)
(defparameter gl::global-alpha-factor-sun cg-user::|gl_global_alpha_factor_sun|)
(defparameter gl::global-alpha-sun cg-user::|gl_global_alpha_sun|)
(defparameter gl::glyph-has-kerning-bit-nv cg-user::|gl_glyph_has_kerning_bit_nv|)
(defparameter gl::glyph-height-bit-nv cg-user::|gl_glyph_height_bit_nv|)
(defparameter gl::glyph-horizontal-bearing-advance-bit-nv cg-user::|gl_glyph_horizontal_bearing_advance_bit_nv|)
(defparameter gl::glyph-horizontal-bearing-x-bit-nv cg-user::|gl_glyph_horizontal_bearing_x_bit_nv|)
(defparameter gl::glyph-horizontal-bearing-y-bit-nv cg-user::|gl_glyph_horizontal_bearing_y_bit_nv|)
(defparameter gl::glyph-vertical-bearing-advance-bit-nv cg-user::|gl_glyph_vertical_bearing_advance_bit_nv|)
(defparameter gl::glyph-vertical-bearing-x-bit-nv cg-user::|gl_glyph_vertical_bearing_x_bit_nv|)
(defparameter gl::glyph-vertical-bearing-y-bit-nv cg-user::|gl_glyph_vertical_bearing_y_bit_nv|)
(defparameter gl::glyph-width-bit-nv cg-user::|gl_glyph_width_bit_nv|)
(defparameter gl::gpu-address-nv cg-user::|gl_gpu_address_nv|)
(defparameter gl::gpu-disjoint-ext cg-user::|gl_gpu_disjoint_ext|)
(defparameter gl::gpu-memory-info-current-available-vidmem-nvx cg-user::|gl_gpu_memory_info_current_available_vidmem_nvx|)
(defparameter gl::gpu-memory-info-dedicated-vidmem-nvx cg-user::|gl_gpu_memory_info_dedicated_vidmem_nvx|)
(defparameter gl::gpu-memory-info-evicted-memory-nvx cg-user::|gl_gpu_memory_info_evicted_memory_nvx|)
(defparameter gl::gpu-memory-info-eviction-count-nvx cg-user::|gl_gpu_memory_info_eviction_count_nvx|)
(defparameter gl::gpu-memory-info-total-available-memory-nvx cg-user::|gl_gpu_memory_info_total_available_memory_nvx|)
(defparameter gl::gpu-optimized-qcom cg-user::|gl_gpu_optimized_qcom|)
(defparameter gl::greater cg-user::|gl_greater|)
(defparameter gl::green cg-user::|gl_green|)
(defparameter gl::green-bias cg-user::|gl_green_bias|)
(defparameter gl::green-bit-ati cg-user::|gl_green_bit_ati|)
(defparameter gl::green-bits cg-user::|gl_green_bits|)
(defparameter gl::green-integer cg-user::|gl_green_integer|)
(defparameter gl::green-integer-ext cg-user::|gl_green_integer_ext|)
(defparameter gl::green-max-clamp-ingr cg-user::|gl_green_max_clamp_ingr|)
(defparameter gl::green-min-clamp-ingr cg-user::|gl_green_min_clamp_ingr|)
(defparameter gl::green-nv cg-user::|gl_green_nv|)
(defparameter gl::green-scale cg-user::|gl_green_scale|)
(defparameter gl::gs-program-binary-mtk cg-user::|gl_gs_program_binary_mtk|)
(defparameter gl::gs-shader-binary-mtk cg-user::|gl_gs_shader_binary_mtk|)
(defparameter gl::guilty-context-reset cg-user::|gl_guilty_context_reset|)
(defparameter gl::guilty-context-reset-arb cg-user::|gl_guilty_context_reset_arb|)
(defparameter gl::guilty-context-reset-ext cg-user::|gl_guilty_context_reset_ext|)
(defparameter gl::guilty-context-reset-khr cg-user::|gl_guilty_context_reset_khr|)
(defparameter gl::half-apple cg-user::|gl_half_apple|)
(defparameter gl::half-bias-negate-nv cg-user::|gl_half_bias_negate_nv|)
(defparameter gl::half-bias-normal-nv cg-user::|gl_half_bias_normal_nv|)
(defparameter gl::half-bit-ati cg-user::|gl_half_bit_ati|)
(defparameter gl::half-float cg-user::|gl_half_float|)
(defparameter gl::half-float-arb cg-user::|gl_half_float_arb|)
(defparameter gl::half-float-nv cg-user::|gl_half_float_nv|)
(defparameter gl::half-float-oes cg-user::|gl_half_float_oes|)
(defparameter gl::hardlight cg-user::|gl_hardlight|)
(defparameter gl::hardlight-khr cg-user::|gl_hardlight_khr|)
(defparameter gl::hardlight-nv cg-user::|gl_hardlight_nv|)
(defparameter gl::hardmix-nv cg-user::|gl_hardmix_nv|)
(defparameter gl::hi-bias-nv cg-user::|gl_hi_bias_nv|)
(defparameter gl::high-float cg-user::|gl_high_float|)
(defparameter gl::high-int cg-user::|gl_high_int|)
(defparameter gl::hilo16-nv cg-user::|gl_hilo16_nv|)
(defparameter gl::hilo8-nv cg-user::|gl_hilo8_nv|)
(defparameter gl::hilo-nv cg-user::|gl_hilo_nv|)
(defparameter gl::hint-bit cg-user::|gl_hint_bit|)
(defparameter gl::hi-scale-nv cg-user::|gl_hi_scale_nv|)
(defparameter gl::histogram cg-user::|gl_histogram|)
(defparameter gl::histogram-alpha-size cg-user::|gl_histogram_alpha_size|)
(defparameter gl::histogram-alpha-size-ext cg-user::|gl_histogram_alpha_size_ext|)
(defparameter gl::histogram-blue-size cg-user::|gl_histogram_blue_size|)
(defparameter gl::histogram-blue-size-ext cg-user::|gl_histogram_blue_size_ext|)
(defparameter gl::histogram-ext cg-user::|gl_histogram_ext|)
(defparameter gl::histogram-format cg-user::|gl_histogram_format|)
(defparameter gl::histogram-format-ext cg-user::|gl_histogram_format_ext|)
(defparameter gl::histogram-green-size cg-user::|gl_histogram_green_size|)
(defparameter gl::histogram-green-size-ext cg-user::|gl_histogram_green_size_ext|)
(defparameter gl::histogram-luminance-size cg-user::|gl_histogram_luminance_size|)
(defparameter gl::histogram-luminance-size-ext cg-user::|gl_histogram_luminance_size_ext|)
(defparameter gl::histogram-red-size cg-user::|gl_histogram_red_size|)
(defparameter gl::histogram-red-size-ext cg-user::|gl_histogram_red_size_ext|)
(defparameter gl::histogram-sink cg-user::|gl_histogram_sink|)
(defparameter gl::histogram-sink-ext cg-user::|gl_histogram_sink_ext|)
(defparameter gl::histogram-width cg-user::|gl_histogram_width|)
(defparameter gl::histogram-width-ext cg-user::|gl_histogram_width_ext|)
(defparameter gl::horizontal-line-to-nv cg-user::|gl_horizontal_line_to_nv|)
(defparameter gl::hsl-color cg-user::|gl_hsl_color|)
(defparameter gl::hsl-color-khr cg-user::|gl_hsl_color_khr|)
(defparameter gl::hsl-color-nv cg-user::|gl_hsl_color_nv|)
(defparameter gl::hsl-hue cg-user::|gl_hsl_hue|)
(defparameter gl::hsl-hue-khr cg-user::|gl_hsl_hue_khr|)
(defparameter gl::hsl-hue-nv cg-user::|gl_hsl_hue_nv|)
(defparameter gl::hsl-luminosity cg-user::|gl_hsl_luminosity|)
(defparameter gl::hsl-luminosity-khr cg-user::|gl_hsl_luminosity_khr|)
(defparameter gl::hsl-luminosity-nv cg-user::|gl_hsl_luminosity_nv|)
(defparameter gl::hsl-saturation cg-user::|gl_hsl_saturation|)
(defparameter gl::hsl-saturation-khr cg-user::|gl_hsl_saturation_khr|)
(defparameter gl::hsl-saturation-nv cg-user::|gl_hsl_saturation_nv|)
(defparameter gl::identity-nv cg-user::|gl_identity_nv|)
(defparameter gl::ignore-border-hp cg-user::|gl_ignore_border_hp|)
(defparameter gl::image-1d cg-user::|gl_image_1d|)
(defparameter gl::image-1d-array cg-user::|gl_image_1d_array|)
(defparameter gl::image-1d-array-ext cg-user::|gl_image_1d_array_ext|)
(defparameter gl::image-1d-ext cg-user::|gl_image_1d_ext|)
(defparameter gl::image-2d cg-user::|gl_image_2d|)
(defparameter gl::image-2d-array cg-user::|gl_image_2d_array|)
(defparameter gl::image-2d-array-ext cg-user::|gl_image_2d_array_ext|)
(defparameter gl::image-2d-ext cg-user::|gl_image_2d_ext|)
(defparameter gl::image-2d-multisample cg-user::|gl_image_2d_multisample|)
(defparameter gl::image-2d-multisample-array cg-user::|gl_image_2d_multisample_array|)
(defparameter gl::image-2d-multisample-array-ext cg-user::|gl_image_2d_multisample_array_ext|)
(defparameter gl::image-2d-multisample-ext cg-user::|gl_image_2d_multisample_ext|)
(defparameter gl::image-2d-rect cg-user::|gl_image_2d_rect|)
(defparameter gl::image-2d-rect-ext cg-user::|gl_image_2d_rect_ext|)
(defparameter gl::image-3d cg-user::|gl_image_3d|)
(defparameter gl::image-3d-ext cg-user::|gl_image_3d_ext|)
(defparameter gl::image-binding-access cg-user::|gl_image_binding_access|)
(defparameter gl::image-binding-access-ext cg-user::|gl_image_binding_access_ext|)
(defparameter gl::image-binding-format cg-user::|gl_image_binding_format|)
(defparameter gl::image-binding-format-ext cg-user::|gl_image_binding_format_ext|)
(defparameter gl::image-binding-layer cg-user::|gl_image_binding_layer|)
(defparameter gl::image-binding-layered cg-user::|gl_image_binding_layered|)
(defparameter gl::image-binding-layered-ext cg-user::|gl_image_binding_layered_ext|)
(defparameter gl::image-binding-layer-ext cg-user::|gl_image_binding_layer_ext|)
(defparameter gl::image-binding-level cg-user::|gl_image_binding_level|)
(defparameter gl::image-binding-level-ext cg-user::|gl_image_binding_level_ext|)
(defparameter gl::image-binding-name cg-user::|gl_image_binding_name|)
(defparameter gl::image-binding-name-ext cg-user::|gl_image_binding_name_ext|)
(defparameter gl::image-buffer cg-user::|gl_image_buffer|)
(defparameter gl::image-buffer-ext cg-user::|gl_image_buffer_ext|)
(defparameter gl::image-buffer-oes cg-user::|gl_image_buffer_oes|)
(defparameter gl::image-class-10-10-10-2 cg-user::|gl_image_class_10_10_10_2|)
(defparameter gl::image-class-11-11-10 cg-user::|gl_image_class_11_11_10|)
(defparameter gl::image-class-1-x-16 cg-user::|gl_image_class_1_x_16|)
(defparameter gl::image-class-1-x-32 cg-user::|gl_image_class_1_x_32|)
(defparameter gl::image-class-1-x-8 cg-user::|gl_image_class_1_x_8|)
(defparameter gl::image-class-2-x-16 cg-user::|gl_image_class_2_x_16|)
(defparameter gl::image-class-2-x-32 cg-user::|gl_image_class_2_x_32|)
(defparameter gl::image-class-2-x-8 cg-user::|gl_image_class_2_x_8|)
(defparameter gl::image-class-4-x-16 cg-user::|gl_image_class_4_x_16|)
(defparameter gl::image-class-4-x-32 cg-user::|gl_image_class_4_x_32|)
(defparameter gl::image-class-4-x-8 cg-user::|gl_image_class_4_x_8|)
(defparameter gl::image-compatibility-class cg-user::|gl_image_compatibility_class|)
(defparameter gl::image-cube cg-user::|gl_image_cube|)
(defparameter gl::image-cube-ext cg-user::|gl_image_cube_ext|)
(defparameter gl::image-cube-map-array cg-user::|gl_image_cube_map_array|)
(defparameter gl::image-cube-map-array-ext cg-user::|gl_image_cube_map_array_ext|)
(defparameter gl::image-cube-map-array-oes cg-user::|gl_image_cube_map_array_oes|)
(defparameter gl::image-cubic-weight-hp cg-user::|gl_image_cubic_weight_hp|)
(defparameter gl::image-format-compatibility-by-class cg-user::|gl_image_format_compatibility_by_class|)
(defparameter gl::image-format-compatibility-by-size cg-user::|gl_image_format_compatibility_by_size|)
(defparameter gl::image-format-compatibility-type cg-user::|gl_image_format_compatibility_type|)
(defparameter gl::image-mag-filter-hp cg-user::|gl_image_mag_filter_hp|)
(defparameter gl::image-min-filter-hp cg-user::|gl_image_min_filter_hp|)
(defparameter gl::image-pixel-format cg-user::|gl_image_pixel_format|)
(defparameter gl::image-pixel-type cg-user::|gl_image_pixel_type|)
(defparameter gl::image-rotate-angle-hp cg-user::|gl_image_rotate_angle_hp|)
(defparameter gl::image-rotate-origin-x-hp cg-user::|gl_image_rotate_origin_x_hp|)
(defparameter gl::image-rotate-origin-y-hp cg-user::|gl_image_rotate_origin_y_hp|)
(defparameter gl::image-scale-x-hp cg-user::|gl_image_scale_x_hp|)
(defparameter gl::image-scale-y-hp cg-user::|gl_image_scale_y_hp|)
(defparameter gl::image-texel-size cg-user::|gl_image_texel_size|)
(defparameter gl::image-transform-2d-hp cg-user::|gl_image_transform_2d_hp|)
(defparameter gl::image-translate-x-hp cg-user::|gl_image_translate_x_hp|)
(defparameter gl::image-translate-y-hp cg-user::|gl_image_translate_y_hp|)
(defparameter gl::implementation-color-read-format cg-user::|gl_implementation_color_read_format|)
(defparameter gl::implementation-color-read-format-oes cg-user::|gl_implementation_color_read_format_oes|)
(defparameter gl::implementation-color-read-type cg-user::|gl_implementation_color_read_type|)
(defparameter gl::implementation-color-read-type-oes cg-user::|gl_implementation_color_read_type_oes|)
(defparameter gl::incr cg-user::|gl_incr|)
(defparameter gl::incr-wrap cg-user::|gl_incr_wrap|)
(defparameter gl::incr-wrap-ext cg-user::|gl_incr_wrap_ext|)
(defparameter gl::incr-wrap-oes cg-user::|gl_incr_wrap_oes|)
(defparameter gl::index cg-user::|gl_index|)
(defparameter gl::index-array cg-user::|gl_index_array|)
(defparameter gl::index-array-address-nv cg-user::|gl_index_array_address_nv|)
(defparameter gl::index-array-buffer-binding cg-user::|gl_index_array_buffer_binding|)
(defparameter gl::index-array-buffer-binding-arb cg-user::|gl_index_array_buffer_binding_arb|)
(defparameter gl::index-array-count-ext cg-user::|gl_index_array_count_ext|)
(defparameter gl::index-array-ext cg-user::|gl_index_array_ext|)
(defparameter gl::index-array-length-nv cg-user::|gl_index_array_length_nv|)
(defparameter gl::index-array-list-ibm cg-user::|gl_index_array_list_ibm|)
(defparameter gl::index-array-list-stride-ibm cg-user::|gl_index_array_list_stride_ibm|)
(defparameter gl::index-array-pointer cg-user::|gl_index_array_pointer|)
(defparameter gl::index-array-pointer-ext cg-user::|gl_index_array_pointer_ext|)
(defparameter gl::index-array-stride cg-user::|gl_index_array_stride|)
(defparameter gl::index-array-stride-ext cg-user::|gl_index_array_stride_ext|)
(defparameter gl::index-array-type cg-user::|gl_index_array_type|)
(defparameter gl::index-array-type-ext cg-user::|gl_index_array_type_ext|)
(defparameter gl::index-bit-pgi cg-user::|gl_index_bit_pgi|)
(defparameter gl::index-bits cg-user::|gl_index_bits|)
(defparameter gl::index-clear-value cg-user::|gl_index_clear_value|)
(defparameter gl::index-logic-op cg-user::|gl_index_logic_op|)
(defparameter gl::index-material-ext cg-user::|gl_index_material_ext|)
(defparameter gl::index-material-face-ext cg-user::|gl_index_material_face_ext|)
(defparameter gl::index-material-parameter-ext cg-user::|gl_index_material_parameter_ext|)
(defparameter gl::index-mode cg-user::|gl_index_mode|)
(defparameter gl::index-offset cg-user::|gl_index_offset|)
(defparameter gl::index-shift cg-user::|gl_index_shift|)
(defparameter gl::index-test-ext cg-user::|gl_index_test_ext|)
(defparameter gl::index-test-func-ext cg-user::|gl_index_test_func_ext|)
(defparameter gl::index-test-ref-ext cg-user::|gl_index_test_ref_ext|)
(defparameter gl::index-writemask cg-user::|gl_index_writemask|)
(defparameter gl::info-log-length cg-user::|gl_info_log_length|)
(defparameter gl::innocent-context-reset cg-user::|gl_innocent_context_reset|)
(defparameter gl::innocent-context-reset-arb cg-user::|gl_innocent_context_reset_arb|)
(defparameter gl::innocent-context-reset-ext cg-user::|gl_innocent_context_reset_ext|)
(defparameter gl::innocent-context-reset-khr cg-user::|gl_innocent_context_reset_khr|)
(defparameter gl::instrument-buffer-pointer-sgix cg-user::|gl_instrument_buffer_pointer_sgix|)
(defparameter gl::instrument-measurements-sgix cg-user::|gl_instrument_measurements_sgix|)
(defparameter gl::int cg-user::|gl_int|)
(defparameter gl::int-10-10-10-2-oes cg-user::|gl_int_10_10_10_2_oes|)
(defparameter gl::int16-nv cg-user::|gl_int16_nv|)
(defparameter gl::int16-vec2-nv cg-user::|gl_int16_vec2_nv|)
(defparameter gl::int16-vec3-nv cg-user::|gl_int16_vec3_nv|)
(defparameter gl::int16-vec4-nv cg-user::|gl_int16_vec4_nv|)
(defparameter gl::int-2-10-10-10-rev cg-user::|gl_int_2_10_10_10_rev|)
(defparameter gl::int64-arb cg-user::|gl_int64_arb|)
(defparameter gl::int64-nv cg-user::|gl_int64_nv|)
(defparameter gl::int64-vec2-arb cg-user::|gl_int64_vec2_arb|)
(defparameter gl::int64-vec2-nv cg-user::|gl_int64_vec2_nv|)
(defparameter gl::int64-vec3-arb cg-user::|gl_int64_vec3_arb|)
(defparameter gl::int64-vec3-nv cg-user::|gl_int64_vec3_nv|)
(defparameter gl::int64-vec4-arb cg-user::|gl_int64_vec4_arb|)
(defparameter gl::int64-vec4-nv cg-user::|gl_int64_vec4_nv|)
(defparameter gl::int8-nv cg-user::|gl_int8_nv|)
(defparameter gl::int8-vec2-nv cg-user::|gl_int8_vec2_nv|)
(defparameter gl::int8-vec3-nv cg-user::|gl_int8_vec3_nv|)
(defparameter gl::int8-vec4-nv cg-user::|gl_int8_vec4_nv|)
(defparameter gl::intensity cg-user::|gl_intensity|)
(defparameter gl::intensity12 cg-user::|gl_intensity12|)
(defparameter gl::intensity12-ext cg-user::|gl_intensity12_ext|)
(defparameter gl::intensity16 cg-user::|gl_intensity16|)
(defparameter gl::intensity16-ext cg-user::|gl_intensity16_ext|)
(defparameter gl::intensity16f-arb cg-user::|gl_intensity16f_arb|)
(defparameter gl::intensity16-icc-sgix cg-user::|gl_intensity16_icc_sgix|)
(defparameter gl::intensity16i-ext cg-user::|gl_intensity16i_ext|)
(defparameter gl::intensity16-snorm cg-user::|gl_intensity16_snorm|)
(defparameter gl::intensity16ui-ext cg-user::|gl_intensity16ui_ext|)
(defparameter gl::intensity32f-arb cg-user::|gl_intensity32f_arb|)
(defparameter gl::intensity32i-ext cg-user::|gl_intensity32i_ext|)
(defparameter gl::intensity32ui-ext cg-user::|gl_intensity32ui_ext|)
(defparameter gl::intensity4 cg-user::|gl_intensity4|)
(defparameter gl::intensity4-ext cg-user::|gl_intensity4_ext|)
(defparameter gl::intensity8 cg-user::|gl_intensity8|)
(defparameter gl::intensity8-ext cg-user::|gl_intensity8_ext|)
(defparameter gl::intensity8i-ext cg-user::|gl_intensity8i_ext|)
(defparameter gl::intensity8-snorm cg-user::|gl_intensity8_snorm|)
(defparameter gl::intensity8ui-ext cg-user::|gl_intensity8ui_ext|)
(defparameter gl::intensity-ext cg-user::|gl_intensity_ext|)
(defparameter gl::intensity-float16-apple cg-user::|gl_intensity_float16_apple|)
(defparameter gl::intensity-float16-ati cg-user::|gl_intensity_float16_ati|)
(defparameter gl::intensity-float32-apple cg-user::|gl_intensity_float32_apple|)
(defparameter gl::intensity-float32-ati cg-user::|gl_intensity_float32_ati|)
(defparameter gl::intensity-icc-sgix cg-user::|gl_intensity_icc_sgix|)
(defparameter gl::intensity-snorm cg-user::|gl_intensity_snorm|)
(defparameter gl::interlace-oml cg-user::|gl_interlace_oml|)
(defparameter gl::interlace-read-ingr cg-user::|gl_interlace_read_ingr|)
(defparameter gl::interlace-read-oml cg-user::|gl_interlace_read_oml|)
(defparameter gl::interlace-sgix cg-user::|gl_interlace_sgix|)
(defparameter gl::interleaved-attribs cg-user::|gl_interleaved_attribs|)
(defparameter gl::interleaved-attribs-ext cg-user::|gl_interleaved_attribs_ext|)
(defparameter gl::interleaved-attribs-nv cg-user::|gl_interleaved_attribs_nv|)
(defparameter gl::internalformat-alpha-size cg-user::|gl_internalformat_alpha_size|)
(defparameter gl::internalformat-alpha-type cg-user::|gl_internalformat_alpha_type|)
(defparameter gl::internalformat-blue-size cg-user::|gl_internalformat_blue_size|)
(defparameter gl::internalformat-blue-type cg-user::|gl_internalformat_blue_type|)
(defparameter gl::internalformat-depth-size cg-user::|gl_internalformat_depth_size|)
(defparameter gl::internalformat-depth-type cg-user::|gl_internalformat_depth_type|)
(defparameter gl::internalformat-green-size cg-user::|gl_internalformat_green_size|)
(defparameter gl::internalformat-green-type cg-user::|gl_internalformat_green_type|)
(defparameter gl::internalformat-preferred cg-user::|gl_internalformat_preferred|)
(defparameter gl::internalformat-red-size cg-user::|gl_internalformat_red_size|)
(defparameter gl::internalformat-red-type cg-user::|gl_internalformat_red_type|)
(defparameter gl::internalformat-shared-size cg-user::|gl_internalformat_shared_size|)
(defparameter gl::internalformat-stencil-size cg-user::|gl_internalformat_stencil_size|)
(defparameter gl::internalformat-stencil-type cg-user::|gl_internalformat_stencil_type|)
(defparameter gl::internalformat-supported cg-user::|gl_internalformat_supported|)
(defparameter gl::interpolate cg-user::|gl_interpolate|)
(defparameter gl::interpolate-arb cg-user::|gl_interpolate_arb|)
(defparameter gl::interpolate-ext cg-user::|gl_interpolate_ext|)
(defparameter gl::int-image-1d cg-user::|gl_int_image_1d|)
(defparameter gl::int-image-1d-array cg-user::|gl_int_image_1d_array|)
(defparameter gl::int-image-1d-array-ext cg-user::|gl_int_image_1d_array_ext|)
(defparameter gl::int-image-1d-ext cg-user::|gl_int_image_1d_ext|)
(defparameter gl::int-image-2d cg-user::|gl_int_image_2d|)
(defparameter gl::int-image-2d-array cg-user::|gl_int_image_2d_array|)
(defparameter gl::int-image-2d-array-ext cg-user::|gl_int_image_2d_array_ext|)
(defparameter gl::int-image-2d-ext cg-user::|gl_int_image_2d_ext|)
(defparameter gl::int-image-2d-multisample cg-user::|gl_int_image_2d_multisample|)
(defparameter gl::int-image-2d-multisample-array cg-user::|gl_int_image_2d_multisample_array|)
(defparameter gl::int-image-2d-multisample-array-ext cg-user::|gl_int_image_2d_multisample_array_ext|)
(defparameter gl::int-image-2d-multisample-ext cg-user::|gl_int_image_2d_multisample_ext|)
(defparameter gl::int-image-2d-rect cg-user::|gl_int_image_2d_rect|)
(defparameter gl::int-image-2d-rect-ext cg-user::|gl_int_image_2d_rect_ext|)
(defparameter gl::int-image-3d cg-user::|gl_int_image_3d|)
(defparameter gl::int-image-3d-ext cg-user::|gl_int_image_3d_ext|)
(defparameter gl::int-image-buffer cg-user::|gl_int_image_buffer|)
(defparameter gl::int-image-buffer-ext cg-user::|gl_int_image_buffer_ext|)
(defparameter gl::int-image-buffer-oes cg-user::|gl_int_image_buffer_oes|)
(defparameter gl::int-image-cube cg-user::|gl_int_image_cube|)
(defparameter gl::int-image-cube-ext cg-user::|gl_int_image_cube_ext|)
(defparameter gl::int-image-cube-map-array cg-user::|gl_int_image_cube_map_array|)
(defparameter gl::int-image-cube-map-array-ext cg-user::|gl_int_image_cube_map_array_ext|)
(defparameter gl::int-image-cube-map-array-oes cg-user::|gl_int_image_cube_map_array_oes|)
(defparameter gl::int-sampler-1d cg-user::|gl_int_sampler_1d|)
(defparameter gl::int-sampler-1d-array cg-user::|gl_int_sampler_1d_array|)
(defparameter gl::int-sampler-1d-array-ext cg-user::|gl_int_sampler_1d_array_ext|)
(defparameter gl::int-sampler-1d-ext cg-user::|gl_int_sampler_1d_ext|)
(defparameter gl::int-sampler-2d cg-user::|gl_int_sampler_2d|)
(defparameter gl::int-sampler-2d-array cg-user::|gl_int_sampler_2d_array|)
(defparameter gl::int-sampler-2d-array-ext cg-user::|gl_int_sampler_2d_array_ext|)
(defparameter gl::int-sampler-2d-ext cg-user::|gl_int_sampler_2d_ext|)
(defparameter gl::int-sampler-2d-multisample cg-user::|gl_int_sampler_2d_multisample|)
(defparameter gl::int-sampler-2d-multisample-array cg-user::|gl_int_sampler_2d_multisample_array|)
(defparameter gl::int-sampler-2d-multisample-array-oes cg-user::|gl_int_sampler_2d_multisample_array_oes|)
(defparameter gl::int-sampler-2d-rect cg-user::|gl_int_sampler_2d_rect|)
(defparameter gl::int-sampler-2d-rect-ext cg-user::|gl_int_sampler_2d_rect_ext|)
(defparameter gl::int-sampler-3d cg-user::|gl_int_sampler_3d|)
(defparameter gl::int-sampler-3d-ext cg-user::|gl_int_sampler_3d_ext|)
(defparameter gl::int-sampler-buffer cg-user::|gl_int_sampler_buffer|)
(defparameter gl::int-sampler-buffer-amd cg-user::|gl_int_sampler_buffer_amd|)
(defparameter gl::int-sampler-buffer-ext cg-user::|gl_int_sampler_buffer_ext|)
(defparameter gl::int-sampler-buffer-oes cg-user::|gl_int_sampler_buffer_oes|)
(defparameter gl::int-sampler-cube cg-user::|gl_int_sampler_cube|)
(defparameter gl::int-sampler-cube-ext cg-user::|gl_int_sampler_cube_ext|)
(defparameter gl::int-sampler-cube-map-array cg-user::|gl_int_sampler_cube_map_array|)
(defparameter gl::int-sampler-cube-map-array-arb cg-user::|gl_int_sampler_cube_map_array_arb|)
(defparameter gl::int-sampler-cube-map-array-ext cg-user::|gl_int_sampler_cube_map_array_ext|)
(defparameter gl::int-sampler-cube-map-array-oes cg-user::|gl_int_sampler_cube_map_array_oes|)
(defparameter gl::int-sampler-renderbuffer-nv cg-user::|gl_int_sampler_renderbuffer_nv|)
(defparameter gl::int-vec2 cg-user::|gl_int_vec2|)
(defparameter gl::int-vec2-arb cg-user::|gl_int_vec2_arb|)
(defparameter gl::int-vec3 cg-user::|gl_int_vec3|)
(defparameter gl::int-vec3-arb cg-user::|gl_int_vec3_arb|)
(defparameter gl::int-vec4 cg-user::|gl_int_vec4|)
(defparameter gl::int-vec4-arb cg-user::|gl_int_vec4_arb|)
(defparameter gl::invalid-enum cg-user::|gl_invalid_enum|)
(defparameter gl::invalid-framebuffer-operation cg-user::|gl_invalid_framebuffer_operation|)
(defparameter gl::invalid-framebuffer-operation-ext cg-user::|gl_invalid_framebuffer_operation_ext|)
(defparameter gl::invalid-framebuffer-operation-oes cg-user::|gl_invalid_framebuffer_operation_oes|)
(defparameter gl::invalid-index cg-user::|gl_invalid_index|)
(defparameter gl::invalid-operation cg-user::|gl_invalid_operation|)
(defparameter gl::invalid-value cg-user::|gl_invalid_value|)
(defparameter gl::invariant-datatype-ext cg-user::|gl_invariant_datatype_ext|)
(defparameter gl::invariant-ext cg-user::|gl_invariant_ext|)
(defparameter gl::invariant-value-ext cg-user::|gl_invariant_value_ext|)
(defparameter gl::inverse-nv cg-user::|gl_inverse_nv|)
(defparameter gl::inverse-transpose-nv cg-user::|gl_inverse_transpose_nv|)
(defparameter gl::invert cg-user::|gl_invert|)
(defparameter gl::inverted-screen-w-rend cg-user::|gl_inverted_screen_w_rend|)
(defparameter gl::invert-ovg-nv cg-user::|gl_invert_ovg_nv|)
(defparameter gl::invert-rgb-nv cg-user::|gl_invert_rgb_nv|)
(defparameter gl::ir-instrument1-sgix cg-user::|gl_ir_instrument1_sgix|)
(defparameter gl::isolines cg-user::|gl_isolines|)
(defparameter gl::isolines-ext cg-user::|gl_isolines_ext|)
(defparameter gl::isolines-oes cg-user::|gl_isolines_oes|)
(defparameter gl::is-per-patch cg-user::|gl_is_per_patch|)
(defparameter gl::is-per-patch-ext cg-user::|gl_is_per_patch_ext|)
(defparameter gl::is-per-patch-oes cg-user::|gl_is_per_patch_oes|)
(defparameter gl::is-row-major cg-user::|gl_is_row_major|)
(defparameter gl::italic-bit-nv cg-user::|gl_italic_bit_nv|)
(defparameter gl::iui-n3f-v2f-ext cg-user::|gl_iui_n3f_v2f_ext|)
(defparameter gl::iui-n3f-v3f-ext cg-user::|gl_iui_n3f_v3f_ext|)
(defparameter gl::iui-v2f-ext cg-user::|gl_iui_v2f_ext|)
(defparameter gl::iui-v3f-ext cg-user::|gl_iui_v3f_ext|)
(defparameter gl::keep cg-user::|gl_keep|)
(defparameter gl::large-ccw-arc-to-nv cg-user::|gl_large_ccw_arc_to_nv|)
(defparameter gl::large-cw-arc-to-nv cg-user::|gl_large_cw_arc_to_nv|)
(defparameter gl::last-vertex-convention cg-user::|gl_last_vertex_convention|)
(defparameter gl::last-vertex-convention-ext cg-user::|gl_last_vertex_convention_ext|)
(defparameter gl::last-vertex-convention-oes cg-user::|gl_last_vertex_convention_oes|)
(defparameter gl::last-video-capture-status-nv cg-user::|gl_last_video_capture_status_nv|)
(defparameter gl::layer-nv cg-user::|gl_layer_nv|)
(defparameter gl::layer-provoking-vertex cg-user::|gl_layer_provoking_vertex|)
(defparameter gl::layer-provoking-vertex-ext cg-user::|gl_layer_provoking_vertex_ext|)
(defparameter gl::layer-provoking-vertex-oes cg-user::|gl_layer_provoking_vertex_oes|)
(defparameter gl::layout-default-intel cg-user::|gl_layout_default_intel|)
(defparameter gl::layout-linear-cpu-cached-intel cg-user::|gl_layout_linear_cpu_cached_intel|)
(defparameter gl::layout-linear-intel cg-user::|gl_layout_linear_intel|)
(defparameter gl::left cg-user::|gl_left|)
(defparameter gl::lequal cg-user::|gl_lequal|)
(defparameter gl::lerp-ati cg-user::|gl_lerp_ati|)
(defparameter gl::less cg-user::|gl_less|)
(defparameter gl::light0 cg-user::|gl_light0|)
(defparameter gl::light1 cg-user::|gl_light1|)
(defparameter gl::light2 cg-user::|gl_light2|)
(defparameter gl::light3 cg-user::|gl_light3|)
(defparameter gl::light4 cg-user::|gl_light4|)
(defparameter gl::light5 cg-user::|gl_light5|)
(defparameter gl::light6 cg-user::|gl_light6|)
(defparameter gl::light7 cg-user::|gl_light7|)
(defparameter gl::lighten cg-user::|gl_lighten|)
(defparameter gl::lighten-khr cg-user::|gl_lighten_khr|)
(defparameter gl::lighten-nv cg-user::|gl_lighten_nv|)
(defparameter gl::light-env-mode-sgix cg-user::|gl_light_env_mode_sgix|)
(defparameter gl::lighting cg-user::|gl_lighting|)
(defparameter gl::lighting-bit cg-user::|gl_lighting_bit|)
(defparameter gl::light-model-ambient cg-user::|gl_light_model_ambient|)
(defparameter gl::light-model-color-control cg-user::|gl_light_model_color_control|)
(defparameter gl::light-model-color-control-ext cg-user::|gl_light_model_color_control_ext|)
(defparameter gl::light-model-local-viewer cg-user::|gl_light_model_local_viewer|)
(defparameter gl::light-model-specular-vector-apple cg-user::|gl_light_model_specular_vector_apple|)
(defparameter gl::light-model-two-side cg-user::|gl_light_model_two_side|)
(defparameter gl::line cg-user::|gl_line|)
(defparameter gl::linear cg-user::|gl_linear|)
(defparameter gl::linear-attenuation cg-user::|gl_linear_attenuation|)
(defparameter gl::linearburn-nv cg-user::|gl_linearburn_nv|)
(defparameter gl::linear-clipmap-linear-sgix cg-user::|gl_linear_clipmap_linear_sgix|)
(defparameter gl::linear-clipmap-nearest-sgix cg-user::|gl_linear_clipmap_nearest_sgix|)
(defparameter gl::linear-detail-alpha-sgis cg-user::|gl_linear_detail_alpha_sgis|)
(defparameter gl::linear-detail-color-sgis cg-user::|gl_linear_detail_color_sgis|)
(defparameter gl::linear-detail-sgis cg-user::|gl_linear_detail_sgis|)
(defparameter gl::lineardodge-nv cg-user::|gl_lineardodge_nv|)
(defparameter gl::linearlight-nv cg-user::|gl_linearlight_nv|)
(defparameter gl::linear-mipmap-linear cg-user::|gl_linear_mipmap_linear|)
(defparameter gl::linear-mipmap-nearest cg-user::|gl_linear_mipmap_nearest|)
(defparameter gl::linear-sharpen-alpha-sgis cg-user::|gl_linear_sharpen_alpha_sgis|)
(defparameter gl::linear-sharpen-color-sgis cg-user::|gl_linear_sharpen_color_sgis|)
(defparameter gl::linear-sharpen-sgis cg-user::|gl_linear_sharpen_sgis|)
(defparameter gl::line-bit cg-user::|gl_line_bit|)
(defparameter gl::line-loop cg-user::|gl_line_loop|)
(defparameter gl::line-nv cg-user::|gl_line_nv|)
(defparameter gl::line-quality-hint-sgix cg-user::|gl_line_quality_hint_sgix|)
(defparameter gl::line-reset-token cg-user::|gl_line_reset_token|)
(defparameter gl::lines cg-user::|gl_lines|)
(defparameter gl::lines-adjacency cg-user::|gl_lines_adjacency|)
(defparameter gl::lines-adjacency-arb cg-user::|gl_lines_adjacency_arb|)
(defparameter gl::lines-adjacency-ext cg-user::|gl_lines_adjacency_ext|)
(defparameter gl::lines-adjacency-oes cg-user::|gl_lines_adjacency_oes|)
(defparameter gl::line-smooth cg-user::|gl_line_smooth|)
(defparameter gl::line-smooth-hint cg-user::|gl_line_smooth_hint|)
(defparameter gl::line-stipple cg-user::|gl_line_stipple|)
(defparameter gl::line-stipple-pattern cg-user::|gl_line_stipple_pattern|)
(defparameter gl::line-stipple-repeat cg-user::|gl_line_stipple_repeat|)
(defparameter gl::line-strip cg-user::|gl_line_strip|)
(defparameter gl::line-strip-adjacency cg-user::|gl_line_strip_adjacency|)
(defparameter gl::line-strip-adjacency-arb cg-user::|gl_line_strip_adjacency_arb|)
(defparameter gl::line-strip-adjacency-ext cg-user::|gl_line_strip_adjacency_ext|)
(defparameter gl::line-strip-adjacency-oes cg-user::|gl_line_strip_adjacency_oes|)
(defparameter gl::line-token cg-user::|gl_line_token|)
(defparameter gl::line-to-nv cg-user::|gl_line_to_nv|)
(defparameter gl::line-width cg-user::|gl_line_width|)
(defparameter gl::line-width-command-nv cg-user::|gl_line_width_command_nv|)
(defparameter gl::line-width-granularity cg-user::|gl_line_width_granularity|)
(defparameter gl::line-width-range cg-user::|gl_line_width_range|)
(defparameter gl::link-status cg-user::|gl_link_status|)
(defparameter gl::list-base cg-user::|gl_list_base|)
(defparameter gl::list-bit cg-user::|gl_list_bit|)
(defparameter gl::list-index cg-user::|gl_list_index|)
(defparameter gl::list-mode cg-user::|gl_list_mode|)
(defparameter gl::list-priority-sgix cg-user::|gl_list_priority_sgix|)
(defparameter gl::load cg-user::|gl_load|)
(defparameter gl::lo-bias-nv cg-user::|gl_lo_bias_nv|)
(defparameter gl::local-constant-datatype-ext cg-user::|gl_local_constant_datatype_ext|)
(defparameter gl::local-constant-ext cg-user::|gl_local_constant_ext|)
(defparameter gl::local-constant-value-ext cg-user::|gl_local_constant_value_ext|)
(defparameter gl::local-ext cg-user::|gl_local_ext|)
(defparameter gl::location cg-user::|gl_location|)
(defparameter gl::location-component cg-user::|gl_location_component|)
(defparameter gl::location-index cg-user::|gl_location_index|)
(defparameter gl::location-index-ext cg-user::|gl_location_index_ext|)
(defparameter gl::logic-op cg-user::|gl_logic_op|)
(defparameter gl::logic-op-mode cg-user::|gl_logic_op_mode|)
(defparameter gl::lo-scale-nv cg-user::|gl_lo_scale_nv|)
(defparameter gl::lose-context-on-reset cg-user::|gl_lose_context_on_reset|)
(defparameter gl::lose-context-on-reset-arb cg-user::|gl_lose_context_on_reset_arb|)
(defparameter gl::lose-context-on-reset-ext cg-user::|gl_lose_context_on_reset_ext|)
(defparameter gl::lose-context-on-reset-khr cg-user::|gl_lose_context_on_reset_khr|)
(defparameter gl::lower-left cg-user::|gl_lower_left|)
(defparameter gl::low-float cg-user::|gl_low_float|)
(defparameter gl::low-int cg-user::|gl_low_int|)
(defparameter gl::luminance cg-user::|gl_luminance|)
(defparameter gl::luminance12 cg-user::|gl_luminance12|)
(defparameter gl::luminance12-alpha12 cg-user::|gl_luminance12_alpha12|)
(defparameter gl::luminance12-alpha12-ext cg-user::|gl_luminance12_alpha12_ext|)
(defparameter gl::luminance12-alpha4 cg-user::|gl_luminance12_alpha4|)
(defparameter gl::luminance12-alpha4-ext cg-user::|gl_luminance12_alpha4_ext|)
(defparameter gl::luminance12-ext cg-user::|gl_luminance12_ext|)
(defparameter gl::luminance16 cg-user::|gl_luminance16|)
(defparameter gl::luminance16-alpha16 cg-user::|gl_luminance16_alpha16|)
(defparameter gl::luminance16-alpha16-ext cg-user::|gl_luminance16_alpha16_ext|)
(defparameter gl::luminance16-alpha16-snorm cg-user::|gl_luminance16_alpha16_snorm|)
(defparameter gl::luminance16-alpha8-icc-sgix cg-user::|gl_luminance16_alpha8_icc_sgix|)
(defparameter gl::luminance16-ext cg-user::|gl_luminance16_ext|)
(defparameter gl::luminance16f-arb cg-user::|gl_luminance16f_arb|)
(defparameter gl::luminance16f-ext cg-user::|gl_luminance16f_ext|)
(defparameter gl::luminance16-icc-sgix cg-user::|gl_luminance16_icc_sgix|)
(defparameter gl::luminance16i-ext cg-user::|gl_luminance16i_ext|)
(defparameter gl::luminance16-snorm cg-user::|gl_luminance16_snorm|)
(defparameter gl::luminance16ui-ext cg-user::|gl_luminance16ui_ext|)
(defparameter gl::luminance32f-arb cg-user::|gl_luminance32f_arb|)
(defparameter gl::luminance32f-ext cg-user::|gl_luminance32f_ext|)
(defparameter gl::luminance32i-ext cg-user::|gl_luminance32i_ext|)
(defparameter gl::luminance32ui-ext cg-user::|gl_luminance32ui_ext|)
(defparameter gl::luminance4 cg-user::|gl_luminance4|)
(defparameter gl::luminance4-alpha4 cg-user::|gl_luminance4_alpha4|)
(defparameter gl::luminance4-alpha4-ext cg-user::|gl_luminance4_alpha4_ext|)
(defparameter gl::luminance4-alpha4-oes cg-user::|gl_luminance4_alpha4_oes|)
(defparameter gl::luminance4-ext cg-user::|gl_luminance4_ext|)
(defparameter gl::luminance6-alpha2 cg-user::|gl_luminance6_alpha2|)
(defparameter gl::luminance6-alpha2-ext cg-user::|gl_luminance6_alpha2_ext|)
(defparameter gl::luminance8 cg-user::|gl_luminance8|)
(defparameter gl::luminance8-alpha8 cg-user::|gl_luminance8_alpha8|)
(defparameter gl::luminance8-alpha8-ext cg-user::|gl_luminance8_alpha8_ext|)
(defparameter gl::luminance8-alpha8-oes cg-user::|gl_luminance8_alpha8_oes|)
(defparameter gl::luminance8-alpha8-snorm cg-user::|gl_luminance8_alpha8_snorm|)
(defparameter gl::luminance8-ext cg-user::|gl_luminance8_ext|)
(defparameter gl::luminance8i-ext cg-user::|gl_luminance8i_ext|)
(defparameter gl::luminance8-oes cg-user::|gl_luminance8_oes|)
(defparameter gl::luminance8-snorm cg-user::|gl_luminance8_snorm|)
(defparameter gl::luminance8ui-ext cg-user::|gl_luminance8ui_ext|)
(defparameter gl::luminance-alpha cg-user::|gl_luminance_alpha|)
(defparameter gl::luminance-alpha16f-arb cg-user::|gl_luminance_alpha16f_arb|)
(defparameter gl::luminance-alpha16f-ext cg-user::|gl_luminance_alpha16f_ext|)
(defparameter gl::luminance-alpha16i-ext cg-user::|gl_luminance_alpha16i_ext|)
(defparameter gl::luminance-alpha16ui-ext cg-user::|gl_luminance_alpha16ui_ext|)
(defparameter gl::luminance-alpha32f-arb cg-user::|gl_luminance_alpha32f_arb|)
(defparameter gl::luminance-alpha32f-ext cg-user::|gl_luminance_alpha32f_ext|)
(defparameter gl::luminance-alpha32i-ext cg-user::|gl_luminance_alpha32i_ext|)
(defparameter gl::luminance-alpha32ui-ext cg-user::|gl_luminance_alpha32ui_ext|)
(defparameter gl::luminance-alpha8i-ext cg-user::|gl_luminance_alpha8i_ext|)
(defparameter gl::luminance-alpha8ui-ext cg-user::|gl_luminance_alpha8ui_ext|)
(defparameter gl::luminance-alpha-float16-apple cg-user::|gl_luminance_alpha_float16_apple|)
(defparameter gl::luminance-alpha-float16-ati cg-user::|gl_luminance_alpha_float16_ati|)
(defparameter gl::luminance-alpha-float32-apple cg-user::|gl_luminance_alpha_float32_apple|)
(defparameter gl::luminance-alpha-float32-ati cg-user::|gl_luminance_alpha_float32_ati|)
(defparameter gl::luminance-alpha-icc-sgix cg-user::|gl_luminance_alpha_icc_sgix|)
(defparameter gl::luminance-alpha-integer-ext cg-user::|gl_luminance_alpha_integer_ext|)
(defparameter gl::luminance-alpha-snorm cg-user::|gl_luminance_alpha_snorm|)
(defparameter gl::luminance-float16-apple cg-user::|gl_luminance_float16_apple|)
(defparameter gl::luminance-float16-ati cg-user::|gl_luminance_float16_ati|)
(defparameter gl::luminance-float32-apple cg-user::|gl_luminance_float32_apple|)
(defparameter gl::luminance-float32-ati cg-user::|gl_luminance_float32_ati|)
(defparameter gl::luminance-icc-sgix cg-user::|gl_luminance_icc_sgix|)
(defparameter gl::luminance-integer-ext cg-user::|gl_luminance_integer_ext|)
(defparameter gl::luminance-snorm cg-user::|gl_luminance_snorm|)
(defparameter gl::mad-ati cg-user::|gl_mad_ati|)
(defparameter gl::magnitude-bias-nv cg-user::|gl_magnitude_bias_nv|)
(defparameter gl::magnitude-scale-nv cg-user::|gl_magnitude_scale_nv|)
(defparameter gl::major-version cg-user::|gl_major_version|)
(defparameter gl::mali-program-binary-arm cg-user::|gl_mali_program_binary_arm|)
(defparameter gl::mali-shader-binary-arm cg-user::|gl_mali_shader_binary_arm|)
(defparameter gl::manual-generate-mipmap cg-user::|gl_manual_generate_mipmap|)
(defparameter gl::map1-binormal-ext cg-user::|gl_map1_binormal_ext|)
(defparameter gl::map1-color-4 cg-user::|gl_map1_color_4|)
(defparameter gl::map1-grid-domain cg-user::|gl_map1_grid_domain|)
(defparameter gl::map1-grid-segments cg-user::|gl_map1_grid_segments|)
(defparameter gl::map1-index cg-user::|gl_map1_index|)
(defparameter gl::map1-normal cg-user::|gl_map1_normal|)
(defparameter gl::map1-tangent-ext cg-user::|gl_map1_tangent_ext|)
(defparameter gl::map1-texture-coord-1 cg-user::|gl_map1_texture_coord_1|)
(defparameter gl::map1-texture-coord-2 cg-user::|gl_map1_texture_coord_2|)
(defparameter gl::map1-texture-coord-3 cg-user::|gl_map1_texture_coord_3|)
(defparameter gl::map1-texture-coord-4 cg-user::|gl_map1_texture_coord_4|)
(defparameter gl::map1-vertex-3 cg-user::|gl_map1_vertex_3|)
(defparameter gl::map1-vertex-4 cg-user::|gl_map1_vertex_4|)
(defparameter gl::map1-vertex-attrib0-4-nv cg-user::|gl_map1_vertex_attrib0_4_nv|)
(defparameter gl::map1-vertex-attrib10-4-nv cg-user::|gl_map1_vertex_attrib10_4_nv|)
(defparameter gl::map1-vertex-attrib11-4-nv cg-user::|gl_map1_vertex_attrib11_4_nv|)
(defparameter gl::map1-vertex-attrib12-4-nv cg-user::|gl_map1_vertex_attrib12_4_nv|)
(defparameter gl::map1-vertex-attrib13-4-nv cg-user::|gl_map1_vertex_attrib13_4_nv|)
(defparameter gl::map1-vertex-attrib14-4-nv cg-user::|gl_map1_vertex_attrib14_4_nv|)
(defparameter gl::map1-vertex-attrib1-4-nv cg-user::|gl_map1_vertex_attrib1_4_nv|)
(defparameter gl::map1-vertex-attrib15-4-nv cg-user::|gl_map1_vertex_attrib15_4_nv|)
(defparameter gl::map1-vertex-attrib2-4-nv cg-user::|gl_map1_vertex_attrib2_4_nv|)
(defparameter gl::map1-vertex-attrib3-4-nv cg-user::|gl_map1_vertex_attrib3_4_nv|)
(defparameter gl::map1-vertex-attrib4-4-nv cg-user::|gl_map1_vertex_attrib4_4_nv|)
(defparameter gl::map1-vertex-attrib5-4-nv cg-user::|gl_map1_vertex_attrib5_4_nv|)
(defparameter gl::map1-vertex-attrib6-4-nv cg-user::|gl_map1_vertex_attrib6_4_nv|)
(defparameter gl::map1-vertex-attrib7-4-nv cg-user::|gl_map1_vertex_attrib7_4_nv|)
(defparameter gl::map1-vertex-attrib8-4-nv cg-user::|gl_map1_vertex_attrib8_4_nv|)
(defparameter gl::map1-vertex-attrib9-4-nv cg-user::|gl_map1_vertex_attrib9_4_nv|)
(defparameter gl::map2-binormal-ext cg-user::|gl_map2_binormal_ext|)
(defparameter gl::map2-color-4 cg-user::|gl_map2_color_4|)
(defparameter gl::map2-grid-domain cg-user::|gl_map2_grid_domain|)
(defparameter gl::map2-grid-segments cg-user::|gl_map2_grid_segments|)
(defparameter gl::map2-index cg-user::|gl_map2_index|)
(defparameter gl::map2-normal cg-user::|gl_map2_normal|)
(defparameter gl::map2-tangent-ext cg-user::|gl_map2_tangent_ext|)
(defparameter gl::map2-texture-coord-1 cg-user::|gl_map2_texture_coord_1|)
(defparameter gl::map2-texture-coord-2 cg-user::|gl_map2_texture_coord_2|)
(defparameter gl::map2-texture-coord-3 cg-user::|gl_map2_texture_coord_3|)
(defparameter gl::map2-texture-coord-4 cg-user::|gl_map2_texture_coord_4|)
(defparameter gl::map2-vertex-3 cg-user::|gl_map2_vertex_3|)
(defparameter gl::map2-vertex-4 cg-user::|gl_map2_vertex_4|)
(defparameter gl::map2-vertex-attrib0-4-nv cg-user::|gl_map2_vertex_attrib0_4_nv|)
(defparameter gl::map2-vertex-attrib10-4-nv cg-user::|gl_map2_vertex_attrib10_4_nv|)
(defparameter gl::map2-vertex-attrib11-4-nv cg-user::|gl_map2_vertex_attrib11_4_nv|)
(defparameter gl::map2-vertex-attrib12-4-nv cg-user::|gl_map2_vertex_attrib12_4_nv|)
(defparameter gl::map2-vertex-attrib13-4-nv cg-user::|gl_map2_vertex_attrib13_4_nv|)
(defparameter gl::map2-vertex-attrib14-4-nv cg-user::|gl_map2_vertex_attrib14_4_nv|)
(defparameter gl::map2-vertex-attrib1-4-nv cg-user::|gl_map2_vertex_attrib1_4_nv|)
(defparameter gl::map2-vertex-attrib15-4-nv cg-user::|gl_map2_vertex_attrib15_4_nv|)
(defparameter gl::map2-vertex-attrib2-4-nv cg-user::|gl_map2_vertex_attrib2_4_nv|)
(defparameter gl::map2-vertex-attrib3-4-nv cg-user::|gl_map2_vertex_attrib3_4_nv|)
(defparameter gl::map2-vertex-attrib4-4-nv cg-user::|gl_map2_vertex_attrib4_4_nv|)
(defparameter gl::map2-vertex-attrib5-4-nv cg-user::|gl_map2_vertex_attrib5_4_nv|)
(defparameter gl::map2-vertex-attrib6-4-nv cg-user::|gl_map2_vertex_attrib6_4_nv|)
(defparameter gl::map2-vertex-attrib7-4-nv cg-user::|gl_map2_vertex_attrib7_4_nv|)
(defparameter gl::map2-vertex-attrib8-4-nv cg-user::|gl_map2_vertex_attrib8_4_nv|)
(defparameter gl::map2-vertex-attrib9-4-nv cg-user::|gl_map2_vertex_attrib9_4_nv|)
(defparameter gl::map-attrib-u-order-nv cg-user::|gl_map_attrib_u_order_nv|)
(defparameter gl::map-attrib-v-order-nv cg-user::|gl_map_attrib_v_order_nv|)
(defparameter gl::map-coherent-bit cg-user::|gl_map_coherent_bit|)
(defparameter gl::map-coherent-bit-ext cg-user::|gl_map_coherent_bit_ext|)
(defparameter gl::map-color cg-user::|gl_map_color|)
(defparameter gl::map-flush-explicit-bit cg-user::|gl_map_flush_explicit_bit|)
(defparameter gl::map-flush-explicit-bit-ext cg-user::|gl_map_flush_explicit_bit_ext|)
(defparameter gl::map-invalidate-buffer-bit cg-user::|gl_map_invalidate_buffer_bit|)
(defparameter gl::map-invalidate-buffer-bit-ext cg-user::|gl_map_invalidate_buffer_bit_ext|)
(defparameter gl::map-invalidate-range-bit cg-user::|gl_map_invalidate_range_bit|)
(defparameter gl::map-invalidate-range-bit-ext cg-user::|gl_map_invalidate_range_bit_ext|)
(defparameter gl::map-persistent-bit cg-user::|gl_map_persistent_bit|)
(defparameter gl::map-persistent-bit-ext cg-user::|gl_map_persistent_bit_ext|)
(defparameter gl::map-read-bit cg-user::|gl_map_read_bit|)
(defparameter gl::map-read-bit-ext cg-user::|gl_map_read_bit_ext|)
(defparameter gl::map-stencil cg-user::|gl_map_stencil|)
(defparameter gl::map-tessellation-nv cg-user::|gl_map_tessellation_nv|)
(defparameter gl::map-unsynchronized-bit cg-user::|gl_map_unsynchronized_bit|)
(defparameter gl::map-unsynchronized-bit-ext cg-user::|gl_map_unsynchronized_bit_ext|)
(defparameter gl::map-write-bit cg-user::|gl_map_write_bit|)
(defparameter gl::map-write-bit-ext cg-user::|gl_map_write_bit_ext|)
(defparameter gl::mat-ambient-and-diffuse-bit-pgi cg-user::|gl_mat_ambient_and_diffuse_bit_pgi|)
(defparameter gl::mat-ambient-bit-pgi cg-user::|gl_mat_ambient_bit_pgi|)
(defparameter gl::mat-color-indexes-bit-pgi cg-user::|gl_mat_color_indexes_bit_pgi|)
(defparameter gl::mat-diffuse-bit-pgi cg-user::|gl_mat_diffuse_bit_pgi|)
(defparameter gl::mat-emission-bit-pgi cg-user::|gl_mat_emission_bit_pgi|)
(defparameter gl::material-side-hint-pgi cg-user::|gl_material_side_hint_pgi|)
(defparameter gl::matrix0-arb cg-user::|gl_matrix0_arb|)
(defparameter gl::matrix0-nv cg-user::|gl_matrix0_nv|)
(defparameter gl::matrix10-arb cg-user::|gl_matrix10_arb|)
(defparameter gl::matrix11-arb cg-user::|gl_matrix11_arb|)
(defparameter gl::matrix12-arb cg-user::|gl_matrix12_arb|)
(defparameter gl::matrix13-arb cg-user::|gl_matrix13_arb|)
(defparameter gl::matrix14-arb cg-user::|gl_matrix14_arb|)
(defparameter gl::matrix15-arb cg-user::|gl_matrix15_arb|)
(defparameter gl::matrix16-arb cg-user::|gl_matrix16_arb|)
(defparameter gl::matrix17-arb cg-user::|gl_matrix17_arb|)
(defparameter gl::matrix18-arb cg-user::|gl_matrix18_arb|)
(defparameter gl::matrix19-arb cg-user::|gl_matrix19_arb|)
(defparameter gl::matrix1-arb cg-user::|gl_matrix1_arb|)
(defparameter gl::matrix1-nv cg-user::|gl_matrix1_nv|)
(defparameter gl::matrix20-arb cg-user::|gl_matrix20_arb|)
(defparameter gl::matrix21-arb cg-user::|gl_matrix21_arb|)
(defparameter gl::matrix22-arb cg-user::|gl_matrix22_arb|)
(defparameter gl::matrix23-arb cg-user::|gl_matrix23_arb|)
(defparameter gl::matrix24-arb cg-user::|gl_matrix24_arb|)
(defparameter gl::matrix25-arb cg-user::|gl_matrix25_arb|)
(defparameter gl::matrix26-arb cg-user::|gl_matrix26_arb|)
(defparameter gl::matrix27-arb cg-user::|gl_matrix27_arb|)
(defparameter gl::matrix28-arb cg-user::|gl_matrix28_arb|)
(defparameter gl::matrix29-arb cg-user::|gl_matrix29_arb|)
(defparameter gl::matrix2-arb cg-user::|gl_matrix2_arb|)
(defparameter gl::matrix2-nv cg-user::|gl_matrix2_nv|)
(defparameter gl::matrix30-arb cg-user::|gl_matrix30_arb|)
(defparameter gl::matrix31-arb cg-user::|gl_matrix31_arb|)
(defparameter gl::matrix3-arb cg-user::|gl_matrix3_arb|)
(defparameter gl::matrix3-nv cg-user::|gl_matrix3_nv|)
(defparameter gl::matrix4-arb cg-user::|gl_matrix4_arb|)
(defparameter gl::matrix4-nv cg-user::|gl_matrix4_nv|)
(defparameter gl::matrix5-arb cg-user::|gl_matrix5_arb|)
(defparameter gl::matrix5-nv cg-user::|gl_matrix5_nv|)
(defparameter gl::matrix6-arb cg-user::|gl_matrix6_arb|)
(defparameter gl::matrix6-nv cg-user::|gl_matrix6_nv|)
(defparameter gl::matrix7-arb cg-user::|gl_matrix7_arb|)
(defparameter gl::matrix7-nv cg-user::|gl_matrix7_nv|)
(defparameter gl::matrix8-arb cg-user::|gl_matrix8_arb|)
(defparameter gl::matrix9-arb cg-user::|gl_matrix9_arb|)
(defparameter gl::matrix-ext cg-user::|gl_matrix_ext|)
(defparameter gl::matrix-index-array-arb cg-user::|gl_matrix_index_array_arb|)
(defparameter gl::matrix-index-array-buffer-binding-oes cg-user::|gl_matrix_index_array_buffer_binding_oes|)
(defparameter gl::matrix-index-array-oes cg-user::|gl_matrix_index_array_oes|)
(defparameter gl::matrix-index-array-pointer-arb cg-user::|gl_matrix_index_array_pointer_arb|)
(defparameter gl::matrix-index-array-pointer-oes cg-user::|gl_matrix_index_array_pointer_oes|)
(defparameter gl::matrix-index-array-size-arb cg-user::|gl_matrix_index_array_size_arb|)
(defparameter gl::matrix-index-array-size-oes cg-user::|gl_matrix_index_array_size_oes|)
(defparameter gl::matrix-index-array-stride-arb cg-user::|gl_matrix_index_array_stride_arb|)
(defparameter gl::matrix-index-array-stride-oes cg-user::|gl_matrix_index_array_stride_oes|)
(defparameter gl::matrix-index-array-type-arb cg-user::|gl_matrix_index_array_type_arb|)
(defparameter gl::matrix-index-array-type-oes cg-user::|gl_matrix_index_array_type_oes|)
(defparameter gl::matrix-mode cg-user::|gl_matrix_mode|)
(defparameter gl::matrix-palette-arb cg-user::|gl_matrix_palette_arb|)
(defparameter gl::matrix-palette-oes cg-user::|gl_matrix_palette_oes|)
(defparameter gl::matrix-stride cg-user::|gl_matrix_stride|)
(defparameter gl::mat-shininess-bit-pgi cg-user::|gl_mat_shininess_bit_pgi|)
(defparameter gl::mat-specular-bit-pgi cg-user::|gl_mat_specular_bit_pgi|)
(defparameter gl::max cg-user::|gl_max|)
(defparameter gl::max-3d-texture-size cg-user::|gl_max_3d_texture_size|)
(defparameter gl::max-3d-texture-size-ext cg-user::|gl_max_3d_texture_size_ext|)
(defparameter gl::max-3d-texture-size-oes cg-user::|gl_max_3d_texture_size_oes|)
(defparameter gl::max-4d-texture-size-sgis cg-user::|gl_max_4d_texture_size_sgis|)
(defparameter gl::max-active-lights-sgix cg-user::|gl_max_active_lights_sgix|)
(defparameter gl::max-array-texture-layers cg-user::|gl_max_array_texture_layers|)
(defparameter gl::max-array-texture-layers-ext cg-user::|gl_max_array_texture_layers_ext|)
(defparameter gl::max-async-draw-pixels-sgix cg-user::|gl_max_async_draw_pixels_sgix|)
(defparameter gl::max-async-histogram-sgix cg-user::|gl_max_async_histogram_sgix|)
(defparameter gl::max-async-read-pixels-sgix cg-user::|gl_max_async_read_pixels_sgix|)
(defparameter gl::max-async-tex-image-sgix cg-user::|gl_max_async_tex_image_sgix|)
(defparameter gl::max-atomic-counter-buffer-bindings cg-user::|gl_max_atomic_counter_buffer_bindings|)
(defparameter gl::max-atomic-counter-buffer-size cg-user::|gl_max_atomic_counter_buffer_size|)
(defparameter gl::max-attrib-stack-depth cg-user::|gl_max_attrib_stack_depth|)
(defparameter gl::max-bindable-uniform-size-ext cg-user::|gl_max_bindable_uniform_size_ext|)
(defparameter gl::max-client-attrib-stack-depth cg-user::|gl_max_client_attrib_stack_depth|)
(defparameter gl::max-clip-distances cg-user::|gl_max_clip_distances|)
(defparameter gl::max-clip-distances-apple cg-user::|gl_max_clip_distances_apple|)
(defparameter gl::max-clipmap-depth-sgix cg-user::|gl_max_clipmap_depth_sgix|)
(defparameter gl::max-clipmap-virtual-depth-sgix cg-user::|gl_max_clipmap_virtual_depth_sgix|)
(defparameter gl::max-clip-planes cg-user::|gl_max_clip_planes|)
(defparameter gl::max-clip-planes-img cg-user::|gl_max_clip_planes_img|)
(defparameter gl::max-color-attachments cg-user::|gl_max_color_attachments|)
(defparameter gl::max-color-attachments-ext cg-user::|gl_max_color_attachments_ext|)
(defparameter gl::max-color-attachments-nv cg-user::|gl_max_color_attachments_nv|)
(defparameter gl::max-color-matrix-stack-depth cg-user::|gl_max_color_matrix_stack_depth|)
(defparameter gl::max-color-matrix-stack-depth-sgi cg-user::|gl_max_color_matrix_stack_depth_sgi|)
(defparameter gl::max-color-texture-samples cg-user::|gl_max_color_texture_samples|)
(defparameter gl::max-combined-atomic-counter-buffers cg-user::|gl_max_combined_atomic_counter_buffers|)
(defparameter gl::max-combined-atomic-counters cg-user::|gl_max_combined_atomic_counters|)
(defparameter gl::max-combined-clip-and-cull-distances cg-user::|gl_max_combined_clip_and_cull_distances|)
(defparameter gl::max-combined-compute-uniform-components cg-user::|gl_max_combined_compute_uniform_components|)
(defparameter gl::max-combined-dimensions cg-user::|gl_max_combined_dimensions|)
(defparameter gl::max-combined-fragment-uniform-components cg-user::|gl_max_combined_fragment_uniform_components|)
(defparameter gl::max-combined-geometry-uniform-components cg-user::|gl_max_combined_geometry_uniform_components|)
(defparameter gl::max-combined-geometry-uniform-components-ext cg-user::|gl_max_combined_geometry_uniform_components_ext|)
(defparameter gl::max-combined-geometry-uniform-components-oes cg-user::|gl_max_combined_geometry_uniform_components_oes|)
(defparameter gl::max-combined-image-uniforms cg-user::|gl_max_combined_image_uniforms|)
(defparameter gl::max-combined-image-units-and-fragment-outputs cg-user::|gl_max_combined_image_units_and_fragment_outputs|)
(defparameter gl::max-combined-image-units-and-fragment-outputs-ext cg-user::|gl_max_combined_image_units_and_fragment_outputs_ext|)
(defparameter gl::max-combined-shader-output-resources cg-user::|gl_max_combined_shader_output_resources|)
(defparameter gl::max-combined-shader-storage-blocks cg-user::|gl_max_combined_shader_storage_blocks|)
(defparameter gl::max-combined-tess-control-uniform-components cg-user::|gl_max_combined_tess_control_uniform_components|)
(defparameter gl::max-combined-tess-control-uniform-components-ext cg-user::|gl_max_combined_tess_control_uniform_components_ext|)
(defparameter gl::max-combined-tess-control-uniform-components-oes cg-user::|gl_max_combined_tess_control_uniform_components_oes|)
(defparameter gl::max-combined-tess-evaluation-uniform-components cg-user::|gl_max_combined_tess_evaluation_uniform_components|)
(defparameter gl::max-combined-tess-evaluation-uniform-components-ext cg-user::|gl_max_combined_tess_evaluation_uniform_components_ext|)
(defparameter gl::max-combined-tess-evaluation-uniform-components-oes cg-user::|gl_max_combined_tess_evaluation_uniform_components_oes|)
(defparameter gl::max-combined-texture-image-units cg-user::|gl_max_combined_texture_image_units|)
(defparameter gl::max-combined-texture-image-units-arb cg-user::|gl_max_combined_texture_image_units_arb|)
(defparameter gl::max-combined-uniform-blocks cg-user::|gl_max_combined_uniform_blocks|)
(defparameter gl::max-combined-vertex-uniform-components cg-user::|gl_max_combined_vertex_uniform_components|)
(defparameter gl::max-compute-atomic-counter-buffers cg-user::|gl_max_compute_atomic_counter_buffers|)
(defparameter gl::max-compute-atomic-counters cg-user::|gl_max_compute_atomic_counters|)
(defparameter gl::max-compute-fixed-group-invocations-arb cg-user::|gl_max_compute_fixed_group_invocations_arb|)
(defparameter gl::max-compute-fixed-group-size-arb cg-user::|gl_max_compute_fixed_group_size_arb|)
(defparameter gl::max-compute-image-uniforms cg-user::|gl_max_compute_image_uniforms|)
(defparameter gl::max-compute-shader-storage-blocks cg-user::|gl_max_compute_shader_storage_blocks|)
(defparameter gl::max-compute-shared-memory-size cg-user::|gl_max_compute_shared_memory_size|)
(defparameter gl::max-compute-texture-image-units cg-user::|gl_max_compute_texture_image_units|)
(defparameter gl::max-compute-uniform-blocks cg-user::|gl_max_compute_uniform_blocks|)
(defparameter gl::max-compute-uniform-components cg-user::|gl_max_compute_uniform_components|)
(defparameter gl::max-compute-variable-group-invocations-arb cg-user::|gl_max_compute_variable_group_invocations_arb|)
(defparameter gl::max-compute-variable-group-size-arb cg-user::|gl_max_compute_variable_group_size_arb|)
(defparameter gl::max-compute-work-group-count cg-user::|gl_max_compute_work_group_count|)
(defparameter gl::max-compute-work-group-invocations cg-user::|gl_max_compute_work_group_invocations|)
(defparameter gl::max-compute-work-group-size cg-user::|gl_max_compute_work_group_size|)
(defparameter gl::max-convolution-height cg-user::|gl_max_convolution_height|)
(defparameter gl::max-convolution-height-ext cg-user::|gl_max_convolution_height_ext|)
(defparameter gl::max-convolution-width cg-user::|gl_max_convolution_width|)
(defparameter gl::max-convolution-width-ext cg-user::|gl_max_convolution_width_ext|)
(defparameter gl::max-cube-map-texture-size cg-user::|gl_max_cube_map_texture_size|)
(defparameter gl::max-cube-map-texture-size-arb cg-user::|gl_max_cube_map_texture_size_arb|)
(defparameter gl::max-cube-map-texture-size-ext cg-user::|gl_max_cube_map_texture_size_ext|)
(defparameter gl::max-cube-map-texture-size-oes cg-user::|gl_max_cube_map_texture_size_oes|)
(defparameter gl::max-cull-distances cg-user::|gl_max_cull_distances|)
(defparameter gl::max-debug-group-stack-depth cg-user::|gl_max_debug_group_stack_depth|)
(defparameter gl::max-debug-group-stack-depth-khr cg-user::|gl_max_debug_group_stack_depth_khr|)
(defparameter gl::max-debug-logged-messages cg-user::|gl_max_debug_logged_messages|)
(defparameter gl::max-debug-logged-messages-amd cg-user::|gl_max_debug_logged_messages_amd|)
(defparameter gl::max-debug-logged-messages-arb cg-user::|gl_max_debug_logged_messages_arb|)
(defparameter gl::max-debug-logged-messages-khr cg-user::|gl_max_debug_logged_messages_khr|)
(defparameter gl::max-debug-message-length cg-user::|gl_max_debug_message_length|)
(defparameter gl::max-debug-message-length-amd cg-user::|gl_max_debug_message_length_amd|)
(defparameter gl::max-debug-message-length-arb cg-user::|gl_max_debug_message_length_arb|)
(defparameter gl::max-debug-message-length-khr cg-user::|gl_max_debug_message_length_khr|)
(defparameter gl::max-deep-3d-texture-depth-nv cg-user::|gl_max_deep_3d_texture_depth_nv|)
(defparameter gl::max-deep-3d-texture-width-height-nv cg-user::|gl_max_deep_3d_texture_width_height_nv|)
(defparameter gl::max-deformation-order-sgix cg-user::|gl_max_deformation_order_sgix|)
(defparameter gl::max-depth cg-user::|gl_max_depth|)
(defparameter gl::max-depth-texture-samples cg-user::|gl_max_depth_texture_samples|)
(defparameter gl::max-draw-buffers cg-user::|gl_max_draw_buffers|)
(defparameter gl::max-draw-buffers-arb cg-user::|gl_max_draw_buffers_arb|)
(defparameter gl::max-draw-buffers-ati cg-user::|gl_max_draw_buffers_ati|)
(defparameter gl::max-draw-buffers-ext cg-user::|gl_max_draw_buffers_ext|)
(defparameter gl::max-draw-buffers-nv cg-user::|gl_max_draw_buffers_nv|)
(defparameter gl::max-dual-source-draw-buffers cg-user::|gl_max_dual_source_draw_buffers|)
(defparameter gl::max-dual-source-draw-buffers-ext cg-user::|gl_max_dual_source_draw_buffers_ext|)
(defparameter gl::max-element-index cg-user::|gl_max_element_index|)
(defparameter gl::max-elements-indices cg-user::|gl_max_elements_indices|)
(defparameter gl::max-elements-indices-ext cg-user::|gl_max_elements_indices_ext|)
(defparameter gl::max-elements-vertices cg-user::|gl_max_elements_vertices|)
(defparameter gl::max-elements-vertices-ext cg-user::|gl_max_elements_vertices_ext|)
(defparameter gl::max-eval-order cg-user::|gl_max_eval_order|)
(defparameter gl::max-ext cg-user::|gl_max_ext|)
(defparameter gl::max-fog-func-points-sgis cg-user::|gl_max_fog_func_points_sgis|)
(defparameter gl::max-fragment-atomic-counter-buffers cg-user::|gl_max_fragment_atomic_counter_buffers|)
(defparameter gl::max-fragment-atomic-counters cg-user::|gl_max_fragment_atomic_counters|)
(defparameter gl::max-fragment-bindable-uniforms-ext cg-user::|gl_max_fragment_bindable_uniforms_ext|)
(defparameter gl::max-fragment-image-uniforms cg-user::|gl_max_fragment_image_uniforms|)
(defparameter gl::max-fragment-input-components cg-user::|gl_max_fragment_input_components|)
(defparameter gl::max-fragment-interpolation-offset cg-user::|gl_max_fragment_interpolation_offset|)
(defparameter gl::max-fragment-interpolation-offset-nv cg-user::|gl_max_fragment_interpolation_offset_nv|)
(defparameter gl::max-fragment-interpolation-offset-oes cg-user::|gl_max_fragment_interpolation_offset_oes|)
(defparameter gl::max-fragment-lights-sgix cg-user::|gl_max_fragment_lights_sgix|)
(defparameter gl::max-fragment-program-local-parameters-nv cg-user::|gl_max_fragment_program_local_parameters_nv|)
(defparameter gl::max-fragment-shader-storage-blocks cg-user::|gl_max_fragment_shader_storage_blocks|)
(defparameter gl::max-fragment-uniform-blocks cg-user::|gl_max_fragment_uniform_blocks|)
(defparameter gl::max-fragment-uniform-components cg-user::|gl_max_fragment_uniform_components|)
(defparameter gl::max-fragment-uniform-components-arb cg-user::|gl_max_fragment_uniform_components_arb|)
(defparameter gl::max-fragment-uniform-vectors cg-user::|gl_max_fragment_uniform_vectors|)
(defparameter gl::max-framebuffer-height cg-user::|gl_max_framebuffer_height|)
(defparameter gl::max-framebuffer-layers cg-user::|gl_max_framebuffer_layers|)
(defparameter gl::max-framebuffer-layers-ext cg-user::|gl_max_framebuffer_layers_ext|)
(defparameter gl::max-framebuffer-layers-oes cg-user::|gl_max_framebuffer_layers_oes|)
(defparameter gl::max-framebuffer-samples cg-user::|gl_max_framebuffer_samples|)
(defparameter gl::max-framebuffer-width cg-user::|gl_max_framebuffer_width|)
(defparameter gl::max-framezoom-factor-sgix cg-user::|gl_max_framezoom_factor_sgix|)
(defparameter gl::max-general-combiners-nv cg-user::|gl_max_general_combiners_nv|)
(defparameter gl::max-geometry-atomic-counter-buffers cg-user::|gl_max_geometry_atomic_counter_buffers|)
(defparameter gl::max-geometry-atomic-counter-buffers-ext cg-user::|gl_max_geometry_atomic_counter_buffers_ext|)
(defparameter gl::max-geometry-atomic-counter-buffers-oes cg-user::|gl_max_geometry_atomic_counter_buffers_oes|)
(defparameter gl::max-geometry-atomic-counters cg-user::|gl_max_geometry_atomic_counters|)
(defparameter gl::max-geometry-atomic-counters-ext cg-user::|gl_max_geometry_atomic_counters_ext|)
(defparameter gl::max-geometry-atomic-counters-oes cg-user::|gl_max_geometry_atomic_counters_oes|)
(defparameter gl::max-geometry-bindable-uniforms-ext cg-user::|gl_max_geometry_bindable_uniforms_ext|)
(defparameter gl::max-geometry-image-uniforms cg-user::|gl_max_geometry_image_uniforms|)
(defparameter gl::max-geometry-image-uniforms-ext cg-user::|gl_max_geometry_image_uniforms_ext|)
(defparameter gl::max-geometry-image-uniforms-oes cg-user::|gl_max_geometry_image_uniforms_oes|)
(defparameter gl::max-geometry-input-components cg-user::|gl_max_geometry_input_components|)
(defparameter gl::max-geometry-input-components-ext cg-user::|gl_max_geometry_input_components_ext|)
(defparameter gl::max-geometry-input-components-oes cg-user::|gl_max_geometry_input_components_oes|)
(defparameter gl::max-geometry-output-components cg-user::|gl_max_geometry_output_components|)
(defparameter gl::max-geometry-output-components-ext cg-user::|gl_max_geometry_output_components_ext|)
(defparameter gl::max-geometry-output-components-oes cg-user::|gl_max_geometry_output_components_oes|)
(defparameter gl::max-geometry-output-vertices cg-user::|gl_max_geometry_output_vertices|)
(defparameter gl::max-geometry-output-vertices-arb cg-user::|gl_max_geometry_output_vertices_arb|)
(defparameter gl::max-geometry-output-vertices-ext cg-user::|gl_max_geometry_output_vertices_ext|)
(defparameter gl::max-geometry-output-vertices-oes cg-user::|gl_max_geometry_output_vertices_oes|)
(defparameter gl::max-geometry-program-invocations-nv cg-user::|gl_max_geometry_program_invocations_nv|)
(defparameter gl::max-geometry-shader-invocations cg-user::|gl_max_geometry_shader_invocations|)
(defparameter gl::max-geometry-shader-invocations-ext cg-user::|gl_max_geometry_shader_invocations_ext|)
(defparameter gl::max-geometry-shader-invocations-oes cg-user::|gl_max_geometry_shader_invocations_oes|)
(defparameter gl::max-geometry-shader-storage-blocks cg-user::|gl_max_geometry_shader_storage_blocks|)
(defparameter gl::max-geometry-shader-storage-blocks-ext cg-user::|gl_max_geometry_shader_storage_blocks_ext|)
(defparameter gl::max-geometry-shader-storage-blocks-oes cg-user::|gl_max_geometry_shader_storage_blocks_oes|)
(defparameter gl::max-geometry-texture-image-units cg-user::|gl_max_geometry_texture_image_units|)
(defparameter gl::max-geometry-texture-image-units-arb cg-user::|gl_max_geometry_texture_image_units_arb|)
(defparameter gl::max-geometry-texture-image-units-ext cg-user::|gl_max_geometry_texture_image_units_ext|)
(defparameter gl::max-geometry-texture-image-units-oes cg-user::|gl_max_geometry_texture_image_units_oes|)
(defparameter gl::max-geometry-total-output-components cg-user::|gl_max_geometry_total_output_components|)
(defparameter gl::max-geometry-total-output-components-arb cg-user::|gl_max_geometry_total_output_components_arb|)
(defparameter gl::max-geometry-total-output-components-ext cg-user::|gl_max_geometry_total_output_components_ext|)
(defparameter gl::max-geometry-total-output-components-oes cg-user::|gl_max_geometry_total_output_components_oes|)
(defparameter gl::max-geometry-uniform-blocks cg-user::|gl_max_geometry_uniform_blocks|)
(defparameter gl::max-geometry-uniform-blocks-ext cg-user::|gl_max_geometry_uniform_blocks_ext|)
(defparameter gl::max-geometry-uniform-blocks-oes cg-user::|gl_max_geometry_uniform_blocks_oes|)
(defparameter gl::max-geometry-uniform-components cg-user::|gl_max_geometry_uniform_components|)
(defparameter gl::max-geometry-uniform-components-arb cg-user::|gl_max_geometry_uniform_components_arb|)
(defparameter gl::max-geometry-uniform-components-ext cg-user::|gl_max_geometry_uniform_components_ext|)
(defparameter gl::max-geometry-uniform-components-oes cg-user::|gl_max_geometry_uniform_components_oes|)
(defparameter gl::max-geometry-varying-components-arb cg-user::|gl_max_geometry_varying_components_arb|)
(defparameter gl::max-geometry-varying-components-ext cg-user::|gl_max_geometry_varying_components_ext|)
(defparameter gl::max-height cg-user::|gl_max_height|)
(defparameter gl::max-image-samples cg-user::|gl_max_image_samples|)
(defparameter gl::max-image-samples-ext cg-user::|gl_max_image_samples_ext|)
(defparameter gl::max-image-units cg-user::|gl_max_image_units|)
(defparameter gl::max-image-units-ext cg-user::|gl_max_image_units_ext|)
(defparameter gl::max-integer-samples cg-user::|gl_max_integer_samples|)
(defparameter gl::max-label-length cg-user::|gl_max_label_length|)
(defparameter gl::max-label-length-khr cg-user::|gl_max_label_length_khr|)
(defparameter gl::max-layers cg-user::|gl_max_layers|)
(defparameter gl::max-lights cg-user::|gl_max_lights|)
(defparameter gl::max-list-nesting cg-user::|gl_max_list_nesting|)
(defparameter gl::max-map-tessellation-nv cg-user::|gl_max_map_tessellation_nv|)
(defparameter gl::max-matrix-palette-stack-depth-arb cg-user::|gl_max_matrix_palette_stack_depth_arb|)
(defparameter gl::max-modelview-stack-depth cg-user::|gl_max_modelview_stack_depth|)
(defparameter gl::max-multisample-coverage-modes-nv cg-user::|gl_max_multisample_coverage_modes_nv|)
(defparameter gl::max-multiview-buffers-ext cg-user::|gl_max_multiview_buffers_ext|)
(defparameter gl::max-name-length cg-user::|gl_max_name_length|)
(defparameter gl::max-name-stack-depth cg-user::|gl_max_name_stack_depth|)
(defparameter gl::max-num-active-variables cg-user::|gl_max_num_active_variables|)
(defparameter gl::max-num-compatible-subroutines cg-user::|gl_max_num_compatible_subroutines|)
(defparameter gl::max-optimized-vertex-shader-instructions-ext cg-user::|gl_max_optimized_vertex_shader_instructions_ext|)
(defparameter gl::max-optimized-vertex-shader-invariants-ext cg-user::|gl_max_optimized_vertex_shader_invariants_ext|)
(defparameter gl::max-optimized-vertex-shader-local-constants-ext cg-user::|gl_max_optimized_vertex_shader_local_constants_ext|)
(defparameter gl::max-optimized-vertex-shader-locals-ext cg-user::|gl_max_optimized_vertex_shader_locals_ext|)
(defparameter gl::max-optimized-vertex-shader-variants-ext cg-user::|gl_max_optimized_vertex_shader_variants_ext|)
(defparameter gl::max-palette-matrices-arb cg-user::|gl_max_palette_matrices_arb|)
(defparameter gl::max-palette-matrices-oes cg-user::|gl_max_palette_matrices_oes|)
(defparameter gl::max-patch-vertices cg-user::|gl_max_patch_vertices|)
(defparameter gl::max-patch-vertices-ext cg-user::|gl_max_patch_vertices_ext|)
(defparameter gl::max-patch-vertices-oes cg-user::|gl_max_patch_vertices_oes|)
(defparameter gl::max-pixel-map-table cg-user::|gl_max_pixel_map_table|)
(defparameter gl::max-pixel-transform-2d-stack-depth-ext cg-user::|gl_max_pixel_transform_2d_stack_depth_ext|)
(defparameter gl::max-pn-triangles-tesselation-level-ati cg-user::|gl_max_pn_triangles_tesselation_level_ati|)
(defparameter gl::max-program-address-registers-arb cg-user::|gl_max_program_address_registers_arb|)
(defparameter gl::max-program-alu-instructions-arb cg-user::|gl_max_program_alu_instructions_arb|)
(defparameter gl::max-program-attrib-components-nv cg-user::|gl_max_program_attrib_components_nv|)
(defparameter gl::max-program-attribs-arb cg-user::|gl_max_program_attribs_arb|)
(defparameter gl::max-program-call-depth-nv cg-user::|gl_max_program_call_depth_nv|)
(defparameter gl::max-program-env-parameters-arb cg-user::|gl_max_program_env_parameters_arb|)
(defparameter gl::max-program-exec-instructions-nv cg-user::|gl_max_program_exec_instructions_nv|)
(defparameter gl::max-program-generic-attribs-nv cg-user::|gl_max_program_generic_attribs_nv|)
(defparameter gl::max-program-generic-results-nv cg-user::|gl_max_program_generic_results_nv|)
(defparameter gl::max-program-if-depth-nv cg-user::|gl_max_program_if_depth_nv|)
(defparameter gl::max-program-instructions-arb cg-user::|gl_max_program_instructions_arb|)
(defparameter gl::max-program-local-parameters-arb cg-user::|gl_max_program_local_parameters_arb|)
(defparameter gl::max-program-loop-count-nv cg-user::|gl_max_program_loop_count_nv|)
(defparameter gl::max-program-loop-depth-nv cg-user::|gl_max_program_loop_depth_nv|)
(defparameter gl::max-program-matrices-arb cg-user::|gl_max_program_matrices_arb|)
(defparameter gl::max-program-matrix-stack-depth-arb cg-user::|gl_max_program_matrix_stack_depth_arb|)
(defparameter gl::max-program-native-address-registers-arb cg-user::|gl_max_program_native_address_registers_arb|)
(defparameter gl::max-program-native-alu-instructions-arb cg-user::|gl_max_program_native_alu_instructions_arb|)
(defparameter gl::max-program-native-attribs-arb cg-user::|gl_max_program_native_attribs_arb|)
(defparameter gl::max-program-native-instructions-arb cg-user::|gl_max_program_native_instructions_arb|)
(defparameter gl::max-program-native-parameters-arb cg-user::|gl_max_program_native_parameters_arb|)
(defparameter gl::max-program-native-temporaries-arb cg-user::|gl_max_program_native_temporaries_arb|)
(defparameter gl::max-program-native-tex-indirections-arb cg-user::|gl_max_program_native_tex_indirections_arb|)
(defparameter gl::max-program-native-tex-instructions-arb cg-user::|gl_max_program_native_tex_instructions_arb|)
(defparameter gl::max-program-output-vertices-nv cg-user::|gl_max_program_output_vertices_nv|)
(defparameter gl::max-program-parameter-buffer-bindings-nv cg-user::|gl_max_program_parameter_buffer_bindings_nv|)
(defparameter gl::max-program-parameter-buffer-size-nv cg-user::|gl_max_program_parameter_buffer_size_nv|)
(defparameter gl::max-program-parameters-arb cg-user::|gl_max_program_parameters_arb|)
(defparameter gl::max-program-patch-attribs-nv cg-user::|gl_max_program_patch_attribs_nv|)
(defparameter gl::max-program-result-components-nv cg-user::|gl_max_program_result_components_nv|)
(defparameter gl::max-program-subroutine-num-nv cg-user::|gl_max_program_subroutine_num_nv|)
(defparameter gl::max-program-subroutine-parameters-nv cg-user::|gl_max_program_subroutine_parameters_nv|)
(defparameter gl::max-program-temporaries-arb cg-user::|gl_max_program_temporaries_arb|)
(defparameter gl::max-program-texel-offset cg-user::|gl_max_program_texel_offset|)
(defparameter gl::max-program-texel-offset-ext cg-user::|gl_max_program_texel_offset_ext|)
(defparameter gl::max-program-texel-offset-nv cg-user::|gl_max_program_texel_offset_nv|)
(defparameter gl::max-program-tex-indirections-arb cg-user::|gl_max_program_tex_indirections_arb|)
(defparameter gl::max-program-tex-instructions-arb cg-user::|gl_max_program_tex_instructions_arb|)
(defparameter gl::max-program-texture-gather-components-arb cg-user::|gl_max_program_texture_gather_components_arb|)
(defparameter gl::max-program-texture-gather-offset cg-user::|gl_max_program_texture_gather_offset|)
(defparameter gl::max-program-texture-gather-offset-arb cg-user::|gl_max_program_texture_gather_offset_arb|)
(defparameter gl::max-program-texture-gather-offset-nv cg-user::|gl_max_program_texture_gather_offset_nv|)
(defparameter gl::max-program-total-output-components-nv cg-user::|gl_max_program_total_output_components_nv|)
(defparameter gl::max-projection-stack-depth cg-user::|gl_max_projection_stack_depth|)
(defparameter gl::max-raster-samples-ext cg-user::|gl_max_raster_samples_ext|)
(defparameter gl::max-rational-eval-order-nv cg-user::|gl_max_rational_eval_order_nv|)
(defparameter gl::max-rectangle-texture-size cg-user::|gl_max_rectangle_texture_size|)
(defparameter gl::max-rectangle-texture-size-arb cg-user::|gl_max_rectangle_texture_size_arb|)
(defparameter gl::max-rectangle-texture-size-nv cg-user::|gl_max_rectangle_texture_size_nv|)
(defparameter gl::max-renderbuffer-size cg-user::|gl_max_renderbuffer_size|)
(defparameter gl::max-renderbuffer-size-ext cg-user::|gl_max_renderbuffer_size_ext|)
(defparameter gl::max-renderbuffer-size-oes cg-user::|gl_max_renderbuffer_size_oes|)
(defparameter gl::max-sample-mask-words cg-user::|gl_max_sample_mask_words|)
(defparameter gl::max-sample-mask-words-nv cg-user::|gl_max_sample_mask_words_nv|)
(defparameter gl::max-samples cg-user::|gl_max_samples|)
(defparameter gl::max-samples-angle cg-user::|gl_max_samples_angle|)
(defparameter gl::max-samples-apple cg-user::|gl_max_samples_apple|)
(defparameter gl::max-samples-ext cg-user::|gl_max_samples_ext|)
(defparameter gl::max-samples-img cg-user::|gl_max_samples_img|)
(defparameter gl::max-samples-nv cg-user::|gl_max_samples_nv|)
(defparameter gl::max-server-wait-timeout cg-user::|gl_max_server_wait_timeout|)
(defparameter gl::max-server-wait-timeout-apple cg-user::|gl_max_server_wait_timeout_apple|)
(defparameter gl::max-shader-buffer-address-nv cg-user::|gl_max_shader_buffer_address_nv|)
(defparameter gl::max-shader-compiler-threads-arb cg-user::|gl_max_shader_compiler_threads_arb|)
(defparameter gl::max-shader-pixel-local-storage-fast-size-ext cg-user::|gl_max_shader_pixel_local_storage_fast_size_ext|)
(defparameter gl::max-shader-pixel-local-storage-size-ext cg-user::|gl_max_shader_pixel_local_storage_size_ext|)
(defparameter gl::max-shader-storage-block-size cg-user::|gl_max_shader_storage_block_size|)
(defparameter gl::max-shader-storage-buffer-bindings cg-user::|gl_max_shader_storage_buffer_bindings|)
(defparameter gl::max-shininess-nv cg-user::|gl_max_shininess_nv|)
(defparameter gl::max-sparse-3d-texture-size-amd cg-user::|gl_max_sparse_3d_texture_size_amd|)
(defparameter gl::max-sparse-3d-texture-size-arb cg-user::|gl_max_sparse_3d_texture_size_arb|)
(defparameter gl::max-sparse-3d-texture-size-ext cg-user::|gl_max_sparse_3d_texture_size_ext|)
(defparameter gl::max-sparse-array-texture-layers cg-user::|gl_max_sparse_array_texture_layers|)
(defparameter gl::max-sparse-array-texture-layers-arb cg-user::|gl_max_sparse_array_texture_layers_arb|)
(defparameter gl::max-sparse-array-texture-layers-ext cg-user::|gl_max_sparse_array_texture_layers_ext|)
(defparameter gl::max-sparse-texture-size-amd cg-user::|gl_max_sparse_texture_size_amd|)
(defparameter gl::max-sparse-texture-size-arb cg-user::|gl_max_sparse_texture_size_arb|)
(defparameter gl::max-sparse-texture-size-ext cg-user::|gl_max_sparse_texture_size_ext|)
(defparameter gl::max-spot-exponent-nv cg-user::|gl_max_spot_exponent_nv|)
(defparameter gl::max-subpixel-precision-bias-bits-nv cg-user::|gl_max_subpixel_precision_bias_bits_nv|)
(defparameter gl::max-subroutines cg-user::|gl_max_subroutines|)
(defparameter gl::max-subroutine-uniform-locations cg-user::|gl_max_subroutine_uniform_locations|)
(defparameter gl::max-tess-control-atomic-counter-buffers cg-user::|gl_max_tess_control_atomic_counter_buffers|)
(defparameter gl::max-tess-control-atomic-counter-buffers-ext cg-user::|gl_max_tess_control_atomic_counter_buffers_ext|)
(defparameter gl::max-tess-control-atomic-counter-buffers-oes cg-user::|gl_max_tess_control_atomic_counter_buffers_oes|)
(defparameter gl::max-tess-control-atomic-counters cg-user::|gl_max_tess_control_atomic_counters|)
(defparameter gl::max-tess-control-atomic-counters-ext cg-user::|gl_max_tess_control_atomic_counters_ext|)
(defparameter gl::max-tess-control-atomic-counters-oes cg-user::|gl_max_tess_control_atomic_counters_oes|)
(defparameter gl::max-tess-control-image-uniforms cg-user::|gl_max_tess_control_image_uniforms|)
(defparameter gl::max-tess-control-image-uniforms-ext cg-user::|gl_max_tess_control_image_uniforms_ext|)
(defparameter gl::max-tess-control-image-uniforms-oes cg-user::|gl_max_tess_control_image_uniforms_oes|)
(defparameter gl::max-tess-control-input-components cg-user::|gl_max_tess_control_input_components|)
(defparameter gl::max-tess-control-input-components-ext cg-user::|gl_max_tess_control_input_components_ext|)
(defparameter gl::max-tess-control-input-components-oes cg-user::|gl_max_tess_control_input_components_oes|)
(defparameter gl::max-tess-control-output-components cg-user::|gl_max_tess_control_output_components|)
(defparameter gl::max-tess-control-output-components-ext cg-user::|gl_max_tess_control_output_components_ext|)
(defparameter gl::max-tess-control-output-components-oes cg-user::|gl_max_tess_control_output_components_oes|)
(defparameter gl::max-tess-control-shader-storage-blocks cg-user::|gl_max_tess_control_shader_storage_blocks|)
(defparameter gl::max-tess-control-shader-storage-blocks-ext cg-user::|gl_max_tess_control_shader_storage_blocks_ext|)
(defparameter gl::max-tess-control-shader-storage-blocks-oes cg-user::|gl_max_tess_control_shader_storage_blocks_oes|)
(defparameter gl::max-tess-control-texture-image-units cg-user::|gl_max_tess_control_texture_image_units|)
(defparameter gl::max-tess-control-texture-image-units-ext cg-user::|gl_max_tess_control_texture_image_units_ext|)
(defparameter gl::max-tess-control-texture-image-units-oes cg-user::|gl_max_tess_control_texture_image_units_oes|)
(defparameter gl::max-tess-control-total-output-components cg-user::|gl_max_tess_control_total_output_components|)
(defparameter gl::max-tess-control-total-output-components-ext cg-user::|gl_max_tess_control_total_output_components_ext|)
(defparameter gl::max-tess-control-total-output-components-oes cg-user::|gl_max_tess_control_total_output_components_oes|)
(defparameter gl::max-tess-control-uniform-blocks cg-user::|gl_max_tess_control_uniform_blocks|)
(defparameter gl::max-tess-control-uniform-blocks-ext cg-user::|gl_max_tess_control_uniform_blocks_ext|)
(defparameter gl::max-tess-control-uniform-blocks-oes cg-user::|gl_max_tess_control_uniform_blocks_oes|)
(defparameter gl::max-tess-control-uniform-components cg-user::|gl_max_tess_control_uniform_components|)
(defparameter gl::max-tess-control-uniform-components-ext cg-user::|gl_max_tess_control_uniform_components_ext|)
(defparameter gl::max-tess-control-uniform-components-oes cg-user::|gl_max_tess_control_uniform_components_oes|)
(defparameter gl::max-tess-evaluation-atomic-counter-buffers cg-user::|gl_max_tess_evaluation_atomic_counter_buffers|)
(defparameter gl::max-tess-evaluation-atomic-counter-buffers-ext cg-user::|gl_max_tess_evaluation_atomic_counter_buffers_ext|)
(defparameter gl::max-tess-evaluation-atomic-counter-buffers-oes cg-user::|gl_max_tess_evaluation_atomic_counter_buffers_oes|)
(defparameter gl::max-tess-evaluation-atomic-counters cg-user::|gl_max_tess_evaluation_atomic_counters|)
(defparameter gl::max-tess-evaluation-atomic-counters-ext cg-user::|gl_max_tess_evaluation_atomic_counters_ext|)
(defparameter gl::max-tess-evaluation-atomic-counters-oes cg-user::|gl_max_tess_evaluation_atomic_counters_oes|)
(defparameter gl::max-tess-evaluation-image-uniforms cg-user::|gl_max_tess_evaluation_image_uniforms|)
(defparameter gl::max-tess-evaluation-image-uniforms-ext cg-user::|gl_max_tess_evaluation_image_uniforms_ext|)
(defparameter gl::max-tess-evaluation-image-uniforms-oes cg-user::|gl_max_tess_evaluation_image_uniforms_oes|)
(defparameter gl::max-tess-evaluation-input-components cg-user::|gl_max_tess_evaluation_input_components|)
(defparameter gl::max-tess-evaluation-input-components-ext cg-user::|gl_max_tess_evaluation_input_components_ext|)
(defparameter gl::max-tess-evaluation-input-components-oes cg-user::|gl_max_tess_evaluation_input_components_oes|)
(defparameter gl::max-tess-evaluation-output-components cg-user::|gl_max_tess_evaluation_output_components|)
(defparameter gl::max-tess-evaluation-output-components-ext cg-user::|gl_max_tess_evaluation_output_components_ext|)
(defparameter gl::max-tess-evaluation-output-components-oes cg-user::|gl_max_tess_evaluation_output_components_oes|)
(defparameter gl::max-tess-evaluation-shader-storage-blocks cg-user::|gl_max_tess_evaluation_shader_storage_blocks|)
(defparameter gl::max-tess-evaluation-shader-storage-blocks-ext cg-user::|gl_max_tess_evaluation_shader_storage_blocks_ext|)
(defparameter gl::max-tess-evaluation-shader-storage-blocks-oes cg-user::|gl_max_tess_evaluation_shader_storage_blocks_oes|)
(defparameter gl::max-tess-evaluation-texture-image-units cg-user::|gl_max_tess_evaluation_texture_image_units|)
(defparameter gl::max-tess-evaluation-texture-image-units-ext cg-user::|gl_max_tess_evaluation_texture_image_units_ext|)
(defparameter gl::max-tess-evaluation-texture-image-units-oes cg-user::|gl_max_tess_evaluation_texture_image_units_oes|)
(defparameter gl::max-tess-evaluation-uniform-blocks cg-user::|gl_max_tess_evaluation_uniform_blocks|)
(defparameter gl::max-tess-evaluation-uniform-blocks-ext cg-user::|gl_max_tess_evaluation_uniform_blocks_ext|)
(defparameter gl::max-tess-evaluation-uniform-blocks-oes cg-user::|gl_max_tess_evaluation_uniform_blocks_oes|)
(defparameter gl::max-tess-evaluation-uniform-components cg-user::|gl_max_tess_evaluation_uniform_components|)
(defparameter gl::max-tess-evaluation-uniform-components-ext cg-user::|gl_max_tess_evaluation_uniform_components_ext|)
(defparameter gl::max-tess-evaluation-uniform-components-oes cg-user::|gl_max_tess_evaluation_uniform_components_oes|)
(defparameter gl::max-tess-gen-level cg-user::|gl_max_tess_gen_level|)
(defparameter gl::max-tess-gen-level-ext cg-user::|gl_max_tess_gen_level_ext|)
(defparameter gl::max-tess-gen-level-oes cg-user::|gl_max_tess_gen_level_oes|)
(defparameter gl::max-tess-patch-components cg-user::|gl_max_tess_patch_components|)
(defparameter gl::max-tess-patch-components-ext cg-user::|gl_max_tess_patch_components_ext|)
(defparameter gl::max-tess-patch-components-oes cg-user::|gl_max_tess_patch_components_oes|)
(defparameter gl::max-texture-buffer-size cg-user::|gl_max_texture_buffer_size|)
(defparameter gl::max-texture-buffer-size-arb cg-user::|gl_max_texture_buffer_size_arb|)
(defparameter gl::max-texture-buffer-size-ext cg-user::|gl_max_texture_buffer_size_ext|)
(defparameter gl::max-texture-buffer-size-oes cg-user::|gl_max_texture_buffer_size_oes|)
(defparameter gl::max-texture-coords cg-user::|gl_max_texture_coords|)
(defparameter gl::max-texture-coords-arb cg-user::|gl_max_texture_coords_arb|)
(defparameter gl::max-texture-coords-nv cg-user::|gl_max_texture_coords_nv|)
(defparameter gl::max-texture-image-units cg-user::|gl_max_texture_image_units|)
(defparameter gl::max-texture-image-units-arb cg-user::|gl_max_texture_image_units_arb|)
(defparameter gl::max-texture-image-units-nv cg-user::|gl_max_texture_image_units_nv|)
(defparameter gl::max-texture-lod-bias cg-user::|gl_max_texture_lod_bias|)
(defparameter gl::max-texture-lod-bias-ext cg-user::|gl_max_texture_lod_bias_ext|)
(defparameter gl::max-texture-max-anisotropy-ext cg-user::|gl_max_texture_max_anisotropy_ext|)
(defparameter gl::max-texture-size cg-user::|gl_max_texture_size|)
(defparameter gl::max-texture-stack-depth cg-user::|gl_max_texture_stack_depth|)
(defparameter gl::max-texture-units cg-user::|gl_max_texture_units|)
(defparameter gl::max-texture-units-arb cg-user::|gl_max_texture_units_arb|)
(defparameter gl::max-track-matrices-nv cg-user::|gl_max_track_matrices_nv|)
(defparameter gl::max-track-matrix-stack-depth-nv cg-user::|gl_max_track_matrix_stack_depth_nv|)
(defparameter gl::max-transform-feedback-buffers cg-user::|gl_max_transform_feedback_buffers|)
(defparameter gl::max-transform-feedback-interleaved-components cg-user::|gl_max_transform_feedback_interleaved_components|)
(defparameter gl::max-transform-feedback-interleaved-components-ext cg-user::|gl_max_transform_feedback_interleaved_components_ext|)
(defparameter gl::max-transform-feedback-interleaved-components-nv cg-user::|gl_max_transform_feedback_interleaved_components_nv|)
(defparameter gl::max-transform-feedback-separate-attribs cg-user::|gl_max_transform_feedback_separate_attribs|)
(defparameter gl::max-transform-feedback-separate-attribs-ext cg-user::|gl_max_transform_feedback_separate_attribs_ext|)
(defparameter gl::max-transform-feedback-separate-attribs-nv cg-user::|gl_max_transform_feedback_separate_attribs_nv|)
(defparameter gl::max-transform-feedback-separate-components cg-user::|gl_max_transform_feedback_separate_components|)
(defparameter gl::max-transform-feedback-separate-components-ext cg-user::|gl_max_transform_feedback_separate_components_ext|)
(defparameter gl::max-transform-feedback-separate-components-nv cg-user::|gl_max_transform_feedback_separate_components_nv|)
(defparameter gl::max-uniform-block-size cg-user::|gl_max_uniform_block_size|)
(defparameter gl::max-uniform-buffer-bindings cg-user::|gl_max_uniform_buffer_bindings|)
(defparameter gl::max-uniform-locations cg-user::|gl_max_uniform_locations|)
(defparameter gl::max-varying-components cg-user::|gl_max_varying_components|)
(defparameter gl::max-varying-components-ext cg-user::|gl_max_varying_components_ext|)
(defparameter gl::max-varying-floats cg-user::|gl_max_varying_floats|)
(defparameter gl::max-varying-floats-arb cg-user::|gl_max_varying_floats_arb|)
(defparameter gl::max-varying-vectors cg-user::|gl_max_varying_vectors|)
(defparameter gl::max-vertex-array-range-element-nv cg-user::|gl_max_vertex_array_range_element_nv|)
(defparameter gl::max-vertex-atomic-counter-buffers cg-user::|gl_max_vertex_atomic_counter_buffers|)
(defparameter gl::max-vertex-atomic-counters cg-user::|gl_max_vertex_atomic_counters|)
(defparameter gl::max-vertex-attrib-bindings cg-user::|gl_max_vertex_attrib_bindings|)
(defparameter gl::max-vertex-attrib-relative-offset cg-user::|gl_max_vertex_attrib_relative_offset|)
(defparameter gl::max-vertex-attribs cg-user::|gl_max_vertex_attribs|)
(defparameter gl::max-vertex-attribs-arb cg-user::|gl_max_vertex_attribs_arb|)
(defparameter gl::max-vertex-attrib-stride cg-user::|gl_max_vertex_attrib_stride|)
(defparameter gl::max-vertex-bindable-uniforms-ext cg-user::|gl_max_vertex_bindable_uniforms_ext|)
(defparameter gl::max-vertex-hint-pgi cg-user::|gl_max_vertex_hint_pgi|)
(defparameter gl::max-vertex-image-uniforms cg-user::|gl_max_vertex_image_uniforms|)
(defparameter gl::max-vertex-output-components cg-user::|gl_max_vertex_output_components|)
(defparameter gl::max-vertex-shader-instructions-ext cg-user::|gl_max_vertex_shader_instructions_ext|)
(defparameter gl::max-vertex-shader-invariants-ext cg-user::|gl_max_vertex_shader_invariants_ext|)
(defparameter gl::max-vertex-shader-local-constants-ext cg-user::|gl_max_vertex_shader_local_constants_ext|)
(defparameter gl::max-vertex-shader-locals-ext cg-user::|gl_max_vertex_shader_locals_ext|)
(defparameter gl::max-vertex-shader-storage-blocks cg-user::|gl_max_vertex_shader_storage_blocks|)
(defparameter gl::max-vertex-shader-variants-ext cg-user::|gl_max_vertex_shader_variants_ext|)
(defparameter gl::max-vertex-streams cg-user::|gl_max_vertex_streams|)
(defparameter gl::max-vertex-streams-ati cg-user::|gl_max_vertex_streams_ati|)
(defparameter gl::max-vertex-texture-image-units cg-user::|gl_max_vertex_texture_image_units|)
(defparameter gl::max-vertex-texture-image-units-arb cg-user::|gl_max_vertex_texture_image_units_arb|)
(defparameter gl::max-vertex-uniform-blocks cg-user::|gl_max_vertex_uniform_blocks|)
(defparameter gl::max-vertex-uniform-components cg-user::|gl_max_vertex_uniform_components|)
(defparameter gl::max-vertex-uniform-components-arb cg-user::|gl_max_vertex_uniform_components_arb|)
(defparameter gl::max-vertex-uniform-vectors cg-user::|gl_max_vertex_uniform_vectors|)
(defparameter gl::max-vertex-units-arb cg-user::|gl_max_vertex_units_arb|)
(defparameter gl::max-vertex-units-oes cg-user::|gl_max_vertex_units_oes|)
(defparameter gl::max-vertex-varying-components-arb cg-user::|gl_max_vertex_varying_components_arb|)
(defparameter gl::max-vertex-varying-components-ext cg-user::|gl_max_vertex_varying_components_ext|)
(defparameter gl::max-viewport-dims cg-user::|gl_max_viewport_dims|)
(defparameter gl::max-viewports cg-user::|gl_max_viewports|)
(defparameter gl::max-viewports-nv cg-user::|gl_max_viewports_nv|)
(defparameter gl::max-views-ovr cg-user::|gl_max_views_ovr|)
(defparameter gl::max-width cg-user::|gl_max_width|)
(defparameter gl::medium-float cg-user::|gl_medium_float|)
(defparameter gl::medium-int cg-user::|gl_medium_int|)
(defparameter gl::min cg-user::|gl_min|)
(defparameter gl::min-ext cg-user::|gl_min_ext|)
(defparameter gl::min-fragment-interpolation-offset cg-user::|gl_min_fragment_interpolation_offset|)
(defparameter gl::min-fragment-interpolation-offset-nv cg-user::|gl_min_fragment_interpolation_offset_nv|)
(defparameter gl::min-fragment-interpolation-offset-oes cg-user::|gl_min_fragment_interpolation_offset_oes|)
(defparameter gl::min-lod-warning-amd cg-user::|gl_min_lod_warning_amd|)
(defparameter gl::min-map-buffer-alignment cg-user::|gl_min_map_buffer_alignment|)
(defparameter gl::minmax cg-user::|gl_minmax|)
(defparameter gl::minmax-ext cg-user::|gl_minmax_ext|)
(defparameter gl::minmax-format cg-user::|gl_minmax_format|)
(defparameter gl::minmax-format-ext cg-user::|gl_minmax_format_ext|)
(defparameter gl::minmax-sink cg-user::|gl_minmax_sink|)
(defparameter gl::minmax-sink-ext cg-user::|gl_minmax_sink_ext|)
(defparameter gl::minor-version cg-user::|gl_minor_version|)
(defparameter gl::min-program-texel-offset cg-user::|gl_min_program_texel_offset|)
(defparameter gl::min-program-texel-offset-ext cg-user::|gl_min_program_texel_offset_ext|)
(defparameter gl::min-program-texel-offset-nv cg-user::|gl_min_program_texel_offset_nv|)
(defparameter gl::min-program-texture-gather-offset cg-user::|gl_min_program_texture_gather_offset|)
(defparameter gl::min-program-texture-gather-offset-arb cg-user::|gl_min_program_texture_gather_offset_arb|)
(defparameter gl::min-program-texture-gather-offset-nv cg-user::|gl_min_program_texture_gather_offset_nv|)
(defparameter gl::min-sample-shading-value cg-user::|gl_min_sample_shading_value|)
(defparameter gl::min-sample-shading-value-arb cg-user::|gl_min_sample_shading_value_arb|)
(defparameter gl::min-sample-shading-value-oes cg-user::|gl_min_sample_shading_value_oes|)
(defparameter gl::min-sparse-level-amd cg-user::|gl_min_sparse_level_amd|)
(defparameter gl::minus-clamped-nv cg-user::|gl_minus_clamped_nv|)
(defparameter gl::minus-nv cg-user::|gl_minus_nv|)
(defparameter gl::mipmap cg-user::|gl_mipmap|)
(defparameter gl::mirror-clamp-ati cg-user::|gl_mirror_clamp_ati|)
(defparameter gl::mirror-clamp-ext cg-user::|gl_mirror_clamp_ext|)
(defparameter gl::mirror-clamp-to-border-ext cg-user::|gl_mirror_clamp_to_border_ext|)
(defparameter gl::mirror-clamp-to-edge cg-user::|gl_mirror_clamp_to_edge|)
(defparameter gl::mirror-clamp-to-edge-ati cg-user::|gl_mirror_clamp_to_edge_ati|)
(defparameter gl::mirror-clamp-to-edge-ext cg-user::|gl_mirror_clamp_to_edge_ext|)
(defparameter gl::mirrored-repeat cg-user::|gl_mirrored_repeat|)
(defparameter gl::mirrored-repeat-arb cg-user::|gl_mirrored_repeat_arb|)
(defparameter gl::mirrored-repeat-ibm cg-user::|gl_mirrored_repeat_ibm|)
(defparameter gl::mirrored-repeat-oes cg-user::|gl_mirrored_repeat_oes|)
(defparameter gl::miter-revert-nv cg-user::|gl_miter_revert_nv|)
(defparameter gl::miter-truncate-nv cg-user::|gl_miter_truncate_nv|)
(defparameter gl::mixed-depth-samples-supported-nv cg-user::|gl_mixed_depth_samples_supported_nv|)
(defparameter gl::mixed-stencil-samples-supported-nv cg-user::|gl_mixed_stencil_samples_supported_nv|)
(defparameter gl::modelview cg-user::|gl_modelview|)
(defparameter gl::modelview0-arb cg-user::|gl_modelview0_arb|)
(defparameter gl::modelview0-ext cg-user::|gl_modelview0_ext|)
(defparameter gl::modelview0-matrix-ext cg-user::|gl_modelview0_matrix_ext|)
(defparameter gl::modelview0-stack-depth-ext cg-user::|gl_modelview0_stack_depth_ext|)
(defparameter gl::modelview10-arb cg-user::|gl_modelview10_arb|)
(defparameter gl::modelview11-arb cg-user::|gl_modelview11_arb|)
(defparameter gl::modelview12-arb cg-user::|gl_modelview12_arb|)
(defparameter gl::modelview13-arb cg-user::|gl_modelview13_arb|)
(defparameter gl::modelview14-arb cg-user::|gl_modelview14_arb|)
(defparameter gl::modelview15-arb cg-user::|gl_modelview15_arb|)
(defparameter gl::modelview16-arb cg-user::|gl_modelview16_arb|)
(defparameter gl::modelview17-arb cg-user::|gl_modelview17_arb|)
(defparameter gl::modelview18-arb cg-user::|gl_modelview18_arb|)
(defparameter gl::modelview19-arb cg-user::|gl_modelview19_arb|)
(defparameter gl::modelview1-arb cg-user::|gl_modelview1_arb|)
(defparameter gl::modelview1-ext cg-user::|gl_modelview1_ext|)
(defparameter gl::modelview1-matrix-ext cg-user::|gl_modelview1_matrix_ext|)
(defparameter gl::modelview1-stack-depth-ext cg-user::|gl_modelview1_stack_depth_ext|)
(defparameter gl::modelview20-arb cg-user::|gl_modelview20_arb|)
(defparameter gl::modelview21-arb cg-user::|gl_modelview21_arb|)
(defparameter gl::modelview22-arb cg-user::|gl_modelview22_arb|)
(defparameter gl::modelview23-arb cg-user::|gl_modelview23_arb|)
(defparameter gl::modelview24-arb cg-user::|gl_modelview24_arb|)
(defparameter gl::modelview25-arb cg-user::|gl_modelview25_arb|)
(defparameter gl::modelview26-arb cg-user::|gl_modelview26_arb|)
(defparameter gl::modelview27-arb cg-user::|gl_modelview27_arb|)
(defparameter gl::modelview28-arb cg-user::|gl_modelview28_arb|)
(defparameter gl::modelview29-arb cg-user::|gl_modelview29_arb|)
(defparameter gl::modelview2-arb cg-user::|gl_modelview2_arb|)
(defparameter gl::modelview30-arb cg-user::|gl_modelview30_arb|)
(defparameter gl::modelview31-arb cg-user::|gl_modelview31_arb|)
(defparameter gl::modelview3-arb cg-user::|gl_modelview3_arb|)
(defparameter gl::modelview4-arb cg-user::|gl_modelview4_arb|)
(defparameter gl::modelview5-arb cg-user::|gl_modelview5_arb|)
(defparameter gl::modelview6-arb cg-user::|gl_modelview6_arb|)
(defparameter gl::modelview7-arb cg-user::|gl_modelview7_arb|)
(defparameter gl::modelview8-arb cg-user::|gl_modelview8_arb|)
(defparameter gl::modelview9-arb cg-user::|gl_modelview9_arb|)
(defparameter gl::modelview-matrix cg-user::|gl_modelview_matrix|)
(defparameter gl::modelview-matrix-float-as-int-bits-oes cg-user::|gl_modelview_matrix_float_as_int_bits_oes|)
(defparameter gl::modelview-projection-nv cg-user::|gl_modelview_projection_nv|)
(defparameter gl::modelview-stack-depth cg-user::|gl_modelview_stack_depth|)
(defparameter gl::modulate cg-user::|gl_modulate|)
(defparameter gl::modulate-add-ati cg-user::|gl_modulate_add_ati|)
(defparameter gl::modulate-color-img cg-user::|gl_modulate_color_img|)
(defparameter gl::modulate-signed-add-ati cg-user::|gl_modulate_signed_add_ati|)
(defparameter gl::modulate-subtract-ati cg-user::|gl_modulate_subtract_ati|)
(defparameter gl::mov-ati cg-user::|gl_mov_ati|)
(defparameter gl::move-to-continues-nv cg-user::|gl_move_to_continues_nv|)
(defparameter gl::move-to-nv cg-user::|gl_move_to_nv|)
(defparameter gl::move-to-resets-nv cg-user::|gl_move_to_resets_nv|)
(defparameter gl::mul-ati cg-user::|gl_mul_ati|)
(defparameter gl::mult cg-user::|gl_mult|)
(defparameter gl::multiply cg-user::|gl_multiply|)
(defparameter gl::multiply-khr cg-user::|gl_multiply_khr|)
(defparameter gl::multiply-nv cg-user::|gl_multiply_nv|)
(defparameter gl::multisample cg-user::|gl_multisample|)
(defparameter gl::multisample-3dfx cg-user::|gl_multisample_3dfx|)
(defparameter gl::multisample-arb cg-user::|gl_multisample_arb|)
(defparameter gl::multisample-bit cg-user::|gl_multisample_bit|)
(defparameter gl::multisample-bit-3dfx cg-user::|gl_multisample_bit_3dfx|)
(defparameter gl::multisample-bit-arb cg-user::|gl_multisample_bit_arb|)
(defparameter gl::multisample-bit-ext cg-user::|gl_multisample_bit_ext|)
(defparameter gl::multisample-buffer-bit0-qcom cg-user::|gl_multisample_buffer_bit0_qcom|)
(defparameter gl::multisample-buffer-bit1-qcom cg-user::|gl_multisample_buffer_bit1_qcom|)
(defparameter gl::multisample-buffer-bit2-qcom cg-user::|gl_multisample_buffer_bit2_qcom|)
(defparameter gl::multisample-buffer-bit3-qcom cg-user::|gl_multisample_buffer_bit3_qcom|)
(defparameter gl::multisample-buffer-bit4-qcom cg-user::|gl_multisample_buffer_bit4_qcom|)
(defparameter gl::multisample-buffer-bit5-qcom cg-user::|gl_multisample_buffer_bit5_qcom|)
(defparameter gl::multisample-buffer-bit6-qcom cg-user::|gl_multisample_buffer_bit6_qcom|)
(defparameter gl::multisample-buffer-bit7-qcom cg-user::|gl_multisample_buffer_bit7_qcom|)
(defparameter gl::multisample-coverage-modes-nv cg-user::|gl_multisample_coverage_modes_nv|)
(defparameter gl::multisample-ext cg-user::|gl_multisample_ext|)
(defparameter gl::multisample-filter-hint-nv cg-user::|gl_multisample_filter_hint_nv|)
(defparameter gl::multisample-line-width-granularity cg-user::|gl_multisample_line_width_granularity|)
(defparameter gl::multisample-line-width-granularity-arb cg-user::|gl_multisample_line_width_granularity_arb|)
(defparameter gl::multisample-line-width-range cg-user::|gl_multisample_line_width_range|)
(defparameter gl::multisample-line-width-range-arb cg-user::|gl_multisample_line_width_range_arb|)
(defparameter gl::multisample-rasterization-allowed-ext cg-user::|gl_multisample_rasterization_allowed_ext|)
(defparameter gl::multisample-sgis cg-user::|gl_multisample_sgis|)
(defparameter gl::multisamples-nv cg-user::|gl_multisamples_nv|)
(defparameter gl::multiview-ext cg-user::|gl_multiview_ext|)
(defparameter gl::mvp-matrix-ext cg-user::|gl_mvp_matrix_ext|)
(defparameter gl::n3f-v3f cg-user::|gl_n3f_v3f|)
(defparameter gl::named-string-length-arb cg-user::|gl_named_string_length_arb|)
(defparameter gl::named-string-type-arb cg-user::|gl_named_string_type_arb|)
(defparameter gl::name-length cg-user::|gl_name_length|)
(defparameter gl::name-stack-depth cg-user::|gl_name_stack_depth|)
(defparameter gl::nand cg-user::|gl_nand|)
(defparameter gl::native-graphics-begin-hint-pgi cg-user::|gl_native_graphics_begin_hint_pgi|)
(defparameter gl::native-graphics-end-hint-pgi cg-user::|gl_native_graphics_end_hint_pgi|)
(defparameter gl::native-graphics-handle-pgi cg-user::|gl_native_graphics_handle_pgi|)
(defparameter gl::nearest cg-user::|gl_nearest|)
(defparameter gl::nearest-clipmap-linear-sgix cg-user::|gl_nearest_clipmap_linear_sgix|)
(defparameter gl::nearest-clipmap-nearest-sgix cg-user::|gl_nearest_clipmap_nearest_sgix|)
(defparameter gl::nearest-mipmap-linear cg-user::|gl_nearest_mipmap_linear|)
(defparameter gl::nearest-mipmap-nearest cg-user::|gl_nearest_mipmap_nearest|)
(defparameter gl::negate-bit-ati cg-user::|gl_negate_bit_ati|)
(defparameter gl::negative-one-ext cg-user::|gl_negative_one_ext|)
(defparameter gl::negative-one-to-one cg-user::|gl_negative_one_to_one|)
(defparameter gl::negative-w-ext cg-user::|gl_negative_w_ext|)
(defparameter gl::negative-x-ext cg-user::|gl_negative_x_ext|)
(defparameter gl::negative-y-ext cg-user::|gl_negative_y_ext|)
(defparameter gl::negative-z-ext cg-user::|gl_negative_z_ext|)
(defparameter gl::never cg-user::|gl_never|)
(defparameter gl::next-buffer-nv cg-user::|gl_next_buffer_nv|)
(defparameter gl::next-video-capture-buffer-status-nv cg-user::|gl_next_video_capture_buffer_status_nv|)
(defparameter gl::nicest cg-user::|gl_nicest|)
(defparameter gl::no-error cg-user::|gl_no_error|)
(defparameter gl::none cg-user::|gl_none|)
(defparameter gl::none-oes cg-user::|gl_none_oes|)
(defparameter gl::noop cg-user::|gl_noop|)
(defparameter gl::nop-command-nv cg-user::|gl_nop_command_nv|)
(defparameter gl::nor cg-user::|gl_nor|)
(defparameter gl::no-reset-notification cg-user::|gl_no_reset_notification|)
(defparameter gl::no-reset-notification-arb cg-user::|gl_no_reset_notification_arb|)
(defparameter gl::no-reset-notification-ext cg-user::|gl_no_reset_notification_ext|)
(defparameter gl::no-reset-notification-khr cg-user::|gl_no_reset_notification_khr|)
(defparameter gl::normal-array cg-user::|gl_normal_array|)
(defparameter gl::normal-array-address-nv cg-user::|gl_normal_array_address_nv|)
(defparameter gl::normal-array-buffer-binding cg-user::|gl_normal_array_buffer_binding|)
(defparameter gl::normal-array-buffer-binding-arb cg-user::|gl_normal_array_buffer_binding_arb|)
(defparameter gl::normal-array-count-ext cg-user::|gl_normal_array_count_ext|)
(defparameter gl::normal-array-ext cg-user::|gl_normal_array_ext|)
(defparameter gl::normal-array-length-nv cg-user::|gl_normal_array_length_nv|)
(defparameter gl::normal-array-list-ibm cg-user::|gl_normal_array_list_ibm|)
(defparameter gl::normal-array-list-stride-ibm cg-user::|gl_normal_array_list_stride_ibm|)
(defparameter gl::normal-array-parallel-pointers-intel cg-user::|gl_normal_array_parallel_pointers_intel|)
(defparameter gl::normal-array-pointer cg-user::|gl_normal_array_pointer|)
(defparameter gl::normal-array-pointer-ext cg-user::|gl_normal_array_pointer_ext|)
(defparameter gl::normal-array-stride cg-user::|gl_normal_array_stride|)
(defparameter gl::normal-array-stride-ext cg-user::|gl_normal_array_stride_ext|)
(defparameter gl::normal-array-type cg-user::|gl_normal_array_type|)
(defparameter gl::normal-array-type-ext cg-user::|gl_normal_array_type_ext|)
(defparameter gl::normal-bit-pgi cg-user::|gl_normal_bit_pgi|)
(defparameter gl::normalize cg-user::|gl_normalize|)
(defparameter gl::normalized-range-ext cg-user::|gl_normalized_range_ext|)
(defparameter gl::normal-map cg-user::|gl_normal_map|)
(defparameter gl::normal-map-arb cg-user::|gl_normal_map_arb|)
(defparameter gl::normal-map-ext cg-user::|gl_normal_map_ext|)
(defparameter gl::normal-map-nv cg-user::|gl_normal_map_nv|)
(defparameter gl::normal-map-oes cg-user::|gl_normal_map_oes|)
(defparameter gl::notequal cg-user::|gl_notequal|)
(defparameter gl::num-active-variables cg-user::|gl_num_active_variables|)
(defparameter gl::num-compatible-subroutines cg-user::|gl_num_compatible_subroutines|)
(defparameter gl::num-compressed-texture-formats cg-user::|gl_num_compressed_texture_formats|)
(defparameter gl::num-compressed-texture-formats-arb cg-user::|gl_num_compressed_texture_formats_arb|)
(defparameter gl::num-extensions cg-user::|gl_num_extensions|)
(defparameter gl::num-fill-streams-nv cg-user::|gl_num_fill_streams_nv|)
(defparameter gl::num-fragment-constants-ati cg-user::|gl_num_fragment_constants_ati|)
(defparameter gl::num-fragment-registers-ati cg-user::|gl_num_fragment_registers_ati|)
(defparameter gl::num-general-combiners-nv cg-user::|gl_num_general_combiners_nv|)
(defparameter gl::num-input-interpolator-components-ati cg-user::|gl_num_input_interpolator_components_ati|)
(defparameter gl::num-instructions-per-pass-ati cg-user::|gl_num_instructions_per_pass_ati|)
(defparameter gl::num-instructions-total-ati cg-user::|gl_num_instructions_total_ati|)
(defparameter gl::num-loopback-components-ati cg-user::|gl_num_loopback_components_ati|)
(defparameter gl::num-passes-ati cg-user::|gl_num_passes_ati|)
(defparameter gl::num-program-binary-formats cg-user::|gl_num_program_binary_formats|)
(defparameter gl::num-program-binary-formats-oes cg-user::|gl_num_program_binary_formats_oes|)
(defparameter gl::num-sample-counts cg-user::|gl_num_sample_counts|)
(defparameter gl::num-shader-binary-formats cg-user::|gl_num_shader_binary_formats|)
(defparameter gl::num-shading-language-versions cg-user::|gl_num_shading_language_versions|)
(defparameter gl::num-sparse-levels-arb cg-user::|gl_num_sparse_levels_arb|)
(defparameter gl::num-sparse-levels-ext cg-user::|gl_num_sparse_levels_ext|)
(defparameter gl::num-video-capture-streams-nv cg-user::|gl_num_video_capture_streams_nv|)
(defparameter gl::num-virtual-page-sizes-arb cg-user::|gl_num_virtual_page_sizes_arb|)
(defparameter gl::num-virtual-page-sizes-ext cg-user::|gl_num_virtual_page_sizes_ext|)
(defparameter gl::object-active-attribute-max-length-arb cg-user::|gl_object_active_attribute_max_length_arb|)
(defparameter gl::object-active-attributes-arb cg-user::|gl_object_active_attributes_arb|)
(defparameter gl::object-active-uniform-max-length-arb cg-user::|gl_object_active_uniform_max_length_arb|)
(defparameter gl::object-active-uniforms-arb cg-user::|gl_object_active_uniforms_arb|)
(defparameter gl::object-attached-objects-arb cg-user::|gl_object_attached_objects_arb|)
(defparameter gl::object-buffer-size-ati cg-user::|gl_object_buffer_size_ati|)
(defparameter gl::object-buffer-usage-ati cg-user::|gl_object_buffer_usage_ati|)
(defparameter gl::object-compile-status-arb cg-user::|gl_object_compile_status_arb|)
(defparameter gl::object-delete-status-arb cg-user::|gl_object_delete_status_arb|)
(defparameter gl::object-distance-to-line-sgis cg-user::|gl_object_distance_to_line_sgis|)
(defparameter gl::object-distance-to-point-sgis cg-user::|gl_object_distance_to_point_sgis|)
(defparameter gl::object-info-log-length-arb cg-user::|gl_object_info_log_length_arb|)
(defparameter gl::object-linear cg-user::|gl_object_linear|)
(defparameter gl::object-linear-nv cg-user::|gl_object_linear_nv|)
(defparameter gl::object-line-sgis cg-user::|gl_object_line_sgis|)
(defparameter gl::object-link-status-arb cg-user::|gl_object_link_status_arb|)
(defparameter gl::object-plane cg-user::|gl_object_plane|)
(defparameter gl::object-point-sgis cg-user::|gl_object_point_sgis|)
(defparameter gl::object-shader-source-length-arb cg-user::|gl_object_shader_source_length_arb|)
(defparameter gl::object-subtype-arb cg-user::|gl_object_subtype_arb|)
(defparameter gl::object-type cg-user::|gl_object_type|)
(defparameter gl::object-type-apple cg-user::|gl_object_type_apple|)
(defparameter gl::object-type-arb cg-user::|gl_object_type_arb|)
(defparameter gl::object-validate-status-arb cg-user::|gl_object_validate_status_arb|)
(defparameter gl::occlusion-query-event-mask-amd cg-user::|gl_occlusion_query_event_mask_amd|)
(defparameter gl::occlusion-test-hp cg-user::|gl_occlusion_test_hp|)
(defparameter gl::occlusion-test-result-hp cg-user::|gl_occlusion_test_result_hp|)
(defparameter gl::offset cg-user::|gl_offset|)
(defparameter gl::offset-hilo-projective-texture-2d-nv cg-user::|gl_offset_hilo_projective_texture_2d_nv|)
(defparameter gl::offset-hilo-projective-texture-rectangle-nv cg-user::|gl_offset_hilo_projective_texture_rectangle_nv|)
(defparameter gl::offset-hilo-texture-2d-nv cg-user::|gl_offset_hilo_texture_2d_nv|)
(defparameter gl::offset-hilo-texture-rectangle-nv cg-user::|gl_offset_hilo_texture_rectangle_nv|)
(defparameter gl::offset-projective-texture-2d-nv cg-user::|gl_offset_projective_texture_2d_nv|)
(defparameter gl::offset-projective-texture-2d-scale-nv cg-user::|gl_offset_projective_texture_2d_scale_nv|)
(defparameter gl::offset-projective-texture-rectangle-nv cg-user::|gl_offset_projective_texture_rectangle_nv|)
(defparameter gl::offset-projective-texture-rectangle-scale-nv cg-user::|gl_offset_projective_texture_rectangle_scale_nv|)
(defparameter gl::offset-texture-2d-bias-nv cg-user::|gl_offset_texture_2d_bias_nv|)
(defparameter gl::offset-texture-2d-matrix-nv cg-user::|gl_offset_texture_2d_matrix_nv|)
(defparameter gl::offset-texture-2d-nv cg-user::|gl_offset_texture_2d_nv|)
(defparameter gl::offset-texture-2d-scale-nv cg-user::|gl_offset_texture_2d_scale_nv|)
(defparameter gl::offset-texture-bias-nv cg-user::|gl_offset_texture_bias_nv|)
(defparameter gl::offset-texture-matrix-nv cg-user::|gl_offset_texture_matrix_nv|)
(defparameter gl::offset-texture-rectangle-nv cg-user::|gl_offset_texture_rectangle_nv|)
(defparameter gl::offset-texture-rectangle-scale-nv cg-user::|gl_offset_texture_rectangle_scale_nv|)
(defparameter gl::offset-texture-scale-nv cg-user::|gl_offset_texture_scale_nv|)
(defparameter gl::one cg-user::|gl_one|)
(defparameter gl::one-ext cg-user::|gl_one_ext|)
(defparameter gl::one-minus-constant-alpha cg-user::|gl_one_minus_constant_alpha|)
(defparameter gl::one-minus-constant-alpha-ext cg-user::|gl_one_minus_constant_alpha_ext|)
(defparameter gl::one-minus-constant-color cg-user::|gl_one_minus_constant_color|)
(defparameter gl::one-minus-constant-color-ext cg-user::|gl_one_minus_constant_color_ext|)
(defparameter gl::one-minus-dst-alpha cg-user::|gl_one_minus_dst_alpha|)
(defparameter gl::one-minus-dst-color cg-user::|gl_one_minus_dst_color|)
(defparameter gl::one-minus-src1-alpha cg-user::|gl_one_minus_src1_alpha|)
(defparameter gl::one-minus-src1-alpha-ext cg-user::|gl_one_minus_src1_alpha_ext|)
(defparameter gl::one-minus-src1-color cg-user::|gl_one_minus_src1_color|)
(defparameter gl::one-minus-src1-color-ext cg-user::|gl_one_minus_src1_color_ext|)
(defparameter gl::one-minus-src-alpha cg-user::|gl_one_minus_src_alpha|)
(defparameter gl::one-minus-src-color cg-user::|gl_one_minus_src_color|)
(defparameter gl::op-add-ext cg-user::|gl_op_add_ext|)
(defparameter gl::op-clamp-ext cg-user::|gl_op_clamp_ext|)
(defparameter gl::op-cross-product-ext cg-user::|gl_op_cross_product_ext|)
(defparameter gl::op-dot3-ext cg-user::|gl_op_dot3_ext|)
(defparameter gl::op-dot4-ext cg-user::|gl_op_dot4_ext|)
(defparameter gl::operand0-alpha cg-user::|gl_operand0_alpha|)
(defparameter gl::operand0-alpha-arb cg-user::|gl_operand0_alpha_arb|)
(defparameter gl::operand0-alpha-ext cg-user::|gl_operand0_alpha_ext|)
(defparameter gl::operand0-rgb cg-user::|gl_operand0_rgb|)
(defparameter gl::operand0-rgb-arb cg-user::|gl_operand0_rgb_arb|)
(defparameter gl::operand0-rgb-ext cg-user::|gl_operand0_rgb_ext|)
(defparameter gl::operand1-alpha cg-user::|gl_operand1_alpha|)
(defparameter gl::operand1-alpha-arb cg-user::|gl_operand1_alpha_arb|)
(defparameter gl::operand1-alpha-ext cg-user::|gl_operand1_alpha_ext|)
(defparameter gl::operand1-rgb cg-user::|gl_operand1_rgb|)
(defparameter gl::operand1-rgb-arb cg-user::|gl_operand1_rgb_arb|)
(defparameter gl::operand1-rgb-ext cg-user::|gl_operand1_rgb_ext|)
(defparameter gl::operand2-alpha cg-user::|gl_operand2_alpha|)
(defparameter gl::operand2-alpha-arb cg-user::|gl_operand2_alpha_arb|)
(defparameter gl::operand2-alpha-ext cg-user::|gl_operand2_alpha_ext|)
(defparameter gl::operand2-rgb cg-user::|gl_operand2_rgb|)
(defparameter gl::operand2-rgb-arb cg-user::|gl_operand2_rgb_arb|)
(defparameter gl::operand2-rgb-ext cg-user::|gl_operand2_rgb_ext|)
(defparameter gl::operand3-alpha-nv cg-user::|gl_operand3_alpha_nv|)
(defparameter gl::operand3-rgb-nv cg-user::|gl_operand3_rgb_nv|)
(defparameter gl::op-exp-base-2-ext cg-user::|gl_op_exp_base_2_ext|)
(defparameter gl::op-floor-ext cg-user::|gl_op_floor_ext|)
(defparameter gl::op-frac-ext cg-user::|gl_op_frac_ext|)
(defparameter gl::op-index-ext cg-user::|gl_op_index_ext|)
(defparameter gl::op-log-base-2-ext cg-user::|gl_op_log_base_2_ext|)
(defparameter gl::op-madd-ext cg-user::|gl_op_madd_ext|)
(defparameter gl::op-max-ext cg-user::|gl_op_max_ext|)
(defparameter gl::op-min-ext cg-user::|gl_op_min_ext|)
(defparameter gl::op-mov-ext cg-user::|gl_op_mov_ext|)
(defparameter gl::op-mul-ext cg-user::|gl_op_mul_ext|)
(defparameter gl::op-multiply-matrix-ext cg-user::|gl_op_multiply_matrix_ext|)
(defparameter gl::op-negate-ext cg-user::|gl_op_negate_ext|)
(defparameter gl::op-power-ext cg-user::|gl_op_power_ext|)
(defparameter gl::op-recip-ext cg-user::|gl_op_recip_ext|)
(defparameter gl::op-recip-sqrt-ext cg-user::|gl_op_recip_sqrt_ext|)
(defparameter gl::op-round-ext cg-user::|gl_op_round_ext|)
(defparameter gl::op-set-ge-ext cg-user::|gl_op_set_ge_ext|)
(defparameter gl::op-set-lt-ext cg-user::|gl_op_set_lt_ext|)
(defparameter gl::op-sub-ext cg-user::|gl_op_sub_ext|)
(defparameter gl::or cg-user::|gl_or|)
(defparameter gl::order cg-user::|gl_order|)
(defparameter gl::or-inverted cg-user::|gl_or_inverted|)
(defparameter gl::or-reverse cg-user::|gl_or_reverse|)
(defparameter gl::out-of-memory cg-user::|gl_out_of_memory|)
(defparameter gl::output-color0-ext cg-user::|gl_output_color0_ext|)
(defparameter gl::output-color1-ext cg-user::|gl_output_color1_ext|)
(defparameter gl::output-fog-ext cg-user::|gl_output_fog_ext|)
(defparameter gl::output-texture-coord0-ext cg-user::|gl_output_texture_coord0_ext|)
(defparameter gl::output-texture-coord10-ext cg-user::|gl_output_texture_coord10_ext|)
(defparameter gl::output-texture-coord11-ext cg-user::|gl_output_texture_coord11_ext|)
(defparameter gl::output-texture-coord12-ext cg-user::|gl_output_texture_coord12_ext|)
(defparameter gl::output-texture-coord13-ext cg-user::|gl_output_texture_coord13_ext|)
(defparameter gl::output-texture-coord14-ext cg-user::|gl_output_texture_coord14_ext|)
(defparameter gl::output-texture-coord15-ext cg-user::|gl_output_texture_coord15_ext|)
(defparameter gl::output-texture-coord16-ext cg-user::|gl_output_texture_coord16_ext|)
(defparameter gl::output-texture-coord17-ext cg-user::|gl_output_texture_coord17_ext|)
(defparameter gl::output-texture-coord18-ext cg-user::|gl_output_texture_coord18_ext|)
(defparameter gl::output-texture-coord19-ext cg-user::|gl_output_texture_coord19_ext|)
(defparameter gl::output-texture-coord1-ext cg-user::|gl_output_texture_coord1_ext|)
(defparameter gl::output-texture-coord20-ext cg-user::|gl_output_texture_coord20_ext|)
(defparameter gl::output-texture-coord21-ext cg-user::|gl_output_texture_coord21_ext|)
(defparameter gl::output-texture-coord22-ext cg-user::|gl_output_texture_coord22_ext|)
(defparameter gl::output-texture-coord23-ext cg-user::|gl_output_texture_coord23_ext|)
(defparameter gl::output-texture-coord24-ext cg-user::|gl_output_texture_coord24_ext|)
(defparameter gl::output-texture-coord25-ext cg-user::|gl_output_texture_coord25_ext|)
(defparameter gl::output-texture-coord26-ext cg-user::|gl_output_texture_coord26_ext|)
(defparameter gl::output-texture-coord27-ext cg-user::|gl_output_texture_coord27_ext|)
(defparameter gl::output-texture-coord28-ext cg-user::|gl_output_texture_coord28_ext|)
(defparameter gl::output-texture-coord29-ext cg-user::|gl_output_texture_coord29_ext|)
(defparameter gl::output-texture-coord2-ext cg-user::|gl_output_texture_coord2_ext|)
(defparameter gl::output-texture-coord30-ext cg-user::|gl_output_texture_coord30_ext|)
(defparameter gl::output-texture-coord31-ext cg-user::|gl_output_texture_coord31_ext|)
(defparameter gl::output-texture-coord3-ext cg-user::|gl_output_texture_coord3_ext|)
(defparameter gl::output-texture-coord4-ext cg-user::|gl_output_texture_coord4_ext|)
(defparameter gl::output-texture-coord5-ext cg-user::|gl_output_texture_coord5_ext|)
(defparameter gl::output-texture-coord6-ext cg-user::|gl_output_texture_coord6_ext|)
(defparameter gl::output-texture-coord7-ext cg-user::|gl_output_texture_coord7_ext|)
(defparameter gl::output-texture-coord8-ext cg-user::|gl_output_texture_coord8_ext|)
(defparameter gl::output-texture-coord9-ext cg-user::|gl_output_texture_coord9_ext|)
(defparameter gl::output-vertex-ext cg-user::|gl_output_vertex_ext|)
(defparameter gl::overlay cg-user::|gl_overlay|)
(defparameter gl::overlay-khr cg-user::|gl_overlay_khr|)
(defparameter gl::overlay-nv cg-user::|gl_overlay_nv|)
(defparameter gl::pack-alignment cg-user::|gl_pack_alignment|)
(defparameter gl::pack-cmyk-hint-ext cg-user::|gl_pack_cmyk_hint_ext|)
(defparameter gl::pack-compressed-block-depth cg-user::|gl_pack_compressed_block_depth|)
(defparameter gl::pack-compressed-block-height cg-user::|gl_pack_compressed_block_height|)
(defparameter gl::pack-compressed-block-size cg-user::|gl_pack_compressed_block_size|)
(defparameter gl::pack-compressed-block-width cg-user::|gl_pack_compressed_block_width|)
(defparameter gl::pack-compressed-size-sgix cg-user::|gl_pack_compressed_size_sgix|)
(defparameter gl::pack-image-depth-sgis cg-user::|gl_pack_image_depth_sgis|)
(defparameter gl::pack-image-height cg-user::|gl_pack_image_height|)
(defparameter gl::pack-image-height-ext cg-user::|gl_pack_image_height_ext|)
(defparameter gl::pack-invert-mesa cg-user::|gl_pack_invert_mesa|)
(defparameter gl::pack-lsb-first cg-user::|gl_pack_lsb_first|)
(defparameter gl::pack-max-compressed-size-sgix cg-user::|gl_pack_max_compressed_size_sgix|)
(defparameter gl::pack-resample-oml cg-user::|gl_pack_resample_oml|)
(defparameter gl::pack-resample-sgix cg-user::|gl_pack_resample_sgix|)
(defparameter gl::pack-reverse-row-order-angle cg-user::|gl_pack_reverse_row_order_angle|)
(defparameter gl::pack-row-bytes-apple cg-user::|gl_pack_row_bytes_apple|)
(defparameter gl::pack-row-length cg-user::|gl_pack_row_length|)
(defparameter gl::pack-skip-images cg-user::|gl_pack_skip_images|)
(defparameter gl::pack-skip-images-ext cg-user::|gl_pack_skip_images_ext|)
(defparameter gl::pack-skip-pixels cg-user::|gl_pack_skip_pixels|)
(defparameter gl::pack-skip-rows cg-user::|gl_pack_skip_rows|)
(defparameter gl::pack-skip-volumes-sgis cg-user::|gl_pack_skip_volumes_sgis|)
(defparameter gl::pack-subsample-rate-sgix cg-user::|gl_pack_subsample_rate_sgix|)
(defparameter gl::pack-swap-bytes cg-user::|gl_pack_swap_bytes|)
(defparameter gl::palette4-r5-g6-b5-oes cg-user::|gl_palette4_r5_g6_b5_oes|)
(defparameter gl::palette4-rgb5-a1-oes cg-user::|gl_palette4_rgb5_a1_oes|)
(defparameter gl::palette4-rgb8-oes cg-user::|gl_palette4_rgb8_oes|)
(defparameter gl::palette4-rgba4-oes cg-user::|gl_palette4_rgba4_oes|)
(defparameter gl::palette4-rgba8-oes cg-user::|gl_palette4_rgba8_oes|)
(defparameter gl::palette8-r5-g6-b5-oes cg-user::|gl_palette8_r5_g6_b5_oes|)
(defparameter gl::palette8-rgb5-a1-oes cg-user::|gl_palette8_rgb5_a1_oes|)
(defparameter gl::palette8-rgb8-oes cg-user::|gl_palette8_rgb8_oes|)
(defparameter gl::palette8-rgba4-oes cg-user::|gl_palette8_rgba4_oes|)
(defparameter gl::palette8-rgba8-oes cg-user::|gl_palette8_rgba8_oes|)
(defparameter gl::parallel-arrays-intel cg-user::|gl_parallel_arrays_intel|)
(defparameter gl::parameter-buffer-arb cg-user::|gl_parameter_buffer_arb|)
(defparameter gl::parameter-buffer-binding-arb cg-user::|gl_parameter_buffer_binding_arb|)
(defparameter gl::partial-success-nv cg-user::|gl_partial_success_nv|)
(defparameter gl::pass-through-nv cg-user::|gl_pass_through_nv|)
(defparameter gl::pass-through-token cg-user::|gl_pass_through_token|)
(defparameter gl::patch-default-inner-level cg-user::|gl_patch_default_inner_level|)
(defparameter gl::patch-default-inner-level-ext cg-user::|gl_patch_default_inner_level_ext|)
(defparameter gl::patch-default-outer-level cg-user::|gl_patch_default_outer_level|)
(defparameter gl::patch-default-outer-level-ext cg-user::|gl_patch_default_outer_level_ext|)
(defparameter gl::patches cg-user::|gl_patches|)
(defparameter gl::patches-ext cg-user::|gl_patches_ext|)
(defparameter gl::patches-oes cg-user::|gl_patches_oes|)
(defparameter gl::patch-vertices cg-user::|gl_patch_vertices|)
(defparameter gl::patch-vertices-ext cg-user::|gl_patch_vertices_ext|)
(defparameter gl::patch-vertices-oes cg-user::|gl_patch_vertices_oes|)
(defparameter gl::path-client-length-nv cg-user::|gl_path_client_length_nv|)
(defparameter gl::path-command-count-nv cg-user::|gl_path_command_count_nv|)
(defparameter gl::path-computed-length-nv cg-user::|gl_path_computed_length_nv|)
(defparameter gl::path-coord-count-nv cg-user::|gl_path_coord_count_nv|)
(defparameter gl::path-cover-depth-func-nv cg-user::|gl_path_cover_depth_func_nv|)
(defparameter gl::path-dash-array-count-nv cg-user::|gl_path_dash_array_count_nv|)
(defparameter gl::path-dash-caps-nv cg-user::|gl_path_dash_caps_nv|)
(defparameter gl::path-dash-offset-nv cg-user::|gl_path_dash_offset_nv|)
(defparameter gl::path-dash-offset-reset-nv cg-user::|gl_path_dash_offset_reset_nv|)
(defparameter gl::path-end-caps-nv cg-user::|gl_path_end_caps_nv|)
(defparameter gl::path-error-position-nv cg-user::|gl_path_error_position_nv|)
(defparameter gl::path-fill-bounding-box-nv cg-user::|gl_path_fill_bounding_box_nv|)
(defparameter gl::path-fill-cover-mode-nv cg-user::|gl_path_fill_cover_mode_nv|)
(defparameter gl::path-fill-mask-nv cg-user::|gl_path_fill_mask_nv|)
(defparameter gl::path-fill-mode-nv cg-user::|gl_path_fill_mode_nv|)
(defparameter gl::path-fog-gen-mode-nv cg-user::|gl_path_fog_gen_mode_nv|)
(defparameter gl::path-format-ps-nv cg-user::|gl_path_format_ps_nv|)
(defparameter gl::path-format-svg-nv cg-user::|gl_path_format_svg_nv|)
(defparameter gl::path-gen-coeff-nv cg-user::|gl_path_gen_coeff_nv|)
(defparameter gl::path-gen-color-format-nv cg-user::|gl_path_gen_color_format_nv|)
(defparameter gl::path-gen-components-nv cg-user::|gl_path_gen_components_nv|)
(defparameter gl::path-gen-mode-nv cg-user::|gl_path_gen_mode_nv|)
(defparameter gl::path-initial-dash-cap-nv cg-user::|gl_path_initial_dash_cap_nv|)
(defparameter gl::path-initial-end-cap-nv cg-user::|gl_path_initial_end_cap_nv|)
(defparameter gl::path-join-style-nv cg-user::|gl_path_join_style_nv|)
(defparameter gl::path-max-modelview-stack-depth-nv cg-user::|gl_path_max_modelview_stack_depth_nv|)
(defparameter gl::path-max-projection-stack-depth-nv cg-user::|gl_path_max_projection_stack_depth_nv|)
(defparameter gl::path-miter-limit-nv cg-user::|gl_path_miter_limit_nv|)
(defparameter gl::path-modelview-matrix-nv cg-user::|gl_path_modelview_matrix_nv|)
(defparameter gl::path-modelview-nv cg-user::|gl_path_modelview_nv|)
(defparameter gl::path-modelview-stack-depth-nv cg-user::|gl_path_modelview_stack_depth_nv|)
(defparameter gl::path-object-bounding-box-nv cg-user::|gl_path_object_bounding_box_nv|)
(defparameter gl::path-projection-matrix-nv cg-user::|gl_path_projection_matrix_nv|)
(defparameter gl::path-projection-nv cg-user::|gl_path_projection_nv|)
(defparameter gl::path-projection-stack-depth-nv cg-user::|gl_path_projection_stack_depth_nv|)
(defparameter gl::path-stencil-depth-offset-factor-nv cg-user::|gl_path_stencil_depth_offset_factor_nv|)
(defparameter gl::path-stencil-depth-offset-units-nv cg-user::|gl_path_stencil_depth_offset_units_nv|)
(defparameter gl::path-stencil-func-nv cg-user::|gl_path_stencil_func_nv|)
(defparameter gl::path-stencil-ref-nv cg-user::|gl_path_stencil_ref_nv|)
(defparameter gl::path-stencil-value-mask-nv cg-user::|gl_path_stencil_value_mask_nv|)
(defparameter gl::path-stroke-bounding-box-nv cg-user::|gl_path_stroke_bounding_box_nv|)
(defparameter gl::path-stroke-cover-mode-nv cg-user::|gl_path_stroke_cover_mode_nv|)
(defparameter gl::path-stroke-mask-nv cg-user::|gl_path_stroke_mask_nv|)
(defparameter gl::path-stroke-width-nv cg-user::|gl_path_stroke_width_nv|)
(defparameter gl::path-terminal-dash-cap-nv cg-user::|gl_path_terminal_dash_cap_nv|)
(defparameter gl::path-terminal-end-cap-nv cg-user::|gl_path_terminal_end_cap_nv|)
(defparameter gl::path-transpose-modelview-matrix-nv cg-user::|gl_path_transpose_modelview_matrix_nv|)
(defparameter gl::path-transpose-projection-matrix-nv cg-user::|gl_path_transpose_projection_matrix_nv|)
(defparameter gl::percentage-amd cg-user::|gl_percentage_amd|)
(defparameter gl::perfmon-global-mode-qcom cg-user::|gl_perfmon_global_mode_qcom|)
(defparameter gl::perfmon-result-amd cg-user::|gl_perfmon_result_amd|)
(defparameter gl::perfmon-result-available-amd cg-user::|gl_perfmon_result_available_amd|)
(defparameter gl::perfmon-result-size-amd cg-user::|gl_perfmon_result_size_amd|)
(defparameter gl::performance-monitor-amd cg-user::|gl_performance_monitor_amd|)
(defparameter gl::perfquery-counter-data-bool32-intel cg-user::|gl_perfquery_counter_data_bool32_intel|)
(defparameter gl::perfquery-counter-data-double-intel cg-user::|gl_perfquery_counter_data_double_intel|)
(defparameter gl::perfquery-counter-data-float-intel cg-user::|gl_perfquery_counter_data_float_intel|)
(defparameter gl::perfquery-counter-data-uint32-intel cg-user::|gl_perfquery_counter_data_uint32_intel|)
(defparameter gl::perfquery-counter-data-uint64-intel cg-user::|gl_perfquery_counter_data_uint64_intel|)
(defparameter gl::perfquery-counter-desc-length-max-intel cg-user::|gl_perfquery_counter_desc_length_max_intel|)
(defparameter gl::perfquery-counter-duration-norm-intel cg-user::|gl_perfquery_counter_duration_norm_intel|)
(defparameter gl::perfquery-counter-duration-raw-intel cg-user::|gl_perfquery_counter_duration_raw_intel|)
(defparameter gl::perfquery-counter-event-intel cg-user::|gl_perfquery_counter_event_intel|)
(defparameter gl::perfquery-counter-name-length-max-intel cg-user::|gl_perfquery_counter_name_length_max_intel|)
(defparameter gl::perfquery-counter-raw-intel cg-user::|gl_perfquery_counter_raw_intel|)
(defparameter gl::perfquery-counter-throughput-intel cg-user::|gl_perfquery_counter_throughput_intel|)
(defparameter gl::perfquery-counter-timestamp-intel cg-user::|gl_perfquery_counter_timestamp_intel|)
(defparameter gl::perfquery-donot-flush-intel cg-user::|gl_perfquery_donot_flush_intel|)
(defparameter gl::perfquery-flush-intel cg-user::|gl_perfquery_flush_intel|)
(defparameter gl::perfquery-global-context-intel cg-user::|gl_perfquery_global_context_intel|)
(defparameter gl::perfquery-gpa-extended-counters-intel cg-user::|gl_perfquery_gpa_extended_counters_intel|)
(defparameter gl::perfquery-query-name-length-max-intel cg-user::|gl_perfquery_query_name_length_max_intel|)
(defparameter gl::perfquery-single-context-intel cg-user::|gl_perfquery_single_context_intel|)
(defparameter gl::perfquery-wait-intel cg-user::|gl_perfquery_wait_intel|)
(defparameter gl::perspective-correction-hint cg-user::|gl_perspective_correction_hint|)
(defparameter gl::per-stage-constants-nv cg-user::|gl_per_stage_constants_nv|)
(defparameter gl::perturb-ext cg-user::|gl_perturb_ext|)
(defparameter gl::phong-hint-win cg-user::|gl_phong_hint_win|)
(defparameter gl::phong-win cg-user::|gl_phong_win|)
(defparameter gl::pinlight-nv cg-user::|gl_pinlight_nv|)
(defparameter gl::pixel-buffer-barrier-bit cg-user::|gl_pixel_buffer_barrier_bit|)
(defparameter gl::pixel-buffer-barrier-bit-ext cg-user::|gl_pixel_buffer_barrier_bit_ext|)
(defparameter gl::pixel-count-available-nv cg-user::|gl_pixel_count_available_nv|)
(defparameter gl::pixel-counter-bits-nv cg-user::|gl_pixel_counter_bits_nv|)
(defparameter gl::pixel-count-nv cg-user::|gl_pixel_count_nv|)
(defparameter gl::pixel-cubic-weight-ext cg-user::|gl_pixel_cubic_weight_ext|)
(defparameter gl::pixel-fragment-alpha-source-sgis cg-user::|gl_pixel_fragment_alpha_source_sgis|)
(defparameter gl::pixel-fragment-rgb-source-sgis cg-user::|gl_pixel_fragment_rgb_source_sgis|)
(defparameter gl::pixel-group-color-sgis cg-user::|gl_pixel_group_color_sgis|)
(defparameter gl::pixel-mag-filter-ext cg-user::|gl_pixel_mag_filter_ext|)
(defparameter gl::pixel-map-a-to-a cg-user::|gl_pixel_map_a_to_a|)
(defparameter gl::pixel-map-a-to-a-size cg-user::|gl_pixel_map_a_to_a_size|)
(defparameter gl::pixel-map-b-to-b cg-user::|gl_pixel_map_b_to_b|)
(defparameter gl::pixel-map-b-to-b-size cg-user::|gl_pixel_map_b_to_b_size|)
(defparameter gl::pixel-map-g-to-g cg-user::|gl_pixel_map_g_to_g|)
(defparameter gl::pixel-map-g-to-g-size cg-user::|gl_pixel_map_g_to_g_size|)
(defparameter gl::pixel-map-i-to-a cg-user::|gl_pixel_map_i_to_a|)
(defparameter gl::pixel-map-i-to-a-size cg-user::|gl_pixel_map_i_to_a_size|)
(defparameter gl::pixel-map-i-to-b cg-user::|gl_pixel_map_i_to_b|)
(defparameter gl::pixel-map-i-to-b-size cg-user::|gl_pixel_map_i_to_b_size|)
(defparameter gl::pixel-map-i-to-g cg-user::|gl_pixel_map_i_to_g|)
(defparameter gl::pixel-map-i-to-g-size cg-user::|gl_pixel_map_i_to_g_size|)
(defparameter gl::pixel-map-i-to-i cg-user::|gl_pixel_map_i_to_i|)
(defparameter gl::pixel-map-i-to-i-size cg-user::|gl_pixel_map_i_to_i_size|)
(defparameter gl::pixel-map-i-to-r cg-user::|gl_pixel_map_i_to_r|)
(defparameter gl::pixel-map-i-to-r-size cg-user::|gl_pixel_map_i_to_r_size|)
(defparameter gl::pixel-map-r-to-r cg-user::|gl_pixel_map_r_to_r|)
(defparameter gl::pixel-map-r-to-r-size cg-user::|gl_pixel_map_r_to_r_size|)
(defparameter gl::pixel-map-s-to-s cg-user::|gl_pixel_map_s_to_s|)
(defparameter gl::pixel-map-s-to-s-size cg-user::|gl_pixel_map_s_to_s_size|)
(defparameter gl::pixel-min-filter-ext cg-user::|gl_pixel_min_filter_ext|)
(defparameter gl::pixel-mode-bit cg-user::|gl_pixel_mode_bit|)
(defparameter gl::pixel-pack-buffer cg-user::|gl_pixel_pack_buffer|)
(defparameter gl::pixel-pack-buffer-arb cg-user::|gl_pixel_pack_buffer_arb|)
(defparameter gl::pixel-pack-buffer-binding cg-user::|gl_pixel_pack_buffer_binding|)
(defparameter gl::pixel-pack-buffer-binding-arb cg-user::|gl_pixel_pack_buffer_binding_arb|)
(defparameter gl::pixel-pack-buffer-binding-ext cg-user::|gl_pixel_pack_buffer_binding_ext|)
(defparameter gl::pixel-pack-buffer-ext cg-user::|gl_pixel_pack_buffer_ext|)
(defparameter gl::pixel-subsample-2424-sgix cg-user::|gl_pixel_subsample_2424_sgix|)
(defparameter gl::pixel-subsample-4242-sgix cg-user::|gl_pixel_subsample_4242_sgix|)
(defparameter gl::pixel-subsample-4444-sgix cg-user::|gl_pixel_subsample_4444_sgix|)
(defparameter gl::pixel-tex-gen-alpha-ls-sgix cg-user::|gl_pixel_tex_gen_alpha_ls_sgix|)
(defparameter gl::pixel-tex-gen-alpha-ms-sgix cg-user::|gl_pixel_tex_gen_alpha_ms_sgix|)
(defparameter gl::pixel-tex-gen-alpha-no-replace-sgix cg-user::|gl_pixel_tex_gen_alpha_no_replace_sgix|)
(defparameter gl::pixel-tex-gen-alpha-replace-sgix cg-user::|gl_pixel_tex_gen_alpha_replace_sgix|)
(defparameter gl::pixel-tex-gen-mode-sgix cg-user::|gl_pixel_tex_gen_mode_sgix|)
(defparameter gl::pixel-tex-gen-q-ceiling-sgix cg-user::|gl_pixel_tex_gen_q_ceiling_sgix|)
(defparameter gl::pixel-tex-gen-q-floor-sgix cg-user::|gl_pixel_tex_gen_q_floor_sgix|)
(defparameter gl::pixel-tex-gen-q-round-sgix cg-user::|gl_pixel_tex_gen_q_round_sgix|)
(defparameter gl::pixel-tex-gen-sgix cg-user::|gl_pixel_tex_gen_sgix|)
(defparameter gl::pixel-texture-sgis cg-user::|gl_pixel_texture_sgis|)
(defparameter gl::pixel-tile-best-alignment-sgix cg-user::|gl_pixel_tile_best_alignment_sgix|)
(defparameter gl::pixel-tile-cache-increment-sgix cg-user::|gl_pixel_tile_cache_increment_sgix|)
(defparameter gl::pixel-tile-cache-size-sgix cg-user::|gl_pixel_tile_cache_size_sgix|)
(defparameter gl::pixel-tile-grid-depth-sgix cg-user::|gl_pixel_tile_grid_depth_sgix|)
(defparameter gl::pixel-tile-grid-height-sgix cg-user::|gl_pixel_tile_grid_height_sgix|)
(defparameter gl::pixel-tile-grid-width-sgix cg-user::|gl_pixel_tile_grid_width_sgix|)
(defparameter gl::pixel-tile-height-sgix cg-user::|gl_pixel_tile_height_sgix|)
(defparameter gl::pixel-tile-width-sgix cg-user::|gl_pixel_tile_width_sgix|)
(defparameter gl::pixel-transform-2d-ext cg-user::|gl_pixel_transform_2d_ext|)
(defparameter gl::pixel-transform-2d-matrix-ext cg-user::|gl_pixel_transform_2d_matrix_ext|)
(defparameter gl::pixel-transform-2d-stack-depth-ext cg-user::|gl_pixel_transform_2d_stack_depth_ext|)
(defparameter gl::pixel-unpack-buffer cg-user::|gl_pixel_unpack_buffer|)
(defparameter gl::pixel-unpack-buffer-arb cg-user::|gl_pixel_unpack_buffer_arb|)
(defparameter gl::pixel-unpack-buffer-binding cg-user::|gl_pixel_unpack_buffer_binding|)
(defparameter gl::pixel-unpack-buffer-binding-arb cg-user::|gl_pixel_unpack_buffer_binding_arb|)
(defparameter gl::pixel-unpack-buffer-binding-ext cg-user::|gl_pixel_unpack_buffer_binding_ext|)
(defparameter gl::pixel-unpack-buffer-ext cg-user::|gl_pixel_unpack_buffer_ext|)
(defparameter gl::plus-clamped-alpha-nv cg-user::|gl_plus_clamped_alpha_nv|)
(defparameter gl::plus-clamped-nv cg-user::|gl_plus_clamped_nv|)
(defparameter gl::plus-darker-nv cg-user::|gl_plus_darker_nv|)
(defparameter gl::plus-nv cg-user::|gl_plus_nv|)
(defparameter gl::pn-triangles-ati cg-user::|gl_pn_triangles_ati|)
(defparameter gl::pn-triangles-normal-mode-ati cg-user::|gl_pn_triangles_normal_mode_ati|)
(defparameter gl::pn-triangles-normal-mode-linear-ati cg-user::|gl_pn_triangles_normal_mode_linear_ati|)
(defparameter gl::pn-triangles-normal-mode-quadratic-ati cg-user::|gl_pn_triangles_normal_mode_quadratic_ati|)
(defparameter gl::pn-triangles-point-mode-ati cg-user::|gl_pn_triangles_point_mode_ati|)
(defparameter gl::pn-triangles-point-mode-cubic-ati cg-user::|gl_pn_triangles_point_mode_cubic_ati|)
(defparameter gl::pn-triangles-point-mode-linear-ati cg-user::|gl_pn_triangles_point_mode_linear_ati|)
(defparameter gl::pn-triangles-tesselation-level-ati cg-user::|gl_pn_triangles_tesselation_level_ati|)
(defparameter gl::point cg-user::|gl_point|)
(defparameter gl::point-bit cg-user::|gl_point_bit|)
(defparameter gl::point-distance-attenuation cg-user::|gl_point_distance_attenuation|)
(defparameter gl::point-distance-attenuation-arb cg-user::|gl_point_distance_attenuation_arb|)
(defparameter gl::point-fade-threshold-size cg-user::|gl_point_fade_threshold_size|)
(defparameter gl::point-fade-threshold-size-arb cg-user::|gl_point_fade_threshold_size_arb|)
(defparameter gl::point-fade-threshold-size-ext cg-user::|gl_point_fade_threshold_size_ext|)
(defparameter gl::point-fade-threshold-size-sgis cg-user::|gl_point_fade_threshold_size_sgis|)
(defparameter gl::point-nv cg-user::|gl_point_nv|)
(defparameter gl::points cg-user::|gl_points|)
(defparameter gl::point-size cg-user::|gl_point_size|)
(defparameter gl::point-size-array-buffer-binding-oes cg-user::|gl_point_size_array_buffer_binding_oes|)
(defparameter gl::point-size-array-oes cg-user::|gl_point_size_array_oes|)
(defparameter gl::point-size-array-pointer-oes cg-user::|gl_point_size_array_pointer_oes|)
(defparameter gl::point-size-array-stride-oes cg-user::|gl_point_size_array_stride_oes|)
(defparameter gl::point-size-array-type-oes cg-user::|gl_point_size_array_type_oes|)
(defparameter gl::point-size-granularity cg-user::|gl_point_size_granularity|)
(defparameter gl::point-size-max cg-user::|gl_point_size_max|)
(defparameter gl::point-size-max-arb cg-user::|gl_point_size_max_arb|)
(defparameter gl::point-size-max-ext cg-user::|gl_point_size_max_ext|)
(defparameter gl::point-size-max-sgis cg-user::|gl_point_size_max_sgis|)
(defparameter gl::point-size-min cg-user::|gl_point_size_min|)
(defparameter gl::point-size-min-arb cg-user::|gl_point_size_min_arb|)
(defparameter gl::point-size-min-ext cg-user::|gl_point_size_min_ext|)
(defparameter gl::point-size-min-sgis cg-user::|gl_point_size_min_sgis|)
(defparameter gl::point-size-range cg-user::|gl_point_size_range|)
(defparameter gl::point-smooth cg-user::|gl_point_smooth|)
(defparameter gl::point-smooth-hint cg-user::|gl_point_smooth_hint|)
(defparameter gl::point-sprite cg-user::|gl_point_sprite|)
(defparameter gl::point-sprite-arb cg-user::|gl_point_sprite_arb|)
(defparameter gl::point-sprite-coord-origin cg-user::|gl_point_sprite_coord_origin|)
(defparameter gl::point-sprite-nv cg-user::|gl_point_sprite_nv|)
(defparameter gl::point-sprite-oes cg-user::|gl_point_sprite_oes|)
(defparameter gl::point-sprite-r-mode-nv cg-user::|gl_point_sprite_r_mode_nv|)
(defparameter gl::point-token cg-user::|gl_point_token|)
(defparameter gl::polygon cg-user::|gl_polygon|)
(defparameter gl::polygon-bit cg-user::|gl_polygon_bit|)
(defparameter gl::polygon-mode cg-user::|gl_polygon_mode|)
(defparameter gl::polygon-mode-nv cg-user::|gl_polygon_mode_nv|)
(defparameter gl::polygon-offset-bias-ext cg-user::|gl_polygon_offset_bias_ext|)
(defparameter gl::polygon-offset-clamp-ext cg-user::|gl_polygon_offset_clamp_ext|)
(defparameter gl::polygon-offset-command-nv cg-user::|gl_polygon_offset_command_nv|)
(defparameter gl::polygon-offset-ext cg-user::|gl_polygon_offset_ext|)
(defparameter gl::polygon-offset-factor cg-user::|gl_polygon_offset_factor|)
(defparameter gl::polygon-offset-factor-ext cg-user::|gl_polygon_offset_factor_ext|)
(defparameter gl::polygon-offset-fill cg-user::|gl_polygon_offset_fill|)
(defparameter gl::polygon-offset-line cg-user::|gl_polygon_offset_line|)
(defparameter gl::polygon-offset-line-nv cg-user::|gl_polygon_offset_line_nv|)
(defparameter gl::polygon-offset-point cg-user::|gl_polygon_offset_point|)
(defparameter gl::polygon-offset-point-nv cg-user::|gl_polygon_offset_point_nv|)
(defparameter gl::polygon-offset-units cg-user::|gl_polygon_offset_units|)
(defparameter gl::polygon-smooth cg-user::|gl_polygon_smooth|)
(defparameter gl::polygon-smooth-hint cg-user::|gl_polygon_smooth_hint|)
(defparameter gl::polygon-stipple cg-user::|gl_polygon_stipple|)
(defparameter gl::polygon-stipple-bit cg-user::|gl_polygon_stipple_bit|)
(defparameter gl::polygon-token cg-user::|gl_polygon_token|)
(defparameter gl::position cg-user::|gl_position|)
(defparameter gl::post-color-matrix-alpha-bias cg-user::|gl_post_color_matrix_alpha_bias|)
(defparameter gl::post-color-matrix-alpha-bias-sgi cg-user::|gl_post_color_matrix_alpha_bias_sgi|)
(defparameter gl::post-color-matrix-alpha-scale cg-user::|gl_post_color_matrix_alpha_scale|)
(defparameter gl::post-color-matrix-alpha-scale-sgi cg-user::|gl_post_color_matrix_alpha_scale_sgi|)
(defparameter gl::post-color-matrix-blue-bias cg-user::|gl_post_color_matrix_blue_bias|)
(defparameter gl::post-color-matrix-blue-bias-sgi cg-user::|gl_post_color_matrix_blue_bias_sgi|)
(defparameter gl::post-color-matrix-blue-scale cg-user::|gl_post_color_matrix_blue_scale|)
(defparameter gl::post-color-matrix-blue-scale-sgi cg-user::|gl_post_color_matrix_blue_scale_sgi|)
(defparameter gl::post-color-matrix-color-table cg-user::|gl_post_color_matrix_color_table|)
(defparameter gl::post-color-matrix-color-table-sgi cg-user::|gl_post_color_matrix_color_table_sgi|)
(defparameter gl::post-color-matrix-green-bias cg-user::|gl_post_color_matrix_green_bias|)
(defparameter gl::post-color-matrix-green-bias-sgi cg-user::|gl_post_color_matrix_green_bias_sgi|)
(defparameter gl::post-color-matrix-green-scale cg-user::|gl_post_color_matrix_green_scale|)
(defparameter gl::post-color-matrix-green-scale-sgi cg-user::|gl_post_color_matrix_green_scale_sgi|)
(defparameter gl::post-color-matrix-red-bias cg-user::|gl_post_color_matrix_red_bias|)
(defparameter gl::post-color-matrix-red-bias-sgi cg-user::|gl_post_color_matrix_red_bias_sgi|)
(defparameter gl::post-color-matrix-red-scale cg-user::|gl_post_color_matrix_red_scale|)
(defparameter gl::post-color-matrix-red-scale-sgi cg-user::|gl_post_color_matrix_red_scale_sgi|)
(defparameter gl::post-convolution-alpha-bias cg-user::|gl_post_convolution_alpha_bias|)
(defparameter gl::post-convolution-alpha-bias-ext cg-user::|gl_post_convolution_alpha_bias_ext|)
(defparameter gl::post-convolution-alpha-scale cg-user::|gl_post_convolution_alpha_scale|)
(defparameter gl::post-convolution-alpha-scale-ext cg-user::|gl_post_convolution_alpha_scale_ext|)
(defparameter gl::post-convolution-blue-bias cg-user::|gl_post_convolution_blue_bias|)
(defparameter gl::post-convolution-blue-bias-ext cg-user::|gl_post_convolution_blue_bias_ext|)
(defparameter gl::post-convolution-blue-scale cg-user::|gl_post_convolution_blue_scale|)
(defparameter gl::post-convolution-blue-scale-ext cg-user::|gl_post_convolution_blue_scale_ext|)
(defparameter gl::post-convolution-color-table cg-user::|gl_post_convolution_color_table|)
(defparameter gl::post-convolution-color-table-sgi cg-user::|gl_post_convolution_color_table_sgi|)
(defparameter gl::post-convolution-green-bias cg-user::|gl_post_convolution_green_bias|)
(defparameter gl::post-convolution-green-bias-ext cg-user::|gl_post_convolution_green_bias_ext|)
(defparameter gl::post-convolution-green-scale cg-user::|gl_post_convolution_green_scale|)
(defparameter gl::post-convolution-green-scale-ext cg-user::|gl_post_convolution_green_scale_ext|)
(defparameter gl::post-convolution-red-bias cg-user::|gl_post_convolution_red_bias|)
(defparameter gl::post-convolution-red-bias-ext cg-user::|gl_post_convolution_red_bias_ext|)
(defparameter gl::post-convolution-red-scale cg-user::|gl_post_convolution_red_scale|)
(defparameter gl::post-convolution-red-scale-ext cg-user::|gl_post_convolution_red_scale_ext|)
(defparameter gl::post-image-transform-color-table-hp cg-user::|gl_post_image_transform_color_table_hp|)
(defparameter gl::post-texture-filter-bias-range-sgix cg-user::|gl_post_texture_filter_bias_range_sgix|)
(defparameter gl::post-texture-filter-bias-sgix cg-user::|gl_post_texture_filter_bias_sgix|)
(defparameter gl::post-texture-filter-scale-range-sgix cg-user::|gl_post_texture_filter_scale_range_sgix|)
(defparameter gl::post-texture-filter-scale-sgix cg-user::|gl_post_texture_filter_scale_sgix|)
(defparameter gl::prefer-doublebuffer-hint-pgi cg-user::|gl_prefer_doublebuffer_hint_pgi|)
(defparameter gl::present-duration-nv cg-user::|gl_present_duration_nv|)
(defparameter gl::present-time-nv cg-user::|gl_present_time_nv|)
(defparameter gl::preserve-ati cg-user::|gl_preserve_ati|)
(defparameter gl::previous cg-user::|gl_previous|)
(defparameter gl::previous-arb cg-user::|gl_previous_arb|)
(defparameter gl::previous-ext cg-user::|gl_previous_ext|)
(defparameter gl::previous-texture-input-nv cg-user::|gl_previous_texture_input_nv|)
(defparameter gl::primary-color cg-user::|gl_primary_color|)
(defparameter gl::primary-color-arb cg-user::|gl_primary_color_arb|)
(defparameter gl::primary-color-ext cg-user::|gl_primary_color_ext|)
(defparameter gl::primary-color-nv cg-user::|gl_primary_color_nv|)
(defparameter gl::primitive-bounding-box cg-user::|gl_primitive_bounding_box|)
(defparameter gl::primitive-bounding-box-arb cg-user::|gl_primitive_bounding_box_arb|)
(defparameter gl::primitive-bounding-box-ext cg-user::|gl_primitive_bounding_box_ext|)
(defparameter gl::primitive-bounding-box-oes cg-user::|gl_primitive_bounding_box_oes|)
(defparameter gl::primitive-id-nv cg-user::|gl_primitive_id_nv|)
(defparameter gl::primitive-restart cg-user::|gl_primitive_restart|)
(defparameter gl::primitive-restart-fixed-index cg-user::|gl_primitive_restart_fixed_index|)
(defparameter gl::primitive-restart-for-patches-supported cg-user::|gl_primitive_restart_for_patches_supported|)
(defparameter gl::primitive-restart-for-patches-supported-oes cg-user::|gl_primitive_restart_for_patches_supported_oes|)
(defparameter gl::primitive-restart-index cg-user::|gl_primitive_restart_index|)
(defparameter gl::primitive-restart-index-nv cg-user::|gl_primitive_restart_index_nv|)
(defparameter gl::primitive-restart-nv cg-user::|gl_primitive_restart_nv|)
(defparameter gl::primitives-generated cg-user::|gl_primitives_generated|)
(defparameter gl::primitives-generated-ext cg-user::|gl_primitives_generated_ext|)
(defparameter gl::primitives-generated-nv cg-user::|gl_primitives_generated_nv|)
(defparameter gl::primitives-generated-oes cg-user::|gl_primitives_generated_oes|)
(defparameter gl::primitives-submitted-arb cg-user::|gl_primitives_submitted_arb|)
(defparameter gl::program cg-user::|gl_program|)
(defparameter gl::program-address-registers-arb cg-user::|gl_program_address_registers_arb|)
(defparameter gl::program-alu-instructions-arb cg-user::|gl_program_alu_instructions_arb|)
(defparameter gl::program-attrib-components-nv cg-user::|gl_program_attrib_components_nv|)
(defparameter gl::program-attribs-arb cg-user::|gl_program_attribs_arb|)
(defparameter gl::program-binary-angle cg-user::|gl_program_binary_angle|)
(defparameter gl::program-binary-formats cg-user::|gl_program_binary_formats|)
(defparameter gl::program-binary-formats-oes cg-user::|gl_program_binary_formats_oes|)
(defparameter gl::program-binary-length cg-user::|gl_program_binary_length|)
(defparameter gl::program-binary-length-oes cg-user::|gl_program_binary_length_oes|)
(defparameter gl::program-binary-retrievable-hint cg-user::|gl_program_binary_retrievable_hint|)
(defparameter gl::program-binding-arb cg-user::|gl_program_binding_arb|)
(defparameter gl::program-error-position-arb cg-user::|gl_program_error_position_arb|)
(defparameter gl::program-error-position-nv cg-user::|gl_program_error_position_nv|)
(defparameter gl::program-error-string-arb cg-user::|gl_program_error_string_arb|)
(defparameter gl::program-error-string-nv cg-user::|gl_program_error_string_nv|)
(defparameter gl::program-format-arb cg-user::|gl_program_format_arb|)
(defparameter gl::program-format-ascii-arb cg-user::|gl_program_format_ascii_arb|)
(defparameter gl::program-input cg-user::|gl_program_input|)
(defparameter gl::program-instructions-arb cg-user::|gl_program_instructions_arb|)
(defparameter gl::program-khr cg-user::|gl_program_khr|)
(defparameter gl::program-length-arb cg-user::|gl_program_length_arb|)
(defparameter gl::program-length-nv cg-user::|gl_program_length_nv|)
(defparameter gl::programmable-sample-location-arb cg-user::|gl_programmable_sample_location_arb|)
(defparameter gl::programmable-sample-location-nv cg-user::|gl_programmable_sample_location_nv|)
(defparameter gl::programmable-sample-location-table-size-arb cg-user::|gl_programmable_sample_location_table_size_arb|)
(defparameter gl::programmable-sample-location-table-size-nv cg-user::|gl_programmable_sample_location_table_size_nv|)
(defparameter gl::program-matrix-ext cg-user::|gl_program_matrix_ext|)
(defparameter gl::program-matrix-stack-depth-ext cg-user::|gl_program_matrix_stack_depth_ext|)
(defparameter gl::program-native-address-registers-arb cg-user::|gl_program_native_address_registers_arb|)
(defparameter gl::program-native-alu-instructions-arb cg-user::|gl_program_native_alu_instructions_arb|)
(defparameter gl::program-native-attribs-arb cg-user::|gl_program_native_attribs_arb|)
(defparameter gl::program-native-instructions-arb cg-user::|gl_program_native_instructions_arb|)
(defparameter gl::program-native-parameters-arb cg-user::|gl_program_native_parameters_arb|)
(defparameter gl::program-native-temporaries-arb cg-user::|gl_program_native_temporaries_arb|)
(defparameter gl::program-native-tex-indirections-arb cg-user::|gl_program_native_tex_indirections_arb|)
(defparameter gl::program-native-tex-instructions-arb cg-user::|gl_program_native_tex_instructions_arb|)
(defparameter gl::program-object-arb cg-user::|gl_program_object_arb|)
(defparameter gl::program-object-ext cg-user::|gl_program_object_ext|)
(defparameter gl::program-output cg-user::|gl_program_output|)
(defparameter gl::program-parameter-nv cg-user::|gl_program_parameter_nv|)
(defparameter gl::program-parameters-arb cg-user::|gl_program_parameters_arb|)
(defparameter gl::program-pipeline cg-user::|gl_program_pipeline|)
(defparameter gl::program-pipeline-binding cg-user::|gl_program_pipeline_binding|)
(defparameter gl::program-pipeline-binding-ext cg-user::|gl_program_pipeline_binding_ext|)
(defparameter gl::program-pipeline-khr cg-user::|gl_program_pipeline_khr|)
(defparameter gl::program-pipeline-object-ext cg-user::|gl_program_pipeline_object_ext|)
(defparameter gl::program-point-size cg-user::|gl_program_point_size|)
(defparameter gl::program-point-size-arb cg-user::|gl_program_point_size_arb|)
(defparameter gl::program-point-size-ext cg-user::|gl_program_point_size_ext|)
(defparameter gl::program-resident-nv cg-user::|gl_program_resident_nv|)
(defparameter gl::program-result-components-nv cg-user::|gl_program_result_components_nv|)
(defparameter gl::program-separable cg-user::|gl_program_separable|)
(defparameter gl::program-separable-ext cg-user::|gl_program_separable_ext|)
(defparameter gl::program-string-arb cg-user::|gl_program_string_arb|)
(defparameter gl::program-string-nv cg-user::|gl_program_string_nv|)
(defparameter gl::program-target-nv cg-user::|gl_program_target_nv|)
(defparameter gl::program-temporaries-arb cg-user::|gl_program_temporaries_arb|)
(defparameter gl::program-tex-indirections-arb cg-user::|gl_program_tex_indirections_arb|)
(defparameter gl::program-tex-instructions-arb cg-user::|gl_program_tex_instructions_arb|)
(defparameter gl::program-under-native-limits-arb cg-user::|gl_program_under_native_limits_arb|)
(defparameter gl::projection cg-user::|gl_projection|)
(defparameter gl::projection-matrix cg-user::|gl_projection_matrix|)
(defparameter gl::projection-matrix-float-as-int-bits-oes cg-user::|gl_projection_matrix_float_as_int_bits_oes|)
(defparameter gl::projection-stack-depth cg-user::|gl_projection_stack_depth|)
(defparameter gl::provoking-vertex cg-user::|gl_provoking_vertex|)
(defparameter gl::provoking-vertex-ext cg-user::|gl_provoking_vertex_ext|)
(defparameter gl::proxy-color-table cg-user::|gl_proxy_color_table|)
(defparameter gl::proxy-color-table-sgi cg-user::|gl_proxy_color_table_sgi|)
(defparameter gl::proxy-histogram cg-user::|gl_proxy_histogram|)
(defparameter gl::proxy-histogram-ext cg-user::|gl_proxy_histogram_ext|)
(defparameter gl::proxy-post-color-matrix-color-table cg-user::|gl_proxy_post_color_matrix_color_table|)
(defparameter gl::proxy-post-color-matrix-color-table-sgi cg-user::|gl_proxy_post_color_matrix_color_table_sgi|)
(defparameter gl::proxy-post-convolution-color-table cg-user::|gl_proxy_post_convolution_color_table|)
(defparameter gl::proxy-post-convolution-color-table-sgi cg-user::|gl_proxy_post_convolution_color_table_sgi|)
(defparameter gl::proxy-post-image-transform-color-table-hp cg-user::|gl_proxy_post_image_transform_color_table_hp|)
(defparameter gl::proxy-texture-1d cg-user::|gl_proxy_texture_1d|)
(defparameter gl::proxy-texture-1d-array cg-user::|gl_proxy_texture_1d_array|)
(defparameter gl::proxy-texture-1d-array-ext cg-user::|gl_proxy_texture_1d_array_ext|)
(defparameter gl::proxy-texture-1d-ext cg-user::|gl_proxy_texture_1d_ext|)
(defparameter gl::proxy-texture-1d-stack-mesax cg-user::|gl_proxy_texture_1d_stack_mesax|)
(defparameter gl::proxy-texture-2d cg-user::|gl_proxy_texture_2d|)
(defparameter gl::proxy-texture-2d-array cg-user::|gl_proxy_texture_2d_array|)
(defparameter gl::proxy-texture-2d-array-ext cg-user::|gl_proxy_texture_2d_array_ext|)
(defparameter gl::proxy-texture-2d-ext cg-user::|gl_proxy_texture_2d_ext|)
(defparameter gl::proxy-texture-2d-multisample cg-user::|gl_proxy_texture_2d_multisample|)
(defparameter gl::proxy-texture-2d-multisample-array cg-user::|gl_proxy_texture_2d_multisample_array|)
(defparameter gl::proxy-texture-2d-stack-mesax cg-user::|gl_proxy_texture_2d_stack_mesax|)
(defparameter gl::proxy-texture-3d cg-user::|gl_proxy_texture_3d|)
(defparameter gl::proxy-texture-3d-ext cg-user::|gl_proxy_texture_3d_ext|)
(defparameter gl::proxy-texture-4d-sgis cg-user::|gl_proxy_texture_4d_sgis|)
(defparameter gl::proxy-texture-color-table-sgi cg-user::|gl_proxy_texture_color_table_sgi|)
(defparameter gl::proxy-texture-cube-map cg-user::|gl_proxy_texture_cube_map|)
(defparameter gl::proxy-texture-cube-map-arb cg-user::|gl_proxy_texture_cube_map_arb|)
(defparameter gl::proxy-texture-cube-map-array cg-user::|gl_proxy_texture_cube_map_array|)
(defparameter gl::proxy-texture-cube-map-array-arb cg-user::|gl_proxy_texture_cube_map_array_arb|)
(defparameter gl::proxy-texture-cube-map-ext cg-user::|gl_proxy_texture_cube_map_ext|)
(defparameter gl::proxy-texture-rectangle cg-user::|gl_proxy_texture_rectangle|)
(defparameter gl::proxy-texture-rectangle-arb cg-user::|gl_proxy_texture_rectangle_arb|)
(defparameter gl::proxy-texture-rectangle-nv cg-user::|gl_proxy_texture_rectangle_nv|)
(defparameter gl::purgeable-apple cg-user::|gl_purgeable_apple|)
(defparameter gl::q cg-user::|gl_q|)
(defparameter gl::quad-alpha4-sgis cg-user::|gl_quad_alpha4_sgis|)
(defparameter gl::quad-alpha8-sgis cg-user::|gl_quad_alpha8_sgis|)
(defparameter gl::quad-intensity4-sgis cg-user::|gl_quad_intensity4_sgis|)
(defparameter gl::quad-intensity8-sgis cg-user::|gl_quad_intensity8_sgis|)
(defparameter gl::quad-luminance4-sgis cg-user::|gl_quad_luminance4_sgis|)
(defparameter gl::quad-luminance8-sgis cg-user::|gl_quad_luminance8_sgis|)
(defparameter gl::quad-mesh-sun cg-user::|gl_quad_mesh_sun|)
(defparameter gl::quadratic-attenuation cg-user::|gl_quadratic_attenuation|)
(defparameter gl::quadratic-curve-to-nv cg-user::|gl_quadratic_curve_to_nv|)
(defparameter gl::quads cg-user::|gl_quads|)
(defparameter gl::quads-ext cg-user::|gl_quads_ext|)
(defparameter gl::quads-follow-provoking-vertex-convention cg-user::|gl_quads_follow_provoking_vertex_convention|)
(defparameter gl::quads-follow-provoking-vertex-convention-ext cg-user::|gl_quads_follow_provoking_vertex_convention_ext|)
(defparameter gl::quads-oes cg-user::|gl_quads_oes|)
(defparameter gl::quad-strip cg-user::|gl_quad_strip|)
(defparameter gl::quad-texture-select-sgis cg-user::|gl_quad_texture_select_sgis|)
(defparameter gl::quarter-bit-ati cg-user::|gl_quarter_bit_ati|)
(defparameter gl::query cg-user::|gl_query|)
(defparameter gl::query-all-event-bits-amd cg-user::|gl_query_all_event_bits_amd|)
(defparameter gl::query-buffer cg-user::|gl_query_buffer|)
(defparameter gl::query-buffer-amd cg-user::|gl_query_buffer_amd|)
(defparameter gl::query-buffer-barrier-bit cg-user::|gl_query_buffer_barrier_bit|)
(defparameter gl::query-buffer-binding cg-user::|gl_query_buffer_binding|)
(defparameter gl::query-buffer-binding-amd cg-user::|gl_query_buffer_binding_amd|)
(defparameter gl::query-by-region-no-wait cg-user::|gl_query_by_region_no_wait|)
(defparameter gl::query-by-region-no-wait-inverted cg-user::|gl_query_by_region_no_wait_inverted|)
(defparameter gl::query-by-region-no-wait-nv cg-user::|gl_query_by_region_no_wait_nv|)
(defparameter gl::query-by-region-wait cg-user::|gl_query_by_region_wait|)
(defparameter gl::query-by-region-wait-inverted cg-user::|gl_query_by_region_wait_inverted|)
(defparameter gl::query-by-region-wait-nv cg-user::|gl_query_by_region_wait_nv|)
(defparameter gl::query-counter-bits cg-user::|gl_query_counter_bits|)
(defparameter gl::query-counter-bits-arb cg-user::|gl_query_counter_bits_arb|)
(defparameter gl::query-counter-bits-ext cg-user::|gl_query_counter_bits_ext|)
(defparameter gl::query-depth-bounds-fail-event-bit-amd cg-user::|gl_query_depth_bounds_fail_event_bit_amd|)
(defparameter gl::query-depth-fail-event-bit-amd cg-user::|gl_query_depth_fail_event_bit_amd|)
(defparameter gl::query-depth-pass-event-bit-amd cg-user::|gl_query_depth_pass_event_bit_amd|)
(defparameter gl::query-khr cg-user::|gl_query_khr|)
(defparameter gl::query-no-wait cg-user::|gl_query_no_wait|)
(defparameter gl::query-no-wait-inverted cg-user::|gl_query_no_wait_inverted|)
(defparameter gl::query-no-wait-nv cg-user::|gl_query_no_wait_nv|)
(defparameter gl::query-object-amd cg-user::|gl_query_object_amd|)
(defparameter gl::query-object-ext cg-user::|gl_query_object_ext|)
(defparameter gl::query-result cg-user::|gl_query_result|)
(defparameter gl::query-result-arb cg-user::|gl_query_result_arb|)
(defparameter gl::query-result-available cg-user::|gl_query_result_available|)
(defparameter gl::query-result-available-arb cg-user::|gl_query_result_available_arb|)
(defparameter gl::query-result-available-ext cg-user::|gl_query_result_available_ext|)
(defparameter gl::query-result-ext cg-user::|gl_query_result_ext|)
(defparameter gl::query-result-no-wait cg-user::|gl_query_result_no_wait|)
(defparameter gl::query-result-no-wait-amd cg-user::|gl_query_result_no_wait_amd|)
(defparameter gl::query-stencil-fail-event-bit-amd cg-user::|gl_query_stencil_fail_event_bit_amd|)
(defparameter gl::query-target cg-user::|gl_query_target|)
(defparameter gl::query-wait cg-user::|gl_query_wait|)
(defparameter gl::query-wait-inverted cg-user::|gl_query_wait_inverted|)
(defparameter gl::query-wait-nv cg-user::|gl_query_wait_nv|)
(defparameter gl::r cg-user::|gl_r|)
(defparameter gl::r11f-g11f-b10f cg-user::|gl_r11f_g11f_b10f|)
(defparameter gl::r11f-g11f-b10f-apple cg-user::|gl_r11f_g11f_b10f_apple|)
(defparameter gl::r11f-g11f-b10f-ext cg-user::|gl_r11f_g11f_b10f_ext|)
(defparameter gl::r16 cg-user::|gl_r16|)
(defparameter gl::r16-ext cg-user::|gl_r16_ext|)
(defparameter gl::r16f cg-user::|gl_r16f|)
(defparameter gl::r16f-ext cg-user::|gl_r16f_ext|)
(defparameter gl::r16i cg-user::|gl_r16i|)
(defparameter gl::r16-snorm cg-user::|gl_r16_snorm|)
(defparameter gl::r16-snorm-ext cg-user::|gl_r16_snorm_ext|)
(defparameter gl::r16ui cg-user::|gl_r16ui|)
(defparameter gl::r1ui-c3f-v3f-sun cg-user::|gl_r1ui_c3f_v3f_sun|)
(defparameter gl::r1ui-c4f-n3f-v3f-sun cg-user::|gl_r1ui_c4f_n3f_v3f_sun|)
(defparameter gl::r1ui-c4ub-v3f-sun cg-user::|gl_r1ui_c4ub_v3f_sun|)
(defparameter gl::r1ui-n3f-v3f-sun cg-user::|gl_r1ui_n3f_v3f_sun|)
(defparameter gl::r1ui-t2f-c4f-n3f-v3f-sun cg-user::|gl_r1ui_t2f_c4f_n3f_v3f_sun|)
(defparameter gl::r1ui-t2f-n3f-v3f-sun cg-user::|gl_r1ui_t2f_n3f_v3f_sun|)
(defparameter gl::r1ui-t2f-v3f-sun cg-user::|gl_r1ui_t2f_v3f_sun|)
(defparameter gl::r1ui-v3f-sun cg-user::|gl_r1ui_v3f_sun|)
(defparameter gl::r32f cg-user::|gl_r32f|)
(defparameter gl::r32f-ext cg-user::|gl_r32f_ext|)
(defparameter gl::r32i cg-user::|gl_r32i|)
(defparameter gl::r32ui cg-user::|gl_r32ui|)
(defparameter gl::r3-g3-b2 cg-user::|gl_r3_g3_b2|)
(defparameter gl::r5-g6-b5-a8-icc-sgix cg-user::|gl_r5_g6_b5_a8_icc_sgix|)
(defparameter gl::r5-g6-b5-icc-sgix cg-user::|gl_r5_g6_b5_icc_sgix|)
(defparameter gl::r8 cg-user::|gl_r8|)
(defparameter gl::r8-ext cg-user::|gl_r8_ext|)
(defparameter gl::r8i cg-user::|gl_r8i|)
(defparameter gl::r8-snorm cg-user::|gl_r8_snorm|)
(defparameter gl::r8ui cg-user::|gl_r8ui|)
(defparameter gl::raster-fixed-sample-locations-ext cg-user::|gl_raster_fixed_sample_locations_ext|)
(defparameter gl::rasterizer-discard cg-user::|gl_rasterizer_discard|)
(defparameter gl::rasterizer-discard-ext cg-user::|gl_rasterizer_discard_ext|)
(defparameter gl::rasterizer-discard-nv cg-user::|gl_rasterizer_discard_nv|)
(defparameter gl::raster-multisample-ext cg-user::|gl_raster_multisample_ext|)
(defparameter gl::raster-position-unclipped-ibm cg-user::|gl_raster_position_unclipped_ibm|)
(defparameter gl::raster-samples-ext cg-user::|gl_raster_samples_ext|)
(defparameter gl::read-buffer cg-user::|gl_read_buffer|)
(defparameter gl::read-buffer-ext cg-user::|gl_read_buffer_ext|)
(defparameter gl::read-buffer-nv cg-user::|gl_read_buffer_nv|)
(defparameter gl::read-framebuffer cg-user::|gl_read_framebuffer|)
(defparameter gl::read-framebuffer-angle cg-user::|gl_read_framebuffer_angle|)
(defparameter gl::read-framebuffer-apple cg-user::|gl_read_framebuffer_apple|)
(defparameter gl::read-framebuffer-binding cg-user::|gl_read_framebuffer_binding|)
(defparameter gl::read-framebuffer-binding-angle cg-user::|gl_read_framebuffer_binding_angle|)
(defparameter gl::read-framebuffer-binding-apple cg-user::|gl_read_framebuffer_binding_apple|)
(defparameter gl::read-framebuffer-binding-ext cg-user::|gl_read_framebuffer_binding_ext|)
(defparameter gl::read-framebuffer-binding-nv cg-user::|gl_read_framebuffer_binding_nv|)
(defparameter gl::read-framebuffer-ext cg-user::|gl_read_framebuffer_ext|)
(defparameter gl::read-framebuffer-nv cg-user::|gl_read_framebuffer_nv|)
(defparameter gl::read-only cg-user::|gl_read_only|)
(defparameter gl::read-only-arb cg-user::|gl_read_only_arb|)
(defparameter gl::read-pixel-data-range-length-nv cg-user::|gl_read_pixel_data_range_length_nv|)
(defparameter gl::read-pixel-data-range-nv cg-user::|gl_read_pixel_data_range_nv|)
(defparameter gl::read-pixel-data-range-pointer-nv cg-user::|gl_read_pixel_data_range_pointer_nv|)
(defparameter gl::read-pixels cg-user::|gl_read_pixels|)
(defparameter gl::read-pixels-format cg-user::|gl_read_pixels_format|)
(defparameter gl::read-pixels-type cg-user::|gl_read_pixels_type|)
(defparameter gl::read-write cg-user::|gl_read_write|)
(defparameter gl::read-write-arb cg-user::|gl_read_write_arb|)
(defparameter gl::recip-add-signed-alpha-img cg-user::|gl_recip_add_signed_alpha_img|)
(defparameter gl::reclaim-memory-hint-pgi cg-user::|gl_reclaim_memory_hint_pgi|)
(defparameter gl::rect-nv cg-user::|gl_rect_nv|)
(defparameter gl::red cg-user::|gl_red|)
(defparameter gl::red-bias cg-user::|gl_red_bias|)
(defparameter gl::red-bit-ati cg-user::|gl_red_bit_ati|)
(defparameter gl::red-bits cg-user::|gl_red_bits|)
(defparameter gl::red-ext cg-user::|gl_red_ext|)
(defparameter gl::red-integer cg-user::|gl_red_integer|)
(defparameter gl::red-integer-ext cg-user::|gl_red_integer_ext|)
(defparameter gl::red-max-clamp-ingr cg-user::|gl_red_max_clamp_ingr|)
(defparameter gl::red-min-clamp-ingr cg-user::|gl_red_min_clamp_ingr|)
(defparameter gl::red-nv cg-user::|gl_red_nv|)
(defparameter gl::red-scale cg-user::|gl_red_scale|)
(defparameter gl::red-snorm cg-user::|gl_red_snorm|)
(defparameter gl::reduce cg-user::|gl_reduce|)
(defparameter gl::reduce-ext cg-user::|gl_reduce_ext|)
(defparameter gl::referenced-by-compute-shader cg-user::|gl_referenced_by_compute_shader|)
(defparameter gl::referenced-by-fragment-shader cg-user::|gl_referenced_by_fragment_shader|)
(defparameter gl::referenced-by-geometry-shader cg-user::|gl_referenced_by_geometry_shader|)
(defparameter gl::referenced-by-geometry-shader-ext cg-user::|gl_referenced_by_geometry_shader_ext|)
(defparameter gl::referenced-by-geometry-shader-oes cg-user::|gl_referenced_by_geometry_shader_oes|)
(defparameter gl::referenced-by-tess-control-shader cg-user::|gl_referenced_by_tess_control_shader|)
(defparameter gl::referenced-by-tess-control-shader-ext cg-user::|gl_referenced_by_tess_control_shader_ext|)
(defparameter gl::referenced-by-tess-control-shader-oes cg-user::|gl_referenced_by_tess_control_shader_oes|)
(defparameter gl::referenced-by-tess-evaluation-shader cg-user::|gl_referenced_by_tess_evaluation_shader|)
(defparameter gl::referenced-by-tess-evaluation-shader-ext cg-user::|gl_referenced_by_tess_evaluation_shader_ext|)
(defparameter gl::referenced-by-tess-evaluation-shader-oes cg-user::|gl_referenced_by_tess_evaluation_shader_oes|)
(defparameter gl::referenced-by-vertex-shader cg-user::|gl_referenced_by_vertex_shader|)
(defparameter gl::reference-plane-equation-sgix cg-user::|gl_reference_plane_equation_sgix|)
(defparameter gl::reference-plane-sgix cg-user::|gl_reference_plane_sgix|)
(defparameter gl::reflection-map cg-user::|gl_reflection_map|)
(defparameter gl::reflection-map-arb cg-user::|gl_reflection_map_arb|)
(defparameter gl::reflection-map-ext cg-user::|gl_reflection_map_ext|)
(defparameter gl::reflection-map-nv cg-user::|gl_reflection_map_nv|)
(defparameter gl::reflection-map-oes cg-user::|gl_reflection_map_oes|)
(defparameter gl::reg-0-ati cg-user::|gl_reg_0_ati|)
(defparameter gl::reg-10-ati cg-user::|gl_reg_10_ati|)
(defparameter gl::reg-11-ati cg-user::|gl_reg_11_ati|)
(defparameter gl::reg-12-ati cg-user::|gl_reg_12_ati|)
(defparameter gl::reg-13-ati cg-user::|gl_reg_13_ati|)
(defparameter gl::reg-14-ati cg-user::|gl_reg_14_ati|)
(defparameter gl::reg-15-ati cg-user::|gl_reg_15_ati|)
(defparameter gl::reg-16-ati cg-user::|gl_reg_16_ati|)
(defparameter gl::reg-17-ati cg-user::|gl_reg_17_ati|)
(defparameter gl::reg-18-ati cg-user::|gl_reg_18_ati|)
(defparameter gl::reg-19-ati cg-user::|gl_reg_19_ati|)
(defparameter gl::reg-1-ati cg-user::|gl_reg_1_ati|)
(defparameter gl::reg-20-ati cg-user::|gl_reg_20_ati|)
(defparameter gl::reg-21-ati cg-user::|gl_reg_21_ati|)
(defparameter gl::reg-22-ati cg-user::|gl_reg_22_ati|)
(defparameter gl::reg-23-ati cg-user::|gl_reg_23_ati|)
(defparameter gl::reg-24-ati cg-user::|gl_reg_24_ati|)
(defparameter gl::reg-25-ati cg-user::|gl_reg_25_ati|)
(defparameter gl::reg-26-ati cg-user::|gl_reg_26_ati|)
(defparameter gl::reg-27-ati cg-user::|gl_reg_27_ati|)
(defparameter gl::reg-28-ati cg-user::|gl_reg_28_ati|)
(defparameter gl::reg-29-ati cg-user::|gl_reg_29_ati|)
(defparameter gl::reg-2-ati cg-user::|gl_reg_2_ati|)
(defparameter gl::reg-30-ati cg-user::|gl_reg_30_ati|)
(defparameter gl::reg-31-ati cg-user::|gl_reg_31_ati|)
(defparameter gl::reg-3-ati cg-user::|gl_reg_3_ati|)
(defparameter gl::reg-4-ati cg-user::|gl_reg_4_ati|)
(defparameter gl::reg-5-ati cg-user::|gl_reg_5_ati|)
(defparameter gl::reg-6-ati cg-user::|gl_reg_6_ati|)
(defparameter gl::reg-7-ati cg-user::|gl_reg_7_ati|)
(defparameter gl::reg-8-ati cg-user::|gl_reg_8_ati|)
(defparameter gl::reg-9-ati cg-user::|gl_reg_9_ati|)
(defparameter gl::register-combiners-nv cg-user::|gl_register_combiners_nv|)
(defparameter gl::relative-arc-to-nv cg-user::|gl_relative_arc_to_nv|)
(defparameter gl::relative-conic-curve-to-nv cg-user::|gl_relative_conic_curve_to_nv|)
(defparameter gl::relative-cubic-curve-to-nv cg-user::|gl_relative_cubic_curve_to_nv|)
(defparameter gl::relative-horizontal-line-to-nv cg-user::|gl_relative_horizontal_line_to_nv|)
(defparameter gl::relative-large-ccw-arc-to-nv cg-user::|gl_relative_large_ccw_arc_to_nv|)
(defparameter gl::relative-large-cw-arc-to-nv cg-user::|gl_relative_large_cw_arc_to_nv|)
(defparameter gl::relative-line-to-nv cg-user::|gl_relative_line_to_nv|)
(defparameter gl::relative-move-to-nv cg-user::|gl_relative_move_to_nv|)
(defparameter gl::relative-quadratic-curve-to-nv cg-user::|gl_relative_quadratic_curve_to_nv|)
(defparameter gl::relative-rect-nv cg-user::|gl_relative_rect_nv|)
(defparameter gl::relative-rounded-rect2-nv cg-user::|gl_relative_rounded_rect2_nv|)
(defparameter gl::relative-rounded-rect4-nv cg-user::|gl_relative_rounded_rect4_nv|)
(defparameter gl::relative-rounded-rect8-nv cg-user::|gl_relative_rounded_rect8_nv|)
(defparameter gl::relative-rounded-rect-nv cg-user::|gl_relative_rounded_rect_nv|)
(defparameter gl::relative-small-ccw-arc-to-nv cg-user::|gl_relative_small_ccw_arc_to_nv|)
(defparameter gl::relative-small-cw-arc-to-nv cg-user::|gl_relative_small_cw_arc_to_nv|)
(defparameter gl::relative-smooth-cubic-curve-to-nv cg-user::|gl_relative_smooth_cubic_curve_to_nv|)
(defparameter gl::relative-smooth-quadratic-curve-to-nv cg-user::|gl_relative_smooth_quadratic_curve_to_nv|)
(defparameter gl::relative-vertical-line-to-nv cg-user::|gl_relative_vertical_line_to_nv|)
(defparameter gl::released-apple cg-user::|gl_released_apple|)
(defparameter gl::render cg-user::|gl_render|)
(defparameter gl::renderbuffer cg-user::|gl_renderbuffer|)
(defparameter gl::renderbuffer-alpha-size cg-user::|gl_renderbuffer_alpha_size|)
(defparameter gl::renderbuffer-alpha-size-ext cg-user::|gl_renderbuffer_alpha_size_ext|)
(defparameter gl::renderbuffer-alpha-size-oes cg-user::|gl_renderbuffer_alpha_size_oes|)
(defparameter gl::renderbuffer-binding cg-user::|gl_renderbuffer_binding|)
(defparameter gl::renderbuffer-binding-angle cg-user::|gl_renderbuffer_binding_angle|)
(defparameter gl::renderbuffer-binding-ext cg-user::|gl_renderbuffer_binding_ext|)
(defparameter gl::renderbuffer-binding-oes cg-user::|gl_renderbuffer_binding_oes|)
(defparameter gl::renderbuffer-blue-size cg-user::|gl_renderbuffer_blue_size|)
(defparameter gl::renderbuffer-blue-size-ext cg-user::|gl_renderbuffer_blue_size_ext|)
(defparameter gl::renderbuffer-blue-size-oes cg-user::|gl_renderbuffer_blue_size_oes|)
(defparameter gl::renderbuffer-color-samples-nv cg-user::|gl_renderbuffer_color_samples_nv|)
(defparameter gl::renderbuffer-coverage-samples-nv cg-user::|gl_renderbuffer_coverage_samples_nv|)
(defparameter gl::renderbuffer-depth-size cg-user::|gl_renderbuffer_depth_size|)
(defparameter gl::renderbuffer-depth-size-ext cg-user::|gl_renderbuffer_depth_size_ext|)
(defparameter gl::renderbuffer-depth-size-oes cg-user::|gl_renderbuffer_depth_size_oes|)
(defparameter gl::renderbuffer-ext cg-user::|gl_renderbuffer_ext|)
(defparameter gl::renderbuffer-free-memory-ati cg-user::|gl_renderbuffer_free_memory_ati|)
(defparameter gl::renderbuffer-green-size cg-user::|gl_renderbuffer_green_size|)
(defparameter gl::renderbuffer-green-size-ext cg-user::|gl_renderbuffer_green_size_ext|)
(defparameter gl::renderbuffer-green-size-oes cg-user::|gl_renderbuffer_green_size_oes|)
(defparameter gl::renderbuffer-height cg-user::|gl_renderbuffer_height|)
(defparameter gl::renderbuffer-height-ext cg-user::|gl_renderbuffer_height_ext|)
(defparameter gl::renderbuffer-height-oes cg-user::|gl_renderbuffer_height_oes|)
(defparameter gl::renderbuffer-internal-format cg-user::|gl_renderbuffer_internal_format|)
(defparameter gl::renderbuffer-internal-format-ext cg-user::|gl_renderbuffer_internal_format_ext|)
(defparameter gl::renderbuffer-internal-format-oes cg-user::|gl_renderbuffer_internal_format_oes|)
(defparameter gl::renderbuffer-oes cg-user::|gl_renderbuffer_oes|)
(defparameter gl::renderbuffer-red-size cg-user::|gl_renderbuffer_red_size|)
(defparameter gl::renderbuffer-red-size-ext cg-user::|gl_renderbuffer_red_size_ext|)
(defparameter gl::renderbuffer-red-size-oes cg-user::|gl_renderbuffer_red_size_oes|)
(defparameter gl::renderbuffer-samples cg-user::|gl_renderbuffer_samples|)
(defparameter gl::renderbuffer-samples-angle cg-user::|gl_renderbuffer_samples_angle|)
(defparameter gl::renderbuffer-samples-apple cg-user::|gl_renderbuffer_samples_apple|)
(defparameter gl::renderbuffer-samples-ext cg-user::|gl_renderbuffer_samples_ext|)
(defparameter gl::renderbuffer-samples-img cg-user::|gl_renderbuffer_samples_img|)
(defparameter gl::renderbuffer-samples-nv cg-user::|gl_renderbuffer_samples_nv|)
(defparameter gl::renderbuffer-stencil-size cg-user::|gl_renderbuffer_stencil_size|)
(defparameter gl::renderbuffer-stencil-size-ext cg-user::|gl_renderbuffer_stencil_size_ext|)
(defparameter gl::renderbuffer-stencil-size-oes cg-user::|gl_renderbuffer_stencil_size_oes|)
(defparameter gl::renderbuffer-width cg-user::|gl_renderbuffer_width|)
(defparameter gl::renderbuffer-width-ext cg-user::|gl_renderbuffer_width_ext|)
(defparameter gl::renderbuffer-width-oes cg-user::|gl_renderbuffer_width_oes|)
(defparameter gl::render-direct-to-framebuffer-qcom cg-user::|gl_render_direct_to_framebuffer_qcom|)
(defparameter gl::renderer cg-user::|gl_renderer|)
(defparameter gl::render-mode cg-user::|gl_render_mode|)
(defparameter gl::repeat cg-user::|gl_repeat|)
(defparameter gl::replace cg-user::|gl_replace|)
(defparameter gl::replace-ext cg-user::|gl_replace_ext|)
(defparameter gl::replacement-code-array-pointer-sun cg-user::|gl_replacement_code_array_pointer_sun|)
(defparameter gl::replacement-code-array-stride-sun cg-user::|gl_replacement_code_array_stride_sun|)
(defparameter gl::replacement-code-array-sun cg-user::|gl_replacement_code_array_sun|)
(defparameter gl::replacement-code-array-type-sun cg-user::|gl_replacement_code_array_type_sun|)
(defparameter gl::replacement-code-sun cg-user::|gl_replacement_code_sun|)
(defparameter gl::replace-middle-sun cg-user::|gl_replace_middle_sun|)
(defparameter gl::replace-oldest-sun cg-user::|gl_replace_oldest_sun|)
(defparameter gl::replace-value-amd cg-user::|gl_replace_value_amd|)
(defparameter gl::replicate-border cg-user::|gl_replicate_border|)
(defparameter gl::replicate-border-hp cg-user::|gl_replicate_border_hp|)
(defparameter gl::required-texture-image-units-oes cg-user::|gl_required_texture_image_units_oes|)
(defparameter gl::resample-average-oml cg-user::|gl_resample_average_oml|)
(defparameter gl::resample-decimate-oml cg-user::|gl_resample_decimate_oml|)
(defparameter gl::resample-decimate-sgix cg-user::|gl_resample_decimate_sgix|)
(defparameter gl::resample-replicate-oml cg-user::|gl_resample_replicate_oml|)
(defparameter gl::resample-replicate-sgix cg-user::|gl_resample_replicate_sgix|)
(defparameter gl::resample-zero-fill-oml cg-user::|gl_resample_zero_fill_oml|)
(defparameter gl::resample-zero-fill-sgix cg-user::|gl_resample_zero_fill_sgix|)
(defparameter gl::rescale-normal cg-user::|gl_rescale_normal|)
(defparameter gl::rescale-normal-ext cg-user::|gl_rescale_normal_ext|)
(defparameter gl::reset-notification-strategy cg-user::|gl_reset_notification_strategy|)
(defparameter gl::reset-notification-strategy-arb cg-user::|gl_reset_notification_strategy_arb|)
(defparameter gl::reset-notification-strategy-ext cg-user::|gl_reset_notification_strategy_ext|)
(defparameter gl::reset-notification-strategy-khr cg-user::|gl_reset_notification_strategy_khr|)
(defparameter gl::restart-path-nv cg-user::|gl_restart_path_nv|)
(defparameter gl::restart-sun cg-user::|gl_restart_sun|)
(defparameter gl::retained-apple cg-user::|gl_retained_apple|)
(defparameter gl::return cg-user::|gl_return|)
(defparameter gl::rg cg-user::|gl_rg|)
(defparameter gl::rg16 cg-user::|gl_rg16|)
(defparameter gl::rg16-ext cg-user::|gl_rg16_ext|)
(defparameter gl::rg16f cg-user::|gl_rg16f|)
(defparameter gl::rg16f-ext cg-user::|gl_rg16f_ext|)
(defparameter gl::rg16i cg-user::|gl_rg16i|)
(defparameter gl::rg16-snorm cg-user::|gl_rg16_snorm|)
(defparameter gl::rg16-snorm-ext cg-user::|gl_rg16_snorm_ext|)
(defparameter gl::rg16ui cg-user::|gl_rg16ui|)
(defparameter gl::rg32f cg-user::|gl_rg32f|)
(defparameter gl::rg32f-ext cg-user::|gl_rg32f_ext|)
(defparameter gl::rg32i cg-user::|gl_rg32i|)
(defparameter gl::rg32ui cg-user::|gl_rg32ui|)
(defparameter gl::rg8 cg-user::|gl_rg8|)
(defparameter gl::rg8-ext cg-user::|gl_rg8_ext|)
(defparameter gl::rg8i cg-user::|gl_rg8i|)
(defparameter gl::rg8-snorm cg-user::|gl_rg8_snorm|)
(defparameter gl::rg8ui cg-user::|gl_rg8ui|)
(defparameter gl::rgb cg-user::|gl_rgb|)
(defparameter gl::rgb10 cg-user::|gl_rgb10|)
(defparameter gl::rgb10-a2 cg-user::|gl_rgb10_a2|)
(defparameter gl::rgb10-a2-ext cg-user::|gl_rgb10_a2_ext|)
(defparameter gl::rgb10-a2ui cg-user::|gl_rgb10_a2ui|)
(defparameter gl::rgb10-ext cg-user::|gl_rgb10_ext|)
(defparameter gl::rgb12 cg-user::|gl_rgb12|)
(defparameter gl::rgb12-ext cg-user::|gl_rgb12_ext|)
(defparameter gl::rgb16 cg-user::|gl_rgb16|)
(defparameter gl::rgb16-ext cg-user::|gl_rgb16_ext|)
(defparameter gl::rgb16f cg-user::|gl_rgb16f|)
(defparameter gl::rgb16f-arb cg-user::|gl_rgb16f_arb|)
(defparameter gl::rgb16f-ext cg-user::|gl_rgb16f_ext|)
(defparameter gl::rgb16i cg-user::|gl_rgb16i|)
(defparameter gl::rgb16i-ext cg-user::|gl_rgb16i_ext|)
(defparameter gl::rgb16-snorm cg-user::|gl_rgb16_snorm|)
(defparameter gl::rgb16-snorm-ext cg-user::|gl_rgb16_snorm_ext|)
(defparameter gl::rgb16ui cg-user::|gl_rgb16ui|)
(defparameter gl::rgb16ui-ext cg-user::|gl_rgb16ui_ext|)
(defparameter gl::rgb2-ext cg-user::|gl_rgb2_ext|)
(defparameter gl::rgb32f cg-user::|gl_rgb32f|)
(defparameter gl::rgb32f-arb cg-user::|gl_rgb32f_arb|)
(defparameter gl::rgb32f-ext cg-user::|gl_rgb32f_ext|)
(defparameter gl::rgb32i cg-user::|gl_rgb32i|)
(defparameter gl::rgb32i-ext cg-user::|gl_rgb32i_ext|)
(defparameter gl::rgb32ui cg-user::|gl_rgb32ui|)
(defparameter gl::rgb32ui-ext cg-user::|gl_rgb32ui_ext|)
(defparameter gl::rgb4 cg-user::|gl_rgb4|)
(defparameter gl::rgb-422-apple cg-user::|gl_rgb_422_apple|)
(defparameter gl::rgb4-ext cg-user::|gl_rgb4_ext|)
(defparameter gl::rgb4-s3tc cg-user::|gl_rgb4_s3tc|)
(defparameter gl::rgb5 cg-user::|gl_rgb5|)
(defparameter gl::rgb565 cg-user::|gl_rgb565|)
(defparameter gl::rgb565-oes cg-user::|gl_rgb565_oes|)
(defparameter gl::rgb5-a1 cg-user::|gl_rgb5_a1|)
(defparameter gl::rgb5-a1-ext cg-user::|gl_rgb5_a1_ext|)
(defparameter gl::rgb5-a1-oes cg-user::|gl_rgb5_a1_oes|)
(defparameter gl::rgb5-ext cg-user::|gl_rgb5_ext|)
(defparameter gl::rgb8 cg-user::|gl_rgb8|)
(defparameter gl::rgb8-ext cg-user::|gl_rgb8_ext|)
(defparameter gl::rgb8i cg-user::|gl_rgb8i|)
(defparameter gl::rgb8i-ext cg-user::|gl_rgb8i_ext|)
(defparameter gl::rgb8-oes cg-user::|gl_rgb8_oes|)
(defparameter gl::rgb8-snorm cg-user::|gl_rgb8_snorm|)
(defparameter gl::rgb8ui cg-user::|gl_rgb8ui|)
(defparameter gl::rgb8ui-ext cg-user::|gl_rgb8ui_ext|)
(defparameter gl::rgb9-e5 cg-user::|gl_rgb9_e5|)
(defparameter gl::rgb9-e5-apple cg-user::|gl_rgb9_e5_apple|)
(defparameter gl::rgb9-e5-ext cg-user::|gl_rgb9_e5_ext|)
(defparameter gl::rgba cg-user::|gl_rgba|)
(defparameter gl::rgba12 cg-user::|gl_rgba12|)
(defparameter gl::rgba12-ext cg-user::|gl_rgba12_ext|)
(defparameter gl::rgba16 cg-user::|gl_rgba16|)
(defparameter gl::rgba16-ext cg-user::|gl_rgba16_ext|)
(defparameter gl::rgba16f cg-user::|gl_rgba16f|)
(defparameter gl::rgba16f-arb cg-user::|gl_rgba16f_arb|)
(defparameter gl::rgba16f-ext cg-user::|gl_rgba16f_ext|)
(defparameter gl::rgba16i cg-user::|gl_rgba16i|)
(defparameter gl::rgba16i-ext cg-user::|gl_rgba16i_ext|)
(defparameter gl::rgba16-snorm cg-user::|gl_rgba16_snorm|)
(defparameter gl::rgba16-snorm-ext cg-user::|gl_rgba16_snorm_ext|)
(defparameter gl::rgba16ui cg-user::|gl_rgba16ui|)
(defparameter gl::rgba16ui-ext cg-user::|gl_rgba16ui_ext|)
(defparameter gl::rgba2 cg-user::|gl_rgba2|)
(defparameter gl::rgba2-ext cg-user::|gl_rgba2_ext|)
(defparameter gl::rgba32f cg-user::|gl_rgba32f|)
(defparameter gl::rgba32f-arb cg-user::|gl_rgba32f_arb|)
(defparameter gl::rgba32f-ext cg-user::|gl_rgba32f_ext|)
(defparameter gl::rgba32i cg-user::|gl_rgba32i|)
(defparameter gl::rgba32i-ext cg-user::|gl_rgba32i_ext|)
(defparameter gl::rgba32ui cg-user::|gl_rgba32ui|)
(defparameter gl::rgba32ui-ext cg-user::|gl_rgba32ui_ext|)
(defparameter gl::rgba4 cg-user::|gl_rgba4|)
(defparameter gl::rgba4-dxt5-s3tc cg-user::|gl_rgba4_dxt5_s3tc|)
(defparameter gl::rgba4-ext cg-user::|gl_rgba4_ext|)
(defparameter gl::rgba4-oes cg-user::|gl_rgba4_oes|)
(defparameter gl::rgba4-s3tc cg-user::|gl_rgba4_s3tc|)
(defparameter gl::rgba8 cg-user::|gl_rgba8|)
(defparameter gl::rgba8-ext cg-user::|gl_rgba8_ext|)
(defparameter gl::rgba8i cg-user::|gl_rgba8i|)
(defparameter gl::rgba8i-ext cg-user::|gl_rgba8i_ext|)
(defparameter gl::rgba8-oes cg-user::|gl_rgba8_oes|)
(defparameter gl::rgba8-snorm cg-user::|gl_rgba8_snorm|)
(defparameter gl::rgba8ui cg-user::|gl_rgba8ui|)
(defparameter gl::rgba8ui-ext cg-user::|gl_rgba8ui_ext|)
(defparameter gl::rgba-dxt5-s3tc cg-user::|gl_rgba_dxt5_s3tc|)
(defparameter gl::rgba-float16-apple cg-user::|gl_rgba_float16_apple|)
(defparameter gl::rgba-float16-ati cg-user::|gl_rgba_float16_ati|)
(defparameter gl::rgba-float32-apple cg-user::|gl_rgba_float32_apple|)
(defparameter gl::rgba-float32-ati cg-user::|gl_rgba_float32_ati|)
(defparameter gl::rgba-float-mode-arb cg-user::|gl_rgba_float_mode_arb|)
(defparameter gl::rgba-float-mode-ati cg-user::|gl_rgba_float_mode_ati|)
(defparameter gl::rgba-icc-sgix cg-user::|gl_rgba_icc_sgix|)
(defparameter gl::rgba-integer cg-user::|gl_rgba_integer|)
(defparameter gl::rgba-integer-ext cg-user::|gl_rgba_integer_ext|)
(defparameter gl::rgba-integer-mode-ext cg-user::|gl_rgba_integer_mode_ext|)
(defparameter gl::rgba-mode cg-user::|gl_rgba_mode|)
(defparameter gl::rgba-s3tc cg-user::|gl_rgba_s3tc|)
(defparameter gl::rgba-signed-components-ext cg-user::|gl_rgba_signed_components_ext|)
(defparameter gl::rgba-snorm cg-user::|gl_rgba_snorm|)
(defparameter gl::rgba-unsigned-dot-product-mapping-nv cg-user::|gl_rgba_unsigned_dot_product_mapping_nv|)
(defparameter gl::rgb-float16-apple cg-user::|gl_rgb_float16_apple|)
(defparameter gl::rgb-float16-ati cg-user::|gl_rgb_float16_ati|)
(defparameter gl::rgb-float32-apple cg-user::|gl_rgb_float32_apple|)
(defparameter gl::rgb-float32-ati cg-user::|gl_rgb_float32_ati|)
(defparameter gl::rgb-icc-sgix cg-user::|gl_rgb_icc_sgix|)
(defparameter gl::rgb-integer cg-user::|gl_rgb_integer|)
(defparameter gl::rgb-integer-ext cg-user::|gl_rgb_integer_ext|)
(defparameter gl::rgb-raw-422-apple cg-user::|gl_rgb_raw_422_apple|)
(defparameter gl::rgb-s3tc cg-user::|gl_rgb_s3tc|)
(defparameter gl::rgb-scale cg-user::|gl_rgb_scale|)
(defparameter gl::rgb-scale-arb cg-user::|gl_rgb_scale_arb|)
(defparameter gl::rgb-scale-ext cg-user::|gl_rgb_scale_ext|)
(defparameter gl::rgb-snorm cg-user::|gl_rgb_snorm|)
(defparameter gl::rg-ext cg-user::|gl_rg_ext|)
(defparameter gl::rg-integer cg-user::|gl_rg_integer|)
(defparameter gl::rg-snorm cg-user::|gl_rg_snorm|)
(defparameter gl::right cg-user::|gl_right|)
(defparameter gl::rounded-rect2-nv cg-user::|gl_rounded_rect2_nv|)
(defparameter gl::rounded-rect4-nv cg-user::|gl_rounded_rect4_nv|)
(defparameter gl::rounded-rect8-nv cg-user::|gl_rounded_rect8_nv|)
(defparameter gl::rounded-rect-nv cg-user::|gl_rounded_rect_nv|)
(defparameter gl::round-nv cg-user::|gl_round_nv|)
(defparameter gl::s cg-user::|gl_s|)
(defparameter gl::sample-alpha-to-coverage cg-user::|gl_sample_alpha_to_coverage|)
(defparameter gl::sample-alpha-to-coverage-arb cg-user::|gl_sample_alpha_to_coverage_arb|)
(defparameter gl::sample-alpha-to-mask-ext cg-user::|gl_sample_alpha_to_mask_ext|)
(defparameter gl::sample-alpha-to-mask-sgis cg-user::|gl_sample_alpha_to_mask_sgis|)
(defparameter gl::sample-alpha-to-one cg-user::|gl_sample_alpha_to_one|)
(defparameter gl::sample-alpha-to-one-arb cg-user::|gl_sample_alpha_to_one_arb|)
(defparameter gl::sample-alpha-to-one-ext cg-user::|gl_sample_alpha_to_one_ext|)
(defparameter gl::sample-alpha-to-one-sgis cg-user::|gl_sample_alpha_to_one_sgis|)
(defparameter gl::sample-buffers cg-user::|gl_sample_buffers|)
(defparameter gl::sample-buffers-3dfx cg-user::|gl_sample_buffers_3dfx|)
(defparameter gl::sample-buffers-arb cg-user::|gl_sample_buffers_arb|)
(defparameter gl::sample-buffers-ext cg-user::|gl_sample_buffers_ext|)
(defparameter gl::sample-buffers-sgis cg-user::|gl_sample_buffers_sgis|)
(defparameter gl::sample-coverage cg-user::|gl_sample_coverage|)
(defparameter gl::sample-coverage-arb cg-user::|gl_sample_coverage_arb|)
(defparameter gl::sample-coverage-invert cg-user::|gl_sample_coverage_invert|)
(defparameter gl::sample-coverage-invert-arb cg-user::|gl_sample_coverage_invert_arb|)
(defparameter gl::sample-coverage-value cg-user::|gl_sample_coverage_value|)
(defparameter gl::sample-coverage-value-arb cg-user::|gl_sample_coverage_value_arb|)
(defparameter gl::sample-location-arb cg-user::|gl_sample_location_arb|)
(defparameter gl::sample-location-nv cg-user::|gl_sample_location_nv|)
(defparameter gl::sample-location-pixel-grid-height-arb cg-user::|gl_sample_location_pixel_grid_height_arb|)
(defparameter gl::sample-location-pixel-grid-height-nv cg-user::|gl_sample_location_pixel_grid_height_nv|)
(defparameter gl::sample-location-pixel-grid-width-arb cg-user::|gl_sample_location_pixel_grid_width_arb|)
(defparameter gl::sample-location-pixel-grid-width-nv cg-user::|gl_sample_location_pixel_grid_width_nv|)
(defparameter gl::sample-location-subpixel-bits-arb cg-user::|gl_sample_location_subpixel_bits_arb|)
(defparameter gl::sample-location-subpixel-bits-nv cg-user::|gl_sample_location_subpixel_bits_nv|)
(defparameter gl::sample-mask cg-user::|gl_sample_mask|)
(defparameter gl::sample-mask-ext cg-user::|gl_sample_mask_ext|)
(defparameter gl::sample-mask-invert-ext cg-user::|gl_sample_mask_invert_ext|)
(defparameter gl::sample-mask-invert-sgis cg-user::|gl_sample_mask_invert_sgis|)
(defparameter gl::sample-mask-nv cg-user::|gl_sample_mask_nv|)
(defparameter gl::sample-mask-sgis cg-user::|gl_sample_mask_sgis|)
(defparameter gl::sample-mask-value cg-user::|gl_sample_mask_value|)
(defparameter gl::sample-mask-value-ext cg-user::|gl_sample_mask_value_ext|)
(defparameter gl::sample-mask-value-nv cg-user::|gl_sample_mask_value_nv|)
(defparameter gl::sample-mask-value-sgis cg-user::|gl_sample_mask_value_sgis|)
(defparameter gl::sample-pattern-ext cg-user::|gl_sample_pattern_ext|)
(defparameter gl::sample-pattern-sgis cg-user::|gl_sample_pattern_sgis|)
(defparameter gl::sample-position cg-user::|gl_sample_position|)
(defparameter gl::sample-position-nv cg-user::|gl_sample_position_nv|)
(defparameter gl::sampler cg-user::|gl_sampler|)
(defparameter gl::sampler-1d cg-user::|gl_sampler_1d|)
(defparameter gl::sampler-1d-arb cg-user::|gl_sampler_1d_arb|)
(defparameter gl::sampler-1d-array cg-user::|gl_sampler_1d_array|)
(defparameter gl::sampler-1d-array-ext cg-user::|gl_sampler_1d_array_ext|)
(defparameter gl::sampler-1d-array-shadow cg-user::|gl_sampler_1d_array_shadow|)
(defparameter gl::sampler-1d-array-shadow-ext cg-user::|gl_sampler_1d_array_shadow_ext|)
(defparameter gl::sampler-1d-shadow cg-user::|gl_sampler_1d_shadow|)
(defparameter gl::sampler-1d-shadow-arb cg-user::|gl_sampler_1d_shadow_arb|)
(defparameter gl::sampler-2d cg-user::|gl_sampler_2d|)
(defparameter gl::sampler-2d-arb cg-user::|gl_sampler_2d_arb|)
(defparameter gl::sampler-2d-array cg-user::|gl_sampler_2d_array|)
(defparameter gl::sampler-2d-array-ext cg-user::|gl_sampler_2d_array_ext|)
(defparameter gl::sampler-2d-array-shadow cg-user::|gl_sampler_2d_array_shadow|)
(defparameter gl::sampler-2d-array-shadow-ext cg-user::|gl_sampler_2d_array_shadow_ext|)
(defparameter gl::sampler-2d-array-shadow-nv cg-user::|gl_sampler_2d_array_shadow_nv|)
(defparameter gl::sampler-2d-multisample cg-user::|gl_sampler_2d_multisample|)
(defparameter gl::sampler-2d-multisample-array cg-user::|gl_sampler_2d_multisample_array|)
(defparameter gl::sampler-2d-multisample-array-oes cg-user::|gl_sampler_2d_multisample_array_oes|)
(defparameter gl::sampler-2d-rect cg-user::|gl_sampler_2d_rect|)
(defparameter gl::sampler-2d-rect-arb cg-user::|gl_sampler_2d_rect_arb|)
(defparameter gl::sampler-2d-rect-shadow cg-user::|gl_sampler_2d_rect_shadow|)
(defparameter gl::sampler-2d-rect-shadow-arb cg-user::|gl_sampler_2d_rect_shadow_arb|)
(defparameter gl::sampler-2d-shadow cg-user::|gl_sampler_2d_shadow|)
(defparameter gl::sampler-2d-shadow-arb cg-user::|gl_sampler_2d_shadow_arb|)
(defparameter gl::sampler-2d-shadow-ext cg-user::|gl_sampler_2d_shadow_ext|)
(defparameter gl::sampler-3d cg-user::|gl_sampler_3d|)
(defparameter gl::sampler-3d-arb cg-user::|gl_sampler_3d_arb|)
(defparameter gl::sampler-3d-oes cg-user::|gl_sampler_3d_oes|)
(defparameter gl::sampler-binding cg-user::|gl_sampler_binding|)
(defparameter gl::sampler-buffer cg-user::|gl_sampler_buffer|)
(defparameter gl::sampler-buffer-amd cg-user::|gl_sampler_buffer_amd|)
(defparameter gl::sampler-buffer-ext cg-user::|gl_sampler_buffer_ext|)
(defparameter gl::sampler-buffer-oes cg-user::|gl_sampler_buffer_oes|)
(defparameter gl::sampler-cube cg-user::|gl_sampler_cube|)
(defparameter gl::sampler-cube-arb cg-user::|gl_sampler_cube_arb|)
(defparameter gl::sampler-cube-map-array cg-user::|gl_sampler_cube_map_array|)
(defparameter gl::sampler-cube-map-array-arb cg-user::|gl_sampler_cube_map_array_arb|)
(defparameter gl::sampler-cube-map-array-ext cg-user::|gl_sampler_cube_map_array_ext|)
(defparameter gl::sampler-cube-map-array-oes cg-user::|gl_sampler_cube_map_array_oes|)
(defparameter gl::sampler-cube-map-array-shadow cg-user::|gl_sampler_cube_map_array_shadow|)
(defparameter gl::sampler-cube-map-array-shadow-arb cg-user::|gl_sampler_cube_map_array_shadow_arb|)
(defparameter gl::sampler-cube-map-array-shadow-ext cg-user::|gl_sampler_cube_map_array_shadow_ext|)
(defparameter gl::sampler-cube-map-array-shadow-oes cg-user::|gl_sampler_cube_map_array_shadow_oes|)
(defparameter gl::sampler-cube-shadow cg-user::|gl_sampler_cube_shadow|)
(defparameter gl::sampler-cube-shadow-ext cg-user::|gl_sampler_cube_shadow_ext|)
(defparameter gl::sampler-cube-shadow-nv cg-user::|gl_sampler_cube_shadow_nv|)
(defparameter gl::sampler-external-2d-y2y-ext cg-user::|gl_sampler_external_2d_y2y_ext|)
(defparameter gl::sampler-external-oes cg-user::|gl_sampler_external_oes|)
(defparameter gl::sampler-khr cg-user::|gl_sampler_khr|)
(defparameter gl::sampler-object-amd cg-user::|gl_sampler_object_amd|)
(defparameter gl::sampler-renderbuffer-nv cg-user::|gl_sampler_renderbuffer_nv|)
(defparameter gl::samples cg-user::|gl_samples|)
(defparameter gl::samples-3dfx cg-user::|gl_samples_3dfx|)
(defparameter gl::samples-arb cg-user::|gl_samples_arb|)
(defparameter gl::samples-ext cg-user::|gl_samples_ext|)
(defparameter gl::sample-shading cg-user::|gl_sample_shading|)
(defparameter gl::sample-shading-arb cg-user::|gl_sample_shading_arb|)
(defparameter gl::sample-shading-oes cg-user::|gl_sample_shading_oes|)
(defparameter gl::samples-passed cg-user::|gl_samples_passed|)
(defparameter gl::samples-passed-arb cg-user::|gl_samples_passed_arb|)
(defparameter gl::samples-sgis cg-user::|gl_samples_sgis|)
(defparameter gl::saturate-bit-ati cg-user::|gl_saturate_bit_ati|)
(defparameter gl::scalar-ext cg-user::|gl_scalar_ext|)
(defparameter gl::scalebias-hint-sgix cg-user::|gl_scalebias_hint_sgix|)
(defparameter gl::scale-by-four-nv cg-user::|gl_scale_by_four_nv|)
(defparameter gl::scale-by-one-half-nv cg-user::|gl_scale_by_one_half_nv|)
(defparameter gl::scale-by-two-nv cg-user::|gl_scale_by_two_nv|)
(defparameter gl::scaled-resolve-fastest-ext cg-user::|gl_scaled_resolve_fastest_ext|)
(defparameter gl::scaled-resolve-nicest-ext cg-user::|gl_scaled_resolve_nicest_ext|)
(defparameter gl::scissor-bit cg-user::|gl_scissor_bit|)
(defparameter gl::scissor-box cg-user::|gl_scissor_box|)
(defparameter gl::scissor-command-nv cg-user::|gl_scissor_command_nv|)
(defparameter gl::scissor-test cg-user::|gl_scissor_test|)
(defparameter gl::screen cg-user::|gl_screen|)
(defparameter gl::screen-coordinates-rend cg-user::|gl_screen_coordinates_rend|)
(defparameter gl::screen-khr cg-user::|gl_screen_khr|)
(defparameter gl::screen-nv cg-user::|gl_screen_nv|)
(defparameter gl::secondary-color-array cg-user::|gl_secondary_color_array|)
(defparameter gl::secondary-color-array-address-nv cg-user::|gl_secondary_color_array_address_nv|)
(defparameter gl::secondary-color-array-buffer-binding cg-user::|gl_secondary_color_array_buffer_binding|)
(defparameter gl::secondary-color-array-buffer-binding-arb cg-user::|gl_secondary_color_array_buffer_binding_arb|)
(defparameter gl::secondary-color-array-ext cg-user::|gl_secondary_color_array_ext|)
(defparameter gl::secondary-color-array-length-nv cg-user::|gl_secondary_color_array_length_nv|)
(defparameter gl::secondary-color-array-list-ibm cg-user::|gl_secondary_color_array_list_ibm|)
(defparameter gl::secondary-color-array-list-stride-ibm cg-user::|gl_secondary_color_array_list_stride_ibm|)
(defparameter gl::secondary-color-array-pointer cg-user::|gl_secondary_color_array_pointer|)
(defparameter gl::secondary-color-array-pointer-ext cg-user::|gl_secondary_color_array_pointer_ext|)
(defparameter gl::secondary-color-array-size cg-user::|gl_secondary_color_array_size|)
(defparameter gl::secondary-color-array-size-ext cg-user::|gl_secondary_color_array_size_ext|)
(defparameter gl::secondary-color-array-stride cg-user::|gl_secondary_color_array_stride|)
(defparameter gl::secondary-color-array-stride-ext cg-user::|gl_secondary_color_array_stride_ext|)
(defparameter gl::secondary-color-array-type cg-user::|gl_secondary_color_array_type|)
(defparameter gl::secondary-color-array-type-ext cg-user::|gl_secondary_color_array_type_ext|)
(defparameter gl::secondary-color-nv cg-user::|gl_secondary_color_nv|)
(defparameter gl::secondary-interpolator-ati cg-user::|gl_secondary_interpolator_ati|)
(defparameter gl::select cg-user::|gl_select|)
(defparameter gl::selection-buffer-pointer cg-user::|gl_selection_buffer_pointer|)
(defparameter gl::selection-buffer-size cg-user::|gl_selection_buffer_size|)
(defparameter gl::separable-2d cg-user::|gl_separable_2d|)
(defparameter gl::separable-2d-ext cg-user::|gl_separable_2d_ext|)
(defparameter gl::separate-attribs cg-user::|gl_separate_attribs|)
(defparameter gl::separate-attribs-ext cg-user::|gl_separate_attribs_ext|)
(defparameter gl::separate-attribs-nv cg-user::|gl_separate_attribs_nv|)
(defparameter gl::separate-specular-color cg-user::|gl_separate_specular_color|)
(defparameter gl::separate-specular-color-ext cg-user::|gl_separate_specular_color_ext|)
(defparameter gl::set cg-user::|gl_set|)
(defparameter gl::set-amd cg-user::|gl_set_amd|)
(defparameter gl::sgx-binary-img cg-user::|gl_sgx_binary_img|)
(defparameter gl::sgx-program-binary-img cg-user::|gl_sgx_program_binary_img|)
(defparameter gl::shade-model cg-user::|gl_shade_model|)
(defparameter gl::shader cg-user::|gl_shader|)
(defparameter gl::shader-binary-dmp cg-user::|gl_shader_binary_dmp|)
(defparameter gl::shader-binary-formats cg-user::|gl_shader_binary_formats|)
(defparameter gl::shader-binary-viv cg-user::|gl_shader_binary_viv|)
(defparameter gl::shader-compiler cg-user::|gl_shader_compiler|)
(defparameter gl::shader-consistent-nv cg-user::|gl_shader_consistent_nv|)
(defparameter gl::shader-global-access-barrier-bit-nv cg-user::|gl_shader_global_access_barrier_bit_nv|)
(defparameter gl::shader-image-access-barrier-bit cg-user::|gl_shader_image_access_barrier_bit|)
(defparameter gl::shader-image-access-barrier-bit-ext cg-user::|gl_shader_image_access_barrier_bit_ext|)
(defparameter gl::shader-image-atomic cg-user::|gl_shader_image_atomic|)
(defparameter gl::shader-image-load cg-user::|gl_shader_image_load|)
(defparameter gl::shader-image-store cg-user::|gl_shader_image_store|)
(defparameter gl::shader-include-arb cg-user::|gl_shader_include_arb|)
(defparameter gl::shader-khr cg-user::|gl_shader_khr|)
(defparameter gl::shader-object-arb cg-user::|gl_shader_object_arb|)
(defparameter gl::shader-object-ext cg-user::|gl_shader_object_ext|)
(defparameter gl::shader-operation-nv cg-user::|gl_shader_operation_nv|)
(defparameter gl::shader-pixel-local-storage-ext cg-user::|gl_shader_pixel_local_storage_ext|)
(defparameter gl::shader-source-length cg-user::|gl_shader_source_length|)
(defparameter gl::shader-storage-barrier-bit cg-user::|gl_shader_storage_barrier_bit|)
(defparameter gl::shader-storage-block cg-user::|gl_shader_storage_block|)
(defparameter gl::shader-storage-buffer cg-user::|gl_shader_storage_buffer|)
(defparameter gl::shader-storage-buffer-binding cg-user::|gl_shader_storage_buffer_binding|)
(defparameter gl::shader-storage-buffer-offset-alignment cg-user::|gl_shader_storage_buffer_offset_alignment|)
(defparameter gl::shader-storage-buffer-size cg-user::|gl_shader_storage_buffer_size|)
(defparameter gl::shader-storage-buffer-start cg-user::|gl_shader_storage_buffer_start|)
(defparameter gl::shader-type cg-user::|gl_shader_type|)
(defparameter gl::shading-language-version cg-user::|gl_shading_language_version|)
(defparameter gl::shading-language-version-arb cg-user::|gl_shading_language_version_arb|)
(defparameter gl::shadow-ambient-sgix cg-user::|gl_shadow_ambient_sgix|)
(defparameter gl::shadow-attenuation-ext cg-user::|gl_shadow_attenuation_ext|)
(defparameter gl::shared-edge-nv cg-user::|gl_shared_edge_nv|)
(defparameter gl::shared-texture-palette-ext cg-user::|gl_shared_texture_palette_ext|)
(defparameter gl::sharpen-texture-func-points-sgis cg-user::|gl_sharpen_texture_func_points_sgis|)
(defparameter gl::shininess cg-user::|gl_shininess|)
(defparameter gl::short cg-user::|gl_short|)
(defparameter gl::signaled cg-user::|gl_signaled|)
(defparameter gl::signaled-apple cg-user::|gl_signaled_apple|)
(defparameter gl::signed-alpha8-nv cg-user::|gl_signed_alpha8_nv|)
(defparameter gl::signed-alpha-nv cg-user::|gl_signed_alpha_nv|)
(defparameter gl::signed-hilo16-nv cg-user::|gl_signed_hilo16_nv|)
(defparameter gl::signed-hilo8-nv cg-user::|gl_signed_hilo8_nv|)
(defparameter gl::signed-hilo-nv cg-user::|gl_signed_hilo_nv|)
(defparameter gl::signed-identity-nv cg-user::|gl_signed_identity_nv|)
(defparameter gl::signed-intensity8-nv cg-user::|gl_signed_intensity8_nv|)
(defparameter gl::signed-intensity-nv cg-user::|gl_signed_intensity_nv|)
(defparameter gl::signed-luminance8-alpha8-nv cg-user::|gl_signed_luminance8_alpha8_nv|)
(defparameter gl::signed-luminance8-nv cg-user::|gl_signed_luminance8_nv|)
(defparameter gl::signed-luminance-alpha-nv cg-user::|gl_signed_luminance_alpha_nv|)
(defparameter gl::signed-luminance-nv cg-user::|gl_signed_luminance_nv|)
(defparameter gl::signed-negate-nv cg-user::|gl_signed_negate_nv|)
(defparameter gl::signed-normalized cg-user::|gl_signed_normalized|)
(defparameter gl::signed-rgb8-nv cg-user::|gl_signed_rgb8_nv|)
(defparameter gl::signed-rgb8-unsigned-alpha8-nv cg-user::|gl_signed_rgb8_unsigned_alpha8_nv|)
(defparameter gl::signed-rgba8-nv cg-user::|gl_signed_rgba8_nv|)
(defparameter gl::signed-rgba-nv cg-user::|gl_signed_rgba_nv|)
(defparameter gl::signed-rgb-nv cg-user::|gl_signed_rgb_nv|)
(defparameter gl::signed-rgb-unsigned-alpha-nv cg-user::|gl_signed_rgb_unsigned_alpha_nv|)
(defparameter gl::simultaneous-texture-and-depth-test cg-user::|gl_simultaneous_texture_and_depth_test|)
(defparameter gl::simultaneous-texture-and-depth-write cg-user::|gl_simultaneous_texture_and_depth_write|)
(defparameter gl::simultaneous-texture-and-stencil-test cg-user::|gl_simultaneous_texture_and_stencil_test|)
(defparameter gl::simultaneous-texture-and-stencil-write cg-user::|gl_simultaneous_texture_and_stencil_write|)
(defparameter gl::single-color cg-user::|gl_single_color|)
(defparameter gl::single-color-ext cg-user::|gl_single_color_ext|)
(defparameter gl::skip-components1-nv cg-user::|gl_skip_components1_nv|)
(defparameter gl::skip-components2-nv cg-user::|gl_skip_components2_nv|)
(defparameter gl::skip-components3-nv cg-user::|gl_skip_components3_nv|)
(defparameter gl::skip-components4-nv cg-user::|gl_skip_components4_nv|)
(defparameter gl::skip-decode-ext cg-user::|gl_skip_decode_ext|)
(defparameter gl::skip-missing-glyph-nv cg-user::|gl_skip_missing_glyph_nv|)
(defparameter gl::slice-accum-sun cg-user::|gl_slice_accum_sun|)
(defparameter gl::slim10u-sgix cg-user::|gl_slim10u_sgix|)
(defparameter gl::slim12s-sgix cg-user::|gl_slim12s_sgix|)
(defparameter gl::slim8u-sgix cg-user::|gl_slim8u_sgix|)
(defparameter gl::sluminance cg-user::|gl_sluminance|)
(defparameter gl::sluminance8 cg-user::|gl_sluminance8|)
(defparameter gl::sluminance8-alpha8 cg-user::|gl_sluminance8_alpha8|)
(defparameter gl::sluminance8-alpha8-ext cg-user::|gl_sluminance8_alpha8_ext|)
(defparameter gl::sluminance8-alpha8-nv cg-user::|gl_sluminance8_alpha8_nv|)
(defparameter gl::sluminance8-ext cg-user::|gl_sluminance8_ext|)
(defparameter gl::sluminance8-nv cg-user::|gl_sluminance8_nv|)
(defparameter gl::sluminance-alpha cg-user::|gl_sluminance_alpha|)
(defparameter gl::sluminance-alpha-ext cg-user::|gl_sluminance_alpha_ext|)
(defparameter gl::sluminance-alpha-nv cg-user::|gl_sluminance_alpha_nv|)
(defparameter gl::sluminance-ext cg-user::|gl_sluminance_ext|)
(defparameter gl::sluminance-nv cg-user::|gl_sluminance_nv|)
(defparameter gl::small-ccw-arc-to-nv cg-user::|gl_small_ccw_arc_to_nv|)
(defparameter gl::small-cw-arc-to-nv cg-user::|gl_small_cw_arc_to_nv|)
(defparameter gl::smaphs30-program-binary-dmp cg-user::|gl_smaphs30_program_binary_dmp|)
(defparameter gl::smaphs-program-binary-dmp cg-user::|gl_smaphs_program_binary_dmp|)
(defparameter gl::sm-count-nv cg-user::|gl_sm_count_nv|)
(defparameter gl::smooth cg-user::|gl_smooth|)
(defparameter gl::smooth-cubic-curve-to-nv cg-user::|gl_smooth_cubic_curve_to_nv|)
(defparameter gl::smooth-line-width-granularity cg-user::|gl_smooth_line_width_granularity|)
(defparameter gl::smooth-line-width-range cg-user::|gl_smooth_line_width_range|)
(defparameter gl::smooth-point-size-granularity cg-user::|gl_smooth_point_size_granularity|)
(defparameter gl::smooth-point-size-range cg-user::|gl_smooth_point_size_range|)
(defparameter gl::smooth-quadratic-curve-to-nv cg-user::|gl_smooth_quadratic_curve_to_nv|)
(defparameter gl::softlight cg-user::|gl_softlight|)
(defparameter gl::softlight-khr cg-user::|gl_softlight_khr|)
(defparameter gl::softlight-nv cg-user::|gl_softlight_nv|)
(defparameter gl::source0-alpha cg-user::|gl_source0_alpha|)
(defparameter gl::source0-alpha-arb cg-user::|gl_source0_alpha_arb|)
(defparameter gl::source0-alpha-ext cg-user::|gl_source0_alpha_ext|)
(defparameter gl::source0-rgb cg-user::|gl_source0_rgb|)
(defparameter gl::source0-rgb-arb cg-user::|gl_source0_rgb_arb|)
(defparameter gl::source0-rgb-ext cg-user::|gl_source0_rgb_ext|)
(defparameter gl::source1-alpha cg-user::|gl_source1_alpha|)
(defparameter gl::source1-alpha-arb cg-user::|gl_source1_alpha_arb|)
(defparameter gl::source1-alpha-ext cg-user::|gl_source1_alpha_ext|)
(defparameter gl::source1-rgb cg-user::|gl_source1_rgb|)
(defparameter gl::source1-rgb-arb cg-user::|gl_source1_rgb_arb|)
(defparameter gl::source1-rgb-ext cg-user::|gl_source1_rgb_ext|)
(defparameter gl::source2-alpha cg-user::|gl_source2_alpha|)
(defparameter gl::source2-alpha-arb cg-user::|gl_source2_alpha_arb|)
(defparameter gl::source2-alpha-ext cg-user::|gl_source2_alpha_ext|)
(defparameter gl::source2-rgb cg-user::|gl_source2_rgb|)
(defparameter gl::source2-rgb-arb cg-user::|gl_source2_rgb_arb|)
(defparameter gl::source2-rgb-ext cg-user::|gl_source2_rgb_ext|)
(defparameter gl::source3-alpha-nv cg-user::|gl_source3_alpha_nv|)
(defparameter gl::source3-rgb-nv cg-user::|gl_source3_rgb_nv|)
(defparameter gl::spare0-nv cg-user::|gl_spare0_nv|)
(defparameter gl::spare0-plus-secondary-color-nv cg-user::|gl_spare0_plus_secondary_color_nv|)
(defparameter gl::spare1-nv cg-user::|gl_spare1_nv|)
(defparameter gl::sparse-buffer-page-size-arb cg-user::|gl_sparse_buffer_page_size_arb|)
(defparameter gl::sparse-storage-bit-arb cg-user::|gl_sparse_storage_bit_arb|)
(defparameter gl::sparse-texture-full-array-cube-mipmaps-arb cg-user::|gl_sparse_texture_full_array_cube_mipmaps_arb|)
(defparameter gl::sparse-texture-full-array-cube-mipmaps-ext cg-user::|gl_sparse_texture_full_array_cube_mipmaps_ext|)
(defparameter gl::specular cg-user::|gl_specular|)
(defparameter gl::sphere-map cg-user::|gl_sphere_map|)
(defparameter gl::spot-cutoff cg-user::|gl_spot_cutoff|)
(defparameter gl::spot-direction cg-user::|gl_spot_direction|)
(defparameter gl::spot-exponent cg-user::|gl_spot_exponent|)
(defparameter gl::sprite-axial-sgix cg-user::|gl_sprite_axial_sgix|)
(defparameter gl::sprite-axis-sgix cg-user::|gl_sprite_axis_sgix|)
(defparameter gl::sprite-eye-aligned-sgix cg-user::|gl_sprite_eye_aligned_sgix|)
(defparameter gl::sprite-mode-sgix cg-user::|gl_sprite_mode_sgix|)
(defparameter gl::sprite-object-aligned-sgix cg-user::|gl_sprite_object_aligned_sgix|)
(defparameter gl::sprite-sgix cg-user::|gl_sprite_sgix|)
(defparameter gl::sprite-translation-sgix cg-user::|gl_sprite_translation_sgix|)
(defparameter gl::square-nv cg-user::|gl_square_nv|)
(defparameter gl::sr8-ext cg-user::|gl_sr8_ext|)
(defparameter gl::src0-alpha cg-user::|gl_src0_alpha|)
(defparameter gl::src0-rgb cg-user::|gl_src0_rgb|)
(defparameter gl::src1-alpha cg-user::|gl_src1_alpha|)
(defparameter gl::src1-alpha-ext cg-user::|gl_src1_alpha_ext|)
(defparameter gl::src1-color cg-user::|gl_src1_color|)
(defparameter gl::src1-color-ext cg-user::|gl_src1_color_ext|)
(defparameter gl::src1-rgb cg-user::|gl_src1_rgb|)
(defparameter gl::src2-alpha cg-user::|gl_src2_alpha|)
(defparameter gl::src2-rgb cg-user::|gl_src2_rgb|)
(defparameter gl::src-alpha cg-user::|gl_src_alpha|)
(defparameter gl::src-alpha-saturate cg-user::|gl_src_alpha_saturate|)
(defparameter gl::src-alpha-saturate-ext cg-user::|gl_src_alpha_saturate_ext|)
(defparameter gl::src-atop-nv cg-user::|gl_src_atop_nv|)
(defparameter gl::src-color cg-user::|gl_src_color|)
(defparameter gl::src-in-nv cg-user::|gl_src_in_nv|)
(defparameter gl::src-nv cg-user::|gl_src_nv|)
(defparameter gl::src-out-nv cg-user::|gl_src_out_nv|)
(defparameter gl::src-over-nv cg-user::|gl_src_over_nv|)
(defparameter gl::srg8-ext cg-user::|gl_srg8_ext|)
(defparameter gl::srgb cg-user::|gl_srgb|)
(defparameter gl::srgb8 cg-user::|gl_srgb8|)
(defparameter gl::srgb8-alpha8 cg-user::|gl_srgb8_alpha8|)
(defparameter gl::srgb8-alpha8-ext cg-user::|gl_srgb8_alpha8_ext|)
(defparameter gl::srgb8-ext cg-user::|gl_srgb8_ext|)
(defparameter gl::srgb8-nv cg-user::|gl_srgb8_nv|)
(defparameter gl::srgb-alpha cg-user::|gl_srgb_alpha|)
(defparameter gl::srgb-alpha-ext cg-user::|gl_srgb_alpha_ext|)
(defparameter gl::srgb-decode-arb cg-user::|gl_srgb_decode_arb|)
(defparameter gl::srgb-ext cg-user::|gl_srgb_ext|)
(defparameter gl::srgb-read cg-user::|gl_srgb_read|)
(defparameter gl::srgb-write cg-user::|gl_srgb_write|)
(defparameter gl::stack-overflow cg-user::|gl_stack_overflow|)
(defparameter gl::stack-overflow-khr cg-user::|gl_stack_overflow_khr|)
(defparameter gl::stack-underflow cg-user::|gl_stack_underflow|)
(defparameter gl::stack-underflow-khr cg-user::|gl_stack_underflow_khr|)
(defparameter gl::standard-font-format-nv cg-user::|gl_standard_font_format_nv|)
(defparameter gl::standard-font-name-nv cg-user::|gl_standard_font_name_nv|)
(defparameter gl::state-restore cg-user::|gl_state_restore|)
(defparameter gl::static-ati cg-user::|gl_static_ati|)
(defparameter gl::static-copy cg-user::|gl_static_copy|)
(defparameter gl::static-copy-arb cg-user::|gl_static_copy_arb|)
(defparameter gl::static-draw cg-user::|gl_static_draw|)
(defparameter gl::static-draw-arb cg-user::|gl_static_draw_arb|)
(defparameter gl::static-read cg-user::|gl_static_read|)
(defparameter gl::static-read-arb cg-user::|gl_static_read_arb|)
(defparameter gl::static-vertex-array-ibm cg-user::|gl_static_vertex_array_ibm|)
(defparameter gl::stencil cg-user::|gl_stencil|)
(defparameter gl::stencil-attachment cg-user::|gl_stencil_attachment|)
(defparameter gl::stencil-attachment-ext cg-user::|gl_stencil_attachment_ext|)
(defparameter gl::stencil-attachment-oes cg-user::|gl_stencil_attachment_oes|)
(defparameter gl::stencil-back-fail cg-user::|gl_stencil_back_fail|)
(defparameter gl::stencil-back-fail-ati cg-user::|gl_stencil_back_fail_ati|)
(defparameter gl::stencil-back-func cg-user::|gl_stencil_back_func|)
(defparameter gl::stencil-back-func-ati cg-user::|gl_stencil_back_func_ati|)
(defparameter gl::stencil-back-op-value-amd cg-user::|gl_stencil_back_op_value_amd|)
(defparameter gl::stencil-back-pass-depth-fail cg-user::|gl_stencil_back_pass_depth_fail|)
(defparameter gl::stencil-back-pass-depth-fail-ati cg-user::|gl_stencil_back_pass_depth_fail_ati|)
(defparameter gl::stencil-back-pass-depth-pass cg-user::|gl_stencil_back_pass_depth_pass|)
(defparameter gl::stencil-back-pass-depth-pass-ati cg-user::|gl_stencil_back_pass_depth_pass_ati|)
(defparameter gl::stencil-back-ref cg-user::|gl_stencil_back_ref|)
(defparameter gl::stencil-back-value-mask cg-user::|gl_stencil_back_value_mask|)
(defparameter gl::stencil-back-writemask cg-user::|gl_stencil_back_writemask|)
(defparameter gl::stencil-bits cg-user::|gl_stencil_bits|)
(defparameter gl::stencil-buffer-bit cg-user::|gl_stencil_buffer_bit|)
(defparameter gl::stencil-buffer-bit0-qcom cg-user::|gl_stencil_buffer_bit0_qcom|)
(defparameter gl::stencil-buffer-bit1-qcom cg-user::|gl_stencil_buffer_bit1_qcom|)
(defparameter gl::stencil-buffer-bit2-qcom cg-user::|gl_stencil_buffer_bit2_qcom|)
(defparameter gl::stencil-buffer-bit3-qcom cg-user::|gl_stencil_buffer_bit3_qcom|)
(defparameter gl::stencil-buffer-bit4-qcom cg-user::|gl_stencil_buffer_bit4_qcom|)
(defparameter gl::stencil-buffer-bit5-qcom cg-user::|gl_stencil_buffer_bit5_qcom|)
(defparameter gl::stencil-buffer-bit6-qcom cg-user::|gl_stencil_buffer_bit6_qcom|)
(defparameter gl::stencil-buffer-bit7-qcom cg-user::|gl_stencil_buffer_bit7_qcom|)
(defparameter gl::stencil-clear-tag-value-ext cg-user::|gl_stencil_clear_tag_value_ext|)
(defparameter gl::stencil-clear-value cg-user::|gl_stencil_clear_value|)
(defparameter gl::stencil-components cg-user::|gl_stencil_components|)
(defparameter gl::stencil-ext cg-user::|gl_stencil_ext|)
(defparameter gl::stencil-fail cg-user::|gl_stencil_fail|)
(defparameter gl::stencil-func cg-user::|gl_stencil_func|)
(defparameter gl::stencil-index cg-user::|gl_stencil_index|)
(defparameter gl::stencil-index1 cg-user::|gl_stencil_index1|)
(defparameter gl::stencil-index16 cg-user::|gl_stencil_index16|)
(defparameter gl::stencil-index16-ext cg-user::|gl_stencil_index16_ext|)
(defparameter gl::stencil-index1-ext cg-user::|gl_stencil_index1_ext|)
(defparameter gl::stencil-index1-oes cg-user::|gl_stencil_index1_oes|)
(defparameter gl::stencil-index4 cg-user::|gl_stencil_index4|)
(defparameter gl::stencil-index4-ext cg-user::|gl_stencil_index4_ext|)
(defparameter gl::stencil-index4-oes cg-user::|gl_stencil_index4_oes|)
(defparameter gl::stencil-index8 cg-user::|gl_stencil_index8|)
(defparameter gl::stencil-index8-ext cg-user::|gl_stencil_index8_ext|)
(defparameter gl::stencil-index8-oes cg-user::|gl_stencil_index8_oes|)
(defparameter gl::stencil-index-oes cg-user::|gl_stencil_index_oes|)
(defparameter gl::stencil-op-value-amd cg-user::|gl_stencil_op_value_amd|)
(defparameter gl::stencil-pass-depth-fail cg-user::|gl_stencil_pass_depth_fail|)
(defparameter gl::stencil-pass-depth-pass cg-user::|gl_stencil_pass_depth_pass|)
(defparameter gl::stencil-ref cg-user::|gl_stencil_ref|)
(defparameter gl::stencil-ref-command-nv cg-user::|gl_stencil_ref_command_nv|)
(defparameter gl::stencil-renderable cg-user::|gl_stencil_renderable|)
(defparameter gl::stencil-samples-nv cg-user::|gl_stencil_samples_nv|)
(defparameter gl::stencil-tag-bits-ext cg-user::|gl_stencil_tag_bits_ext|)
(defparameter gl::stencil-test cg-user::|gl_stencil_test|)
(defparameter gl::stencil-test-two-side-ext cg-user::|gl_stencil_test_two_side_ext|)
(defparameter gl::stencil-value-mask cg-user::|gl_stencil_value_mask|)
(defparameter gl::stencil-writemask cg-user::|gl_stencil_writemask|)
(defparameter gl::stereo cg-user::|gl_stereo|)
(defparameter gl::storage-cached-apple cg-user::|gl_storage_cached_apple|)
(defparameter gl::storage-client-apple cg-user::|gl_storage_client_apple|)
(defparameter gl::storage-private-apple cg-user::|gl_storage_private_apple|)
(defparameter gl::storage-shared-apple cg-user::|gl_storage_shared_apple|)
(defparameter gl::stream-copy cg-user::|gl_stream_copy|)
(defparameter gl::stream-copy-arb cg-user::|gl_stream_copy_arb|)
(defparameter gl::stream-draw cg-user::|gl_stream_draw|)
(defparameter gl::stream-draw-arb cg-user::|gl_stream_draw_arb|)
(defparameter gl::stream-rasterization-amd cg-user::|gl_stream_rasterization_amd|)
(defparameter gl::stream-read cg-user::|gl_stream_read|)
(defparameter gl::stream-read-arb cg-user::|gl_stream_read_arb|)
(defparameter gl::strict-depthfunc-hint-pgi cg-user::|gl_strict_depthfunc_hint_pgi|)
(defparameter gl::strict-lighting-hint-pgi cg-user::|gl_strict_lighting_hint_pgi|)
(defparameter gl::strict-scissor-hint-pgi cg-user::|gl_strict_scissor_hint_pgi|)
(defparameter gl::sub-ati cg-user::|gl_sub_ati|)
(defparameter gl::subpixel-bits cg-user::|gl_subpixel_bits|)
(defparameter gl::subpixel-precision-bias-x-bits-nv cg-user::|gl_subpixel_precision_bias_x_bits_nv|)
(defparameter gl::subpixel-precision-bias-y-bits-nv cg-user::|gl_subpixel_precision_bias_y_bits_nv|)
(defparameter gl::subsample-distance-amd cg-user::|gl_subsample_distance_amd|)
(defparameter gl::subtract cg-user::|gl_subtract|)
(defparameter gl::subtract-arb cg-user::|gl_subtract_arb|)
(defparameter gl::success-nv cg-user::|gl_success_nv|)
(defparameter gl::supersample-scale-x-nv cg-user::|gl_supersample_scale_x_nv|)
(defparameter gl::supersample-scale-y-nv cg-user::|gl_supersample_scale_y_nv|)
(defparameter gl::surface-mapped-nv cg-user::|gl_surface_mapped_nv|)
(defparameter gl::surface-registered-nv cg-user::|gl_surface_registered_nv|)
(defparameter gl::surface-state-nv cg-user::|gl_surface_state_nv|)
(defparameter gl::swizzle-stq-ati cg-user::|gl_swizzle_stq_ati|)
(defparameter gl::swizzle-stq-dq-ati cg-user::|gl_swizzle_stq_dq_ati|)
(defparameter gl::swizzle-str-ati cg-user::|gl_swizzle_str_ati|)
(defparameter gl::swizzle-str-dr-ati cg-user::|gl_swizzle_str_dr_ati|)
(defparameter gl::swizzle-strq-ati cg-user::|gl_swizzle_strq_ati|)
(defparameter gl::swizzle-strq-dq-ati cg-user::|gl_swizzle_strq_dq_ati|)
(defparameter gl::sync-cl-event-arb cg-user::|gl_sync_cl_event_arb|)
(defparameter gl::sync-cl-event-complete-arb cg-user::|gl_sync_cl_event_complete_arb|)
(defparameter gl::sync-condition cg-user::|gl_sync_condition|)
(defparameter gl::sync-condition-apple cg-user::|gl_sync_condition_apple|)
(defparameter gl::sync-fence cg-user::|gl_sync_fence|)
(defparameter gl::sync-fence-apple cg-user::|gl_sync_fence_apple|)
(defparameter gl::sync-flags cg-user::|gl_sync_flags|)
(defparameter gl::sync-flags-apple cg-user::|gl_sync_flags_apple|)
(defparameter gl::sync-flush-commands-bit cg-user::|gl_sync_flush_commands_bit|)
(defparameter gl::sync-flush-commands-bit-apple cg-user::|gl_sync_flush_commands_bit_apple|)
(defparameter gl::sync-gpu-commands-complete cg-user::|gl_sync_gpu_commands_complete|)
(defparameter gl::sync-gpu-commands-complete-apple cg-user::|gl_sync_gpu_commands_complete_apple|)
(defparameter gl::sync-object-apple cg-user::|gl_sync_object_apple|)
(defparameter gl::sync-status cg-user::|gl_sync_status|)
(defparameter gl::sync-status-apple cg-user::|gl_sync_status_apple|)
(defparameter gl::sync-x11-fence-ext cg-user::|gl_sync_x11_fence_ext|)
(defparameter gl::system-font-name-nv cg-user::|gl_system_font_name_nv|)
(defparameter gl::t cg-user::|gl_t|)
(defparameter gl::t2f-c3f-v3f cg-user::|gl_t2f_c3f_v3f|)
(defparameter gl::t2f-c4f-n3f-v3f cg-user::|gl_t2f_c4f_n3f_v3f|)
(defparameter gl::t2f-c4ub-v3f cg-user::|gl_t2f_c4ub_v3f|)
(defparameter gl::t2f-iui-n3f-v2f-ext cg-user::|gl_t2f_iui_n3f_v2f_ext|)
(defparameter gl::t2f-iui-n3f-v3f-ext cg-user::|gl_t2f_iui_n3f_v3f_ext|)
(defparameter gl::t2f-iui-v2f-ext cg-user::|gl_t2f_iui_v2f_ext|)
(defparameter gl::t2f-iui-v3f-ext cg-user::|gl_t2f_iui_v3f_ext|)
(defparameter gl::t2f-n3f-v3f cg-user::|gl_t2f_n3f_v3f|)
(defparameter gl::t2f-v3f cg-user::|gl_t2f_v3f|)
(defparameter gl::t4f-c4f-n3f-v4f cg-user::|gl_t4f_c4f_n3f_v4f|)
(defparameter gl::t4f-v4f cg-user::|gl_t4f_v4f|)
(defparameter gl::table-too-large cg-user::|gl_table_too_large|)
(defparameter gl::table-too-large-ext cg-user::|gl_table_too_large_ext|)
(defparameter gl::tangent-array-ext cg-user::|gl_tangent_array_ext|)
(defparameter gl::tangent-array-pointer-ext cg-user::|gl_tangent_array_pointer_ext|)
(defparameter gl::tangent-array-stride-ext cg-user::|gl_tangent_array_stride_ext|)
(defparameter gl::tangent-array-type-ext cg-user::|gl_tangent_array_type_ext|)
(defparameter gl::terminate-sequence-command-nv cg-user::|gl_terminate_sequence_command_nv|)
(defparameter gl::tess-control-output-vertices cg-user::|gl_tess_control_output_vertices|)
(defparameter gl::tess-control-output-vertices-ext cg-user::|gl_tess_control_output_vertices_ext|)
(defparameter gl::tess-control-output-vertices-oes cg-user::|gl_tess_control_output_vertices_oes|)
(defparameter gl::tess-control-program-nv cg-user::|gl_tess_control_program_nv|)
(defparameter gl::tess-control-program-parameter-buffer-nv cg-user::|gl_tess_control_program_parameter_buffer_nv|)
(defparameter gl::tess-control-shader cg-user::|gl_tess_control_shader|)
(defparameter gl::tess-control-shader-bit cg-user::|gl_tess_control_shader_bit|)
(defparameter gl::tess-control-shader-bit-ext cg-user::|gl_tess_control_shader_bit_ext|)
(defparameter gl::tess-control-shader-bit-oes cg-user::|gl_tess_control_shader_bit_oes|)
(defparameter gl::tess-control-shader-ext cg-user::|gl_tess_control_shader_ext|)
(defparameter gl::tess-control-shader-oes cg-user::|gl_tess_control_shader_oes|)
(defparameter gl::tess-control-shader-patches-arb cg-user::|gl_tess_control_shader_patches_arb|)
(defparameter gl::tess-control-subroutine cg-user::|gl_tess_control_subroutine|)
(defparameter gl::tess-control-subroutine-uniform cg-user::|gl_tess_control_subroutine_uniform|)
(defparameter gl::tess-control-texture cg-user::|gl_tess_control_texture|)
(defparameter gl::tessellation-factor-amd cg-user::|gl_tessellation_factor_amd|)
(defparameter gl::tessellation-mode-amd cg-user::|gl_tessellation_mode_amd|)
(defparameter gl::tess-evaluation-program-nv cg-user::|gl_tess_evaluation_program_nv|)
(defparameter gl::tess-evaluation-program-parameter-buffer-nv cg-user::|gl_tess_evaluation_program_parameter_buffer_nv|)
(defparameter gl::tess-evaluation-shader cg-user::|gl_tess_evaluation_shader|)
(defparameter gl::tess-evaluation-shader-bit cg-user::|gl_tess_evaluation_shader_bit|)
(defparameter gl::tess-evaluation-shader-bit-ext cg-user::|gl_tess_evaluation_shader_bit_ext|)
(defparameter gl::tess-evaluation-shader-bit-oes cg-user::|gl_tess_evaluation_shader_bit_oes|)
(defparameter gl::tess-evaluation-shader-ext cg-user::|gl_tess_evaluation_shader_ext|)
(defparameter gl::tess-evaluation-shader-invocations-arb cg-user::|gl_tess_evaluation_shader_invocations_arb|)
(defparameter gl::tess-evaluation-shader-oes cg-user::|gl_tess_evaluation_shader_oes|)
(defparameter gl::tess-evaluation-subroutine cg-user::|gl_tess_evaluation_subroutine|)
(defparameter gl::tess-evaluation-subroutine-uniform cg-user::|gl_tess_evaluation_subroutine_uniform|)
(defparameter gl::tess-evaluation-texture cg-user::|gl_tess_evaluation_texture|)
(defparameter gl::tess-gen-mode cg-user::|gl_tess_gen_mode|)
(defparameter gl::tess-gen-mode-ext cg-user::|gl_tess_gen_mode_ext|)
(defparameter gl::tess-gen-mode-oes cg-user::|gl_tess_gen_mode_oes|)
(defparameter gl::tess-gen-point-mode cg-user::|gl_tess_gen_point_mode|)
(defparameter gl::tess-gen-point-mode-ext cg-user::|gl_tess_gen_point_mode_ext|)
(defparameter gl::tess-gen-point-mode-oes cg-user::|gl_tess_gen_point_mode_oes|)
(defparameter gl::tess-gen-spacing cg-user::|gl_tess_gen_spacing|)
(defparameter gl::tess-gen-spacing-ext cg-user::|gl_tess_gen_spacing_ext|)
(defparameter gl::tess-gen-spacing-oes cg-user::|gl_tess_gen_spacing_oes|)
(defparameter gl::tess-gen-vertex-order cg-user::|gl_tess_gen_vertex_order|)
(defparameter gl::tess-gen-vertex-order-ext cg-user::|gl_tess_gen_vertex_order_ext|)
(defparameter gl::tess-gen-vertex-order-oes cg-user::|gl_tess_gen_vertex_order_oes|)
(defparameter gl::texcoord1-bit-pgi cg-user::|gl_texcoord1_bit_pgi|)
(defparameter gl::texcoord2-bit-pgi cg-user::|gl_texcoord2_bit_pgi|)
(defparameter gl::texcoord3-bit-pgi cg-user::|gl_texcoord3_bit_pgi|)
(defparameter gl::texcoord4-bit-pgi cg-user::|gl_texcoord4_bit_pgi|)
(defparameter gl::text-fragment-shader-ati cg-user::|gl_text_fragment_shader_ati|)
(defparameter gl::texture cg-user::|gl_texture|)
(defparameter gl::texture0 cg-user::|gl_texture0|)
(defparameter gl::texture0-arb cg-user::|gl_texture0_arb|)
(defparameter gl::texture1 cg-user::|gl_texture1|)
(defparameter gl::texture10 cg-user::|gl_texture10|)
(defparameter gl::texture10-arb cg-user::|gl_texture10_arb|)
(defparameter gl::texture11 cg-user::|gl_texture11|)
(defparameter gl::texture11-arb cg-user::|gl_texture11_arb|)
(defparameter gl::texture12 cg-user::|gl_texture12|)
(defparameter gl::texture12-arb cg-user::|gl_texture12_arb|)
(defparameter gl::texture13 cg-user::|gl_texture13|)
(defparameter gl::texture13-arb cg-user::|gl_texture13_arb|)
(defparameter gl::texture14 cg-user::|gl_texture14|)
(defparameter gl::texture14-arb cg-user::|gl_texture14_arb|)
(defparameter gl::texture15 cg-user::|gl_texture15|)
(defparameter gl::texture15-arb cg-user::|gl_texture15_arb|)
(defparameter gl::texture16 cg-user::|gl_texture16|)
(defparameter gl::texture16-arb cg-user::|gl_texture16_arb|)
(defparameter gl::texture17 cg-user::|gl_texture17|)
(defparameter gl::texture17-arb cg-user::|gl_texture17_arb|)
(defparameter gl::texture18 cg-user::|gl_texture18|)
(defparameter gl::texture18-arb cg-user::|gl_texture18_arb|)
(defparameter gl::texture19 cg-user::|gl_texture19|)
(defparameter gl::texture19-arb cg-user::|gl_texture19_arb|)
(defparameter gl::texture1-arb cg-user::|gl_texture1_arb|)
(defparameter gl::texture-1d cg-user::|gl_texture_1d|)
(defparameter gl::texture-1d-array cg-user::|gl_texture_1d_array|)
(defparameter gl::texture-1d-array-ext cg-user::|gl_texture_1d_array_ext|)
(defparameter gl::texture-1d-binding-ext cg-user::|gl_texture_1d_binding_ext|)
(defparameter gl::texture-1d-stack-binding-mesax cg-user::|gl_texture_1d_stack_binding_mesax|)
(defparameter gl::texture-1d-stack-mesax cg-user::|gl_texture_1d_stack_mesax|)
(defparameter gl::texture2 cg-user::|gl_texture2|)
(defparameter gl::texture20 cg-user::|gl_texture20|)
(defparameter gl::texture20-arb cg-user::|gl_texture20_arb|)
(defparameter gl::texture21 cg-user::|gl_texture21|)
(defparameter gl::texture21-arb cg-user::|gl_texture21_arb|)
(defparameter gl::texture22 cg-user::|gl_texture22|)
(defparameter gl::texture22-arb cg-user::|gl_texture22_arb|)
(defparameter gl::texture23 cg-user::|gl_texture23|)
(defparameter gl::texture23-arb cg-user::|gl_texture23_arb|)
(defparameter gl::texture24 cg-user::|gl_texture24|)
(defparameter gl::texture24-arb cg-user::|gl_texture24_arb|)
(defparameter gl::texture25 cg-user::|gl_texture25|)
(defparameter gl::texture25-arb cg-user::|gl_texture25_arb|)
(defparameter gl::texture26 cg-user::|gl_texture26|)
(defparameter gl::texture26-arb cg-user::|gl_texture26_arb|)
(defparameter gl::texture27 cg-user::|gl_texture27|)
(defparameter gl::texture27-arb cg-user::|gl_texture27_arb|)
(defparameter gl::texture28 cg-user::|gl_texture28|)
(defparameter gl::texture28-arb cg-user::|gl_texture28_arb|)
(defparameter gl::texture29 cg-user::|gl_texture29|)
(defparameter gl::texture29-arb cg-user::|gl_texture29_arb|)
(defparameter gl::texture2-arb cg-user::|gl_texture2_arb|)
(defparameter gl::texture-2d cg-user::|gl_texture_2d|)
(defparameter gl::texture-2d-array cg-user::|gl_texture_2d_array|)
(defparameter gl::texture-2d-array-ext cg-user::|gl_texture_2d_array_ext|)
(defparameter gl::texture-2d-binding-ext cg-user::|gl_texture_2d_binding_ext|)
(defparameter gl::texture-2d-multisample cg-user::|gl_texture_2d_multisample|)
(defparameter gl::texture-2d-multisample-array cg-user::|gl_texture_2d_multisample_array|)
(defparameter gl::texture-2d-multisample-array-oes cg-user::|gl_texture_2d_multisample_array_oes|)
(defparameter gl::texture-2d-stack-binding-mesax cg-user::|gl_texture_2d_stack_binding_mesax|)
(defparameter gl::texture-2d-stack-mesax cg-user::|gl_texture_2d_stack_mesax|)
(defparameter gl::texture3 cg-user::|gl_texture3|)
(defparameter gl::texture30 cg-user::|gl_texture30|)
(defparameter gl::texture30-arb cg-user::|gl_texture30_arb|)
(defparameter gl::texture31 cg-user::|gl_texture31|)
(defparameter gl::texture31-arb cg-user::|gl_texture31_arb|)
(defparameter gl::texture3-arb cg-user::|gl_texture3_arb|)
(defparameter gl::texture-3d cg-user::|gl_texture_3d|)
(defparameter gl::texture-3d-binding-ext cg-user::|gl_texture_3d_binding_ext|)
(defparameter gl::texture-3d-binding-oes cg-user::|gl_texture_3d_binding_oes|)
(defparameter gl::texture-3d-ext cg-user::|gl_texture_3d_ext|)
(defparameter gl::texture-3d-oes cg-user::|gl_texture_3d_oes|)
(defparameter gl::texture4 cg-user::|gl_texture4|)
(defparameter gl::texture4-arb cg-user::|gl_texture4_arb|)
(defparameter gl::texture-4d-binding-sgis cg-user::|gl_texture_4d_binding_sgis|)
(defparameter gl::texture-4d-sgis cg-user::|gl_texture_4d_sgis|)
(defparameter gl::texture-4dsize-sgis cg-user::|gl_texture_4dsize_sgis|)
(defparameter gl::texture5 cg-user::|gl_texture5|)
(defparameter gl::texture5-arb cg-user::|gl_texture5_arb|)
(defparameter gl::texture6 cg-user::|gl_texture6|)
(defparameter gl::texture6-arb cg-user::|gl_texture6_arb|)
(defparameter gl::texture7 cg-user::|gl_texture7|)
(defparameter gl::texture7-arb cg-user::|gl_texture7_arb|)
(defparameter gl::texture8 cg-user::|gl_texture8|)
(defparameter gl::texture8-arb cg-user::|gl_texture8_arb|)
(defparameter gl::texture9 cg-user::|gl_texture9|)
(defparameter gl::texture9-arb cg-user::|gl_texture9_arb|)
(defparameter gl::texture-alpha-modulate-img cg-user::|gl_texture_alpha_modulate_img|)
(defparameter gl::texture-alpha-size cg-user::|gl_texture_alpha_size|)
(defparameter gl::texture-alpha-size-ext cg-user::|gl_texture_alpha_size_ext|)
(defparameter gl::texture-alpha-type cg-user::|gl_texture_alpha_type|)
(defparameter gl::texture-alpha-type-arb cg-user::|gl_texture_alpha_type_arb|)
(defparameter gl::texture-application-mode-ext cg-user::|gl_texture_application_mode_ext|)
(defparameter gl::texture-base-level cg-user::|gl_texture_base_level|)
(defparameter gl::texture-base-level-sgis cg-user::|gl_texture_base_level_sgis|)
(defparameter gl::texture-binding-1d cg-user::|gl_texture_binding_1d|)
(defparameter gl::texture-binding-1d-array cg-user::|gl_texture_binding_1d_array|)
(defparameter gl::texture-binding-1d-array-ext cg-user::|gl_texture_binding_1d_array_ext|)
(defparameter gl::texture-binding-2d cg-user::|gl_texture_binding_2d|)
(defparameter gl::texture-binding-2d-array cg-user::|gl_texture_binding_2d_array|)
(defparameter gl::texture-binding-2d-array-ext cg-user::|gl_texture_binding_2d_array_ext|)
(defparameter gl::texture-binding-2d-multisample cg-user::|gl_texture_binding_2d_multisample|)
(defparameter gl::texture-binding-2d-multisample-array cg-user::|gl_texture_binding_2d_multisample_array|)
(defparameter gl::texture-binding-2d-multisample-array-oes cg-user::|gl_texture_binding_2d_multisample_array_oes|)
(defparameter gl::texture-binding-3d cg-user::|gl_texture_binding_3d|)
(defparameter gl::texture-binding-3d-oes cg-user::|gl_texture_binding_3d_oes|)
(defparameter gl::texture-binding-buffer cg-user::|gl_texture_binding_buffer|)
(defparameter gl::texture-binding-buffer-arb cg-user::|gl_texture_binding_buffer_arb|)
(defparameter gl::texture-binding-buffer-ext cg-user::|gl_texture_binding_buffer_ext|)
(defparameter gl::texture-binding-buffer-oes cg-user::|gl_texture_binding_buffer_oes|)
(defparameter gl::texture-binding-cube-map cg-user::|gl_texture_binding_cube_map|)
(defparameter gl::texture-binding-cube-map-arb cg-user::|gl_texture_binding_cube_map_arb|)
(defparameter gl::texture-binding-cube-map-array cg-user::|gl_texture_binding_cube_map_array|)
(defparameter gl::texture-binding-cube-map-array-arb cg-user::|gl_texture_binding_cube_map_array_arb|)
(defparameter gl::texture-binding-cube-map-array-ext cg-user::|gl_texture_binding_cube_map_array_ext|)
(defparameter gl::texture-binding-cube-map-array-oes cg-user::|gl_texture_binding_cube_map_array_oes|)
(defparameter gl::texture-binding-cube-map-ext cg-user::|gl_texture_binding_cube_map_ext|)
(defparameter gl::texture-binding-cube-map-oes cg-user::|gl_texture_binding_cube_map_oes|)
(defparameter gl::texture-binding-external-oes cg-user::|gl_texture_binding_external_oes|)
(defparameter gl::texture-binding-rectangle cg-user::|gl_texture_binding_rectangle|)
(defparameter gl::texture-binding-rectangle-arb cg-user::|gl_texture_binding_rectangle_arb|)
(defparameter gl::texture-binding-rectangle-nv cg-user::|gl_texture_binding_rectangle_nv|)
(defparameter gl::texture-binding-renderbuffer-nv cg-user::|gl_texture_binding_renderbuffer_nv|)
(defparameter gl::texture-bit cg-user::|gl_texture_bit|)
(defparameter gl::texture-blue-size cg-user::|gl_texture_blue_size|)
(defparameter gl::texture-blue-size-ext cg-user::|gl_texture_blue_size_ext|)
(defparameter gl::texture-blue-type cg-user::|gl_texture_blue_type|)
(defparameter gl::texture-blue-type-arb cg-user::|gl_texture_blue_type_arb|)
(defparameter gl::texture-border cg-user::|gl_texture_border|)
(defparameter gl::texture-border-color cg-user::|gl_texture_border_color|)
(defparameter gl::texture-border-color-ext cg-user::|gl_texture_border_color_ext|)
(defparameter gl::texture-border-color-nv cg-user::|gl_texture_border_color_nv|)
(defparameter gl::texture-border-color-oes cg-user::|gl_texture_border_color_oes|)
(defparameter gl::texture-border-values-nv cg-user::|gl_texture_border_values_nv|)
(defparameter gl::texture-buffer cg-user::|gl_texture_buffer|)
(defparameter gl::texture-buffer-arb cg-user::|gl_texture_buffer_arb|)
(defparameter gl::texture-buffer-binding cg-user::|gl_texture_buffer_binding|)
(defparameter gl::texture-buffer-binding-ext cg-user::|gl_texture_buffer_binding_ext|)
(defparameter gl::texture-buffer-binding-oes cg-user::|gl_texture_buffer_binding_oes|)
(defparameter gl::texture-buffer-data-store-binding cg-user::|gl_texture_buffer_data_store_binding|)
(defparameter gl::texture-buffer-data-store-binding-arb cg-user::|gl_texture_buffer_data_store_binding_arb|)
(defparameter gl::texture-buffer-data-store-binding-ext cg-user::|gl_texture_buffer_data_store_binding_ext|)
(defparameter gl::texture-buffer-data-store-binding-oes cg-user::|gl_texture_buffer_data_store_binding_oes|)
(defparameter gl::texture-buffer-ext cg-user::|gl_texture_buffer_ext|)
(defparameter gl::texture-buffer-format-arb cg-user::|gl_texture_buffer_format_arb|)
(defparameter gl::texture-buffer-format-ext cg-user::|gl_texture_buffer_format_ext|)
(defparameter gl::texture-buffer-oes cg-user::|gl_texture_buffer_oes|)
(defparameter gl::texture-buffer-offset cg-user::|gl_texture_buffer_offset|)
(defparameter gl::texture-buffer-offset-alignment cg-user::|gl_texture_buffer_offset_alignment|)
(defparameter gl::texture-buffer-offset-alignment-ext cg-user::|gl_texture_buffer_offset_alignment_ext|)
(defparameter gl::texture-buffer-offset-alignment-oes cg-user::|gl_texture_buffer_offset_alignment_oes|)
(defparameter gl::texture-buffer-offset-ext cg-user::|gl_texture_buffer_offset_ext|)
(defparameter gl::texture-buffer-offset-oes cg-user::|gl_texture_buffer_offset_oes|)
(defparameter gl::texture-buffer-size cg-user::|gl_texture_buffer_size|)
(defparameter gl::texture-buffer-size-ext cg-user::|gl_texture_buffer_size_ext|)
(defparameter gl::texture-buffer-size-oes cg-user::|gl_texture_buffer_size_oes|)
(defparameter gl::texture-clipmap-center-sgix cg-user::|gl_texture_clipmap_center_sgix|)
(defparameter gl::texture-clipmap-depth-sgix cg-user::|gl_texture_clipmap_depth_sgix|)
(defparameter gl::texture-clipmap-frame-sgix cg-user::|gl_texture_clipmap_frame_sgix|)
(defparameter gl::texture-clipmap-lod-offset-sgix cg-user::|gl_texture_clipmap_lod_offset_sgix|)
(defparameter gl::texture-clipmap-offset-sgix cg-user::|gl_texture_clipmap_offset_sgix|)
(defparameter gl::texture-clipmap-virtual-depth-sgix cg-user::|gl_texture_clipmap_virtual_depth_sgix|)
(defparameter gl::texture-color-samples-nv cg-user::|gl_texture_color_samples_nv|)
(defparameter gl::texture-color-table-sgi cg-user::|gl_texture_color_table_sgi|)
(defparameter gl::texture-color-writemask-sgis cg-user::|gl_texture_color_writemask_sgis|)
(defparameter gl::texture-compare-fail-value-arb cg-user::|gl_texture_compare_fail_value_arb|)
(defparameter gl::texture-compare-func cg-user::|gl_texture_compare_func|)
(defparameter gl::texture-compare-func-arb cg-user::|gl_texture_compare_func_arb|)
(defparameter gl::texture-compare-func-ext cg-user::|gl_texture_compare_func_ext|)
(defparameter gl::texture-compare-mode cg-user::|gl_texture_compare_mode|)
(defparameter gl::texture-compare-mode-arb cg-user::|gl_texture_compare_mode_arb|)
(defparameter gl::texture-compare-mode-ext cg-user::|gl_texture_compare_mode_ext|)
(defparameter gl::texture-compare-operator-sgix cg-user::|gl_texture_compare_operator_sgix|)
(defparameter gl::texture-compare-sgix cg-user::|gl_texture_compare_sgix|)
(defparameter gl::texture-components cg-user::|gl_texture_components|)
(defparameter gl::texture-compressed cg-user::|gl_texture_compressed|)
(defparameter gl::texture-compressed-arb cg-user::|gl_texture_compressed_arb|)
(defparameter gl::texture-compressed-block-height cg-user::|gl_texture_compressed_block_height|)
(defparameter gl::texture-compressed-block-size cg-user::|gl_texture_compressed_block_size|)
(defparameter gl::texture-compressed-block-width cg-user::|gl_texture_compressed_block_width|)
(defparameter gl::texture-compressed-image-size cg-user::|gl_texture_compressed_image_size|)
(defparameter gl::texture-compressed-image-size-arb cg-user::|gl_texture_compressed_image_size_arb|)
(defparameter gl::texture-compression-hint cg-user::|gl_texture_compression_hint|)
(defparameter gl::texture-compression-hint-arb cg-user::|gl_texture_compression_hint_arb|)
(defparameter gl::texture-constant-data-sunx cg-user::|gl_texture_constant_data_sunx|)
(defparameter gl::texture-coord-array cg-user::|gl_texture_coord_array|)
(defparameter gl::texture-coord-array-address-nv cg-user::|gl_texture_coord_array_address_nv|)
(defparameter gl::texture-coord-array-buffer-binding cg-user::|gl_texture_coord_array_buffer_binding|)
(defparameter gl::texture-coord-array-buffer-binding-arb cg-user::|gl_texture_coord_array_buffer_binding_arb|)
(defparameter gl::texture-coord-array-count-ext cg-user::|gl_texture_coord_array_count_ext|)
(defparameter gl::texture-coord-array-ext cg-user::|gl_texture_coord_array_ext|)
(defparameter gl::texture-coord-array-length-nv cg-user::|gl_texture_coord_array_length_nv|)
(defparameter gl::texture-coord-array-list-ibm cg-user::|gl_texture_coord_array_list_ibm|)
(defparameter gl::texture-coord-array-list-stride-ibm cg-user::|gl_texture_coord_array_list_stride_ibm|)
(defparameter gl::texture-coord-array-parallel-pointers-intel cg-user::|gl_texture_coord_array_parallel_pointers_intel|)
(defparameter gl::texture-coord-array-pointer cg-user::|gl_texture_coord_array_pointer|)
(defparameter gl::texture-coord-array-pointer-ext cg-user::|gl_texture_coord_array_pointer_ext|)
(defparameter gl::texture-coord-array-size cg-user::|gl_texture_coord_array_size|)
(defparameter gl::texture-coord-array-size-ext cg-user::|gl_texture_coord_array_size_ext|)
(defparameter gl::texture-coord-array-stride cg-user::|gl_texture_coord_array_stride|)
(defparameter gl::texture-coord-array-stride-ext cg-user::|gl_texture_coord_array_stride_ext|)
(defparameter gl::texture-coord-array-type cg-user::|gl_texture_coord_array_type|)
(defparameter gl::texture-coord-array-type-ext cg-user::|gl_texture_coord_array_type_ext|)
(defparameter gl::texture-coord-nv cg-user::|gl_texture_coord_nv|)
(defparameter gl::texture-coverage-samples-nv cg-user::|gl_texture_coverage_samples_nv|)
(defparameter gl::texture-crop-rect-oes cg-user::|gl_texture_crop_rect_oes|)
(defparameter gl::texture-cube-map cg-user::|gl_texture_cube_map|)
(defparameter gl::texture-cube-map-arb cg-user::|gl_texture_cube_map_arb|)
(defparameter gl::texture-cube-map-array cg-user::|gl_texture_cube_map_array|)
(defparameter gl::texture-cube-map-array-arb cg-user::|gl_texture_cube_map_array_arb|)
(defparameter gl::texture-cube-map-array-ext cg-user::|gl_texture_cube_map_array_ext|)
(defparameter gl::texture-cube-map-array-oes cg-user::|gl_texture_cube_map_array_oes|)
(defparameter gl::texture-cube-map-ext cg-user::|gl_texture_cube_map_ext|)
(defparameter gl::texture-cube-map-negative-x cg-user::|gl_texture_cube_map_negative_x|)
(defparameter gl::texture-cube-map-negative-x-arb cg-user::|gl_texture_cube_map_negative_x_arb|)
(defparameter gl::texture-cube-map-negative-x-ext cg-user::|gl_texture_cube_map_negative_x_ext|)
(defparameter gl::texture-cube-map-negative-x-oes cg-user::|gl_texture_cube_map_negative_x_oes|)
(defparameter gl::texture-cube-map-negative-y cg-user::|gl_texture_cube_map_negative_y|)
(defparameter gl::texture-cube-map-negative-y-arb cg-user::|gl_texture_cube_map_negative_y_arb|)
(defparameter gl::texture-cube-map-negative-y-ext cg-user::|gl_texture_cube_map_negative_y_ext|)
(defparameter gl::texture-cube-map-negative-y-oes cg-user::|gl_texture_cube_map_negative_y_oes|)
(defparameter gl::texture-cube-map-negative-z cg-user::|gl_texture_cube_map_negative_z|)
(defparameter gl::texture-cube-map-negative-z-arb cg-user::|gl_texture_cube_map_negative_z_arb|)
(defparameter gl::texture-cube-map-negative-z-ext cg-user::|gl_texture_cube_map_negative_z_ext|)
(defparameter gl::texture-cube-map-negative-z-oes cg-user::|gl_texture_cube_map_negative_z_oes|)
(defparameter gl::texture-cube-map-oes cg-user::|gl_texture_cube_map_oes|)
(defparameter gl::texture-cube-map-positive-x cg-user::|gl_texture_cube_map_positive_x|)
(defparameter gl::texture-cube-map-positive-x-arb cg-user::|gl_texture_cube_map_positive_x_arb|)
(defparameter gl::texture-cube-map-positive-x-ext cg-user::|gl_texture_cube_map_positive_x_ext|)
(defparameter gl::texture-cube-map-positive-x-oes cg-user::|gl_texture_cube_map_positive_x_oes|)
(defparameter gl::texture-cube-map-positive-y cg-user::|gl_texture_cube_map_positive_y|)
(defparameter gl::texture-cube-map-positive-y-arb cg-user::|gl_texture_cube_map_positive_y_arb|)
(defparameter gl::texture-cube-map-positive-y-ext cg-user::|gl_texture_cube_map_positive_y_ext|)
(defparameter gl::texture-cube-map-positive-y-oes cg-user::|gl_texture_cube_map_positive_y_oes|)
(defparameter gl::texture-cube-map-positive-z cg-user::|gl_texture_cube_map_positive_z|)
(defparameter gl::texture-cube-map-positive-z-arb cg-user::|gl_texture_cube_map_positive_z_arb|)
(defparameter gl::texture-cube-map-positive-z-ext cg-user::|gl_texture_cube_map_positive_z_ext|)
(defparameter gl::texture-cube-map-positive-z-oes cg-user::|gl_texture_cube_map_positive_z_oes|)
(defparameter gl::texture-cube-map-seamless cg-user::|gl_texture_cube_map_seamless|)
(defparameter gl::texture-deformation-bit-sgix cg-user::|gl_texture_deformation_bit_sgix|)
(defparameter gl::texture-deformation-sgix cg-user::|gl_texture_deformation_sgix|)
(defparameter gl::texture-depth cg-user::|gl_texture_depth|)
(defparameter gl::texture-depth-ext cg-user::|gl_texture_depth_ext|)
(defparameter gl::texture-depth-qcom cg-user::|gl_texture_depth_qcom|)
(defparameter gl::texture-depth-size cg-user::|gl_texture_depth_size|)
(defparameter gl::texture-depth-size-arb cg-user::|gl_texture_depth_size_arb|)
(defparameter gl::texture-depth-type cg-user::|gl_texture_depth_type|)
(defparameter gl::texture-depth-type-arb cg-user::|gl_texture_depth_type_arb|)
(defparameter gl::texture-ds-size-nv cg-user::|gl_texture_ds_size_nv|)
(defparameter gl::texture-dt-size-nv cg-user::|gl_texture_dt_size_nv|)
(defparameter gl::texture-env cg-user::|gl_texture_env|)
(defparameter gl::texture-env-bias-sgix cg-user::|gl_texture_env_bias_sgix|)
(defparameter gl::texture-env-color cg-user::|gl_texture_env_color|)
(defparameter gl::texture-env-mode cg-user::|gl_texture_env_mode|)
(defparameter gl::texture-external-oes cg-user::|gl_texture_external_oes|)
(defparameter gl::texture-fetch-barrier-bit cg-user::|gl_texture_fetch_barrier_bit|)
(defparameter gl::texture-fetch-barrier-bit-ext cg-user::|gl_texture_fetch_barrier_bit_ext|)
(defparameter gl::texture-filter4-size-sgis cg-user::|gl_texture_filter4_size_sgis|)
(defparameter gl::texture-filter-control cg-user::|gl_texture_filter_control|)
(defparameter gl::texture-filter-control-ext cg-user::|gl_texture_filter_control_ext|)
(defparameter gl::texture-fixed-sample-locations cg-user::|gl_texture_fixed_sample_locations|)
(defparameter gl::texture-float-components-nv cg-user::|gl_texture_float_components_nv|)
(defparameter gl::texture-format-qcom cg-user::|gl_texture_format_qcom|)
(defparameter gl::texture-free-memory-ati cg-user::|gl_texture_free_memory_ati|)
(defparameter gl::texture-gather cg-user::|gl_texture_gather|)
(defparameter gl::texture-gather-shadow cg-user::|gl_texture_gather_shadow|)
(defparameter gl::texture-gen-mode cg-user::|gl_texture_gen_mode|)
(defparameter gl::texture-gen-mode-oes cg-user::|gl_texture_gen_mode_oes|)
(defparameter gl::texture-gen-q cg-user::|gl_texture_gen_q|)
(defparameter gl::texture-gen-r cg-user::|gl_texture_gen_r|)
(defparameter gl::texture-gen-s cg-user::|gl_texture_gen_s|)
(defparameter gl::texture-gen-str-oes cg-user::|gl_texture_gen_str_oes|)
(defparameter gl::texture-gen-t cg-user::|gl_texture_gen_t|)
(defparameter gl::texture-gequal-r-sgix cg-user::|gl_texture_gequal_r_sgix|)
(defparameter gl::texture-green-size cg-user::|gl_texture_green_size|)
(defparameter gl::texture-green-size-ext cg-user::|gl_texture_green_size_ext|)
(defparameter gl::texture-green-type cg-user::|gl_texture_green_type|)
(defparameter gl::texture-green-type-arb cg-user::|gl_texture_green_type_arb|)
(defparameter gl::texture-height cg-user::|gl_texture_height|)
(defparameter gl::texture-height-qcom cg-user::|gl_texture_height_qcom|)
(defparameter gl::texture-hi-size-nv cg-user::|gl_texture_hi_size_nv|)
(defparameter gl::texture-image-format cg-user::|gl_texture_image_format|)
(defparameter gl::texture-image-type cg-user::|gl_texture_image_type|)
(defparameter gl::texture-image-valid-qcom cg-user::|gl_texture_image_valid_qcom|)
(defparameter gl::texture-immutable-format cg-user::|gl_texture_immutable_format|)
(defparameter gl::texture-immutable-format-ext cg-user::|gl_texture_immutable_format_ext|)
(defparameter gl::texture-immutable-levels cg-user::|gl_texture_immutable_levels|)
(defparameter gl::texture-index-size-ext cg-user::|gl_texture_index_size_ext|)
(defparameter gl::texture-intensity-size cg-user::|gl_texture_intensity_size|)
(defparameter gl::texture-intensity-size-ext cg-user::|gl_texture_intensity_size_ext|)
(defparameter gl::texture-intensity-type cg-user::|gl_texture_intensity_type|)
(defparameter gl::texture-intensity-type-arb cg-user::|gl_texture_intensity_type_arb|)
(defparameter gl::texture-internal-format cg-user::|gl_texture_internal_format|)
(defparameter gl::texture-internal-format-qcom cg-user::|gl_texture_internal_format_qcom|)
(defparameter gl::texture-lequal-r-sgix cg-user::|gl_texture_lequal_r_sgix|)
(defparameter gl::texture-light-ext cg-user::|gl_texture_light_ext|)
(defparameter gl::texture-lighting-mode-hp cg-user::|gl_texture_lighting_mode_hp|)
(defparameter gl::texture-lod-bias cg-user::|gl_texture_lod_bias|)
(defparameter gl::texture-lod-bias-ext cg-user::|gl_texture_lod_bias_ext|)
(defparameter gl::texture-lod-bias-r-sgix cg-user::|gl_texture_lod_bias_r_sgix|)
(defparameter gl::texture-lod-bias-s-sgix cg-user::|gl_texture_lod_bias_s_sgix|)
(defparameter gl::texture-lod-bias-t-sgix cg-user::|gl_texture_lod_bias_t_sgix|)
(defparameter gl::texture-lo-size-nv cg-user::|gl_texture_lo_size_nv|)
(defparameter gl::texture-luminance-size cg-user::|gl_texture_luminance_size|)
(defparameter gl::texture-luminance-size-ext cg-user::|gl_texture_luminance_size_ext|)
(defparameter gl::texture-luminance-type cg-user::|gl_texture_luminance_type|)
(defparameter gl::texture-luminance-type-arb cg-user::|gl_texture_luminance_type_arb|)
(defparameter gl::texture-mag-filter cg-user::|gl_texture_mag_filter|)
(defparameter gl::texture-mag-size-nv cg-user::|gl_texture_mag_size_nv|)
(defparameter gl::texture-material-face-ext cg-user::|gl_texture_material_face_ext|)
(defparameter gl::texture-material-parameter-ext cg-user::|gl_texture_material_parameter_ext|)
(defparameter gl::texture-matrix cg-user::|gl_texture_matrix|)
(defparameter gl::texture-matrix-float-as-int-bits-oes cg-user::|gl_texture_matrix_float_as_int_bits_oes|)
(defparameter gl::texture-max-anisotropy-ext cg-user::|gl_texture_max_anisotropy_ext|)
(defparameter gl::texture-max-clamp-r-sgix cg-user::|gl_texture_max_clamp_r_sgix|)
(defparameter gl::texture-max-clamp-s-sgix cg-user::|gl_texture_max_clamp_s_sgix|)
(defparameter gl::texture-max-clamp-t-sgix cg-user::|gl_texture_max_clamp_t_sgix|)
(defparameter gl::texture-max-level cg-user::|gl_texture_max_level|)
(defparameter gl::texture-max-level-apple cg-user::|gl_texture_max_level_apple|)
(defparameter gl::texture-max-level-sgis cg-user::|gl_texture_max_level_sgis|)
(defparameter gl::texture-max-lod cg-user::|gl_texture_max_lod|)
(defparameter gl::texture-max-lod-sgis cg-user::|gl_texture_max_lod_sgis|)
(defparameter gl::texture-memory-layout-intel cg-user::|gl_texture_memory_layout_intel|)
(defparameter gl::texture-min-filter cg-user::|gl_texture_min_filter|)
(defparameter gl::texture-min-lod cg-user::|gl_texture_min_lod|)
(defparameter gl::texture-min-lod-sgis cg-user::|gl_texture_min_lod_sgis|)
(defparameter gl::texture-multi-buffer-hint-sgix cg-user::|gl_texture_multi_buffer_hint_sgix|)
(defparameter gl::texture-normal-ext cg-user::|gl_texture_normal_ext|)
(defparameter gl::texture-num-levels-qcom cg-user::|gl_texture_num_levels_qcom|)
(defparameter gl::texture-object-valid-qcom cg-user::|gl_texture_object_valid_qcom|)
(defparameter gl::texture-post-specular-hp cg-user::|gl_texture_post_specular_hp|)
(defparameter gl::texture-pre-specular-hp cg-user::|gl_texture_pre_specular_hp|)
(defparameter gl::texture-priority cg-user::|gl_texture_priority|)
(defparameter gl::texture-priority-ext cg-user::|gl_texture_priority_ext|)
(defparameter gl::texture-range-length-apple cg-user::|gl_texture_range_length_apple|)
(defparameter gl::texture-range-pointer-apple cg-user::|gl_texture_range_pointer_apple|)
(defparameter gl::texture-rectangle cg-user::|gl_texture_rectangle|)
(defparameter gl::texture-rectangle-arb cg-user::|gl_texture_rectangle_arb|)
(defparameter gl::texture-rectangle-nv cg-user::|gl_texture_rectangle_nv|)
(defparameter gl::texture-red-size cg-user::|gl_texture_red_size|)
(defparameter gl::texture-red-size-ext cg-user::|gl_texture_red_size_ext|)
(defparameter gl::texture-red-type cg-user::|gl_texture_red_type|)
(defparameter gl::texture-red-type-arb cg-user::|gl_texture_red_type_arb|)
(defparameter gl::texture-reduction-mode-arb cg-user::|gl_texture_reduction_mode_arb|)
(defparameter gl::texture-renderbuffer-data-store-binding-nv cg-user::|gl_texture_renderbuffer_data_store_binding_nv|)
(defparameter gl::texture-renderbuffer-nv cg-user::|gl_texture_renderbuffer_nv|)
(defparameter gl::texture-resident cg-user::|gl_texture_resident|)
(defparameter gl::texture-resident-ext cg-user::|gl_texture_resident_ext|)
(defparameter gl::texture-samples cg-user::|gl_texture_samples|)
(defparameter gl::texture-samples-img cg-user::|gl_texture_samples_img|)
(defparameter gl::texture-shader-nv cg-user::|gl_texture_shader_nv|)
(defparameter gl::texture-shadow cg-user::|gl_texture_shadow|)
(defparameter gl::texture-shared-size cg-user::|gl_texture_shared_size|)
(defparameter gl::texture-shared-size-ext cg-user::|gl_texture_shared_size_ext|)
(defparameter gl::texture-sparse-arb cg-user::|gl_texture_sparse_arb|)
(defparameter gl::texture-sparse-ext cg-user::|gl_texture_sparse_ext|)
(defparameter gl::texture-srgb-decode-ext cg-user::|gl_texture_srgb_decode_ext|)
(defparameter gl::texture-stack-depth cg-user::|gl_texture_stack_depth|)
(defparameter gl::texture-stencil-size cg-user::|gl_texture_stencil_size|)
(defparameter gl::texture-stencil-size-ext cg-user::|gl_texture_stencil_size_ext|)
(defparameter gl::texture-storage-hint-apple cg-user::|gl_texture_storage_hint_apple|)
(defparameter gl::texture-storage-sparse-bit-amd cg-user::|gl_texture_storage_sparse_bit_amd|)
(defparameter gl::texture-swizzle-a cg-user::|gl_texture_swizzle_a|)
(defparameter gl::texture-swizzle-a-ext cg-user::|gl_texture_swizzle_a_ext|)
(defparameter gl::texture-swizzle-b cg-user::|gl_texture_swizzle_b|)
(defparameter gl::texture-swizzle-b-ext cg-user::|gl_texture_swizzle_b_ext|)
(defparameter gl::texture-swizzle-g cg-user::|gl_texture_swizzle_g|)
(defparameter gl::texture-swizzle-g-ext cg-user::|gl_texture_swizzle_g_ext|)
(defparameter gl::texture-swizzle-r cg-user::|gl_texture_swizzle_r|)
(defparameter gl::texture-swizzle-r-ext cg-user::|gl_texture_swizzle_r_ext|)
(defparameter gl::texture-swizzle-rgba cg-user::|gl_texture_swizzle_rgba|)
(defparameter gl::texture-swizzle-rgba-ext cg-user::|gl_texture_swizzle_rgba_ext|)
(defparameter gl::texture-target cg-user::|gl_texture_target|)
(defparameter gl::texture-target-qcom cg-user::|gl_texture_target_qcom|)
(defparameter gl::texture-too-large-ext cg-user::|gl_texture_too_large_ext|)
(defparameter gl::texture-type-qcom cg-user::|gl_texture_type_qcom|)
(defparameter gl::texture-unsigned-remap-mode-nv cg-user::|gl_texture_unsigned_remap_mode_nv|)
(defparameter gl::texture-update-barrier-bit cg-user::|gl_texture_update_barrier_bit|)
(defparameter gl::texture-update-barrier-bit-ext cg-user::|gl_texture_update_barrier_bit_ext|)
(defparameter gl::texture-usage-angle cg-user::|gl_texture_usage_angle|)
(defparameter gl::texture-view cg-user::|gl_texture_view|)
(defparameter gl::texture-view-min-layer cg-user::|gl_texture_view_min_layer|)
(defparameter gl::texture-view-min-layer-ext cg-user::|gl_texture_view_min_layer_ext|)
(defparameter gl::texture-view-min-layer-oes cg-user::|gl_texture_view_min_layer_oes|)
(defparameter gl::texture-view-min-level cg-user::|gl_texture_view_min_level|)
(defparameter gl::texture-view-min-level-ext cg-user::|gl_texture_view_min_level_ext|)
(defparameter gl::texture-view-min-level-oes cg-user::|gl_texture_view_min_level_oes|)
(defparameter gl::texture-view-num-layers cg-user::|gl_texture_view_num_layers|)
(defparameter gl::texture-view-num-layers-ext cg-user::|gl_texture_view_num_layers_ext|)
(defparameter gl::texture-view-num-layers-oes cg-user::|gl_texture_view_num_layers_oes|)
(defparameter gl::texture-view-num-levels cg-user::|gl_texture_view_num_levels|)
(defparameter gl::texture-view-num-levels-ext cg-user::|gl_texture_view_num_levels_ext|)
(defparameter gl::texture-view-num-levels-oes cg-user::|gl_texture_view_num_levels_oes|)
(defparameter gl::texture-width cg-user::|gl_texture_width|)
(defparameter gl::texture-width-qcom cg-user::|gl_texture_width_qcom|)
(defparameter gl::texture-wrap-q-sgis cg-user::|gl_texture_wrap_q_sgis|)
(defparameter gl::texture-wrap-r cg-user::|gl_texture_wrap_r|)
(defparameter gl::texture-wrap-r-ext cg-user::|gl_texture_wrap_r_ext|)
(defparameter gl::texture-wrap-r-oes cg-user::|gl_texture_wrap_r_oes|)
(defparameter gl::texture-wrap-s cg-user::|gl_texture_wrap_s|)
(defparameter gl::texture-wrap-t cg-user::|gl_texture_wrap_t|)
(defparameter gl::time-elapsed cg-user::|gl_time_elapsed|)
(defparameter gl::time-elapsed-ext cg-user::|gl_time_elapsed_ext|)
(defparameter gl::timeout-expired cg-user::|gl_timeout_expired|)
(defparameter gl::timeout-expired-apple cg-user::|gl_timeout_expired_apple|)
(defparameter gl::timeout-ignored cg-user::|gl_timeout_ignored|)
(defparameter gl::timeout-ignored-apple cg-user::|gl_timeout_ignored_apple|)
(defparameter gl::timestamp cg-user::|gl_timestamp|)
(defparameter gl::timestamp-ext cg-user::|gl_timestamp_ext|)
(defparameter gl::top-level-array-size cg-user::|gl_top_level_array_size|)
(defparameter gl::top-level-array-stride cg-user::|gl_top_level_array_stride|)
(defparameter gl::trace-all-bits-mesa cg-user::|gl_trace_all_bits_mesa|)
(defparameter gl::trace-arrays-bit-mesa cg-user::|gl_trace_arrays_bit_mesa|)
(defparameter gl::trace-errors-bit-mesa cg-user::|gl_trace_errors_bit_mesa|)
(defparameter gl::trace-mask-mesa cg-user::|gl_trace_mask_mesa|)
(defparameter gl::trace-name-mesa cg-user::|gl_trace_name_mesa|)
(defparameter gl::trace-operations-bit-mesa cg-user::|gl_trace_operations_bit_mesa|)
(defparameter gl::trace-pixels-bit-mesa cg-user::|gl_trace_pixels_bit_mesa|)
(defparameter gl::trace-primitives-bit-mesa cg-user::|gl_trace_primitives_bit_mesa|)
(defparameter gl::trace-textures-bit-mesa cg-user::|gl_trace_textures_bit_mesa|)
(defparameter gl::track-matrix-nv cg-user::|gl_track_matrix_nv|)
(defparameter gl::track-matrix-transform-nv cg-user::|gl_track_matrix_transform_nv|)
(defparameter gl::transform-bit cg-user::|gl_transform_bit|)
(defparameter gl::transform-feedback cg-user::|gl_transform_feedback|)
(defparameter gl::transform-feedback-active cg-user::|gl_transform_feedback_active|)
(defparameter gl::transform-feedback-attribs-nv cg-user::|gl_transform_feedback_attribs_nv|)
(defparameter gl::transform-feedback-barrier-bit cg-user::|gl_transform_feedback_barrier_bit|)
(defparameter gl::transform-feedback-barrier-bit-ext cg-user::|gl_transform_feedback_barrier_bit_ext|)
(defparameter gl::transform-feedback-binding cg-user::|gl_transform_feedback_binding|)
(defparameter gl::transform-feedback-binding-nv cg-user::|gl_transform_feedback_binding_nv|)
(defparameter gl::transform-feedback-buffer cg-user::|gl_transform_feedback_buffer|)
(defparameter gl::transform-feedback-buffer-active cg-user::|gl_transform_feedback_buffer_active|)
(defparameter gl::transform-feedback-buffer-active-nv cg-user::|gl_transform_feedback_buffer_active_nv|)
(defparameter gl::transform-feedback-buffer-binding cg-user::|gl_transform_feedback_buffer_binding|)
(defparameter gl::transform-feedback-buffer-binding-ext cg-user::|gl_transform_feedback_buffer_binding_ext|)
(defparameter gl::transform-feedback-buffer-binding-nv cg-user::|gl_transform_feedback_buffer_binding_nv|)
(defparameter gl::transform-feedback-buffer-ext cg-user::|gl_transform_feedback_buffer_ext|)
(defparameter gl::transform-feedback-buffer-index cg-user::|gl_transform_feedback_buffer_index|)
(defparameter gl::transform-feedback-buffer-mode cg-user::|gl_transform_feedback_buffer_mode|)
(defparameter gl::transform-feedback-buffer-mode-ext cg-user::|gl_transform_feedback_buffer_mode_ext|)
(defparameter gl::transform-feedback-buffer-mode-nv cg-user::|gl_transform_feedback_buffer_mode_nv|)
(defparameter gl::transform-feedback-buffer-nv cg-user::|gl_transform_feedback_buffer_nv|)
(defparameter gl::transform-feedback-buffer-paused cg-user::|gl_transform_feedback_buffer_paused|)
(defparameter gl::transform-feedback-buffer-paused-nv cg-user::|gl_transform_feedback_buffer_paused_nv|)
(defparameter gl::transform-feedback-buffer-size cg-user::|gl_transform_feedback_buffer_size|)
(defparameter gl::transform-feedback-buffer-size-ext cg-user::|gl_transform_feedback_buffer_size_ext|)
(defparameter gl::transform-feedback-buffer-size-nv cg-user::|gl_transform_feedback_buffer_size_nv|)
(defparameter gl::transform-feedback-buffer-start cg-user::|gl_transform_feedback_buffer_start|)
(defparameter gl::transform-feedback-buffer-start-ext cg-user::|gl_transform_feedback_buffer_start_ext|)
(defparameter gl::transform-feedback-buffer-start-nv cg-user::|gl_transform_feedback_buffer_start_nv|)
(defparameter gl::transform-feedback-buffer-stride cg-user::|gl_transform_feedback_buffer_stride|)
(defparameter gl::transform-feedback-nv cg-user::|gl_transform_feedback_nv|)
(defparameter gl::transform-feedback-overflow-arb cg-user::|gl_transform_feedback_overflow_arb|)
(defparameter gl::transform-feedback-paused cg-user::|gl_transform_feedback_paused|)
(defparameter gl::transform-feedback-primitives-written cg-user::|gl_transform_feedback_primitives_written|)
(defparameter gl::transform-feedback-primitives-written-ext cg-user::|gl_transform_feedback_primitives_written_ext|)
(defparameter gl::transform-feedback-primitives-written-nv cg-user::|gl_transform_feedback_primitives_written_nv|)
(defparameter gl::transform-feedback-record-nv cg-user::|gl_transform_feedback_record_nv|)
(defparameter gl::transform-feedback-stream-overflow-arb cg-user::|gl_transform_feedback_stream_overflow_arb|)
(defparameter gl::transform-feedback-varying cg-user::|gl_transform_feedback_varying|)
(defparameter gl::transform-feedback-varying-max-length cg-user::|gl_transform_feedback_varying_max_length|)
(defparameter gl::transform-feedback-varying-max-length-ext cg-user::|gl_transform_feedback_varying_max_length_ext|)
(defparameter gl::transform-feedback-varyings cg-user::|gl_transform_feedback_varyings|)
(defparameter gl::transform-feedback-varyings-ext cg-user::|gl_transform_feedback_varyings_ext|)
(defparameter gl::transform-feedback-varyings-nv cg-user::|gl_transform_feedback_varyings_nv|)
(defparameter gl::transform-hint-apple cg-user::|gl_transform_hint_apple|)
(defparameter gl::translate-2d-nv cg-user::|gl_translate_2d_nv|)
(defparameter gl::translate-3d-nv cg-user::|gl_translate_3d_nv|)
(defparameter gl::translated-shader-source-length-angle cg-user::|gl_translated_shader_source_length_angle|)
(defparameter gl::translate-x-nv cg-user::|gl_translate_x_nv|)
(defparameter gl::translate-y-nv cg-user::|gl_translate_y_nv|)
(defparameter gl::transpose-affine-2d-nv cg-user::|gl_transpose_affine_2d_nv|)
(defparameter gl::transpose-affine-3d-nv cg-user::|gl_transpose_affine_3d_nv|)
(defparameter gl::transpose-color-matrix cg-user::|gl_transpose_color_matrix|)
(defparameter gl::transpose-color-matrix-arb cg-user::|gl_transpose_color_matrix_arb|)
(defparameter gl::transpose-current-matrix-arb cg-user::|gl_transpose_current_matrix_arb|)
(defparameter gl::transpose-modelview-matrix cg-user::|gl_transpose_modelview_matrix|)
(defparameter gl::transpose-modelview-matrix-arb cg-user::|gl_transpose_modelview_matrix_arb|)
(defparameter gl::transpose-nv cg-user::|gl_transpose_nv|)
(defparameter gl::transpose-program-matrix-ext cg-user::|gl_transpose_program_matrix_ext|)
(defparameter gl::transpose-projection-matrix cg-user::|gl_transpose_projection_matrix|)
(defparameter gl::transpose-projection-matrix-arb cg-user::|gl_transpose_projection_matrix_arb|)
(defparameter gl::transpose-texture-matrix cg-user::|gl_transpose_texture_matrix|)
(defparameter gl::transpose-texture-matrix-arb cg-user::|gl_transpose_texture_matrix_arb|)
(defparameter gl::triangle-fan cg-user::|gl_triangle_fan|)
(defparameter gl::triangle-list-sun cg-user::|gl_triangle_list_sun|)
(defparameter gl::triangle-mesh-sun cg-user::|gl_triangle_mesh_sun|)
(defparameter gl::triangles cg-user::|gl_triangles|)
(defparameter gl::triangles-adjacency cg-user::|gl_triangles_adjacency|)
(defparameter gl::triangles-adjacency-arb cg-user::|gl_triangles_adjacency_arb|)
(defparameter gl::triangles-adjacency-ext cg-user::|gl_triangles_adjacency_ext|)
(defparameter gl::triangles-adjacency-oes cg-user::|gl_triangles_adjacency_oes|)
(defparameter gl::triangle-strip cg-user::|gl_triangle_strip|)
(defparameter gl::triangle-strip-adjacency cg-user::|gl_triangle_strip_adjacency|)
(defparameter gl::triangle-strip-adjacency-arb cg-user::|gl_triangle_strip_adjacency_arb|)
(defparameter gl::triangle-strip-adjacency-ext cg-user::|gl_triangle_strip_adjacency_ext|)
(defparameter gl::triangle-strip-adjacency-oes cg-user::|gl_triangle_strip_adjacency_oes|)
(defparameter gl::triangular-nv cg-user::|gl_triangular_nv|)
(defparameter gl::true cg-user::|gl_true|)
(defparameter gl::type cg-user::|gl_type|)
(defparameter gl::uncorrelated-nv cg-user::|gl_uncorrelated_nv|)
(defparameter gl::undefined-apple cg-user::|gl_undefined_apple|)
(defparameter gl::undefined-vertex cg-user::|gl_undefined_vertex|)
(defparameter gl::undefined-vertex-ext cg-user::|gl_undefined_vertex_ext|)
(defparameter gl::undefined-vertex-oes cg-user::|gl_undefined_vertex_oes|)
(defparameter gl::uniform cg-user::|gl_uniform|)
(defparameter gl::uniform-address-command-nv cg-user::|gl_uniform_address_command_nv|)
(defparameter gl::uniform-array-stride cg-user::|gl_uniform_array_stride|)
(defparameter gl::uniform-atomic-counter-buffer-index cg-user::|gl_uniform_atomic_counter_buffer_index|)
(defparameter gl::uniform-barrier-bit cg-user::|gl_uniform_barrier_bit|)
(defparameter gl::uniform-barrier-bit-ext cg-user::|gl_uniform_barrier_bit_ext|)
(defparameter gl::uniform-block cg-user::|gl_uniform_block|)
(defparameter gl::uniform-block-active-uniform-indices cg-user::|gl_uniform_block_active_uniform_indices|)
(defparameter gl::uniform-block-active-uniforms cg-user::|gl_uniform_block_active_uniforms|)
(defparameter gl::uniform-block-binding cg-user::|gl_uniform_block_binding|)
(defparameter gl::uniform-block-data-size cg-user::|gl_uniform_block_data_size|)
(defparameter gl::uniform-block-index cg-user::|gl_uniform_block_index|)
(defparameter gl::uniform-block-name-length cg-user::|gl_uniform_block_name_length|)
(defparameter gl::uniform-block-referenced-by-compute-shader cg-user::|gl_uniform_block_referenced_by_compute_shader|)
(defparameter gl::uniform-block-referenced-by-fragment-shader cg-user::|gl_uniform_block_referenced_by_fragment_shader|)
(defparameter gl::uniform-block-referenced-by-geometry-shader cg-user::|gl_uniform_block_referenced_by_geometry_shader|)
(defparameter gl::uniform-block-referenced-by-tess-control-shader cg-user::|gl_uniform_block_referenced_by_tess_control_shader|)
(defparameter gl::uniform-block-referenced-by-tess-evaluation-shader cg-user::|gl_uniform_block_referenced_by_tess_evaluation_shader|)
(defparameter gl::uniform-block-referenced-by-vertex-shader cg-user::|gl_uniform_block_referenced_by_vertex_shader|)
(defparameter gl::uniform-buffer cg-user::|gl_uniform_buffer|)
(defparameter gl::uniform-buffer-address-nv cg-user::|gl_uniform_buffer_address_nv|)
(defparameter gl::uniform-buffer-binding cg-user::|gl_uniform_buffer_binding|)
(defparameter gl::uniform-buffer-binding-ext cg-user::|gl_uniform_buffer_binding_ext|)
(defparameter gl::uniform-buffer-ext cg-user::|gl_uniform_buffer_ext|)
(defparameter gl::uniform-buffer-length-nv cg-user::|gl_uniform_buffer_length_nv|)
(defparameter gl::uniform-buffer-offset-alignment cg-user::|gl_uniform_buffer_offset_alignment|)
(defparameter gl::uniform-buffer-size cg-user::|gl_uniform_buffer_size|)
(defparameter gl::uniform-buffer-start cg-user::|gl_uniform_buffer_start|)
(defparameter gl::uniform-buffer-unified-nv cg-user::|gl_uniform_buffer_unified_nv|)
(defparameter gl::uniform-is-row-major cg-user::|gl_uniform_is_row_major|)
(defparameter gl::uniform-matrix-stride cg-user::|gl_uniform_matrix_stride|)
(defparameter gl::uniform-name-length cg-user::|gl_uniform_name_length|)
(defparameter gl::uniform-offset cg-user::|gl_uniform_offset|)
(defparameter gl::uniform-size cg-user::|gl_uniform_size|)
(defparameter gl::uniform-type cg-user::|gl_uniform_type|)
(defparameter gl::unknown-context-reset cg-user::|gl_unknown_context_reset|)
(defparameter gl::unknown-context-reset-arb cg-user::|gl_unknown_context_reset_arb|)
(defparameter gl::unknown-context-reset-ext cg-user::|gl_unknown_context_reset_ext|)
(defparameter gl::unknown-context-reset-khr cg-user::|gl_unknown_context_reset_khr|)
(defparameter gl::unpack-alignment cg-user::|gl_unpack_alignment|)
(defparameter gl::unpack-client-storage-apple cg-user::|gl_unpack_client_storage_apple|)
(defparameter gl::unpack-cmyk-hint-ext cg-user::|gl_unpack_cmyk_hint_ext|)
(defparameter gl::unpack-colorspace-conversion-webgl cg-user::|gl_unpack_colorspace_conversion_webgl|)
(defparameter gl::unpack-compressed-block-depth cg-user::|gl_unpack_compressed_block_depth|)
(defparameter gl::unpack-compressed-block-height cg-user::|gl_unpack_compressed_block_height|)
(defparameter gl::unpack-compressed-block-size cg-user::|gl_unpack_compressed_block_size|)
(defparameter gl::unpack-compressed-block-width cg-user::|gl_unpack_compressed_block_width|)
(defparameter gl::unpack-compressed-size-sgix cg-user::|gl_unpack_compressed_size_sgix|)
(defparameter gl::unpack-constant-data-sunx cg-user::|gl_unpack_constant_data_sunx|)
(defparameter gl::unpack-flip-y-webgl cg-user::|gl_unpack_flip_y_webgl|)
(defparameter gl::unpack-image-depth-sgis cg-user::|gl_unpack_image_depth_sgis|)
(defparameter gl::unpack-image-height cg-user::|gl_unpack_image_height|)
(defparameter gl::unpack-image-height-ext cg-user::|gl_unpack_image_height_ext|)
(defparameter gl::unpack-lsb-first cg-user::|gl_unpack_lsb_first|)
(defparameter gl::unpack-premultiply-alpha-webgl cg-user::|gl_unpack_premultiply_alpha_webgl|)
(defparameter gl::unpack-resample-oml cg-user::|gl_unpack_resample_oml|)
(defparameter gl::unpack-resample-sgix cg-user::|gl_unpack_resample_sgix|)
(defparameter gl::unpack-row-bytes-apple cg-user::|gl_unpack_row_bytes_apple|)
(defparameter gl::unpack-row-length cg-user::|gl_unpack_row_length|)
(defparameter gl::unpack-row-length-ext cg-user::|gl_unpack_row_length_ext|)
(defparameter gl::unpack-skip-images cg-user::|gl_unpack_skip_images|)
(defparameter gl::unpack-skip-images-ext cg-user::|gl_unpack_skip_images_ext|)
(defparameter gl::unpack-skip-pixels cg-user::|gl_unpack_skip_pixels|)
(defparameter gl::unpack-skip-pixels-ext cg-user::|gl_unpack_skip_pixels_ext|)
(defparameter gl::unpack-skip-rows cg-user::|gl_unpack_skip_rows|)
(defparameter gl::unpack-skip-rows-ext cg-user::|gl_unpack_skip_rows_ext|)
(defparameter gl::unpack-skip-volumes-sgis cg-user::|gl_unpack_skip_volumes_sgis|)
(defparameter gl::unpack-subsample-rate-sgix cg-user::|gl_unpack_subsample_rate_sgix|)
(defparameter gl::unpack-swap-bytes cg-user::|gl_unpack_swap_bytes|)
(defparameter gl::unsignaled cg-user::|gl_unsignaled|)
(defparameter gl::unsignaled-apple cg-user::|gl_unsignaled_apple|)
(defparameter gl::unsigned-byte cg-user::|gl_unsigned_byte|)
(defparameter gl::unsigned-byte-2-3-3-rev cg-user::|gl_unsigned_byte_2_3_3_rev|)
(defparameter gl::unsigned-byte-2-3-3-rev-ext cg-user::|gl_unsigned_byte_2_3_3_rev_ext|)
(defparameter gl::unsigned-byte-3-3-2 cg-user::|gl_unsigned_byte_3_3_2|)
(defparameter gl::unsigned-byte-3-3-2-ext cg-user::|gl_unsigned_byte_3_3_2_ext|)
(defparameter gl::unsigned-identity-nv cg-user::|gl_unsigned_identity_nv|)
(defparameter gl::unsigned-int cg-user::|gl_unsigned_int|)
(defparameter gl::unsigned-int-10-10-10-2 cg-user::|gl_unsigned_int_10_10_10_2|)
(defparameter gl::unsigned-int-10-10-10-2-ext cg-user::|gl_unsigned_int_10_10_10_2_ext|)
(defparameter gl::unsigned-int-10-10-10-2-oes cg-user::|gl_unsigned_int_10_10_10_2_oes|)
(defparameter gl::unsigned-int-10f-11f-11f-rev cg-user::|gl_unsigned_int_10f_11f_11f_rev|)
(defparameter gl::unsigned-int-10f-11f-11f-rev-apple cg-user::|gl_unsigned_int_10f_11f_11f_rev_apple|)
(defparameter gl::unsigned-int-10f-11f-11f-rev-ext cg-user::|gl_unsigned_int_10f_11f_11f_rev_ext|)
(defparameter gl::unsigned-int16-nv cg-user::|gl_unsigned_int16_nv|)
(defparameter gl::unsigned-int16-vec2-nv cg-user::|gl_unsigned_int16_vec2_nv|)
(defparameter gl::unsigned-int16-vec3-nv cg-user::|gl_unsigned_int16_vec3_nv|)
(defparameter gl::unsigned-int16-vec4-nv cg-user::|gl_unsigned_int16_vec4_nv|)
(defparameter gl::unsigned-int-2-10-10-10-rev cg-user::|gl_unsigned_int_2_10_10_10_rev|)
(defparameter gl::unsigned-int-2-10-10-10-rev-ext cg-user::|gl_unsigned_int_2_10_10_10_rev_ext|)
(defparameter gl::unsigned-int-24-8 cg-user::|gl_unsigned_int_24_8|)
(defparameter gl::unsigned-int-24-8-ext cg-user::|gl_unsigned_int_24_8_ext|)
(defparameter gl::unsigned-int-24-8-mesa cg-user::|gl_unsigned_int_24_8_mesa|)
(defparameter gl::unsigned-int-24-8-nv cg-user::|gl_unsigned_int_24_8_nv|)
(defparameter gl::unsigned-int-24-8-oes cg-user::|gl_unsigned_int_24_8_oes|)
(defparameter gl::unsigned-int-5-9-9-9-rev cg-user::|gl_unsigned_int_5_9_9_9_rev|)
(defparameter gl::unsigned-int-5-9-9-9-rev-apple cg-user::|gl_unsigned_int_5_9_9_9_rev_apple|)
(defparameter gl::unsigned-int-5-9-9-9-rev-ext cg-user::|gl_unsigned_int_5_9_9_9_rev_ext|)
(defparameter gl::unsigned-int64-amd cg-user::|gl_unsigned_int64_amd|)
(defparameter gl::unsigned-int64-arb cg-user::|gl_unsigned_int64_arb|)
(defparameter gl::unsigned-int64-nv cg-user::|gl_unsigned_int64_nv|)
(defparameter gl::unsigned-int64-vec2-arb cg-user::|gl_unsigned_int64_vec2_arb|)
(defparameter gl::unsigned-int64-vec2-nv cg-user::|gl_unsigned_int64_vec2_nv|)
(defparameter gl::unsigned-int64-vec3-arb cg-user::|gl_unsigned_int64_vec3_arb|)
(defparameter gl::unsigned-int64-vec3-nv cg-user::|gl_unsigned_int64_vec3_nv|)
(defparameter gl::unsigned-int64-vec4-arb cg-user::|gl_unsigned_int64_vec4_arb|)
(defparameter gl::unsigned-int64-vec4-nv cg-user::|gl_unsigned_int64_vec4_nv|)
(defparameter gl::unsigned-int-8-24-rev-mesa cg-user::|gl_unsigned_int_8_24_rev_mesa|)
(defparameter gl::unsigned-int-8-8-8-8 cg-user::|gl_unsigned_int_8_8_8_8|)
(defparameter gl::unsigned-int-8-8-8-8-ext cg-user::|gl_unsigned_int_8_8_8_8_ext|)
(defparameter gl::unsigned-int-8-8-8-8-rev cg-user::|gl_unsigned_int_8_8_8_8_rev|)
(defparameter gl::unsigned-int-8-8-8-8-rev-ext cg-user::|gl_unsigned_int_8_8_8_8_rev_ext|)
(defparameter gl::unsigned-int-8-8-s8-s8-rev-nv cg-user::|gl_unsigned_int_8_8_s8_s8_rev_nv|)
(defparameter gl::unsigned-int8-nv cg-user::|gl_unsigned_int8_nv|)
(defparameter gl::unsigned-int8-vec2-nv cg-user::|gl_unsigned_int8_vec2_nv|)
(defparameter gl::unsigned-int8-vec3-nv cg-user::|gl_unsigned_int8_vec3_nv|)
(defparameter gl::unsigned-int8-vec4-nv cg-user::|gl_unsigned_int8_vec4_nv|)
(defparameter gl::unsigned-int-atomic-counter cg-user::|gl_unsigned_int_atomic_counter|)
(defparameter gl::unsigned-int-image-1d cg-user::|gl_unsigned_int_image_1d|)
(defparameter gl::unsigned-int-image-1d-array cg-user::|gl_unsigned_int_image_1d_array|)
(defparameter gl::unsigned-int-image-1d-array-ext cg-user::|gl_unsigned_int_image_1d_array_ext|)
(defparameter gl::unsigned-int-image-1d-ext cg-user::|gl_unsigned_int_image_1d_ext|)
(defparameter gl::unsigned-int-image-2d cg-user::|gl_unsigned_int_image_2d|)
(defparameter gl::unsigned-int-image-2d-array cg-user::|gl_unsigned_int_image_2d_array|)
(defparameter gl::unsigned-int-image-2d-array-ext cg-user::|gl_unsigned_int_image_2d_array_ext|)
(defparameter gl::unsigned-int-image-2d-ext cg-user::|gl_unsigned_int_image_2d_ext|)
(defparameter gl::unsigned-int-image-2d-multisample cg-user::|gl_unsigned_int_image_2d_multisample|)
(defparameter gl::unsigned-int-image-2d-multisample-array cg-user::|gl_unsigned_int_image_2d_multisample_array|)
(defparameter gl::unsigned-int-image-2d-multisample-array-ext cg-user::|gl_unsigned_int_image_2d_multisample_array_ext|)
(defparameter gl::unsigned-int-image-2d-multisample-ext cg-user::|gl_unsigned_int_image_2d_multisample_ext|)
(defparameter gl::unsigned-int-image-2d-rect cg-user::|gl_unsigned_int_image_2d_rect|)
(defparameter gl::unsigned-int-image-2d-rect-ext cg-user::|gl_unsigned_int_image_2d_rect_ext|)
(defparameter gl::unsigned-int-image-3d cg-user::|gl_unsigned_int_image_3d|)
(defparameter gl::unsigned-int-image-3d-ext cg-user::|gl_unsigned_int_image_3d_ext|)
(defparameter gl::unsigned-int-image-buffer cg-user::|gl_unsigned_int_image_buffer|)
(defparameter gl::unsigned-int-image-buffer-ext cg-user::|gl_unsigned_int_image_buffer_ext|)
(defparameter gl::unsigned-int-image-buffer-oes cg-user::|gl_unsigned_int_image_buffer_oes|)
(defparameter gl::unsigned-int-image-cube cg-user::|gl_unsigned_int_image_cube|)
(defparameter gl::unsigned-int-image-cube-ext cg-user::|gl_unsigned_int_image_cube_ext|)
(defparameter gl::unsigned-int-image-cube-map-array cg-user::|gl_unsigned_int_image_cube_map_array|)
(defparameter gl::unsigned-int-image-cube-map-array-ext cg-user::|gl_unsigned_int_image_cube_map_array_ext|)
(defparameter gl::unsigned-int-image-cube-map-array-oes cg-user::|gl_unsigned_int_image_cube_map_array_oes|)
(defparameter gl::unsigned-int-s8-s8-8-8-nv cg-user::|gl_unsigned_int_s8_s8_8_8_nv|)
(defparameter gl::unsigned-int-sampler-1d cg-user::|gl_unsigned_int_sampler_1d|)
(defparameter gl::unsigned-int-sampler-1d-array cg-user::|gl_unsigned_int_sampler_1d_array|)
(defparameter gl::unsigned-int-sampler-1d-array-ext cg-user::|gl_unsigned_int_sampler_1d_array_ext|)
(defparameter gl::unsigned-int-sampler-1d-ext cg-user::|gl_unsigned_int_sampler_1d_ext|)
(defparameter gl::unsigned-int-sampler-2d cg-user::|gl_unsigned_int_sampler_2d|)
(defparameter gl::unsigned-int-sampler-2d-array cg-user::|gl_unsigned_int_sampler_2d_array|)
(defparameter gl::unsigned-int-sampler-2d-array-ext cg-user::|gl_unsigned_int_sampler_2d_array_ext|)
(defparameter gl::unsigned-int-sampler-2d-ext cg-user::|gl_unsigned_int_sampler_2d_ext|)
(defparameter gl::unsigned-int-sampler-2d-multisample cg-user::|gl_unsigned_int_sampler_2d_multisample|)
(defparameter gl::unsigned-int-sampler-2d-multisample-array cg-user::|gl_unsigned_int_sampler_2d_multisample_array|)
(defparameter gl::unsigned-int-sampler-2d-multisample-array-oes cg-user::|gl_unsigned_int_sampler_2d_multisample_array_oes|)
(defparameter gl::unsigned-int-sampler-2d-rect cg-user::|gl_unsigned_int_sampler_2d_rect|)
(defparameter gl::unsigned-int-sampler-2d-rect-ext cg-user::|gl_unsigned_int_sampler_2d_rect_ext|)
(defparameter gl::unsigned-int-sampler-3d cg-user::|gl_unsigned_int_sampler_3d|)
(defparameter gl::unsigned-int-sampler-3d-ext cg-user::|gl_unsigned_int_sampler_3d_ext|)
(defparameter gl::unsigned-int-sampler-buffer cg-user::|gl_unsigned_int_sampler_buffer|)
(defparameter gl::unsigned-int-sampler-buffer-amd cg-user::|gl_unsigned_int_sampler_buffer_amd|)
(defparameter gl::unsigned-int-sampler-buffer-ext cg-user::|gl_unsigned_int_sampler_buffer_ext|)
(defparameter gl::unsigned-int-sampler-buffer-oes cg-user::|gl_unsigned_int_sampler_buffer_oes|)
(defparameter gl::unsigned-int-sampler-cube cg-user::|gl_unsigned_int_sampler_cube|)
(defparameter gl::unsigned-int-sampler-cube-ext cg-user::|gl_unsigned_int_sampler_cube_ext|)
(defparameter gl::unsigned-int-sampler-cube-map-array cg-user::|gl_unsigned_int_sampler_cube_map_array|)
(defparameter gl::unsigned-int-sampler-cube-map-array-arb cg-user::|gl_unsigned_int_sampler_cube_map_array_arb|)
(defparameter gl::unsigned-int-sampler-cube-map-array-ext cg-user::|gl_unsigned_int_sampler_cube_map_array_ext|)
(defparameter gl::unsigned-int-sampler-cube-map-array-oes cg-user::|gl_unsigned_int_sampler_cube_map_array_oes|)
(defparameter gl::unsigned-int-sampler-renderbuffer-nv cg-user::|gl_unsigned_int_sampler_renderbuffer_nv|)
(defparameter gl::unsigned-int-vec2 cg-user::|gl_unsigned_int_vec2|)
(defparameter gl::unsigned-int-vec2-ext cg-user::|gl_unsigned_int_vec2_ext|)
(defparameter gl::unsigned-int-vec3 cg-user::|gl_unsigned_int_vec3|)
(defparameter gl::unsigned-int-vec3-ext cg-user::|gl_unsigned_int_vec3_ext|)
(defparameter gl::unsigned-int-vec4 cg-user::|gl_unsigned_int_vec4|)
(defparameter gl::unsigned-int-vec4-ext cg-user::|gl_unsigned_int_vec4_ext|)
(defparameter gl::unsigned-invert-nv cg-user::|gl_unsigned_invert_nv|)
(defparameter gl::unsigned-normalized cg-user::|gl_unsigned_normalized|)
(defparameter gl::unsigned-normalized-arb cg-user::|gl_unsigned_normalized_arb|)
(defparameter gl::unsigned-normalized-ext cg-user::|gl_unsigned_normalized_ext|)
(defparameter gl::unsigned-short cg-user::|gl_unsigned_short|)
(defparameter gl::unsigned-short-1-15-rev-mesa cg-user::|gl_unsigned_short_1_15_rev_mesa|)
(defparameter gl::unsigned-short-15-1-mesa cg-user::|gl_unsigned_short_15_1_mesa|)
(defparameter gl::unsigned-short-1-5-5-5-rev cg-user::|gl_unsigned_short_1_5_5_5_rev|)
(defparameter gl::unsigned-short-1-5-5-5-rev-ext cg-user::|gl_unsigned_short_1_5_5_5_rev_ext|)
(defparameter gl::unsigned-short-4-4-4-4 cg-user::|gl_unsigned_short_4_4_4_4|)
(defparameter gl::unsigned-short-4-4-4-4-ext cg-user::|gl_unsigned_short_4_4_4_4_ext|)
(defparameter gl::unsigned-short-4-4-4-4-rev cg-user::|gl_unsigned_short_4_4_4_4_rev|)
(defparameter gl::unsigned-short-4-4-4-4-rev-ext cg-user::|gl_unsigned_short_4_4_4_4_rev_ext|)
(defparameter gl::unsigned-short-4-4-4-4-rev-img cg-user::|gl_unsigned_short_4_4_4_4_rev_img|)
(defparameter gl::unsigned-short-5-5-5-1 cg-user::|gl_unsigned_short_5_5_5_1|)
(defparameter gl::unsigned-short-5-5-5-1-ext cg-user::|gl_unsigned_short_5_5_5_1_ext|)
(defparameter gl::unsigned-short-5-6-5 cg-user::|gl_unsigned_short_5_6_5|)
(defparameter gl::unsigned-short-5-6-5-ext cg-user::|gl_unsigned_short_5_6_5_ext|)
(defparameter gl::unsigned-short-5-6-5-rev cg-user::|gl_unsigned_short_5_6_5_rev|)
(defparameter gl::unsigned-short-5-6-5-rev-ext cg-user::|gl_unsigned_short_5_6_5_rev_ext|)
(defparameter gl::unsigned-short-8-8-apple cg-user::|gl_unsigned_short_8_8_apple|)
(defparameter gl::unsigned-short-8-8-mesa cg-user::|gl_unsigned_short_8_8_mesa|)
(defparameter gl::unsigned-short-8-8-rev-apple cg-user::|gl_unsigned_short_8_8_rev_apple|)
(defparameter gl::unsigned-short-8-8-rev-mesa cg-user::|gl_unsigned_short_8_8_rev_mesa|)
(defparameter gl::upper-left cg-user::|gl_upper_left|)
(defparameter gl::use-missing-glyph-nv cg-user::|gl_use_missing_glyph_nv|)
(defparameter gl::utf16-nv cg-user::|gl_utf16_nv|)
(defparameter gl::utf8-nv cg-user::|gl_utf8_nv|)
(defparameter gl::v2f cg-user::|gl_v2f|)
(defparameter gl::v3f cg-user::|gl_v3f|)
(defparameter gl::validate-status cg-user::|gl_validate_status|)
(defparameter gl::variable-a-nv cg-user::|gl_variable_a_nv|)
(defparameter gl::variable-b-nv cg-user::|gl_variable_b_nv|)
(defparameter gl::variable-c-nv cg-user::|gl_variable_c_nv|)
(defparameter gl::variable-d-nv cg-user::|gl_variable_d_nv|)
(defparameter gl::variable-e-nv cg-user::|gl_variable_e_nv|)
(defparameter gl::variable-f-nv cg-user::|gl_variable_f_nv|)
(defparameter gl::variable-g-nv cg-user::|gl_variable_g_nv|)
(defparameter gl::variant-array-ext cg-user::|gl_variant_array_ext|)
(defparameter gl::variant-array-pointer-ext cg-user::|gl_variant_array_pointer_ext|)
(defparameter gl::variant-array-stride-ext cg-user::|gl_variant_array_stride_ext|)
(defparameter gl::variant-array-type-ext cg-user::|gl_variant_array_type_ext|)
(defparameter gl::variant-datatype-ext cg-user::|gl_variant_datatype_ext|)
(defparameter gl::variant-ext cg-user::|gl_variant_ext|)
(defparameter gl::variant-value-ext cg-user::|gl_variant_value_ext|)
(defparameter gl::vbo-free-memory-ati cg-user::|gl_vbo_free_memory_ati|)
(defparameter gl::vector-ext cg-user::|gl_vector_ext|)
(defparameter gl::vendor cg-user::|gl_vendor|)
(defparameter gl::version cg-user::|gl_version|)
(defparameter gl::version-es-cl-1-0 cg-user::|gl_version_es_cl_1_0|)
(defparameter gl::version-es-cl-1-1 cg-user::|gl_version_es_cl_1_1|)
(defparameter gl::version-es-cm-1-1 cg-user::|gl_version_es_cm_1_1|)
(defparameter gl::vertex23-bit-pgi cg-user::|gl_vertex23_bit_pgi|)
(defparameter gl::vertex4-bit-pgi cg-user::|gl_vertex4_bit_pgi|)
(defparameter gl::vertex-array cg-user::|gl_vertex_array|)
(defparameter gl::vertex-array-address-nv cg-user::|gl_vertex_array_address_nv|)
(defparameter gl::vertex-array-binding cg-user::|gl_vertex_array_binding|)
(defparameter gl::vertex-array-binding-apple cg-user::|gl_vertex_array_binding_apple|)
(defparameter gl::vertex-array-binding-oes cg-user::|gl_vertex_array_binding_oes|)
(defparameter gl::vertex-array-buffer-binding cg-user::|gl_vertex_array_buffer_binding|)
(defparameter gl::vertex-array-buffer-binding-arb cg-user::|gl_vertex_array_buffer_binding_arb|)
(defparameter gl::vertex-array-count-ext cg-user::|gl_vertex_array_count_ext|)
(defparameter gl::vertex-array-ext cg-user::|gl_vertex_array_ext|)
(defparameter gl::vertex-array-khr cg-user::|gl_vertex_array_khr|)
(defparameter gl::vertex-array-length-nv cg-user::|gl_vertex_array_length_nv|)
(defparameter gl::vertex-array-list-ibm cg-user::|gl_vertex_array_list_ibm|)
(defparameter gl::vertex-array-list-stride-ibm cg-user::|gl_vertex_array_list_stride_ibm|)
(defparameter gl::vertex-array-object-amd cg-user::|gl_vertex_array_object_amd|)
(defparameter gl::vertex-array-object-ext cg-user::|gl_vertex_array_object_ext|)
(defparameter gl::vertex-array-parallel-pointers-intel cg-user::|gl_vertex_array_parallel_pointers_intel|)
(defparameter gl::vertex-array-pointer cg-user::|gl_vertex_array_pointer|)
(defparameter gl::vertex-array-pointer-ext cg-user::|gl_vertex_array_pointer_ext|)
(defparameter gl::vertex-array-range-apple cg-user::|gl_vertex_array_range_apple|)
(defparameter gl::vertex-array-range-length-apple cg-user::|gl_vertex_array_range_length_apple|)
(defparameter gl::vertex-array-range-length-nv cg-user::|gl_vertex_array_range_length_nv|)
(defparameter gl::vertex-array-range-nv cg-user::|gl_vertex_array_range_nv|)
(defparameter gl::vertex-array-range-pointer-apple cg-user::|gl_vertex_array_range_pointer_apple|)
(defparameter gl::vertex-array-range-pointer-nv cg-user::|gl_vertex_array_range_pointer_nv|)
(defparameter gl::vertex-array-range-valid-nv cg-user::|gl_vertex_array_range_valid_nv|)
(defparameter gl::vertex-array-range-without-flush-nv cg-user::|gl_vertex_array_range_without_flush_nv|)
(defparameter gl::vertex-array-size cg-user::|gl_vertex_array_size|)
(defparameter gl::vertex-array-size-ext cg-user::|gl_vertex_array_size_ext|)
(defparameter gl::vertex-array-storage-hint-apple cg-user::|gl_vertex_array_storage_hint_apple|)
(defparameter gl::vertex-array-stride cg-user::|gl_vertex_array_stride|)
(defparameter gl::vertex-array-stride-ext cg-user::|gl_vertex_array_stride_ext|)
(defparameter gl::vertex-array-type cg-user::|gl_vertex_array_type|)
(defparameter gl::vertex-array-type-ext cg-user::|gl_vertex_array_type_ext|)
(defparameter gl::vertex-attrib-array0-nv cg-user::|gl_vertex_attrib_array0_nv|)
(defparameter gl::vertex-attrib-array10-nv cg-user::|gl_vertex_attrib_array10_nv|)
(defparameter gl::vertex-attrib-array11-nv cg-user::|gl_vertex_attrib_array11_nv|)
(defparameter gl::vertex-attrib-array12-nv cg-user::|gl_vertex_attrib_array12_nv|)
(defparameter gl::vertex-attrib-array13-nv cg-user::|gl_vertex_attrib_array13_nv|)
(defparameter gl::vertex-attrib-array14-nv cg-user::|gl_vertex_attrib_array14_nv|)
(defparameter gl::vertex-attrib-array15-nv cg-user::|gl_vertex_attrib_array15_nv|)
(defparameter gl::vertex-attrib-array1-nv cg-user::|gl_vertex_attrib_array1_nv|)
(defparameter gl::vertex-attrib-array2-nv cg-user::|gl_vertex_attrib_array2_nv|)
(defparameter gl::vertex-attrib-array3-nv cg-user::|gl_vertex_attrib_array3_nv|)
(defparameter gl::vertex-attrib-array4-nv cg-user::|gl_vertex_attrib_array4_nv|)
(defparameter gl::vertex-attrib-array5-nv cg-user::|gl_vertex_attrib_array5_nv|)
(defparameter gl::vertex-attrib-array6-nv cg-user::|gl_vertex_attrib_array6_nv|)
(defparameter gl::vertex-attrib-array7-nv cg-user::|gl_vertex_attrib_array7_nv|)
(defparameter gl::vertex-attrib-array8-nv cg-user::|gl_vertex_attrib_array8_nv|)
(defparameter gl::vertex-attrib-array9-nv cg-user::|gl_vertex_attrib_array9_nv|)
(defparameter gl::vertex-attrib-array-address-nv cg-user::|gl_vertex_attrib_array_address_nv|)
(defparameter gl::vertex-attrib-array-barrier-bit cg-user::|gl_vertex_attrib_array_barrier_bit|)
(defparameter gl::vertex-attrib-array-barrier-bit-ext cg-user::|gl_vertex_attrib_array_barrier_bit_ext|)
(defparameter gl::vertex-attrib-array-buffer-binding cg-user::|gl_vertex_attrib_array_buffer_binding|)
(defparameter gl::vertex-attrib-array-buffer-binding-arb cg-user::|gl_vertex_attrib_array_buffer_binding_arb|)
(defparameter gl::vertex-attrib-array-divisor cg-user::|gl_vertex_attrib_array_divisor|)
(defparameter gl::vertex-attrib-array-divisor-angle cg-user::|gl_vertex_attrib_array_divisor_angle|)
(defparameter gl::vertex-attrib-array-divisor-arb cg-user::|gl_vertex_attrib_array_divisor_arb|)
(defparameter gl::vertex-attrib-array-divisor-ext cg-user::|gl_vertex_attrib_array_divisor_ext|)
(defparameter gl::vertex-attrib-array-divisor-nv cg-user::|gl_vertex_attrib_array_divisor_nv|)
(defparameter gl::vertex-attrib-array-enabled cg-user::|gl_vertex_attrib_array_enabled|)
(defparameter gl::vertex-attrib-array-enabled-arb cg-user::|gl_vertex_attrib_array_enabled_arb|)
(defparameter gl::vertex-attrib-array-integer cg-user::|gl_vertex_attrib_array_integer|)
(defparameter gl::vertex-attrib-array-integer-ext cg-user::|gl_vertex_attrib_array_integer_ext|)
(defparameter gl::vertex-attrib-array-integer-nv cg-user::|gl_vertex_attrib_array_integer_nv|)
(defparameter gl::vertex-attrib-array-length-nv cg-user::|gl_vertex_attrib_array_length_nv|)
(defparameter gl::vertex-attrib-array-long cg-user::|gl_vertex_attrib_array_long|)
(defparameter gl::vertex-attrib-array-normalized cg-user::|gl_vertex_attrib_array_normalized|)
(defparameter gl::vertex-attrib-array-normalized-arb cg-user::|gl_vertex_attrib_array_normalized_arb|)
(defparameter gl::vertex-attrib-array-pointer cg-user::|gl_vertex_attrib_array_pointer|)
(defparameter gl::vertex-attrib-array-pointer-arb cg-user::|gl_vertex_attrib_array_pointer_arb|)
(defparameter gl::vertex-attrib-array-size cg-user::|gl_vertex_attrib_array_size|)
(defparameter gl::vertex-attrib-array-size-arb cg-user::|gl_vertex_attrib_array_size_arb|)
(defparameter gl::vertex-attrib-array-stride cg-user::|gl_vertex_attrib_array_stride|)
(defparameter gl::vertex-attrib-array-stride-arb cg-user::|gl_vertex_attrib_array_stride_arb|)
(defparameter gl::vertex-attrib-array-type cg-user::|gl_vertex_attrib_array_type|)
(defparameter gl::vertex-attrib-array-type-arb cg-user::|gl_vertex_attrib_array_type_arb|)
(defparameter gl::vertex-attrib-array-unified-nv cg-user::|gl_vertex_attrib_array_unified_nv|)
(defparameter gl::vertex-attrib-binding cg-user::|gl_vertex_attrib_binding|)
(defparameter gl::vertex-attrib-map1-apple cg-user::|gl_vertex_attrib_map1_apple|)
(defparameter gl::vertex-attrib-map1-coeff-apple cg-user::|gl_vertex_attrib_map1_coeff_apple|)
(defparameter gl::vertex-attrib-map1-domain-apple cg-user::|gl_vertex_attrib_map1_domain_apple|)
(defparameter gl::vertex-attrib-map1-order-apple cg-user::|gl_vertex_attrib_map1_order_apple|)
(defparameter gl::vertex-attrib-map1-size-apple cg-user::|gl_vertex_attrib_map1_size_apple|)
(defparameter gl::vertex-attrib-map2-apple cg-user::|gl_vertex_attrib_map2_apple|)
(defparameter gl::vertex-attrib-map2-coeff-apple cg-user::|gl_vertex_attrib_map2_coeff_apple|)
(defparameter gl::vertex-attrib-map2-domain-apple cg-user::|gl_vertex_attrib_map2_domain_apple|)
(defparameter gl::vertex-attrib-map2-order-apple cg-user::|gl_vertex_attrib_map2_order_apple|)
(defparameter gl::vertex-attrib-map2-size-apple cg-user::|gl_vertex_attrib_map2_size_apple|)
(defparameter gl::vertex-attrib-relative-offset cg-user::|gl_vertex_attrib_relative_offset|)
(defparameter gl::vertex-binding-buffer cg-user::|gl_vertex_binding_buffer|)
(defparameter gl::vertex-binding-divisor cg-user::|gl_vertex_binding_divisor|)
(defparameter gl::vertex-binding-offset cg-user::|gl_vertex_binding_offset|)
(defparameter gl::vertex-binding-stride cg-user::|gl_vertex_binding_stride|)
(defparameter gl::vertex-blend-arb cg-user::|gl_vertex_blend_arb|)
(defparameter gl::vertex-consistent-hint-pgi cg-user::|gl_vertex_consistent_hint_pgi|)
(defparameter gl::vertex-data-hint-pgi cg-user::|gl_vertex_data_hint_pgi|)
(defparameter gl::vertex-element-swizzle-amd cg-user::|gl_vertex_element_swizzle_amd|)
(defparameter gl::vertex-id-nv cg-user::|gl_vertex_id_nv|)
(defparameter gl::vertex-id-swizzle-amd cg-user::|gl_vertex_id_swizzle_amd|)
(defparameter gl::vertex-preclip-hint-sgix cg-user::|gl_vertex_preclip_hint_sgix|)
(defparameter gl::vertex-preclip-sgix cg-user::|gl_vertex_preclip_sgix|)
(defparameter gl::vertex-program-arb cg-user::|gl_vertex_program_arb|)
(defparameter gl::vertex-program-binding-nv cg-user::|gl_vertex_program_binding_nv|)
(defparameter gl::vertex-program-callback-data-mesa cg-user::|gl_vertex_program_callback_data_mesa|)
(defparameter gl::vertex-program-callback-func-mesa cg-user::|gl_vertex_program_callback_func_mesa|)
(defparameter gl::vertex-program-callback-mesa cg-user::|gl_vertex_program_callback_mesa|)
(defparameter gl::vertex-program-nv cg-user::|gl_vertex_program_nv|)
(defparameter gl::vertex-program-parameter-buffer-nv cg-user::|gl_vertex_program_parameter_buffer_nv|)
(defparameter gl::vertex-program-point-size cg-user::|gl_vertex_program_point_size|)
(defparameter gl::vertex-program-point-size-arb cg-user::|gl_vertex_program_point_size_arb|)
(defparameter gl::vertex-program-point-size-nv cg-user::|gl_vertex_program_point_size_nv|)
(defparameter gl::vertex-program-position-mesa cg-user::|gl_vertex_program_position_mesa|)
(defparameter gl::vertex-program-two-side cg-user::|gl_vertex_program_two_side|)
(defparameter gl::vertex-program-two-side-arb cg-user::|gl_vertex_program_two_side_arb|)
(defparameter gl::vertex-program-two-side-nv cg-user::|gl_vertex_program_two_side_nv|)
(defparameter gl::vertex-shader cg-user::|gl_vertex_shader|)
(defparameter gl::vertex-shader-arb cg-user::|gl_vertex_shader_arb|)
(defparameter gl::vertex-shader-binding-ext cg-user::|gl_vertex_shader_binding_ext|)
(defparameter gl::vertex-shader-bit cg-user::|gl_vertex_shader_bit|)
(defparameter gl::vertex-shader-bit-ext cg-user::|gl_vertex_shader_bit_ext|)
(defparameter gl::vertex-shader-ext cg-user::|gl_vertex_shader_ext|)
(defparameter gl::vertex-shader-instructions-ext cg-user::|gl_vertex_shader_instructions_ext|)
(defparameter gl::vertex-shader-invariants-ext cg-user::|gl_vertex_shader_invariants_ext|)
(defparameter gl::vertex-shader-invocations-arb cg-user::|gl_vertex_shader_invocations_arb|)
(defparameter gl::vertex-shader-local-constants-ext cg-user::|gl_vertex_shader_local_constants_ext|)
(defparameter gl::vertex-shader-locals-ext cg-user::|gl_vertex_shader_locals_ext|)
(defparameter gl::vertex-shader-optimized-ext cg-user::|gl_vertex_shader_optimized_ext|)
(defparameter gl::vertex-shader-variants-ext cg-user::|gl_vertex_shader_variants_ext|)
(defparameter gl::vertex-source-ati cg-user::|gl_vertex_source_ati|)
(defparameter gl::vertex-state-program-nv cg-user::|gl_vertex_state_program_nv|)
(defparameter gl::vertex-stream0-ati cg-user::|gl_vertex_stream0_ati|)
(defparameter gl::vertex-stream1-ati cg-user::|gl_vertex_stream1_ati|)
(defparameter gl::vertex-stream2-ati cg-user::|gl_vertex_stream2_ati|)
(defparameter gl::vertex-stream3-ati cg-user::|gl_vertex_stream3_ati|)
(defparameter gl::vertex-stream4-ati cg-user::|gl_vertex_stream4_ati|)
(defparameter gl::vertex-stream5-ati cg-user::|gl_vertex_stream5_ati|)
(defparameter gl::vertex-stream6-ati cg-user::|gl_vertex_stream6_ati|)
(defparameter gl::vertex-stream7-ati cg-user::|gl_vertex_stream7_ati|)
(defparameter gl::vertex-subroutine cg-user::|gl_vertex_subroutine|)
(defparameter gl::vertex-subroutine-uniform cg-user::|gl_vertex_subroutine_uniform|)
(defparameter gl::vertex-texture cg-user::|gl_vertex_texture|)
(defparameter gl::vertex-weight-array-ext cg-user::|gl_vertex_weight_array_ext|)
(defparameter gl::vertex-weight-array-pointer-ext cg-user::|gl_vertex_weight_array_pointer_ext|)
(defparameter gl::vertex-weight-array-size-ext cg-user::|gl_vertex_weight_array_size_ext|)
(defparameter gl::vertex-weight-array-stride-ext cg-user::|gl_vertex_weight_array_stride_ext|)
(defparameter gl::vertex-weight-array-type-ext cg-user::|gl_vertex_weight_array_type_ext|)
(defparameter gl::vertex-weighting-ext cg-user::|gl_vertex_weighting_ext|)
(defparameter gl::vertical-line-to-nv cg-user::|gl_vertical_line_to_nv|)
(defparameter gl::vertices-submitted-arb cg-user::|gl_vertices_submitted_arb|)
(defparameter gl::vibrance-bias-nv cg-user::|gl_vibrance_bias_nv|)
(defparameter gl::vibrance-scale-nv cg-user::|gl_vibrance_scale_nv|)
(defparameter gl::video-buffer-binding-nv cg-user::|gl_video_buffer_binding_nv|)
(defparameter gl::video-buffer-internal-format-nv cg-user::|gl_video_buffer_internal_format_nv|)
(defparameter gl::video-buffer-nv cg-user::|gl_video_buffer_nv|)
(defparameter gl::video-buffer-pitch-nv cg-user::|gl_video_buffer_pitch_nv|)
(defparameter gl::video-capture-field-lower-height-nv cg-user::|gl_video_capture_field_lower_height_nv|)
(defparameter gl::video-capture-field-upper-height-nv cg-user::|gl_video_capture_field_upper_height_nv|)
(defparameter gl::video-capture-frame-height-nv cg-user::|gl_video_capture_frame_height_nv|)
(defparameter gl::video-capture-frame-width-nv cg-user::|gl_video_capture_frame_width_nv|)
(defparameter gl::video-capture-surface-origin-nv cg-user::|gl_video_capture_surface_origin_nv|)
(defparameter gl::video-capture-to-422-supported-nv cg-user::|gl_video_capture_to_422_supported_nv|)
(defparameter gl::video-color-conversion-matrix-nv cg-user::|gl_video_color_conversion_matrix_nv|)
(defparameter gl::video-color-conversion-max-nv cg-user::|gl_video_color_conversion_max_nv|)
(defparameter gl::video-color-conversion-min-nv cg-user::|gl_video_color_conversion_min_nv|)
(defparameter gl::video-color-conversion-offset-nv cg-user::|gl_video_color_conversion_offset_nv|)
(defparameter gl::view-class-128-bits cg-user::|gl_view_class_128_bits|)
(defparameter gl::view-class-16-bits cg-user::|gl_view_class_16_bits|)
(defparameter gl::view-class-24-bits cg-user::|gl_view_class_24_bits|)
(defparameter gl::view-class-32-bits cg-user::|gl_view_class_32_bits|)
(defparameter gl::view-class-48-bits cg-user::|gl_view_class_48_bits|)
(defparameter gl::view-class-64-bits cg-user::|gl_view_class_64_bits|)
(defparameter gl::view-class-8-bits cg-user::|gl_view_class_8_bits|)
(defparameter gl::view-class-96-bits cg-user::|gl_view_class_96_bits|)
(defparameter gl::view-class-bptc-float cg-user::|gl_view_class_bptc_float|)
(defparameter gl::view-class-bptc-unorm cg-user::|gl_view_class_bptc_unorm|)
(defparameter gl::view-class-rgtc1-red cg-user::|gl_view_class_rgtc1_red|)
(defparameter gl::view-class-rgtc2-rg cg-user::|gl_view_class_rgtc2_rg|)
(defparameter gl::view-class-s3tc-dxt1-rgb cg-user::|gl_view_class_s3tc_dxt1_rgb|)
(defparameter gl::view-class-s3tc-dxt1-rgba cg-user::|gl_view_class_s3tc_dxt1_rgba|)
(defparameter gl::view-class-s3tc-dxt3-rgba cg-user::|gl_view_class_s3tc_dxt3_rgba|)
(defparameter gl::view-class-s3tc-dxt5-rgba cg-user::|gl_view_class_s3tc_dxt5_rgba|)
(defparameter gl::view-compatibility-class cg-user::|gl_view_compatibility_class|)
(defparameter gl::viewport cg-user::|gl_viewport|)
(defparameter gl::viewport-bit cg-user::|gl_viewport_bit|)
(defparameter gl::viewport-bounds-range cg-user::|gl_viewport_bounds_range|)
(defparameter gl::viewport-bounds-range-ext cg-user::|gl_viewport_bounds_range_ext|)
(defparameter gl::viewport-bounds-range-nv cg-user::|gl_viewport_bounds_range_nv|)
(defparameter gl::viewport-command-nv cg-user::|gl_viewport_command_nv|)
(defparameter gl::viewport-index-provoking-vertex cg-user::|gl_viewport_index_provoking_vertex|)
(defparameter gl::viewport-index-provoking-vertex-ext cg-user::|gl_viewport_index_provoking_vertex_ext|)
(defparameter gl::viewport-index-provoking-vertex-nv cg-user::|gl_viewport_index_provoking_vertex_nv|)
(defparameter gl::viewport-subpixel-bits cg-user::|gl_viewport_subpixel_bits|)
(defparameter gl::viewport-subpixel-bits-ext cg-user::|gl_viewport_subpixel_bits_ext|)
(defparameter gl::viewport-subpixel-bits-nv cg-user::|gl_viewport_subpixel_bits_nv|)
(defparameter gl::virtual-page-size-index-arb cg-user::|gl_virtual_page_size_index_arb|)
(defparameter gl::virtual-page-size-index-ext cg-user::|gl_virtual_page_size_index_ext|)
(defparameter gl::virtual-page-size-x-amd cg-user::|gl_virtual_page_size_x_amd|)
(defparameter gl::virtual-page-size-x-arb cg-user::|gl_virtual_page_size_x_arb|)
(defparameter gl::virtual-page-size-x-ext cg-user::|gl_virtual_page_size_x_ext|)
(defparameter gl::virtual-page-size-y-amd cg-user::|gl_virtual_page_size_y_amd|)
(defparameter gl::virtual-page-size-y-arb cg-user::|gl_virtual_page_size_y_arb|)
(defparameter gl::virtual-page-size-y-ext cg-user::|gl_virtual_page_size_y_ext|)
(defparameter gl::virtual-page-size-z-amd cg-user::|gl_virtual_page_size_z_amd|)
(defparameter gl::virtual-page-size-z-arb cg-user::|gl_virtual_page_size_z_arb|)
(defparameter gl::virtual-page-size-z-ext cg-user::|gl_virtual_page_size_z_ext|)
(defparameter gl::vividlight-nv cg-user::|gl_vividlight_nv|)
(defparameter gl::volatile-apple cg-user::|gl_volatile_apple|)
(defparameter gl::wait-failed cg-user::|gl_wait_failed|)
(defparameter gl::wait-failed-apple cg-user::|gl_wait_failed_apple|)
(defparameter gl::warp-size-nv cg-user::|gl_warp_size_nv|)
(defparameter gl::warps-per-sm-nv cg-user::|gl_warps_per_sm_nv|)
(defparameter gl::weight-array-arb cg-user::|gl_weight_array_arb|)
(defparameter gl::weight-array-buffer-binding cg-user::|gl_weight_array_buffer_binding|)
(defparameter gl::weight-array-buffer-binding-arb cg-user::|gl_weight_array_buffer_binding_arb|)
(defparameter gl::weight-array-buffer-binding-oes cg-user::|gl_weight_array_buffer_binding_oes|)
(defparameter gl::weight-array-oes cg-user::|gl_weight_array_oes|)
(defparameter gl::weight-array-pointer-arb cg-user::|gl_weight_array_pointer_arb|)
(defparameter gl::weight-array-pointer-oes cg-user::|gl_weight_array_pointer_oes|)
(defparameter gl::weight-array-size-arb cg-user::|gl_weight_array_size_arb|)
(defparameter gl::weight-array-size-oes cg-user::|gl_weight_array_size_oes|)
(defparameter gl::weight-array-stride-arb cg-user::|gl_weight_array_stride_arb|)
(defparameter gl::weight-array-stride-oes cg-user::|gl_weight_array_stride_oes|)
(defparameter gl::weight-array-type-arb cg-user::|gl_weight_array_type_arb|)
(defparameter gl::weight-array-type-oes cg-user::|gl_weight_array_type_oes|)
(defparameter gl::weighted-average-arb cg-user::|gl_weighted_average_arb|)
(defparameter gl::weight-sum-unity-arb cg-user::|gl_weight_sum_unity_arb|)
(defparameter gl::w-ext cg-user::|gl_w_ext|)
(defparameter gl::wide-line-hint-pgi cg-user::|gl_wide_line_hint_pgi|)
(defparameter gl::wrap-border-sun cg-user::|gl_wrap_border_sun|)
(defparameter gl::write-discard-nv cg-user::|gl_write_discard_nv|)
(defparameter gl::write-only cg-user::|gl_write_only|)
(defparameter gl::write-only-arb cg-user::|gl_write_only_arb|)
(defparameter gl::write-only-oes cg-user::|gl_write_only_oes|)
(defparameter gl::writeonly-rendering-qcom cg-user::|gl_writeonly_rendering_qcom|)
(defparameter gl::write-pixel-data-range-length-nv cg-user::|gl_write_pixel_data_range_length_nv|)
(defparameter gl::write-pixel-data-range-nv cg-user::|gl_write_pixel_data_range_nv|)
(defparameter gl::write-pixel-data-range-pointer-nv cg-user::|gl_write_pixel_data_range_pointer_nv|)
(defparameter gl::x-ext cg-user::|gl_x_ext|)
(defparameter gl::xor cg-user::|gl_xor|)
(defparameter gl::xor-nv cg-user::|gl_xor_nv|)
(defparameter gl::ycbaycr8a-4224-nv cg-user::|gl_ycbaycr8a_4224_nv|)
(defparameter gl::ycbcr-422-apple cg-user::|gl_ycbcr_422_apple|)
(defparameter gl::ycbcr-mesa cg-user::|gl_ycbcr_mesa|)
(defparameter gl::ycbycr8-422-nv cg-user::|gl_ycbycr8_422_nv|)
(defparameter gl::ycrcb-422-sgix cg-user::|gl_ycrcb_422_sgix|)
(defparameter gl::ycrcb-444-sgix cg-user::|gl_ycrcb_444_sgix|)
(defparameter gl::ycrcba-sgix cg-user::|gl_ycrcba_sgix|)
(defparameter gl::ycrcb-sgix cg-user::|gl_ycrcb_sgix|)
(defparameter gl::y-ext cg-user::|gl_y_ext|)
(defparameter gl::z400-binary-amd cg-user::|gl_z400_binary_amd|)
(defparameter gl::z4y12z4cb12z4a12z4y12z4cr12z4a12-4224-nv cg-user::|gl_z4y12z4cb12z4a12z4y12z4cr12z4a12_4224_nv|)
(defparameter gl::z4y12z4cb12z4cr12-444-nv cg-user::|gl_z4y12z4cb12z4cr12_444_nv|)
(defparameter gl::z4y12z4cb12z4y12z4cr12-422-nv cg-user::|gl_z4y12z4cb12z4y12z4cr12_422_nv|)
(defparameter gl::z6y10z6cb10z6a10z6y10z6cr10z6a10-4224-nv cg-user::|gl_z6y10z6cb10z6a10z6y10z6cr10z6a10_4224_nv|)
(defparameter gl::z6y10z6cb10z6y10z6cr10-422-nv cg-user::|gl_z6y10z6cb10z6y10z6cr10_422_nv|)
(defparameter gl::zero cg-user::|gl_zero|)
(defparameter gl::zero-ext cg-user::|gl_zero_ext|)
(defparameter gl::zero-to-one cg-user::|gl_zero_to_one|)
(defparameter gl::z-ext cg-user::|gl_z_ext|)
(defparameter gl::zoom-x cg-user::|gl_zoom_x|)
(defparameter gl::zoom-y cg-user::|gl_zoom_y|)
