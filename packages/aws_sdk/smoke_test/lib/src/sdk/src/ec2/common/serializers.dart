// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i1960;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_count.dart'
    as _i307;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_count_request.dart'
    as _i287;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_manufacturer.dart'
    as _i288;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_name.dart'
    as _i289;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_total_memory_mi_b_request.dart'
    as _i290;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_total_memory_mib.dart'
    as _i308;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_type.dart'
    as _i286;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_reserved_instances_exchange_quote_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_reserved_instances_exchange_quote_result.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_multicast_domain_associations_request.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_multicast_domain_associations_result.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_peering_attachment_request.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_peering_attachment_result.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_vpc_attachment_request.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_vpc_attachment_result.dart'
    as _i26;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_vpc_endpoint_connections_request.dart'
    as _i27;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_vpc_endpoint_connections_result.dart'
    as _i30;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_vpc_peering_connection_request.dart'
    as _i31;
import 'package:smoke_test/src/sdk/src/ec2/model/accept_vpc_peering_connection_result.dart'
    as _i39;
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_analysis_finding.dart'
    as _i1593;
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_path.dart'
    as _i490;
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_path_request.dart'
    as _i483;
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute.dart'
    as _i873;
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute_name.dart'
    as _i870;
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute_value.dart'
    as _i872;
import 'package:smoke_test/src/sdk/src/ec2/model/active_instance.dart' as _i983;
import 'package:smoke_test/src/sdk/src/ec2/model/activity_status.dart'
    as _i1311;
import 'package:smoke_test/src/sdk/src/ec2/model/add_ipam_operating_region.dart'
    as _i348;
import 'package:smoke_test/src/sdk/src/ec2/model/add_prefix_list_entry.dart'
    as _i457;
import 'package:smoke_test/src/sdk/src/ec2/model/added_principal.dart'
    as _i1785;
import 'package:smoke_test/src/sdk/src/ec2/model/additional_detail.dart'
    as _i1215;
import 'package:smoke_test/src/sdk/src/ec2/model/address.dart' as _i877;
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute.dart'
    as _i882;
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute_name.dart'
    as _i879;
import 'package:smoke_test/src/sdk/src/ec2/model/address_family.dart' as _i354;
import 'package:smoke_test/src/sdk/src/ec2/model/advertise_byoip_cidr_request.dart'
    as _i40;
import 'package:smoke_test/src/sdk/src/ec2/model/advertise_byoip_cidr_result.dart'
    as _i43;
import 'package:smoke_test/src/sdk/src/ec2/model/affinity.dart' as _i1718;
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_address_request.dart'
    as _i47;
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_address_result.dart'
    as _i48;
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_hosts_request.dart'
    as _i51;
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_hosts_result.dart'
    as _i52;
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_ipam_pool_cidr_request.dart'
    as _i53;
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_ipam_pool_cidr_result.dart'
    as _i56;
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_state.dart'
    as _i1029;
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_strategy.dart'
    as _i1312;
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_type.dart' as _i197;
import 'package:smoke_test/src/sdk/src/ec2/model/allowed_principal.dart'
    as _i1422;
import 'package:smoke_test/src/sdk/src/ec2/model/allows_multiple_instance_types.dart'
    as _i1030;
import 'package:smoke_test/src/sdk/src/ec2/model/alternate_path_hint.dart'
    as _i1221;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_acl_rule.dart'
    as _i1210;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart'
    as _i1211;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_listener.dart'
    as _i1217;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_target.dart'
    as _i1218;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_packet_header.dart'
    as _i1212;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_route_table_route.dart'
    as _i1213;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_security_group_rule.dart'
    as _i1214;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_status.dart'
    as _i1203;
import 'package:smoke_test/src/sdk/src/ec2/model/appliance_mode_support_value.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/ec2/model/apply_security_groups_to_client_vpn_target_network_request.dart'
    as _i57;
import 'package:smoke_test/src/sdk/src/ec2/model/apply_security_groups_to_client_vpn_target_network_result.dart'
    as _i58;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_type.dart'
    as _i1099;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_values.dart'
    as _i1044;
import 'package:smoke_test/src/sdk/src/ec2/model/assign_ipv6_addresses_request.dart'
    as _i59;
import 'package:smoke_test/src/sdk/src/ec2/model/assign_ipv6_addresses_result.dart'
    as _i60;
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_ip_addresses_request.dart'
    as _i61;
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_ip_addresses_result.dart'
    as _i64;
import 'package:smoke_test/src/sdk/src/ec2/model/assigned_private_ip_address.dart'
    as _i62;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_address_request.dart'
    as _i65;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_address_result.dart'
    as _i66;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_client_vpn_target_network_request.dart'
    as _i67;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_client_vpn_target_network_result.dart'
    as _i70;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_dhcp_options_request.dart'
    as _i71;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_enclave_certificate_iam_role_request.dart'
    as _i72;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_enclave_certificate_iam_role_result.dart'
    as _i73;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_iam_instance_profile_request.dart'
    as _i75;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_iam_instance_profile_result.dart'
    as _i79;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_instance_event_window_request.dart'
    as _i81;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_instance_event_window_result.dart'
    as _i87;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_route_table_request.dart'
    as _i88;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_route_table_result.dart'
    as _i91;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_subnet_cidr_block_request.dart'
    as _i92;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_subnet_cidr_block_result.dart'
    as _i96;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_multicast_domain_request.dart'
    as _i97;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_multicast_domain_result.dart'
    as _i98;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_policy_table_request.dart'
    as _i99;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_policy_table_result.dart'
    as _i102;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_route_table_request.dart'
    as _i103;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_route_table_result.dart'
    as _i105;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_trunk_interface_request.dart'
    as _i106;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_trunk_interface_result.dart'
    as _i109;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_vpc_cidr_block_request.dart'
    as _i110;
import 'package:smoke_test/src/sdk/src/ec2/model/associate_vpc_cidr_block_result.dart'
    as _i115;
import 'package:smoke_test/src/sdk/src/ec2/model/associated_network_type.dart'
    as _i917;
import 'package:smoke_test/src/sdk/src/ec2/model/associated_role.dart'
    as _i1530;
import 'package:smoke_test/src/sdk/src/ec2/model/associated_target_network.dart'
    as _i918;
import 'package:smoke_test/src/sdk/src/ec2/model/association_status.dart'
    as _i69;
import 'package:smoke_test/src/sdk/src/ec2/model/association_status_code.dart'
    as _i68;
import 'package:smoke_test/src/sdk/src/ec2/model/athena_integration.dart'
    as _i1554;
import 'package:smoke_test/src/sdk/src/ec2/model/attach_classic_link_vpc_request.dart'
    as _i116;
import 'package:smoke_test/src/sdk/src/ec2/model/attach_classic_link_vpc_result.dart'
    as _i117;
import 'package:smoke_test/src/sdk/src/ec2/model/attach_internet_gateway_request.dart'
    as _i118;
import 'package:smoke_test/src/sdk/src/ec2/model/attach_network_interface_request.dart'
    as _i119;
import 'package:smoke_test/src/sdk/src/ec2/model/attach_network_interface_result.dart'
    as _i120;
import 'package:smoke_test/src/sdk/src/ec2/model/attach_volume_request.dart'
    as _i121;
import 'package:smoke_test/src/sdk/src/ec2/model/attach_vpn_gateway_request.dart'
    as _i124;
import 'package:smoke_test/src/sdk/src/ec2/model/attach_vpn_gateway_result.dart'
    as _i127;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart'
    as _i125;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart'
    as _i1069;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart' as _i253;
import 'package:smoke_test/src/sdk/src/ec2/model/authorization_rule.dart'
    as _i908;
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_client_vpn_ingress_request.dart'
    as _i128;
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_client_vpn_ingress_result.dart'
    as _i131;
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_egress_request.dart'
    as _i137;
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_egress_result.dart'
    as _i140;
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_ingress_request.dart'
    as _i141;
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_ingress_result.dart'
    as _i142;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_associations_value.dart'
    as _i612;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_attachments_value.dart'
    as _i585;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_placement.dart' as _i49;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone.dart'
    as _i891;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_message.dart'
    as _i890;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_opt_in_status.dart'
    as _i889;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_state.dart'
    as _i888;
import 'package:smoke_test/src/sdk/src/ec2/model/available_capacity.dart'
    as _i1026;
import 'package:smoke_test/src/sdk/src/ec2/model/bare_metal.dart' as _i279;
import 'package:smoke_test/src/sdk/src/ec2/model/baseline_ebs_bandwidth_mbps.dart'
    as _i306;
import 'package:smoke_test/src/sdk/src/ec2/model/baseline_ebs_bandwidth_mbps_request.dart'
    as _i285;
import 'package:smoke_test/src/sdk/src/ec2/model/batch_state.dart' as _i173;
import 'package:smoke_test/src/sdk/src/ec2/model/bgp_status.dart' as _i605;
import 'package:smoke_test/src/sdk/src/ec2/model/blob_attribute_value.dart'
    as _i1698;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart'
    as _i329;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_type.dart' as _i1127;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart'
    as _i1050;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_instance_request.dart'
    as _i145;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_instance_result.dart'
    as _i149;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task.dart' as _i148;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task_error.dart'
    as _i146;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task_state.dart'
    as _i147;
import 'package:smoke_test/src/sdk/src/ec2/model/burstable_performance.dart'
    as _i280;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart' as _i42;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr_state.dart' as _i41;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_batch_error_code.dart'
    as _i175;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_bundle_task_request.dart'
    as _i150;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_bundle_task_result.dart'
    as _i151;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_fleet_error.dart'
    as _i157;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_fleets_request.dart'
    as _i154;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_fleets_result.dart'
    as _i159;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_request.dart'
    as _i152;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_result.dart'
    as _i153;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_conversion_request.dart'
    as _i160;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_export_task_request.dart'
    as _i161;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_import_task_request.dart'
    as _i162;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_import_task_result.dart'
    as _i163;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_reserved_instances_listing_request.dart'
    as _i164;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_reserved_instances_listing_result.dart'
    as _i171;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_error.dart'
    as _i176;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_error_item.dart'
    as _i177;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_request.dart'
    as _i172;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_response.dart'
    as _i178;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_success_item.dart'
    as _i174;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_request_state.dart'
    as _i180;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_requests_request.dart'
    as _i179;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_requests_result.dart'
    as _i182;
import 'package:smoke_test/src/sdk/src/ec2/model/cancelled_spot_instance_request.dart'
    as _i181;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_allocation.dart'
    as _i198;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation.dart'
    as _i199;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet.dart'
    as _i898;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet_cancellation_state.dart'
    as _i156;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet_state.dart'
    as _i155;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_group.dart'
    as _i1559;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_instance_platform.dart'
    as _i191;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_options.dart'
    as _i992;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_options_request.dart'
    as _i269;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_preference.dart'
    as _i392;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification.dart'
    as _i1700;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification_response.dart'
    as _i1143;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_state.dart'
    as _i196;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target.dart'
    as _i393;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target_response.dart'
    as _i429;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_tenancy.dart'
    as _i192;
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway.dart' as _i210;
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway_state.dart'
    as _i209;
import 'package:smoke_test/src/sdk/src/ec2/model/certificate_authentication.dart'
    as _i920;
import 'package:smoke_test/src/sdk/src/ec2/model/certificate_authentication_request.dart'
    as _i214;
import 'package:smoke_test/src/sdk/src/ec2/model/cidr_authorization_context.dart'
    as _i1811;
import 'package:smoke_test/src/sdk/src/ec2/model/cidr_block.dart' as _i33;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_dns_support.dart'
    as _i1411;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_instance.dart'
    as _i905;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_load_balancer.dart'
    as _i1325;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_load_balancers_config.dart'
    as _i1326;
import 'package:smoke_test/src/sdk/src/ec2/model/client_certificate_revocation_list_status.dart'
    as _i1520;
import 'package:smoke_test/src/sdk/src/ec2/model/client_certificate_revocation_list_status_code.dart'
    as _i1519;
import 'package:smoke_test/src/sdk/src/ec2/model/client_connect_options.dart'
    as _i220;
import 'package:smoke_test/src/sdk/src/ec2/model/client_connect_response_options.dart'
    as _i926;
import 'package:smoke_test/src/sdk/src/ec2/model/client_data.dart' as _i1641;
import 'package:smoke_test/src/sdk/src/ec2/model/client_login_banner_options.dart'
    as _i221;
import 'package:smoke_test/src/sdk/src/ec2/model/client_login_banner_response_options.dart'
    as _i927;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication.dart'
    as _i922;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication_request.dart'
    as _i216;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication_type.dart'
    as _i212;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status.dart'
    as _i130;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status_code.dart'
    as _i129;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection.dart'
    as _i913;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection_status.dart'
    as _i912;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection_status_code.dart'
    as _i911;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint.dart'
    as _i928;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_attribute_status.dart'
    as _i925;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_attribute_status_code.dart'
    as _i924;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_status.dart'
    as _i224;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_status_code.dart'
    as _i223;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route.dart'
    as _i931;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status.dart'
    as _i228;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status_code.dart'
    as _i227;
import 'package:smoke_test/src/sdk/src/ec2/model/cloud_watch_log_options.dart'
    as _i705;
import 'package:smoke_test/src/sdk/src/ec2/model/cloud_watch_log_options_specification.dart'
    as _i691;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_address_usage.dart'
    as _i1539;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_cidr.dart' as _i231;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_pool.dart' as _i234;
import 'package:smoke_test/src/sdk/src/ec2/model/confirm_product_instance_request.dart'
    as _i183;
import 'package:smoke_test/src/sdk/src/ec2/model/confirm_product_instance_result.dart'
    as _i184;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_log_options.dart'
    as _i217;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_log_response_options.dart'
    as _i923;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification.dart'
    as _i669;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification_state.dart'
    as _i668;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification_type.dart'
    as _i667;
import 'package:smoke_test/src/sdk/src/ec2/model/connectivity_type.dart'
    as _i462;
import 'package:smoke_test/src/sdk/src/ec2/model/container_format.dart'
    as _i335;
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task.dart' as _i945;
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task_state.dart'
    as _i944;
import 'package:smoke_test/src/sdk/src/ec2/model/copy_fpga_image_request.dart'
    as _i185;
import 'package:smoke_test/src/sdk/src/ec2/model/copy_fpga_image_result.dart'
    as _i186;
import 'package:smoke_test/src/sdk/src/ec2/model/copy_image_request.dart'
    as _i187;
import 'package:smoke_test/src/sdk/src/ec2/model/copy_image_result.dart'
    as _i188;
import 'package:smoke_test/src/sdk/src/ec2/model/copy_snapshot_request.dart'
    as _i189;
import 'package:smoke_test/src/sdk/src/ec2/model/copy_snapshot_result.dart'
    as _i190;
import 'package:smoke_test/src/sdk/src/ec2/model/copy_tags_from_source.dart'
    as _i548;
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_manufacturer.dart'
    as _i276;
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_options.dart' as _i1142;
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_options_request.dart'
    as _i1904;
import 'package:smoke_test/src/sdk/src/ec2/model/create_capacity_reservation_fleet_request.dart'
    as _i205;
import 'package:smoke_test/src/sdk/src/ec2/model/create_capacity_reservation_fleet_result.dart'
    as _i207;
import 'package:smoke_test/src/sdk/src/ec2/model/create_capacity_reservation_request.dart'
    as _i195;
import 'package:smoke_test/src/sdk/src/ec2/model/create_capacity_reservation_result.dart'
    as _i200;
import 'package:smoke_test/src/sdk/src/ec2/model/create_carrier_gateway_request.dart'
    as _i208;
import 'package:smoke_test/src/sdk/src/ec2/model/create_carrier_gateway_result.dart'
    as _i211;
import 'package:smoke_test/src/sdk/src/ec2/model/create_client_vpn_endpoint_request.dart'
    as _i222;
import 'package:smoke_test/src/sdk/src/ec2/model/create_client_vpn_endpoint_result.dart'
    as _i225;
import 'package:smoke_test/src/sdk/src/ec2/model/create_client_vpn_route_request.dart'
    as _i226;
import 'package:smoke_test/src/sdk/src/ec2/model/create_client_vpn_route_result.dart'
    as _i229;
import 'package:smoke_test/src/sdk/src/ec2/model/create_coip_cidr_request.dart'
    as _i230;
import 'package:smoke_test/src/sdk/src/ec2/model/create_coip_cidr_result.dart'
    as _i232;
import 'package:smoke_test/src/sdk/src/ec2/model/create_coip_pool_request.dart'
    as _i233;
import 'package:smoke_test/src/sdk/src/ec2/model/create_coip_pool_result.dart'
    as _i235;
import 'package:smoke_test/src/sdk/src/ec2/model/create_customer_gateway_request.dart'
    as _i237;
import 'package:smoke_test/src/sdk/src/ec2/model/create_customer_gateway_result.dart'
    as _i239;
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_subnet_request.dart'
    as _i240;
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_subnet_result.dart'
    as _i245;
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_vpc_request.dart'
    as _i246;
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_vpc_result.dart'
    as _i250;
import 'package:smoke_test/src/sdk/src/ec2/model/create_dhcp_options_request.dart'
    as _i252;
import 'package:smoke_test/src/sdk/src/ec2/model/create_dhcp_options_result.dart'
    as _i256;
import 'package:smoke_test/src/sdk/src/ec2/model/create_egress_only_internet_gateway_request.dart'
    as _i257;
import 'package:smoke_test/src/sdk/src/ec2/model/create_egress_only_internet_gateway_result.dart'
    as _i260;
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_error.dart'
    as _i313;
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_instance.dart'
    as _i315;
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_request.dart'
    as _i298;
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_result.dart'
    as _i316;
import 'package:smoke_test/src/sdk/src/ec2/model/create_flow_logs_request.dart'
    as _i322;
import 'package:smoke_test/src/sdk/src/ec2/model/create_flow_logs_result.dart'
    as _i323;
import 'package:smoke_test/src/sdk/src/ec2/model/create_fpga_image_request.dart'
    as _i325;
import 'package:smoke_test/src/sdk/src/ec2/model/create_fpga_image_result.dart'
    as _i326;
import 'package:smoke_test/src/sdk/src/ec2/model/create_image_request.dart'
    as _i330;
import 'package:smoke_test/src/sdk/src/ec2/model/create_image_result.dart'
    as _i331;
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_event_window_request.dart'
    as _i333;
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_event_window_result.dart'
    as _i334;
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_export_task_request.dart'
    as _i339;
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_export_task_result.dart'
    as _i344;
import 'package:smoke_test/src/sdk/src/ec2/model/create_internet_gateway_request.dart'
    as _i345;
import 'package:smoke_test/src/sdk/src/ec2/model/create_internet_gateway_result.dart'
    as _i347;
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_pool_request.dart'
    as _i357;
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_pool_result.dart'
    as _i362;
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_request.dart'
    as _i349;
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_result.dart'
    as _i353;
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_scope_request.dart'
    as _i363;
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_scope_result.dart'
    as _i366;
import 'package:smoke_test/src/sdk/src/ec2/model/create_key_pair_request.dart'
    as _i369;
import 'package:smoke_test/src/sdk/src/ec2/model/create_launch_template_request.dart'
    as _i407;
import 'package:smoke_test/src/sdk/src/ec2/model/create_launch_template_result.dart'
    as _i411;
import 'package:smoke_test/src/sdk/src/ec2/model/create_launch_template_version_request.dart'
    as _i412;
import 'package:smoke_test/src/sdk/src/ec2/model/create_launch_template_version_result.dart'
    as _i440;
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_request.dart'
    as _i441;
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_result.dart'
    as _i445;
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_request.dart'
    as _i447;
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_result.dart'
    as _i450;
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_virtual_interface_group_association_request.dart'
    as _i451;
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_virtual_interface_group_association_result.dart'
    as _i453;
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_vpc_association_request.dart'
    as _i454;
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_vpc_association_result.dart'
    as _i456;
import 'package:smoke_test/src/sdk/src/ec2/model/create_managed_prefix_list_request.dart'
    as _i458;
import 'package:smoke_test/src/sdk/src/ec2/model/create_managed_prefix_list_result.dart'
    as _i461;
import 'package:smoke_test/src/sdk/src/ec2/model/create_nat_gateway_request.dart'
    as _i463;
import 'package:smoke_test/src/sdk/src/ec2/model/create_nat_gateway_result.dart'
    as _i468;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_acl_entry_request.dart'
    as _i477;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_acl_request.dart'
    as _i469;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_acl_result.dart'
    as _i476;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_insights_access_scope_request.dart'
    as _i484;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_insights_access_scope_result.dart'
    as _i492;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_insights_path_request.dart'
    as _i493;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_insights_path_result.dart'
    as _i495;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_interface_permission_request.dart'
    as _i509;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_interface_permission_result.dart'
    as _i513;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_interface_request.dart'
    as _i497;
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_interface_result.dart'
    as _i507;
import 'package:smoke_test/src/sdk/src/ec2/model/create_placement_group_request.dart'
    as _i516;
import 'package:smoke_test/src/sdk/src/ec2/model/create_placement_group_result.dart'
    as _i519;
import 'package:smoke_test/src/sdk/src/ec2/model/create_public_ipv4_pool_request.dart'
    as _i520;
import 'package:smoke_test/src/sdk/src/ec2/model/create_public_ipv4_pool_result.dart'
    as _i521;
import 'package:smoke_test/src/sdk/src/ec2/model/create_replace_root_volume_task_request.dart'
    as _i522;
import 'package:smoke_test/src/sdk/src/ec2/model/create_replace_root_volume_task_result.dart'
    as _i525;
import 'package:smoke_test/src/sdk/src/ec2/model/create_reserved_instances_listing_request.dart'
    as _i527;
import 'package:smoke_test/src/sdk/src/ec2/model/create_reserved_instances_listing_result.dart'
    as _i528;
import 'package:smoke_test/src/sdk/src/ec2/model/create_restore_image_task_request.dart'
    as _i529;
import 'package:smoke_test/src/sdk/src/ec2/model/create_restore_image_task_result.dart'
    as _i530;
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_request.dart'
    as _i531;
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_result.dart'
    as _i532;
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_table_request.dart'
    as _i533;
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_table_result.dart'
    as _i540;
import 'package:smoke_test/src/sdk/src/ec2/model/create_security_group_request.dart'
    as _i541;
import 'package:smoke_test/src/sdk/src/ec2/model/create_security_group_result.dart'
    as _i542;
import 'package:smoke_test/src/sdk/src/ec2/model/create_snapshot_request.dart'
    as _i543;
import 'package:smoke_test/src/sdk/src/ec2/model/create_snapshots_request.dart'
    as _i549;
import 'package:smoke_test/src/sdk/src/ec2/model/create_snapshots_result.dart'
    as _i551;
import 'package:smoke_test/src/sdk/src/ec2/model/create_spot_datafeed_subscription_request.dart'
    as _i552;
import 'package:smoke_test/src/sdk/src/ec2/model/create_spot_datafeed_subscription_result.dart'
    as _i556;
import 'package:smoke_test/src/sdk/src/ec2/model/create_store_image_task_request.dart'
    as _i558;
import 'package:smoke_test/src/sdk/src/ec2/model/create_store_image_task_result.dart'
    as _i559;
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_cidr_reservation_request.dart'
    as _i563;
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_cidr_reservation_result.dart'
    as _i565;
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_request.dart'
    as _i560;
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_result.dart'
    as _i561;
import 'package:smoke_test/src/sdk/src/ec2/model/create_tags_request.dart'
    as _i566;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_request.dart'
    as _i567;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_result.dart'
    as _i574;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_rule_request.dart'
    as _i576;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_rule_result.dart'
    as _i577;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_session_request.dart'
    as _i578;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_session_result.dart'
    as _i580;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_target_request.dart'
    as _i581;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_target_result.dart'
    as _i584;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_peer_request.dart'
    as _i603;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_peer_result.dart'
    as _i609;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_request.dart'
    as _i598;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_request_options.dart'
    as _i597;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_result.dart'
    as _i601;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_multicast_domain_request.dart'
    as _i614;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_multicast_domain_request_options.dart'
    as _i613;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_multicast_domain_result.dart'
    as _i618;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_request.dart'
    as _i620;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_request_options.dart'
    as _i619;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_result.dart'
    as _i621;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_policy_table_request.dart'
    as _i622;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_policy_table_result.dart'
    as _i625;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_prefix_list_reference_request.dart'
    as _i626;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_prefix_list_reference_result.dart'
    as _i630;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_request.dart'
    as _i591;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_result.dart'
    as _i595;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_request.dart'
    as _i631;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_result.dart'
    as _i636;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_table_announcement_request.dart'
    as _i641;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_table_announcement_result.dart'
    as _i645;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_table_request.dart'
    as _i637;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_table_result.dart'
    as _i640;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_vpc_attachment_request.dart'
    as _i647;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_vpc_attachment_request_options.dart'
    as _i646;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_vpc_attachment_result.dart'
    as _i648;
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_permission.dart'
    as _i1294;
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_permission_modifications.dart'
    as _i1748;
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_request.dart'
    as _i649;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_connection_notification_request.dart'
    as _i666;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_connection_notification_result.dart'
    as _i670;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_request.dart'
    as _i658;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_result.dart'
    as _i665;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_service_configuration_request.dart'
    as _i671;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_service_configuration_result.dart'
    as _i680;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_peering_connection_request.dart'
    as _i681;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_peering_connection_result.dart'
    as _i682;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_request.dart'
    as _i652;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_result.dart'
    as _i653;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_connection_request.dart'
    as _i695;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_connection_result.dart'
    as _i714;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_connection_route_request.dart'
    as _i715;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_gateway_request.dart'
    as _i716;
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_gateway_result.dart'
    as _i718;
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification.dart'
    as _i427;
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification_request.dart'
    as _i390;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i167;
import 'package:smoke_test/src/sdk/src/ec2/model/customer_gateway.dart'
    as _i238;
import 'package:smoke_test/src/sdk/src/ec2/model/datafeed_subscription_state.dart'
    as _i554;
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_association_value.dart'
    as _i586;
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_propagation_value.dart'
    as _i587;
import 'package:smoke_test/src/sdk/src/ec2/model/default_target_capacity_type.dart'
    as _i294;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_carrier_gateway_request.dart'
    as _i719;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_carrier_gateway_result.dart'
    as _i720;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_client_vpn_endpoint_request.dart'
    as _i721;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_client_vpn_endpoint_result.dart'
    as _i722;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_client_vpn_route_request.dart'
    as _i723;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_client_vpn_route_result.dart'
    as _i724;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_coip_cidr_request.dart'
    as _i725;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_coip_cidr_result.dart'
    as _i726;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_coip_pool_request.dart'
    as _i727;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_coip_pool_result.dart'
    as _i728;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_customer_gateway_request.dart'
    as _i729;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_dhcp_options_request.dart'
    as _i730;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_egress_only_internet_gateway_request.dart'
    as _i731;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_egress_only_internet_gateway_result.dart'
    as _i732;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error.dart'
    as _i737;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error_code.dart'
    as _i736;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error_item.dart'
    as _i738;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_success_item.dart'
    as _i735;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleets_request.dart'
    as _i733;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleets_result.dart'
    as _i739;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_flow_logs_request.dart'
    as _i740;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_flow_logs_result.dart'
    as _i741;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fpga_image_request.dart'
    as _i742;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fpga_image_result.dart'
    as _i743;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_instance_event_window_request.dart'
    as _i744;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_instance_event_window_result.dart'
    as _i746;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_internet_gateway_request.dart'
    as _i747;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_pool_request.dart'
    as _i750;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_pool_result.dart'
    as _i751;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_request.dart'
    as _i748;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_result.dart'
    as _i749;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_scope_request.dart'
    as _i752;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_scope_result.dart'
    as _i753;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_key_pair_request.dart'
    as _i754;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_request.dart'
    as _i755;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_result.dart'
    as _i756;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_request.dart'
    as _i757;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_response_error_item.dart'
    as _i761;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_response_success_item.dart'
    as _i758;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_result.dart'
    as _i762;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_request.dart'
    as _i763;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_result.dart'
    as _i764;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_request.dart'
    as _i765;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_result.dart'
    as _i766;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_virtual_interface_group_association_request.dart'
    as _i767;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_virtual_interface_group_association_result.dart'
    as _i768;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_vpc_association_request.dart'
    as _i769;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_vpc_association_result.dart'
    as _i770;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_managed_prefix_list_request.dart'
    as _i771;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_managed_prefix_list_result.dart'
    as _i772;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_nat_gateway_request.dart'
    as _i773;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_nat_gateway_result.dart'
    as _i774;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_acl_entry_request.dart'
    as _i776;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_acl_request.dart'
    as _i775;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_access_scope_analysis_request.dart'
    as _i779;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_access_scope_analysis_result.dart'
    as _i780;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_access_scope_request.dart'
    as _i777;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_access_scope_result.dart'
    as _i778;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_analysis_request.dart'
    as _i781;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_analysis_result.dart'
    as _i782;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_path_request.dart'
    as _i783;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_path_result.dart'
    as _i784;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_interface_permission_request.dart'
    as _i786;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_interface_permission_result.dart'
    as _i787;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_interface_request.dart'
    as _i785;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_placement_group_request.dart'
    as _i788;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_public_ipv4_pool_request.dart'
    as _i789;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_public_ipv4_pool_result.dart'
    as _i790;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_error.dart'
    as _i794;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_error_code.dart'
    as _i793;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_request.dart'
    as _i791;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_result.dart'
    as _i796;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_route_request.dart'
    as _i797;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_route_table_request.dart'
    as _i798;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_security_group_request.dart'
    as _i799;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_snapshot_request.dart'
    as _i800;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_spot_datafeed_subscription_request.dart'
    as _i801;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_subnet_cidr_reservation_request.dart'
    as _i803;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_subnet_cidr_reservation_result.dart'
    as _i804;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_subnet_request.dart'
    as _i802;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_tags_request.dart'
    as _i805;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_filter_request.dart'
    as _i806;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_filter_result.dart'
    as _i807;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_filter_rule_request.dart'
    as _i808;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_filter_rule_result.dart'
    as _i809;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_session_request.dart'
    as _i810;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_session_result.dart'
    as _i811;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_target_request.dart'
    as _i812;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_target_result.dart'
    as _i813;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_connect_peer_request.dart'
    as _i818;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_connect_peer_result.dart'
    as _i819;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_connect_request.dart'
    as _i816;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_connect_result.dart'
    as _i817;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_multicast_domain_request.dart'
    as _i820;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_multicast_domain_result.dart'
    as _i821;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_peering_attachment_request.dart'
    as _i822;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_peering_attachment_result.dart'
    as _i823;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_policy_table_request.dart'
    as _i824;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_policy_table_result.dart'
    as _i825;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_prefix_list_reference_request.dart'
    as _i826;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_prefix_list_reference_result.dart'
    as _i827;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_request.dart'
    as _i814;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_result.dart'
    as _i815;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_request.dart'
    as _i828;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_result.dart'
    as _i829;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_table_announcement_request.dart'
    as _i832;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_table_announcement_result.dart'
    as _i833;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_table_request.dart'
    as _i830;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_table_result.dart'
    as _i831;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_vpc_attachment_request.dart'
    as _i834;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_vpc_attachment_result.dart'
    as _i835;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_volume_request.dart'
    as _i836;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoint_connection_notifications_request.dart'
    as _i838;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoint_connection_notifications_result.dart'
    as _i839;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoint_service_configurations_request.dart'
    as _i840;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoint_service_configurations_result.dart'
    as _i841;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoints_request.dart'
    as _i842;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoints_result.dart'
    as _i843;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_peering_connection_request.dart'
    as _i844;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_peering_connection_result.dart'
    as _i845;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_request.dart'
    as _i837;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpn_connection_request.dart'
    as _i846;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpn_connection_route_request.dart'
    as _i847;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpn_gateway_request.dart'
    as _i848;
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_byoip_cidr_request.dart'
    as _i849;
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_byoip_cidr_result.dart'
    as _i850;
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_ipam_pool_cidr_request.dart'
    as _i851;
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_ipam_pool_cidr_result.dart'
    as _i856;
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_public_ipv4_pool_cidr_request.dart'
    as _i857;
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_public_ipv4_pool_cidr_result.dart'
    as _i858;
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_image_request.dart'
    as _i859;
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_instance_event_notification_attributes_request.dart'
    as _i861;
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_instance_event_notification_attributes_result.dart'
    as _i863;
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_instance_tag_attribute_request.dart'
    as _i860;
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_members_request.dart'
    as _i864;
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_members_result.dart'
    as _i866;
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_sources_request.dart'
    as _i867;
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_sources_result.dart'
    as _i869;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_request.dart'
    as _i871;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_result.dart'
    as _i874;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_attribute_request.dart'
    as _i880;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_attribute_result.dart'
    as _i883;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_request.dart'
    as _i876;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_result.dart'
    as _i878;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_aggregate_id_format_request.dart'
    as _i884;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_aggregate_id_format_result.dart'
    as _i886;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_availability_zones_request.dart'
    as _i887;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_availability_zones_result.dart'
    as _i892;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_bundle_tasks_request.dart'
    as _i893;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_bundle_tasks_result.dart'
    as _i894;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_byoip_cidrs_request.dart'
    as _i895;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_byoip_cidrs_result.dart'
    as _i896;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservation_fleets_request.dart'
    as _i897;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservation_fleets_result.dart'
    as _i899;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservations_request.dart'
    as _i900;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservations_result.dart'
    as _i901;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_carrier_gateways_request.dart'
    as _i902;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_carrier_gateways_result.dart'
    as _i903;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_classic_link_instances_request.dart'
    as _i904;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_classic_link_instances_result.dart'
    as _i906;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_authorization_rules_request.dart'
    as _i907;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_authorization_rules_result.dart'
    as _i909;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_connections_request.dart'
    as _i910;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_connections_result.dart'
    as _i914;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_endpoints_request.dart'
    as _i915;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_endpoints_result.dart'
    as _i929;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_routes_request.dart'
    as _i930;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_routes_result.dart'
    as _i932;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_target_networks_request.dart'
    as _i933;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_target_networks_result.dart'
    as _i935;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_coip_pools_request.dart'
    as _i936;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_coip_pools_result.dart'
    as _i937;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_conversion_tasks_request.dart'
    as _i938;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_conversion_tasks_result.dart'
    as _i946;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_customer_gateways_request.dart'
    as _i947;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_customer_gateways_result.dart'
    as _i948;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_dhcp_options_request.dart'
    as _i949;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_dhcp_options_result.dart'
    as _i950;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_egress_only_internet_gateways_request.dart'
    as _i951;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_egress_only_internet_gateways_result.dart'
    as _i952;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_elastic_gpus_request.dart'
    as _i953;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_elastic_gpus_result.dart'
    as _i958;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_image_tasks_request.dart'
    as _i959;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_image_tasks_result.dart'
    as _i962;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_tasks_request.dart'
    as _i963;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_tasks_result.dart'
    as _i964;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_request.dart'
    as _i965;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_result.dart'
    as _i971;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_success_item.dart'
    as _i970;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restore_success_item.dart'
    as _i974;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restores_request.dart'
    as _i972;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restores_result.dart'
    as _i975;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_error.dart'
    as _i994;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_history_request.dart'
    as _i977;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_history_result.dart'
    as _i980;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_instances_request.dart'
    as _i981;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_instances_result.dart'
    as _i984;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleets_instances.dart'
    as _i995;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleets_request.dart'
    as _i985;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleets_result.dart'
    as _i997;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_flow_logs_request.dart'
    as _i998;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_flow_logs_result.dart'
    as _i1001;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_image_attribute_request.dart'
    as _i1003;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_image_attribute_result.dart'
    as _i1009;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_images_request.dart'
    as _i1010;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_images_result.dart'
    as _i1015;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservation_offerings_request.dart'
    as _i1016;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservation_offerings_result.dart'
    as _i1019;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservations_request.dart'
    as _i1020;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservations_result.dart'
    as _i1023;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_hosts_request.dart'
    as _i1024;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_hosts_result.dart'
    as _i1032;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_iam_instance_profile_associations_request.dart'
    as _i1033;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_iam_instance_profile_associations_result.dart'
    as _i1034;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_id_format_request.dart'
    as _i1035;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_id_format_result.dart'
    as _i1036;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_identity_id_format_request.dart'
    as _i1037;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_identity_id_format_result.dart'
    as _i1038;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_image_attribute_request.dart'
    as _i1040;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_images_request.dart'
    as _i1043;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_images_result.dart'
    as _i1054;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_image_tasks_request.dart'
    as _i1055;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_image_tasks_result.dart'
    as _i1060;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_snapshot_tasks_request.dart'
    as _i1061;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_snapshot_tasks_result.dart'
    as _i1064;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_attribute_request.dart'
    as _i1066;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_credit_specifications_request.dart'
    as _i1072;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_credit_specifications_result.dart'
    as _i1074;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_notification_attributes_request.dart'
    as _i1075;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_notification_attributes_result.dart'
    as _i1076;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_windows_request.dart'
    as _i1077;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_windows_result.dart'
    as _i1078;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_status_request.dart'
    as _i1079;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_status_result.dart'
    as _i1090;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_type_offerings_request.dart'
    as _i1092;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_type_offerings_result.dart'
    as _i1094;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_types_request.dart'
    as _i1095;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_types_result.dart'
    as _i1129;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instances_request.dart'
    as _i1130;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instances_result.dart'
    as _i1157;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_internet_gateways_request.dart'
    as _i1158;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_internet_gateways_result.dart'
    as _i1159;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_pools_request.dart'
    as _i1160;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_pools_result.dart'
    as _i1161;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_scopes_request.dart'
    as _i1162;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_scopes_result.dart'
    as _i1163;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipams_request.dart'
    as _i1164;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipams_result.dart'
    as _i1165;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipv6_pools_request.dart'
    as _i1166;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipv6_pools_result.dart'
    as _i1169;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_key_pairs_request.dart'
    as _i1170;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_key_pairs_result.dart'
    as _i1172;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_template_versions_request.dart'
    as _i1173;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_template_versions_result.dart'
    as _i1174;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_templates_request.dart'
    as _i1175;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_templates_result.dart'
    as _i1176;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_virtual_interface_group_associations_request.dart'
    as _i1177;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_virtual_interface_group_associations_result.dart'
    as _i1178;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_vpc_associations_request.dart'
    as _i1179;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_vpc_associations_result.dart'
    as _i1180;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_tables_request.dart'
    as _i1181;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_tables_result.dart'
    as _i1182;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interface_groups_request.dart'
    as _i1183;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interface_groups_result.dart'
    as _i1185;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interfaces_request.dart'
    as _i1186;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interfaces_result.dart'
    as _i1188;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateways_request.dart'
    as _i1189;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateways_result.dart'
    as _i1191;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_managed_prefix_lists_request.dart'
    as _i1192;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_managed_prefix_lists_result.dart'
    as _i1193;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_moving_addresses_request.dart'
    as _i1194;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_moving_addresses_result.dart'
    as _i1197;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_nat_gateways_request.dart'
    as _i1198;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_nat_gateways_result.dart'
    as _i1199;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_acls_request.dart'
    as _i1200;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_acls_result.dart'
    as _i1201;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scope_analyses_request.dart'
    as _i1202;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scope_analyses_result.dart'
    as _i1206;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scopes_request.dart'
    as _i1207;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scopes_result.dart'
    as _i1208;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_analyses_request.dart'
    as _i1209;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_analyses_result.dart'
    as _i1223;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_paths_request.dart'
    as _i1224;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_paths_result.dart'
    as _i1225;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_attribute_request.dart'
    as _i1227;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_attribute_result.dart'
    as _i1228;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_permissions_request.dart'
    as _i1229;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_permissions_result.dart'
    as _i1230;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interfaces_request.dart'
    as _i1231;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interfaces_result.dart'
    as _i1232;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_placement_groups_request.dart'
    as _i1233;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_placement_groups_result.dart'
    as _i1234;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_prefix_lists_request.dart'
    as _i1235;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_prefix_lists_result.dart'
    as _i1237;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_principal_id_format_request.dart'
    as _i1238;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_principal_id_format_result.dart'
    as _i1240;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_public_ipv4_pools_request.dart'
    as _i1241;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_public_ipv4_pools_result.dart'
    as _i1244;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_regions_request.dart'
    as _i1245;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_regions_result.dart'
    as _i1247;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_replace_root_volume_tasks_request.dart'
    as _i1248;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_replace_root_volume_tasks_result.dart'
    as _i1249;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_listings_request.dart'
    as _i1260;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_listings_result.dart'
    as _i1261;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_modifications_request.dart'
    as _i1262;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_modifications_result.dart'
    as _i1267;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_offerings_request.dart'
    as _i1268;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_offerings_result.dart'
    as _i1271;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_request.dart'
    as _i1252;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_result.dart'
    as _i1259;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_route_tables_request.dart'
    as _i1272;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_route_tables_result.dart'
    as _i1273;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instance_availability_request.dart'
    as _i1276;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instance_availability_result.dart'
    as _i1279;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instances_request.dart'
    as _i1281;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instances_result.dart'
    as _i1283;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_references_request.dart'
    as _i1284;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_references_result.dart'
    as _i1286;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_rules_request.dart'
    as _i1287;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_rules_result.dart'
    as _i1288;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_groups_request.dart'
    as _i1289;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_groups_result.dart'
    as _i1291;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_attribute_request.dart'
    as _i1293;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_attribute_result.dart'
    as _i1295;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_tier_status_request.dart'
    as _i1296;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_tier_status_result.dart'
    as _i1299;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshots_request.dart'
    as _i1300;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshots_result.dart'
    as _i1301;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_datafeed_subscription_request.dart'
    as _i1302;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_datafeed_subscription_result.dart'
    as _i1303;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_instances_request.dart'
    as _i1304;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_instances_response.dart'
    as _i1305;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_request_history_request.dart'
    as _i1307;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_request_history_response.dart'
    as _i1309;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_requests_request.dart'
    as _i1310;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_requests_response.dart'
    as _i1332;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_instance_requests_request.dart'
    as _i1333;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_instance_requests_result.dart'
    as _i1339;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_price_history_request.dart'
    as _i1340;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_price_history_result.dart'
    as _i1342;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_stale_security_groups_request.dart'
    as _i1343;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_stale_security_groups_result.dart'
    as _i1346;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_store_image_tasks_request.dart'
    as _i1347;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_store_image_tasks_result.dart'
    as _i1349;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_subnets_request.dart'
    as _i1350;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_subnets_result.dart'
    as _i1351;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_tags_request.dart'
    as _i1352;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_tags_result.dart'
    as _i1354;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_filters_request.dart'
    as _i1355;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_filters_result.dart'
    as _i1356;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_sessions_request.dart'
    as _i1357;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_sessions_result.dart'
    as _i1358;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_targets_request.dart'
    as _i1359;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_targets_result.dart'
    as _i1360;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_attachments_request.dart'
    as _i1361;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_attachments_result.dart'
    as _i1364;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connect_peers_request.dart'
    as _i1365;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connect_peers_result.dart'
    as _i1366;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connects_request.dart'
    as _i1367;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connects_result.dart'
    as _i1368;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_multicast_domains_request.dart'
    as _i1369;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_multicast_domains_result.dart'
    as _i1370;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_peering_attachments_request.dart'
    as _i1371;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_peering_attachments_result.dart'
    as _i1372;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_policy_tables_request.dart'
    as _i1373;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_policy_tables_result.dart'
    as _i1374;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_table_announcements_request.dart'
    as _i1375;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_table_announcements_result.dart'
    as _i1376;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_tables_request.dart'
    as _i1377;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_tables_result.dart'
    as _i1378;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_vpc_attachments_request.dart'
    as _i1379;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_vpc_attachments_result.dart'
    as _i1380;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateways_request.dart'
    as _i1381;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateways_result.dart'
    as _i1382;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_trunk_interface_associations_request.dart'
    as _i1383;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_trunk_interface_associations_result.dart'
    as _i1384;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_attribute_request.dart'
    as _i1386;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_attribute_result.dart'
    as _i1387;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_status_request.dart'
    as _i1388;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_status_result.dart'
    as _i1397;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_modifications_request.dart'
    as _i1400;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_modifications_result.dart'
    as _i1403;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_request.dart'
    as _i1398;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_result.dart'
    as _i1399;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_attribute_request.dart'
    as _i1405;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_attribute_result.dart'
    as _i1406;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_dns_support_request.dart'
    as _i1410;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_dns_support_result.dart'
    as _i1412;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_request.dart'
    as _i1407;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_result.dart'
    as _i1409;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connection_notifications_request.dart'
    as _i1413;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connection_notifications_result.dart'
    as _i1414;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connections_request.dart'
    as _i1415;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connections_result.dart'
    as _i1417;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_configurations_request.dart'
    as _i1418;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_configurations_result.dart'
    as _i1419;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_permissions_request.dart'
    as _i1420;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_permissions_result.dart'
    as _i1423;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_services_request.dart'
    as _i1424;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_services_result.dart'
    as _i1427;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoints_request.dart'
    as _i1428;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoints_result.dart'
    as _i1429;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_peering_connections_request.dart'
    as _i1430;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_peering_connections_result.dart'
    as _i1431;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpcs_request.dart'
    as _i1432;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpcs_result.dart'
    as _i1433;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_connections_request.dart'
    as _i1434;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_connections_result.dart'
    as _i1435;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_gateways_request.dart'
    as _i1436;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_gateways_result.dart'
    as _i1437;
import 'package:smoke_test/src/sdk/src/ec2/model/destination_file_format.dart'
    as _i320;
import 'package:smoke_test/src/sdk/src/ec2/model/destination_options_request.dart'
    as _i321;
import 'package:smoke_test/src/sdk/src/ec2/model/destination_options_response.dart'
    as _i999;
import 'package:smoke_test/src/sdk/src/ec2/model/detach_classic_link_vpc_request.dart'
    as _i1438;
import 'package:smoke_test/src/sdk/src/ec2/model/detach_classic_link_vpc_result.dart'
    as _i1439;
import 'package:smoke_test/src/sdk/src/ec2/model/detach_internet_gateway_request.dart'
    as _i1440;
import 'package:smoke_test/src/sdk/src/ec2/model/detach_network_interface_request.dart'
    as _i1441;
import 'package:smoke_test/src/sdk/src/ec2/model/detach_volume_request.dart'
    as _i1442;
import 'package:smoke_test/src/sdk/src/ec2/model/detach_vpn_gateway_request.dart'
    as _i1443;
import 'package:smoke_test/src/sdk/src/ec2/model/device_type.dart' as _i1048;
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_configuration.dart'
    as _i254;
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_options.dart' as _i255;
import 'package:smoke_test/src/sdk/src/ec2/model/directory_service_authentication.dart'
    as _i919;
import 'package:smoke_test/src/sdk/src/ec2/model/directory_service_authentication_request.dart'
    as _i213;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ebs_encryption_by_default_request.dart'
    as _i1444;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ebs_encryption_by_default_result.dart'
    as _i1445;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_launch_request.dart'
    as _i1446;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_launch_result.dart'
    as _i1447;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_error_item.dart'
    as _i1452;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_state_error.dart'
    as _i1450;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_state_error_item.dart'
    as _i1451;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_success_item.dart'
    as _i1449;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restores_request.dart'
    as _i1448;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restores_result.dart'
    as _i1453;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_image_deprecation_request.dart'
    as _i1454;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_image_deprecation_result.dart'
    as _i1455;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ipam_organization_admin_account_request.dart'
    as _i1456;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ipam_organization_admin_account_result.dart'
    as _i1457;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_serial_console_access_request.dart'
    as _i1458;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_serial_console_access_result.dart'
    as _i1459;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_transit_gateway_route_table_propagation_request.dart'
    as _i1460;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_transit_gateway_route_table_propagation_result.dart'
    as _i1463;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vgw_route_propagation_request.dart'
    as _i1464;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vpc_classic_link_dns_support_request.dart'
    as _i1467;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vpc_classic_link_dns_support_result.dart'
    as _i1468;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vpc_classic_link_request.dart'
    as _i1465;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vpc_classic_link_result.dart'
    as _i1466;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_address_request.dart'
    as _i1469;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_client_vpn_target_network_request.dart'
    as _i1470;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_client_vpn_target_network_result.dart'
    as _i1471;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_enclave_certificate_iam_role_request.dart'
    as _i1472;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_enclave_certificate_iam_role_result.dart'
    as _i1473;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_iam_instance_profile_request.dart'
    as _i1474;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_iam_instance_profile_result.dart'
    as _i1475;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_instance_event_window_request.dart'
    as _i1477;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_instance_event_window_result.dart'
    as _i1478;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_route_table_request.dart'
    as _i1479;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_subnet_cidr_block_request.dart'
    as _i1480;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_subnet_cidr_block_result.dart'
    as _i1481;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_multicast_domain_request.dart'
    as _i1482;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_multicast_domain_result.dart'
    as _i1483;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_policy_table_request.dart'
    as _i1484;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_policy_table_result.dart'
    as _i1485;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_route_table_request.dart'
    as _i1486;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_route_table_result.dart'
    as _i1487;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_trunk_interface_request.dart'
    as _i1488;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_trunk_interface_result.dart'
    as _i1489;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_vpc_cidr_block_request.dart'
    as _i1490;
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_vpc_cidr_block_result.dart'
    as _i1491;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image.dart' as _i1649;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_description.dart'
    as _i939;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_detail.dart'
    as _i1647;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart'
    as _i336;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_volume_description.dart'
    as _i940;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_info.dart' as _i1104;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_type.dart' as _i1103;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_entry.dart' as _i662;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_name_state.dart' as _i676;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_options.dart' as _i661;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_options_specification.dart'
    as _i657;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_record_ip_type.dart'
    as _i656;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_servers_options_modify_structure.dart'
    as _i1676;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/ec2/model/domain_type.dart' as _i44;
import 'package:smoke_test/src/sdk/src/ec2/model/dynamic_routing_value.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_block_device.dart'
    as _i328;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_encryption_support.dart'
    as _i1109;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_info.dart' as _i1112;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_instance_block_device.dart'
    as _i1067;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_instance_block_device_specification.dart'
    as _i1696;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_nvme_support.dart'
    as _i1111;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_optimized_info.dart'
    as _i1110;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_optimized_support.dart'
    as _i1108;
import 'package:smoke_test/src/sdk/src/ec2/model/efa_info.dart' as _i1115;
import 'package:smoke_test/src/sdk/src/ec2/model/egress_only_internet_gateway.dart'
    as _i259;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_association.dart'
    as _i1134;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_health.dart'
    as _i955;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification.dart'
    as _i383;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification_response.dart'
    as _i423;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_state.dart'
    as _i956;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_status.dart'
    as _i954;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpus.dart' as _i957;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_inference_accelerator.dart'
    as _i1900;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_inference_accelerator_association.dart'
    as _i1135;
import 'package:smoke_test/src/sdk/src/ec2/model/ena_support.dart' as _i1114;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ebs_encryption_by_default_request.dart'
    as _i1492;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ebs_encryption_by_default_result.dart'
    as _i1493;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_launch_request.dart'
    as _i1496;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_launch_result.dart'
    as _i1497;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_error_item.dart'
    as _i1502;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_state_error.dart'
    as _i1500;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_state_error_item.dart'
    as _i1501;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_success_item.dart'
    as _i1499;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restores_request.dart'
    as _i1498;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restores_result.dart'
    as _i1503;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_image_deprecation_request.dart'
    as _i1504;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_image_deprecation_result.dart'
    as _i1505;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ipam_organization_admin_account_request.dart'
    as _i1506;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ipam_organization_admin_account_result.dart'
    as _i1507;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_serial_console_access_request.dart'
    as _i1508;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_serial_console_access_result.dart'
    as _i1509;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_transit_gateway_route_table_propagation_request.dart'
    as _i1510;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_transit_gateway_route_table_propagation_result.dart'
    as _i1511;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vgw_route_propagation_request.dart'
    as _i1512;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_volume_io_request.dart'
    as _i1513;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vpc_classic_link_dns_support_request.dart'
    as _i1516;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vpc_classic_link_dns_support_result.dart'
    as _i1517;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vpc_classic_link_request.dart'
    as _i1514;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vpc_classic_link_result.dart'
    as _i1515;
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options.dart'
    as _i1070;
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options_request.dart'
    as _i1908;
import 'package:smoke_test/src/sdk/src/ec2/model/end_date_type.dart' as _i193;
import 'package:smoke_test/src/sdk/src/ec2/model/ephemeral_nvme_support.dart'
    as _i1105;
import 'package:smoke_test/src/sdk/src/ec2/model/event_code.dart' as _i1080;
import 'package:smoke_test/src/sdk/src/ec2/model/event_information.dart'
    as _i978;
import 'package:smoke_test/src/sdk/src/ec2/model/event_type.dart' as _i1306;
import 'package:smoke_test/src/sdk/src/ec2/model/excess_capacity_termination_policy.dart'
    as _i1317;
import 'package:smoke_test/src/sdk/src/ec2/model/explanation.dart' as _i1219;
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_certificate_revocation_list_request.dart'
    as _i1518;
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_certificate_revocation_list_result.dart'
    as _i1521;
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_configuration_request.dart'
    as _i1522;
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_configuration_result.dart'
    as _i1523;
import 'package:smoke_test/src/sdk/src/ec2/model/export_environment.dart'
    as _i338;
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_request.dart'
    as _i1525;
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_result.dart'
    as _i1526;
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_task.dart'
    as _i961;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task.dart' as _i343;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_s3_location.dart'
    as _i960;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_s3_location_request.dart'
    as _i1524;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_state.dart'
    as _i342;
import 'package:smoke_test/src/sdk/src/ec2/model/export_to_s3_task.dart'
    as _i340;
import 'package:smoke_test/src/sdk/src/ec2/model/export_to_s3_task_specification.dart'
    as _i337;
import 'package:smoke_test/src/sdk/src/ec2/model/export_transit_gateway_routes_request.dart'
    as _i1527;
import 'package:smoke_test/src/sdk/src/ec2/model/export_transit_gateway_routes_result.dart'
    as _i1528;
import 'package:smoke_test/src/sdk/src/ec2/model/failed_capacity_reservation_fleet_cancellation_result.dart'
    as _i158;
import 'package:smoke_test/src/sdk/src/ec2/model/failed_queued_purchase_deletion.dart'
    as _i795;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_launch_template_specification_request.dart'
    as _i1495;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_launch_template_specification_response.dart'
    as _i968;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_resource_type.dart'
    as _i966;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_snapshot_configuration_request.dart'
    as _i1494;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_snapshot_configuration_response.dart'
    as _i967;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_state_code.dart'
    as _i969;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_snapshot_restore_state_code.dart'
    as _i973;
import 'package:smoke_test/src/sdk/src/ec2/model/federated_authentication.dart'
    as _i921;
import 'package:smoke_test/src/sdk/src/ec2/model/federated_authentication_request.dart'
    as _i215;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i875;
import 'package:smoke_test/src/sdk/src/ec2/model/findings_found.dart' as _i1204;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_activity_status.dart'
    as _i986;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation.dart'
    as _i206;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation_tenancy.dart'
    as _i203;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation_usage_strategy.dart'
    as _i268;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_data.dart' as _i996;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_event_type.dart'
    as _i976;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_excess_capacity_termination_policy.dart'
    as _i271;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_instance_match_criteria.dart'
    as _i204;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_config.dart'
    as _i987;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_config_request.dart'
    as _i293;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_overrides.dart'
    as _i310;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_overrides_request.dart'
    as _i292;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification.dart'
    as _i299;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification_request.dart'
    as _i272;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_on_demand_allocation_strategy.dart'
    as _i267;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_replacement_strategy.dart'
    as _i262;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_capacity_rebalance.dart'
    as _i989;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_capacity_rebalance_request.dart'
    as _i263;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_maintenance_strategies.dart'
    as _i990;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_maintenance_strategies_request.dart'
    as _i264;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_state_code.dart'
    as _i734;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_type.dart' as _i297;
import 'package:smoke_test/src/sdk/src/ec2/model/flow_log.dart' as _i1000;
import 'package:smoke_test/src/sdk/src/ec2/model/flow_logs_resource_type.dart'
    as _i317;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_device_info.dart'
    as _i1121;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_device_memory_info.dart'
    as _i1120;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image.dart' as _i1014;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_attribute.dart'
    as _i1008;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_attribute_name.dart'
    as _i1002;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_state.dart'
    as _i1013;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_state_code.dart'
    as _i1012;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_info.dart' as _i1122;
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_association_state.dart'
    as _i697;
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_type.dart' as _i236;
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_enclave_certificate_iam_roles_request.dart'
    as _i1529;
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_enclave_certificate_iam_roles_result.dart'
    as _i1531;
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_ipv6_pool_cidrs_request.dart'
    as _i1532;
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_ipv6_pool_cidrs_result.dart'
    as _i1534;
import 'package:smoke_test/src/sdk/src/ec2/model/get_capacity_reservation_usage_request.dart'
    as _i1535;
import 'package:smoke_test/src/sdk/src/ec2/model/get_capacity_reservation_usage_result.dart'
    as _i1537;
import 'package:smoke_test/src/sdk/src/ec2/model/get_coip_pool_usage_request.dart'
    as _i1538;
import 'package:smoke_test/src/sdk/src/ec2/model/get_coip_pool_usage_result.dart'
    as _i1540;
import 'package:smoke_test/src/sdk/src/ec2/model/get_console_output_request.dart'
    as _i1541;
import 'package:smoke_test/src/sdk/src/ec2/model/get_console_output_result.dart'
    as _i1542;
import 'package:smoke_test/src/sdk/src/ec2/model/get_console_screenshot_request.dart'
    as _i1543;
import 'package:smoke_test/src/sdk/src/ec2/model/get_console_screenshot_result.dart'
    as _i1544;
import 'package:smoke_test/src/sdk/src/ec2/model/get_default_credit_specification_request.dart'
    as _i1546;
import 'package:smoke_test/src/sdk/src/ec2/model/get_default_credit_specification_result.dart'
    as _i1548;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ebs_default_kms_key_id_request.dart'
    as _i1549;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ebs_default_kms_key_id_result.dart'
    as _i1550;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ebs_encryption_by_default_request.dart'
    as _i1551;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ebs_encryption_by_default_result.dart'
    as _i1552;
import 'package:smoke_test/src/sdk/src/ec2/model/get_flow_logs_integration_template_request.dart'
    as _i1556;
import 'package:smoke_test/src/sdk/src/ec2/model/get_flow_logs_integration_template_result.dart'
    as _i1557;
import 'package:smoke_test/src/sdk/src/ec2/model/get_groups_for_capacity_reservation_request.dart'
    as _i1558;
import 'package:smoke_test/src/sdk/src/ec2/model/get_groups_for_capacity_reservation_result.dart'
    as _i1560;
import 'package:smoke_test/src/sdk/src/ec2/model/get_host_reservation_purchase_preview_request.dart'
    as _i1561;
import 'package:smoke_test/src/sdk/src/ec2/model/get_host_reservation_purchase_preview_result.dart'
    as _i1563;
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_types_from_instance_requirements_request.dart'
    as _i1564;
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_types_from_instance_requirements_result.dart'
    as _i1566;
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_uefi_data_request.dart'
    as _i1567;
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_uefi_data_result.dart'
    as _i1568;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_address_history_request.dart'
    as _i1569;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_address_history_result.dart'
    as _i1574;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_allocations_request.dart'
    as _i1575;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_allocations_result.dart'
    as _i1576;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_cidrs_request.dart'
    as _i1577;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_cidrs_result.dart'
    as _i1578;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_resource_cidrs_request.dart'
    as _i1580;
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_resource_cidrs_result.dart'
    as _i1583;
import 'package:smoke_test/src/sdk/src/ec2/model/get_launch_template_data_request.dart'
    as _i1584;
import 'package:smoke_test/src/sdk/src/ec2/model/get_launch_template_data_result.dart'
    as _i1585;
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_associations_request.dart'
    as _i1586;
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_associations_result.dart'
    as _i1588;
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_entries_request.dart'
    as _i1589;
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_entries_result.dart'
    as _i1591;
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_analysis_findings_request.dart'
    as _i1592;
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_analysis_findings_result.dart'
    as _i1594;
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_content_request.dart'
    as _i1595;
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_content_result.dart'
    as _i1596;
import 'package:smoke_test/src/sdk/src/ec2/model/get_password_data_request.dart'
    as _i1597;
import 'package:smoke_test/src/sdk/src/ec2/model/get_password_data_result.dart'
    as _i1598;
import 'package:smoke_test/src/sdk/src/ec2/model/get_reserved_instances_exchange_quote_request.dart'
    as _i1599;
import 'package:smoke_test/src/sdk/src/ec2/model/get_reserved_instances_exchange_quote_result.dart'
    as _i1604;
import 'package:smoke_test/src/sdk/src/ec2/model/get_serial_console_access_status_request.dart'
    as _i1605;
import 'package:smoke_test/src/sdk/src/ec2/model/get_serial_console_access_status_result.dart'
    as _i1606;
import 'package:smoke_test/src/sdk/src/ec2/model/get_spot_placement_scores_request.dart'
    as _i1608;
import 'package:smoke_test/src/sdk/src/ec2/model/get_spot_placement_scores_result.dart'
    as _i1610;
import 'package:smoke_test/src/sdk/src/ec2/model/get_subnet_cidr_reservations_request.dart'
    as _i1611;
import 'package:smoke_test/src/sdk/src/ec2/model/get_subnet_cidr_reservations_result.dart'
    as _i1612;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_attachment_propagations_request.dart'
    as _i1613;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_attachment_propagations_result.dart'
    as _i1615;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_multicast_domain_associations_request.dart'
    as _i1616;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_multicast_domain_associations_result.dart'
    as _i1618;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_associations_request.dart'
    as _i1619;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_associations_result.dart'
    as _i1620;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_entries_request.dart'
    as _i1621;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_entries_result.dart'
    as _i1625;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_prefix_list_references_request.dart'
    as _i1626;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_prefix_list_references_result.dart'
    as _i1627;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_associations_request.dart'
    as _i1628;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_associations_result.dart'
    as _i1630;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_propagations_request.dart'
    as _i1631;
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_propagations_result.dart'
    as _i1633;
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_sample_configuration_request.dart'
    as _i1634;
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_sample_configuration_result.dart'
    as _i1635;
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_types_request.dart'
    as _i1636;
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_types_result.dart'
    as _i1638;
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_device_info.dart'
    as _i1118;
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_device_memory_info.dart'
    as _i1117;
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_info.dart' as _i1119;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart'
    as _i500;
import 'package:smoke_test/src/sdk/src/ec2/model/hibernation_options.dart'
    as _i1144;
import 'package:smoke_test/src/sdk/src/ec2/model/hibernation_options_request.dart'
    as _i1905;
import 'package:smoke_test/src/sdk/src/ec2/model/history_record.dart' as _i1308;
import 'package:smoke_test/src/sdk/src/ec2/model/history_record_entry.dart'
    as _i979;
import 'package:smoke_test/src/sdk/src/ec2/model/host.dart' as _i1031;
import 'package:smoke_test/src/sdk/src/ec2/model/host_instance.dart' as _i1028;
import 'package:smoke_test/src/sdk/src/ec2/model/host_offering.dart' as _i1018;
import 'package:smoke_test/src/sdk/src/ec2/model/host_properties.dart'
    as _i1027;
import 'package:smoke_test/src/sdk/src/ec2/model/host_recovery.dart' as _i50;
import 'package:smoke_test/src/sdk/src/ec2/model/host_reservation.dart'
    as _i1022;
import 'package:smoke_test/src/sdk/src/ec2/model/host_tenancy.dart' as _i1719;
import 'package:smoke_test/src/sdk/src/ec2/model/hostname_type.dart' as _i242;
import 'package:smoke_test/src/sdk/src/ec2/model/http_tokens_state.dart'
    as _i1147;
import 'package:smoke_test/src/sdk/src/ec2/model/hypervisor_type.dart'
    as _i1047;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile.dart'
    as _i76;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association.dart'
    as _i78;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association_state.dart'
    as _i77;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart'
    as _i74;
import 'package:smoke_test/src/sdk/src/ec2/model/icmp_type_code.dart' as _i471;
import 'package:smoke_test/src/sdk/src/ec2/model/id_format.dart' as _i885;
import 'package:smoke_test/src/sdk/src/ec2/model/igmpv2_support_value.dart'
    as _i610;
import 'package:smoke_test/src/sdk/src/ec2/model/ike_versions_list_value.dart'
    as _i704;
import 'package:smoke_test/src/sdk/src/ec2/model/ike_versions_request_list_value.dart'
    as _i690;
import 'package:smoke_test/src/sdk/src/ec2/model/image.dart' as _i1053;
import 'package:smoke_test/src/sdk/src/ec2/model/image_attribute.dart'
    as _i1042;
import 'package:smoke_test/src/sdk/src/ec2/model/image_attribute_name.dart'
    as _i1039;
import 'package:smoke_test/src/sdk/src/ec2/model/image_disk_container.dart'
    as _i1643;
import 'package:smoke_test/src/sdk/src/ec2/model/image_recycle_bin_info.dart'
    as _i1662;
import 'package:smoke_test/src/sdk/src/ec2/model/image_state.dart' as _i1046;
import 'package:smoke_test/src/sdk/src/ec2/model/image_type_values.dart'
    as _i1045;
import 'package:smoke_test/src/sdk/src/ec2/model/imds_support_values.dart'
    as _i1052;
import 'package:smoke_test/src/sdk/src/ec2/model/import_client_vpn_client_certificate_revocation_list_request.dart'
    as _i1639;
import 'package:smoke_test/src/sdk/src/ec2/model/import_client_vpn_client_certificate_revocation_list_result.dart'
    as _i1640;
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_license_configuration_request.dart'
    as _i1644;
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_license_configuration_response.dart'
    as _i1058;
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_request.dart'
    as _i1645;
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_result.dart'
    as _i1646;
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_task.dart'
    as _i1059;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_launch_specification.dart'
    as _i1651;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_request.dart'
    as _i1652;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_result.dart'
    as _i1653;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_task_details.dart'
    as _i942;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_volume_detail_item.dart'
    as _i941;
import 'package:smoke_test/src/sdk/src/ec2/model/import_key_pair_request.dart'
    as _i1654;
import 'package:smoke_test/src/sdk/src/ec2/model/import_key_pair_result.dart'
    as _i1655;
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_request.dart'
    as _i1657;
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_result.dart'
    as _i1658;
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_task.dart'
    as _i1063;
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_request.dart'
    as _i1659;
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_result.dart'
    as _i1660;
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_task_details.dart'
    as _i943;
import 'package:smoke_test/src/sdk/src/ec2/model/inference_accelerator_info.dart'
    as _i1126;
import 'package:smoke_test/src/sdk/src/ec2/model/inference_device_info.dart'
    as _i1125;
import 'package:smoke_test/src/sdk/src/ec2/model/instance.dart' as _i1155;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_attribute.dart'
    as _i1071;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_attribute_name.dart'
    as _i1065;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_auto_recovery_state.dart'
    as _i1153;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping.dart'
    as _i1068;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping_specification.dart'
    as _i1697;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_capacity.dart'
    as _i1025;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_count.dart' as _i166;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification.dart'
    as _i1073;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification_request.dart'
    as _i1703;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart'
    as _i86;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_association_request.dart'
    as _i80;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_association_target.dart'
    as _i84;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_disassociation_request.dart'
    as _i1476;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_state.dart'
    as _i85;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_state_change.dart'
    as _i745;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_time_range.dart'
    as _i83;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_time_range_request.dart'
    as _i332;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_export_details.dart'
    as _i341;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_family_credit_specification.dart'
    as _i1547;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_generation.dart'
    as _i278;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_health_status.dart'
    as _i982;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart'
    as _i387;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv4_prefix.dart'
    as _i1139;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart'
    as _i416;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address_request.dart'
    as _i374;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_prefix.dart'
    as _i1140;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle.dart'
    as _i312;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle_type.dart'
    as _i1133;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_maintenance_options.dart'
    as _i1154;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_maintenance_options_request.dart'
    as _i1910;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_market_options_request.dart'
    as _i1903;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_match_criteria.dart'
    as _i194;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_endpoint_state.dart'
    as _i1148;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_request.dart'
    as _i1907;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_response.dart'
    as _i1151;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_state.dart'
    as _i1146;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_protocol_state.dart'
    as _i1149;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_tags_state.dart'
    as _i1150;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_monitoring.dart'
    as _i1804;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface.dart'
    as _i1141;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_association.dart'
    as _i1136;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_attachment.dart'
    as _i1137;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_specification.dart'
    as _i1319;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_private_ip_address.dart'
    as _i1138;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements.dart'
    as _i309;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_request.dart'
    as _i291;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_with_metadata_request.dart'
    as _i1607;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_specification.dart'
    as _i547;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state.dart' as _i1083;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_change.dart'
    as _i1933;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_name.dart'
    as _i1082;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status.dart'
    as _i1089;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_details.dart'
    as _i1086;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_event.dart'
    as _i1081;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_summary.dart'
    as _i1088;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_storage_encryption_support.dart'
    as _i1106;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_storage_info.dart'
    as _i1107;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_tag_notification_attribute.dart'
    as _i862;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i201;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_hypervisor.dart'
    as _i1098;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info.dart'
    as _i1128;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info_from_instance_requirements.dart'
    as _i1565;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_offering.dart'
    as _i1093;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_usage.dart' as _i1536;
import 'package:smoke_test/src/sdk/src/ec2/model/integrate_services.dart'
    as _i1555;
import 'package:smoke_test/src/sdk/src/ec2/model/interface_permission_type.dart'
    as _i508;
import 'package:smoke_test/src/sdk/src/ec2/model/interface_protocol_type.dart'
    as _i107;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway.dart'
    as _i346;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway_attachment.dart'
    as _i258;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_address_type.dart' as _i655;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart' as _i136;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_range.dart' as _i132;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam.dart' as _i352;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_address_history_record.dart'
    as _i1573;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_address_history_resource_type.dart'
    as _i1570;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_cidr_authorization_context.dart'
    as _i1814;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_compliance_status.dart'
    as _i1571;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_management_state.dart'
    as _i1581;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_operating_region.dart'
    as _i350;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_overlap_status.dart'
    as _i1572;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool.dart' as _i361;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation.dart'
    as _i55;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation_resource_type.dart'
    as _i54;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_aws_service.dart'
    as _i356;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr.dart' as _i855;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_failure_code.dart'
    as _i853;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_failure_reason.dart'
    as _i854;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_state.dart'
    as _i852;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_state.dart' as _i359;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_cidr.dart'
    as _i1582;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_tag.dart'
    as _i360;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_type.dart'
    as _i1579;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart' as _i365;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_state.dart'
    as _i364;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_type.dart' as _i358;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_state.dart' as _i351;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification.dart'
    as _i63;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification_request.dart'
    as _i376;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification_response.dart'
    as _i417;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_cidr_association.dart'
    as _i1533;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_cidr_block.dart' as _i32;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_pool.dart' as _i1168;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification.dart'
    as _i504;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification_request.dart'
    as _i377;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification_response.dart'
    as _i418;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_range.dart' as _i133;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_support_value.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/ec2/model/key_format.dart' as _i368;
import 'package:smoke_test/src/sdk/src/ec2/model/key_pair.dart' as _i370;
import 'package:smoke_test/src/sdk/src/ec2/model/key_pair_info.dart' as _i1171;
import 'package:smoke_test/src/sdk/src/ec2/model/key_type.dart' as _i367;
import 'package:smoke_test/src/sdk/src/ec2/model/last_error.dart' as _i663;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission.dart'
    as _i1041;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission_modifications.dart'
    as _i1694;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_specification.dart'
    as _i1335;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template.dart' as _i408;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_and_overrides_response.dart'
    as _i311;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_auto_recovery_state.dart'
    as _i404;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_block_device_mapping.dart'
    as _i415;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_block_device_mapping_request.dart'
    as _i373;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_capacity_reservation_specification_request.dart'
    as _i394;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_capacity_reservation_specification_response.dart'
    as _i430;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_config.dart'
    as _i1324;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_cpu_options.dart'
    as _i428;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_cpu_options_request.dart'
    as _i391;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_ebs_block_device.dart'
    as _i414;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_ebs_block_device_request.dart'
    as _i372;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_elastic_inference_accelerator.dart'
    as _i384;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_elastic_inference_accelerator_response.dart'
    as _i424;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_enclave_options.dart'
    as _i435;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_enclave_options_request.dart'
    as _i402;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_error_code.dart'
    as _i759;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_hibernation_options.dart'
    as _i432;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_hibernation_options_request.dart'
    as _i396;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_http_tokens_state.dart'
    as _i397;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_iam_instance_profile_specification.dart'
    as _i413;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_iam_instance_profile_specification_request.dart'
    as _i371;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_maintenance_options.dart'
    as _i437;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_maintenance_options_request.dart'
    as _i405;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_market_options.dart'
    as _i426;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_market_options_request.dart'
    as _i389;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_endpoint_state.dart'
    as _i398;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options.dart'
    as _i434;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options_request.dart'
    as _i401;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options_state.dart'
    as _i433;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_protocol_ipv6.dart'
    as _i399;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_tags_state.dart'
    as _i400;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_network_interface_specification.dart'
    as _i419;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_network_interface_specification_request.dart'
    as _i378;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_license_configuration.dart'
    as _i431;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_license_configuration_request.dart'
    as _i395;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_overrides.dart'
    as _i1323;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_placement.dart'
    as _i421;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_placement_request.dart'
    as _i380;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_private_dns_name_options.dart'
    as _i436;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_private_dns_name_options_request.dart'
    as _i403;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_specification.dart'
    as _i1901;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_spot_market_options.dart'
    as _i425;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_spot_market_options_request.dart'
    as _i388;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_tag_specification.dart'
    as _i422;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_tag_specification_request.dart'
    as _i382;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_version.dart'
    as _i439;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_templates_monitoring.dart'
    as _i420;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_templates_monitoring_request.dart'
    as _i379;
import 'package:smoke_test/src/sdk/src/ec2/model/license_configuration.dart'
    as _i1145;
import 'package:smoke_test/src/sdk/src/ec2/model/license_configuration_request.dart'
    as _i1906;
import 'package:smoke_test/src/sdk/src/ec2/model/list_images_in_recycle_bin_request.dart'
    as _i1661;
import 'package:smoke_test/src/sdk/src/ec2/model/list_images_in_recycle_bin_result.dart'
    as _i1663;
import 'package:smoke_test/src/sdk/src/ec2/model/list_snapshots_in_recycle_bin_request.dart'
    as _i1664;
import 'package:smoke_test/src/sdk/src/ec2/model/list_snapshots_in_recycle_bin_result.dart'
    as _i1666;
import 'package:smoke_test/src/sdk/src/ec2/model/listing_state.dart' as _i165;
import 'package:smoke_test/src/sdk/src/ec2/model/listing_status.dart' as _i169;
import 'package:smoke_test/src/sdk/src/ec2/model/load_balancers_config.dart'
    as _i1329;
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission.dart'
    as _i1005;
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission_modifications.dart'
    as _i1687;
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission_request.dart'
    as _i1686;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway.dart' as _i1190;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route.dart'
    as _i444;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_state.dart'
    as _i443;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table.dart'
    as _i449;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_mode.dart'
    as _i446;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_virtual_interface_group_association.dart'
    as _i452;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart'
    as _i455;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_type.dart'
    as _i442;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface.dart'
    as _i1187;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface_group.dart'
    as _i1184;
import 'package:smoke_test/src/sdk/src/ec2/model/local_storage.dart' as _i282;
import 'package:smoke_test/src/sdk/src/ec2/model/local_storage_type.dart'
    as _i283;
import 'package:smoke_test/src/sdk/src/ec2/model/location_type.dart' as _i1091;
import 'package:smoke_test/src/sdk/src/ec2/model/log_destination_type.dart'
    as _i319;
import 'package:smoke_test/src/sdk/src/ec2/model/managed_prefix_list.dart'
    as _i460;
import 'package:smoke_test/src/sdk/src/ec2/model/market_type.dart' as _i385;
import 'package:smoke_test/src/sdk/src/ec2/model/membership_type.dart'
    as _i1926;
import 'package:smoke_test/src/sdk/src/ec2/model/memory_gi_b_per_v_cpu.dart'
    as _i303;
import 'package:smoke_test/src/sdk/src/ec2/model/memory_gi_b_per_v_cpu_request.dart'
    as _i277;
import 'package:smoke_test/src/sdk/src/ec2/model/memory_info.dart' as _i1102;
import 'package:smoke_test/src/sdk/src/ec2/model/memory_mi_b_request.dart'
    as _i275;
import 'package:smoke_test/src/sdk/src/ec2/model/memory_mib.dart' as _i302;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_address_attribute_request.dart'
    as _i1667;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_address_attribute_result.dart'
    as _i1668;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_availability_zone_group_request.dart'
    as _i1670;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_availability_zone_group_result.dart'
    as _i1671;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_availability_zone_opt_in_status.dart'
    as _i1669;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_capacity_reservation_fleet_request.dart'
    as _i1674;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_capacity_reservation_fleet_result.dart'
    as _i1675;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_capacity_reservation_request.dart'
    as _i1672;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_capacity_reservation_result.dart'
    as _i1673;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_client_vpn_endpoint_request.dart'
    as _i1677;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_client_vpn_endpoint_result.dart'
    as _i1678;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_default_credit_specification_request.dart'
    as _i1679;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_default_credit_specification_result.dart'
    as _i1680;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ebs_default_kms_key_id_request.dart'
    as _i1681;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ebs_default_kms_key_id_result.dart'
    as _i1682;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_fleet_request.dart'
    as _i1683;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_fleet_result.dart'
    as _i1684;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_fpga_image_attribute_request.dart'
    as _i1688;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_fpga_image_attribute_result.dart'
    as _i1689;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_hosts_request.dart'
    as _i1690;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_hosts_result.dart'
    as _i1691;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_id_format_request.dart'
    as _i1692;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_identity_id_format_request.dart'
    as _i1693;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_image_attribute_request.dart'
    as _i1695;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_attribute_request.dart'
    as _i1699;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_capacity_reservation_attributes_request.dart'
    as _i1701;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_capacity_reservation_attributes_result.dart'
    as _i1702;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_credit_specification_request.dart'
    as _i1704;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_credit_specification_result.dart'
    as _i1709;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_event_start_time_request.dart'
    as _i1710;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_event_start_time_result.dart'
    as _i1711;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_event_window_request.dart'
    as _i1712;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_event_window_result.dart'
    as _i1713;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_maintenance_options_request.dart'
    as _i1714;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_maintenance_options_result.dart'
    as _i1715;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_metadata_options_request.dart'
    as _i1716;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_metadata_options_result.dart'
    as _i1717;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_placement_request.dart'
    as _i1720;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_placement_result.dart'
    as _i1721;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_pool_request.dart'
    as _i1725;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_pool_result.dart'
    as _i1726;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_request.dart'
    as _i1723;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_resource_cidr_request.dart'
    as _i1727;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_resource_cidr_result.dart'
    as _i1728;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_result.dart'
    as _i1724;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_scope_request.dart'
    as _i1729;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_scope_result.dart'
    as _i1730;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_launch_template_request.dart'
    as _i1731;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_launch_template_result.dart'
    as _i1732;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_local_gateway_route_request.dart'
    as _i1733;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_local_gateway_route_result.dart'
    as _i1734;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_managed_prefix_list_request.dart'
    as _i1736;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_managed_prefix_list_result.dart'
    as _i1737;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_network_interface_attribute_request.dart'
    as _i1739;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_private_dns_name_options_request.dart'
    as _i1740;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_private_dns_name_options_result.dart'
    as _i1741;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_reserved_instances_request.dart'
    as _i1742;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_reserved_instances_result.dart'
    as _i1743;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_security_group_rules_request.dart'
    as _i1746;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_security_group_rules_result.dart'
    as _i1747;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_snapshot_attribute_request.dart'
    as _i1749;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_snapshot_tier_request.dart'
    as _i1751;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_snapshot_tier_result.dart'
    as _i1752;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_spot_fleet_request_request.dart'
    as _i1753;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_spot_fleet_request_response.dart'
    as _i1754;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_subnet_attribute_request.dart'
    as _i1755;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_network_services_request.dart'
    as _i1756;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_network_services_result.dart'
    as _i1757;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_rule_request.dart'
    as _i1759;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_rule_result.dart'
    as _i1760;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_session_request.dart'
    as _i1762;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_session_result.dart'
    as _i1763;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_options.dart'
    as _i1764;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_prefix_list_reference_request.dart'
    as _i1767;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_prefix_list_reference_result.dart'
    as _i1768;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_request.dart'
    as _i1765;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_result.dart'
    as _i1766;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_request.dart'
    as _i1770;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_request_options.dart'
    as _i1769;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_result.dart'
    as _i1771;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_volume_attribute_request.dart'
    as _i1774;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_volume_request.dart'
    as _i1772;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_volume_result.dart'
    as _i1773;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_attribute_request.dart'
    as _i1775;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_connection_notification_request.dart'
    as _i1778;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_connection_notification_result.dart'
    as _i1779;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_request.dart'
    as _i1776;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_result.dart'
    as _i1777;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_configuration_request.dart'
    as _i1780;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_configuration_result.dart'
    as _i1781;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_payer_responsibility_request.dart'
    as _i1782;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_payer_responsibility_result.dart'
    as _i1783;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_permissions_request.dart'
    as _i1784;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_permissions_result.dart'
    as _i1786;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_peering_connection_options_request.dart'
    as _i1788;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_peering_connection_options_result.dart'
    as _i1790;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_tenancy_request.dart'
    as _i1792;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_tenancy_result.dart'
    as _i1793;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_options_request.dart'
    as _i1796;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_options_result.dart'
    as _i1797;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_request.dart'
    as _i1794;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_result.dart'
    as _i1795;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_certificate_request.dart'
    as _i1798;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_certificate_result.dart'
    as _i1799;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_options_request.dart'
    as _i1801;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_options_result.dart'
    as _i1802;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_options_specification.dart'
    as _i1800;
import 'package:smoke_test/src/sdk/src/ec2/model/monitor_instances_request.dart'
    as _i1803;
import 'package:smoke_test/src/sdk/src/ec2/model/monitor_instances_result.dart'
    as _i1805;
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring.dart' as _i1132;
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring_state.dart'
    as _i1131;
import 'package:smoke_test/src/sdk/src/ec2/model/move_address_to_vpc_request.dart'
    as _i1806;
import 'package:smoke_test/src/sdk/src/ec2/model/move_address_to_vpc_result.dart'
    as _i1808;
import 'package:smoke_test/src/sdk/src/ec2/model/move_byoip_cidr_to_ipam_request.dart'
    as _i1809;
import 'package:smoke_test/src/sdk/src/ec2/model/move_byoip_cidr_to_ipam_result.dart'
    as _i1810;
import 'package:smoke_test/src/sdk/src/ec2/model/move_status.dart' as _i1195;
import 'package:smoke_test/src/sdk/src/ec2/model/moving_address_status.dart'
    as _i1196;
import 'package:smoke_test/src/sdk/src/ec2/model/multicast_support_value.dart'
    as _i589;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway.dart' as _i467;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway_address.dart'
    as _i464;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway_state.dart'
    as _i466;
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl.dart' as _i475;
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl_association.dart'
    as _i470;
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl_entry.dart'
    as _i474;
import 'package:smoke_test/src/sdk/src/ec2/model/network_card_info.dart'
    as _i1113;
import 'package:smoke_test/src/sdk/src/ec2/model/network_info.dart' as _i1116;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope.dart'
    as _i485;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_analysis.dart'
    as _i1205;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_content.dart'
    as _i491;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_analysis.dart'
    as _i1222;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_path.dart'
    as _i494;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface.dart'
    as _i506;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_association.dart'
    as _i498;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment.dart'
    as _i499;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment_changes.dart'
    as _i1738;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attribute.dart'
    as _i1226;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_count.dart'
    as _i304;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_count_request.dart'
    as _i281;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_creation_type.dart'
    as _i496;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_ipv6_address.dart'
    as _i502;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission.dart'
    as _i512;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission_state.dart'
    as _i511;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission_state_code.dart'
    as _i510;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_private_ip_address.dart'
    as _i503;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_status.dart'
    as _i505;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_type.dart'
    as _i501;
import 'package:smoke_test/src/sdk/src/ec2/model/new_dhcp_configuration.dart'
    as _i251;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_class_type.dart'
    as _i1250;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_type_values.dart'
    as _i1251;
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_allocation_strategy.dart'
    as _i1313;
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_options.dart'
    as _i993;
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_options_request.dart'
    as _i270;
import 'package:smoke_test/src/sdk/src/ec2/model/operation_type.dart' as _i1685;
import 'package:smoke_test/src/sdk/src/ec2/model/packet_header_statement.dart'
    as _i486;
import 'package:smoke_test/src/sdk/src/ec2/model/packet_header_statement_request.dart'
    as _i479;
import 'package:smoke_test/src/sdk/src/ec2/model/partition_load_frequency.dart'
    as _i1553;
import 'package:smoke_test/src/sdk/src/ec2/model/path_component.dart' as _i1220;
import 'package:smoke_test/src/sdk/src/ec2/model/path_statement.dart' as _i488;
import 'package:smoke_test/src/sdk/src/ec2/model/path_statement_request.dart'
    as _i481;
import 'package:smoke_test/src/sdk/src/ec2/model/payer_responsibility.dart'
    as _i678;
import 'package:smoke_test/src/sdk/src/ec2/model/payment_option.dart' as _i1017;
import 'package:smoke_test/src/sdk/src/ec2/model/pci_id.dart' as _i1011;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_attachment_status.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_connection_options.dart'
    as _i1789;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_connection_options_request.dart'
    as _i1787;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_tgw_info.dart' as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart'
    as _i1004;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_dh_group_numbers_list_value.dart'
    as _i702;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_dh_group_numbers_request_list_value.dart'
    as _i688;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_encryption_algorithms_list_value.dart'
    as _i698;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_encryption_algorithms_request_list_value.dart'
    as _i684;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_integrity_algorithms_list_value.dart'
    as _i700;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_integrity_algorithms_request_list_value.dart'
    as _i686;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_dh_group_numbers_list_value.dart'
    as _i703;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_dh_group_numbers_request_list_value.dart'
    as _i689;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_encryption_algorithms_list_value.dart'
    as _i699;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_encryption_algorithms_request_list_value.dart'
    as _i685;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_integrity_algorithms_list_value.dart'
    as _i701;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_integrity_algorithms_request_list_value.dart'
    as _i687;
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart' as _i273;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group.dart' as _i518;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_info.dart'
    as _i1124;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_state.dart'
    as _i517;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_strategy.dart'
    as _i1123;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_response.dart'
    as _i300;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_strategy.dart'
    as _i514;
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart' as _i314;
import 'package:smoke_test/src/sdk/src/ec2/model/pool_cidr_block.dart'
    as _i1167;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart' as _i472;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list.dart' as _i1236;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_association.dart'
    as _i1587;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_entry.dart'
    as _i1590;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_id.dart' as _i134;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_state.dart'
    as _i459;
import 'package:smoke_test/src/sdk/src/ec2/model/price_schedule.dart' as _i168;
import 'package:smoke_test/src/sdk/src/ec2/model/price_schedule_specification.dart'
    as _i526;
import 'package:smoke_test/src/sdk/src/ec2/model/pricing_detail.dart' as _i1269;
import 'package:smoke_test/src/sdk/src/ec2/model/principal_id_format.dart'
    as _i1239;
import 'package:smoke_test/src/sdk/src/ec2/model/principal_type.dart' as _i1421;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_details.dart'
    as _i1425;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_configuration.dart'
    as _i677;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_on_launch.dart'
    as _i243;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_request.dart'
    as _i1909;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_response.dart'
    as _i1152;
import 'package:smoke_test/src/sdk/src/ec2/model/private_ip_address_specification.dart'
    as _i375;
import 'package:smoke_test/src/sdk/src/ec2/model/processor_info.dart' as _i1100;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i1007;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code_values.dart'
    as _i1006;
import 'package:smoke_test/src/sdk/src/ec2/model/propagating_vgw.dart' as _i535;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol.dart' as _i478;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol_value.dart' as _i596;
import 'package:smoke_test/src/sdk/src/ec2/model/provision_byoip_cidr_request.dart'
    as _i1812;
import 'package:smoke_test/src/sdk/src/ec2/model/provision_byoip_cidr_result.dart'
    as _i1813;
import 'package:smoke_test/src/sdk/src/ec2/model/provision_ipam_pool_cidr_request.dart'
    as _i1815;
import 'package:smoke_test/src/sdk/src/ec2/model/provision_ipam_pool_cidr_result.dart'
    as _i1816;
import 'package:smoke_test/src/sdk/src/ec2/model/provision_public_ipv4_pool_cidr_request.dart'
    as _i1817;
import 'package:smoke_test/src/sdk/src/ec2/model/provision_public_ipv4_pool_cidr_result.dart'
    as _i1818;
import 'package:smoke_test/src/sdk/src/ec2/model/provisioned_bandwidth.dart'
    as _i465;
import 'package:smoke_test/src/sdk/src/ec2/model/ptr_update_status.dart'
    as _i881;
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool.dart'
    as _i1243;
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool_range.dart'
    as _i1242;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase.dart' as _i1562;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_host_reservation_request.dart'
    as _i1819;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_host_reservation_result.dart'
    as _i1820;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_request.dart'
    as _i1824;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_reserved_instances_offering_request.dart'
    as _i1822;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_reserved_instances_offering_result.dart'
    as _i1823;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_scheduled_instances_request.dart'
    as _i1825;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_scheduled_instances_result.dart'
    as _i1826;
import 'package:smoke_test/src/sdk/src/ec2/model/reboot_instances_request.dart'
    as _i1827;
import 'package:smoke_test/src/sdk/src/ec2/model/recurring_charge.dart'
    as _i1256;
import 'package:smoke_test/src/sdk/src/ec2/model/recurring_charge_frequency.dart'
    as _i1255;
import 'package:smoke_test/src/sdk/src/ec2/model/referenced_security_group.dart'
    as _i138;
import 'package:smoke_test/src/sdk/src/ec2/model/region.dart' as _i1246;
import 'package:smoke_test/src/sdk/src/ec2/model/register_image_request.dart'
    as _i1828;
import 'package:smoke_test/src/sdk/src/ec2/model/register_image_result.dart'
    as _i1829;
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_event_notification_attributes_request.dart'
    as _i1831;
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_event_notification_attributes_result.dart'
    as _i1832;
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_tag_attribute_request.dart'
    as _i1830;
import 'package:smoke_test/src/sdk/src/ec2/model/register_transit_gateway_multicast_group_members_request.dart'
    as _i1833;
import 'package:smoke_test/src/sdk/src/ec2/model/register_transit_gateway_multicast_group_members_result.dart'
    as _i1835;
import 'package:smoke_test/src/sdk/src/ec2/model/register_transit_gateway_multicast_group_sources_request.dart'
    as _i1836;
import 'package:smoke_test/src/sdk/src/ec2/model/register_transit_gateway_multicast_group_sources_result.dart'
    as _i1838;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_multicast_domain_associations_request.dart'
    as _i1839;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_multicast_domain_associations_result.dart'
    as _i1840;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_peering_attachment_request.dart'
    as _i1841;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_peering_attachment_result.dart'
    as _i1842;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_vpc_attachment_request.dart'
    as _i1843;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_vpc_attachment_result.dart'
    as _i1844;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_vpc_endpoint_connections_request.dart'
    as _i1845;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_vpc_endpoint_connections_result.dart'
    as _i1846;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_vpc_peering_connection_request.dart'
    as _i1847;
import 'package:smoke_test/src/sdk/src/ec2/model/reject_vpc_peering_connection_result.dart'
    as _i1848;
import 'package:smoke_test/src/sdk/src/ec2/model/release_address_request.dart'
    as _i1849;
import 'package:smoke_test/src/sdk/src/ec2/model/release_hosts_request.dart'
    as _i1850;
import 'package:smoke_test/src/sdk/src/ec2/model/release_hosts_result.dart'
    as _i1851;
import 'package:smoke_test/src/sdk/src/ec2/model/release_ipam_pool_allocation_request.dart'
    as _i1852;
import 'package:smoke_test/src/sdk/src/ec2/model/release_ipam_pool_allocation_result.dart'
    as _i1853;
import 'package:smoke_test/src/sdk/src/ec2/model/remove_ipam_operating_region.dart'
    as _i1722;
import 'package:smoke_test/src/sdk/src/ec2/model/remove_prefix_list_entry.dart'
    as _i1735;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_iam_instance_profile_association_request.dart'
    as _i1854;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_iam_instance_profile_association_result.dart'
    as _i1855;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_network_acl_association_request.dart'
    as _i1856;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_network_acl_association_result.dart'
    as _i1857;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_network_acl_entry_request.dart'
    as _i1858;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task.dart'
    as _i524;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task_state.dart'
    as _i523;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_route_request.dart'
    as _i1859;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_route_table_association_request.dart'
    as _i1860;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_route_table_association_result.dart'
    as _i1861;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_transit_gateway_route_request.dart'
    as _i1862;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_transit_gateway_route_result.dart'
    as _i1863;
import 'package:smoke_test/src/sdk/src/ec2/model/replacement_strategy.dart'
    as _i1314;
import 'package:smoke_test/src/sdk/src/ec2/model/report_instance_reason_codes.dart'
    as _i1864;
import 'package:smoke_test/src/sdk/src/ec2/model/report_instance_status_request.dart'
    as _i1866;
import 'package:smoke_test/src/sdk/src/ec2/model/report_status_type.dart'
    as _i1865;
import 'package:smoke_test/src/sdk/src/ec2/model/request_ipam_resource_tag.dart'
    as _i355;
import 'package:smoke_test/src/sdk/src/ec2/model/request_launch_template_data.dart'
    as _i406;
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_fleet_request.dart'
    as _i1867;
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_fleet_response.dart'
    as _i1868;
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_instances_request.dart'
    as _i1870;
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_instances_result.dart'
    as _i1871;
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_launch_specification.dart'
    as _i1869;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation.dart' as _i1156;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_fleet_instance_specification.dart'
    as _i202;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_state.dart'
    as _i1021;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_value.dart'
    as _i1600;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_limit_price.dart'
    as _i1821;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_reservation_value.dart'
    as _i1601;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_state.dart'
    as _i1254;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances.dart'
    as _i1258;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_configuration.dart'
    as _i1263;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_id.dart'
    as _i1265;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_listing.dart'
    as _i170;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_modification.dart'
    as _i1266;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_modification_result.dart'
    as _i1264;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_offering.dart'
    as _i1270;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_address_attribute_request.dart'
    as _i1872;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_address_attribute_result.dart'
    as _i1873;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_ebs_default_kms_key_id_request.dart'
    as _i1874;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_ebs_default_kms_key_id_result.dart'
    as _i1875;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_name.dart'
    as _i1876;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_request.dart'
    as _i1877;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_result.dart'
    as _i1878;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_image_attribute_name.dart'
    as _i1879;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_image_attribute_request.dart'
    as _i1880;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_instance_attribute_request.dart'
    as _i1881;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_network_interface_attribute_request.dart'
    as _i1882;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_snapshot_attribute_request.dart'
    as _i1883;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement.dart'
    as _i487;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement_request.dart'
    as _i480;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart' as _i45;
import 'package:smoke_test/src/sdk/src/ec2/model/response_error.dart' as _i760;
import 'package:smoke_test/src/sdk/src/ec2/model/response_launch_template_data.dart'
    as _i438;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_address_to_classic_request.dart'
    as _i1884;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_address_to_classic_result.dart'
    as _i1885;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_image_from_recycle_bin_request.dart'
    as _i1886;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_image_from_recycle_bin_result.dart'
    as _i1887;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_managed_prefix_list_version_request.dart'
    as _i1888;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_managed_prefix_list_version_result.dart'
    as _i1889;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_snapshot_from_recycle_bin_request.dart'
    as _i1890;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_snapshot_from_recycle_bin_result.dart'
    as _i1891;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_snapshot_tier_request.dart'
    as _i1892;
import 'package:smoke_test/src/sdk/src/ec2/model/restore_snapshot_tier_result.dart'
    as _i1893;
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_client_vpn_ingress_request.dart'
    as _i1894;
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_client_vpn_ingress_result.dart'
    as _i1895;
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_egress_request.dart'
    as _i1896;
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_egress_result.dart'
    as _i1897;
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_ingress_request.dart'
    as _i1898;
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_ingress_result.dart'
    as _i1899;
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart'
    as _i1253;
import 'package:smoke_test/src/sdk/src/ec2/model/root_device_type.dart'
    as _i1097;
import 'package:smoke_test/src/sdk/src/ec2/model/route.dart' as _i538;
import 'package:smoke_test/src/sdk/src/ec2/model/route_origin.dart' as _i536;
import 'package:smoke_test/src/sdk/src/ec2/model/route_state.dart' as _i537;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table.dart' as _i539;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association.dart'
    as _i534;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state.dart'
    as _i90;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state_code.dart'
    as _i89;
import 'package:smoke_test/src/sdk/src/ec2/model/rule_action.dart' as _i473;
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_monitoring_enabled.dart'
    as _i1334;
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_request.dart'
    as _i1911;
import 'package:smoke_test/src/sdk/src/ec2/model/run_scheduled_instances_request.dart'
    as _i1921;
import 'package:smoke_test/src/sdk/src/ec2/model/run_scheduled_instances_result.dart'
    as _i1922;
import 'package:smoke_test/src/sdk/src/ec2/model/s3_object_tag.dart' as _i557;
import 'package:smoke_test/src/sdk/src/ec2/model/s3_storage.dart' as _i143;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance.dart'
    as _i1282;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_availability.dart'
    as _i1278;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence.dart'
    as _i1277;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence_request.dart'
    as _i1275;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_block_device_mapping.dart'
    as _i1913;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_ebs.dart'
    as _i1912;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_iam_instance_profile.dart'
    as _i1914;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_ipv6_address.dart'
    as _i1916;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_launch_specification.dart'
    as _i1920;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_monitoring.dart'
    as _i1915;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_network_interface.dart'
    as _i1918;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_placement.dart'
    as _i1919;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_private_ip_address_config.dart'
    as _i1917;
import 'package:smoke_test/src/sdk/src/ec2/model/scope.dart' as _i1257;
import 'package:smoke_test/src/sdk/src/ec2/model/search_local_gateway_routes_request.dart'
    as _i1923;
import 'package:smoke_test/src/sdk/src/ec2/model/search_local_gateway_routes_result.dart'
    as _i1924;
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_multicast_groups_request.dart'
    as _i1925;
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_multicast_groups_result.dart'
    as _i1928;
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_routes_request.dart'
    as _i1929;
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_routes_result.dart'
    as _i1930;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group.dart' as _i1290;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_identifier.dart'
    as _i660;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_reference.dart'
    as _i1285;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule.dart'
    as _i139;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_description.dart'
    as _i1953;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_request.dart'
    as _i1744;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_update.dart'
    as _i1745;
import 'package:smoke_test/src/sdk/src/ec2/model/self_service_portal.dart'
    as _i219;
import 'package:smoke_test/src/sdk/src/ec2/model/send_diagnostic_interrupt_request.dart'
    as _i1931;
import 'package:smoke_test/src/sdk/src/ec2/model/service_configuration.dart'
    as _i679;
import 'package:smoke_test/src/sdk/src/ec2/model/service_connectivity_type.dart'
    as _i675;
import 'package:smoke_test/src/sdk/src/ec2/model/service_detail.dart' as _i1426;
import 'package:smoke_test/src/sdk/src/ec2/model/service_state.dart' as _i674;
import 'package:smoke_test/src/sdk/src/ec2/model/service_type.dart' as _i672;
import 'package:smoke_test/src/sdk/src/ec2/model/service_type_detail.dart'
    as _i673;
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart'
    as _i381;
import 'package:smoke_test/src/sdk/src/ec2/model/slot_date_time_range_request.dart'
    as _i1274;
import 'package:smoke_test/src/sdk/src/ec2/model/slot_start_time_range_request.dart'
    as _i1280;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot.dart' as _i546;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_attribute_name.dart'
    as _i1292;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_detail.dart'
    as _i1057;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_disk_container.dart'
    as _i1656;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_info.dart' as _i550;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_recycle_bin_info.dart'
    as _i1665;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_state.dart' as _i544;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_task_detail.dart'
    as _i1062;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_tier_status.dart'
    as _i1298;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_allocation_strategy.dart'
    as _i261;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_capacity_rebalance.dart'
    as _i1315;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_datafeed_subscription.dart'
    as _i555;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_launch_specification.dart'
    as _i1322;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_monitoring.dart'
    as _i1318;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config.dart'
    as _i1331;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config_data.dart'
    as _i1330;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_tag_specification.dart'
    as _i1321;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_interruption_behavior.dart'
    as _i265;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_request.dart'
    as _i1338;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state.dart'
    as _i1336;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state_fault.dart'
    as _i553;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_status.dart'
    as _i1337;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_type.dart'
    as _i386;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_maintenance_strategies.dart'
    as _i1316;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_market_options.dart'
    as _i1902;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_options.dart' as _i991;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_options_request.dart'
    as _i266;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement.dart' as _i1320;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement_score.dart'
    as _i1609;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_price.dart' as _i1341;
import 'package:smoke_test/src/sdk/src/ec2/model/spread_level.dart' as _i515;
import 'package:smoke_test/src/sdk/src/ec2/model/stale_ip_permission.dart'
    as _i1344;
import 'package:smoke_test/src/sdk/src/ec2/model/stale_security_group.dart'
    as _i1345;
import 'package:smoke_test/src/sdk/src/ec2/model/start_instances_request.dart'
    as _i1932;
import 'package:smoke_test/src/sdk/src/ec2/model/start_instances_result.dart'
    as _i1934;
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_access_scope_analysis_request.dart'
    as _i1935;
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_access_scope_analysis_result.dart'
    as _i1936;
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_analysis_request.dart'
    as _i1937;
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_analysis_result.dart'
    as _i1938;
import 'package:smoke_test/src/sdk/src/ec2/model/start_vpc_endpoint_service_private_dns_verification_request.dart'
    as _i1939;
import 'package:smoke_test/src/sdk/src/ec2/model/start_vpc_endpoint_service_private_dns_verification_result.dart'
    as _i1940;
import 'package:smoke_test/src/sdk/src/ec2/model/state.dart' as _i659;
import 'package:smoke_test/src/sdk/src/ec2/model/state_reason.dart' as _i448;
import 'package:smoke_test/src/sdk/src/ec2/model/static_sources_support_value.dart'
    as _i611;
import 'package:smoke_test/src/sdk/src/ec2/model/status.dart' as _i1807;
import 'package:smoke_test/src/sdk/src/ec2/model/status_name.dart' as _i1084;
import 'package:smoke_test/src/sdk/src/ec2/model/status_type.dart' as _i1085;
import 'package:smoke_test/src/sdk/src/ec2/model/stop_instances_request.dart'
    as _i1941;
import 'package:smoke_test/src/sdk/src/ec2/model/stop_instances_result.dart'
    as _i1942;
import 'package:smoke_test/src/sdk/src/ec2/model/storage.dart' as _i144;
import 'package:smoke_test/src/sdk/src/ec2/model/storage_location.dart'
    as _i324;
import 'package:smoke_test/src/sdk/src/ec2/model/storage_tier.dart' as _i545;
import 'package:smoke_test/src/sdk/src/ec2/model/store_image_task_result.dart'
    as _i1348;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet.dart' as _i244;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_association.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_block_state.dart'
    as _i94;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_block_state_code.dart'
    as _i93;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation.dart'
    as _i564;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation_type.dart'
    as _i562;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_ipv6_cidr_block_association.dart'
    as _i95;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_state.dart' as _i241;
import 'package:smoke_test/src/sdk/src/ec2/model/successful_instance_credit_specification_item.dart'
    as _i1705;
import 'package:smoke_test/src/sdk/src/ec2/model/successful_queued_purchase_deletion.dart'
    as _i792;
import 'package:smoke_test/src/sdk/src/ec2/model/summary_status.dart' as _i1087;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i17;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_description.dart'
    as _i1353;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart'
    as _i46;
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_specification.dart'
    as _i988;
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_specification_request.dart'
    as _i296;
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_unit_type.dart'
    as _i295;
import 'package:smoke_test/src/sdk/src/ec2/model/target_configuration.dart'
    as _i1602;
import 'package:smoke_test/src/sdk/src/ec2/model/target_configuration_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/target_group.dart' as _i1327;
import 'package:smoke_test/src/sdk/src/ec2/model/target_groups_config.dart'
    as _i1328;
import 'package:smoke_test/src/sdk/src/ec2/model/target_network.dart' as _i934;
import 'package:smoke_test/src/sdk/src/ec2/model/target_reservation_value.dart'
    as _i1603;
import 'package:smoke_test/src/sdk/src/ec2/model/target_storage_tier.dart'
    as _i1750;
import 'package:smoke_test/src/sdk/src/ec2/model/telemetry_status.dart'
    as _i711;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i248;
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_client_vpn_connections_request.dart'
    as _i1943;
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_client_vpn_connections_result.dart'
    as _i1945;
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_connection_status.dart'
    as _i1944;
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_instances_request.dart'
    as _i1946;
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_instances_result.dart'
    as _i1947;
import 'package:smoke_test/src/sdk/src/ec2/model/through_resources_statement.dart'
    as _i489;
import 'package:smoke_test/src/sdk/src/ec2/model/through_resources_statement_request.dart'
    as _i482;
import 'package:smoke_test/src/sdk/src/ec2/model/tiering_operation_status.dart'
    as _i1297;
import 'package:smoke_test/src/sdk/src/ec2/model/total_local_storage_gb.dart'
    as _i305;
import 'package:smoke_test/src/sdk/src/ec2/model/total_local_storage_gb_request.dart'
    as _i284;
import 'package:smoke_test/src/sdk/src/ec2/model/tpm_support_values.dart'
    as _i1051;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_direction.dart'
    as _i568;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter.dart'
    as _i573;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule.dart'
    as _i571;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule_field.dart'
    as _i1758;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_network_service.dart'
    as _i572;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_port_range.dart'
    as _i570;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_port_range_request.dart'
    as _i575;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_rule_action.dart'
    as _i569;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session.dart'
    as _i579;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session_field.dart'
    as _i1761;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target.dart'
    as _i583;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target_type.dart'
    as _i582;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_type.dart' as _i318;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway.dart' as _i594;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association.dart'
    as _i104;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association_state.dart'
    as _i100;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment.dart'
    as _i1363;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_association.dart'
    as _i1362;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_bgp_configuration.dart'
    as _i606;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_propagation.dart'
    as _i1614;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect.dart'
    as _i600;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_options.dart'
    as _i599;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer.dart'
    as _i608;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer_configuration.dart'
    as _i607;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer_state.dart'
    as _i604;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_request_bgp_options.dart'
    as _i602;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_mulitcast_domain_association_state.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_deregistered_group_members.dart'
    as _i865;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_deregistered_group_sources.dart'
    as _i868;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain.dart'
    as _i617;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_association.dart'
    as _i1617;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_associations.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_options.dart'
    as _i615;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_state.dart'
    as _i616;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_group.dart'
    as _i1927;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_registered_group_members.dart'
    as _i1834;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_registered_group_sources.dart'
    as _i1837;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_options.dart'
    as _i593;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment_options.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_rule.dart'
    as _i1623;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_rule_meta_data.dart'
    as _i1622;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table.dart'
    as _i624;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_association.dart'
    as _i101;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_entry.dart'
    as _i1624;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_state.dart'
    as _i623;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_attachment.dart'
    as _i628;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart'
    as _i629;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference_state.dart'
    as _i627;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation.dart'
    as _i1462;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation_state.dart'
    as _i1461;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_request_options.dart'
    as _i590;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route.dart'
    as _i635;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_attachment.dart'
    as _i632;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_state.dart'
    as _i634;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table.dart'
    as _i639;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement.dart'
    as _i644;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement_direction.dart'
    as _i642;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement_state.dart'
    as _i643;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_association.dart'
    as _i1629;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_propagation.dart'
    as _i1632;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_route.dart'
    as _i1216;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_state.dart'
    as _i638;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_type.dart'
    as _i633;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_state.dart'
    as _i592;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment_options.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/ec2/model/transport_protocol.dart'
    as _i218;
import 'package:smoke_test/src/sdk/src/ec2/model/trunk_interface_association.dart'
    as _i108;
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_inside_ip_version.dart'
    as _i683;
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_option.dart' as _i707;
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_ipv6_addresses_request.dart'
    as _i1948;
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_ipv6_addresses_result.dart'
    as _i1949;
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_private_ip_addresses_request.dart'
    as _i1950;
import 'package:smoke_test/src/sdk/src/ec2/model/unlimited_supported_instance_family.dart'
    as _i1545;
import 'package:smoke_test/src/sdk/src/ec2/model/unmonitor_instances_request.dart'
    as _i1951;
import 'package:smoke_test/src/sdk/src/ec2/model/unmonitor_instances_result.dart'
    as _i1952;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_error_code.dart'
    as _i1706;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_item.dart'
    as _i1708;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_item_error.dart'
    as _i1707;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item_error.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_egress_request.dart'
    as _i1954;
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_egress_result.dart'
    as _i1955;
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_ingress_request.dart'
    as _i1956;
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_ingress_result.dart'
    as _i1957;
import 'package:smoke_test/src/sdk/src/ec2/model/usage_class_type.dart'
    as _i1096;
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket.dart' as _i1642;
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket_details.dart'
    as _i1056;
import 'package:smoke_test/src/sdk/src/ec2/model/user_data.dart' as _i1650;
import 'package:smoke_test/src/sdk/src/ec2/model/user_id_group_pair.dart'
    as _i135;
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_count_range.dart'
    as _i301;
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_count_range_request.dart'
    as _i274;
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_info.dart' as _i1101;
import 'package:smoke_test/src/sdk/src/ec2/model/validation_error.dart'
    as _i409;
import 'package:smoke_test/src/sdk/src/ec2/model/validation_warning.dart'
    as _i410;
import 'package:smoke_test/src/sdk/src/ec2/model/vgw_telemetry.dart' as _i712;
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart'
    as _i1049;
import 'package:smoke_test/src/sdk/src/ec2/model/volume.dart' as _i651;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attachment.dart'
    as _i123;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attachment_state.dart'
    as _i122;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attribute_name.dart'
    as _i1385;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_detail.dart' as _i1648;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification.dart'
    as _i1402;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification_state.dart'
    as _i1401;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_state.dart' as _i650;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_action.dart'
    as _i1389;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_attachment_status.dart'
    as _i1395;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_details.dart'
    as _i1392;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_event.dart'
    as _i1390;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_info.dart'
    as _i1394;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_info_status.dart'
    as _i1393;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_item.dart'
    as _i1396;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_name.dart'
    as _i1391;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart' as _i327;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc.dart' as _i249;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_attachment.dart' as _i126;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_attribute_name.dart'
    as _i1404;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_association.dart'
    as _i114;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_state.dart'
    as _i112;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_state_code.dart'
    as _i111;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_classic_link.dart'
    as _i1408;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint.dart' as _i664;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint_connection.dart'
    as _i1416;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint_type.dart'
    as _i654;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_ipv6_cidr_block_association.dart'
    as _i113;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection.dart'
    as _i38;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_options_description.dart'
    as _i34;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_state_reason.dart'
    as _i37;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_state_reason_code.dart'
    as _i36;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_vpc_info.dart'
    as _i35;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_state.dart' as _i247;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_tenancy.dart' as _i1791;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart' as _i713;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_device_type.dart'
    as _i1637;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_options.dart'
    as _i708;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_options_specification.dart'
    as _i694;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_ecmp_support_value.dart'
    as _i588;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_gateway.dart' as _i717;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_protocol.dart' as _i916;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_state.dart' as _i696;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_static_route.dart'
    as _i710;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_static_route_source.dart'
    as _i709;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_log_options.dart'
    as _i706;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_log_options_specification.dart'
    as _i692;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_options_specification.dart'
    as _i693;
import 'package:smoke_test/src/sdk/src/ec2/model/week_day.dart' as _i82;
import 'package:smoke_test/src/sdk/src/ec2/model/withdraw_byoip_cidr_request.dart'
    as _i1958;
import 'package:smoke_test/src/sdk/src/ec2/model/withdraw_byoip_cidr_result.dart'
    as _i1959;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.TargetConfigurationRequest.serializers,
  ..._i3.AcceptReservedInstancesExchangeQuoteRequest.serializers,
  ..._i4.AcceptReservedInstancesExchangeQuoteResult.serializers,
  ..._i5.AcceptTransitGatewayMulticastDomainAssociationsRequest.serializers,
  ..._i6.TransitGatewayAttachmentResourceType.serializers,
  ..._i7.TransitGatewayMulitcastDomainAssociationState.serializers,
  ..._i8.SubnetAssociation.serializers,
  ..._i9.TransitGatewayMulticastDomainAssociations.serializers,
  ..._i10.AcceptTransitGatewayMulticastDomainAssociationsResult.serializers,
  ..._i11.AcceptTransitGatewayPeeringAttachmentRequest.serializers,
  ..._i12.PeeringTgwInfo.serializers,
  ..._i13.DynamicRoutingValue.serializers,
  ..._i14.TransitGatewayPeeringAttachmentOptions.serializers,
  ..._i15.PeeringAttachmentStatus.serializers,
  ..._i16.TransitGatewayAttachmentState.serializers,
  ..._i17.Tag.serializers,
  ..._i18.TransitGatewayPeeringAttachment.serializers,
  ..._i19.AcceptTransitGatewayPeeringAttachmentResult.serializers,
  ..._i20.AcceptTransitGatewayVpcAttachmentRequest.serializers,
  ..._i21.DnsSupportValue.serializers,
  ..._i22.Ipv6SupportValue.serializers,
  ..._i23.ApplianceModeSupportValue.serializers,
  ..._i24.TransitGatewayVpcAttachmentOptions.serializers,
  ..._i25.TransitGatewayVpcAttachment.serializers,
  ..._i26.AcceptTransitGatewayVpcAttachmentResult.serializers,
  ..._i27.AcceptVpcEndpointConnectionsRequest.serializers,
  ..._i28.UnsuccessfulItemError.serializers,
  ..._i29.UnsuccessfulItem.serializers,
  ..._i30.AcceptVpcEndpointConnectionsResult.serializers,
  ..._i31.AcceptVpcPeeringConnectionRequest.serializers,
  ..._i32.Ipv6CidrBlock.serializers,
  ..._i33.CidrBlock.serializers,
  ..._i34.VpcPeeringConnectionOptionsDescription.serializers,
  ..._i35.VpcPeeringConnectionVpcInfo.serializers,
  ..._i36.VpcPeeringConnectionStateReasonCode.serializers,
  ..._i37.VpcPeeringConnectionStateReason.serializers,
  ..._i38.VpcPeeringConnection.serializers,
  ..._i39.AcceptVpcPeeringConnectionResult.serializers,
  ..._i40.AdvertiseByoipCidrRequest.serializers,
  ..._i41.ByoipCidrState.serializers,
  ..._i42.ByoipCidr.serializers,
  ..._i43.AdvertiseByoipCidrResult.serializers,
  ..._i44.DomainType.serializers,
  ..._i45.ResourceType.serializers,
  ..._i46.TagSpecification.serializers,
  ..._i47.AllocateAddressRequest.serializers,
  ..._i48.AllocateAddressResult.serializers,
  ..._i49.AutoPlacement.serializers,
  ..._i50.HostRecovery.serializers,
  ..._i51.AllocateHostsRequest.serializers,
  ..._i52.AllocateHostsResult.serializers,
  ..._i53.AllocateIpamPoolCidrRequest.serializers,
  ..._i54.IpamPoolAllocationResourceType.serializers,
  ..._i55.IpamPoolAllocation.serializers,
  ..._i56.AllocateIpamPoolCidrResult.serializers,
  ..._i57.ApplySecurityGroupsToClientVpnTargetNetworkRequest.serializers,
  ..._i58.ApplySecurityGroupsToClientVpnTargetNetworkResult.serializers,
  ..._i59.AssignIpv6AddressesRequest.serializers,
  ..._i60.AssignIpv6AddressesResult.serializers,
  ..._i61.AssignPrivateIpAddressesRequest.serializers,
  ..._i62.AssignedPrivateIpAddress.serializers,
  ..._i63.Ipv4PrefixSpecification.serializers,
  ..._i64.AssignPrivateIpAddressesResult.serializers,
  ..._i65.AssociateAddressRequest.serializers,
  ..._i66.AssociateAddressResult.serializers,
  ..._i67.AssociateClientVpnTargetNetworkRequest.serializers,
  ..._i68.AssociationStatusCode.serializers,
  ..._i69.AssociationStatus.serializers,
  ..._i70.AssociateClientVpnTargetNetworkResult.serializers,
  ..._i71.AssociateDhcpOptionsRequest.serializers,
  ..._i72.AssociateEnclaveCertificateIamRoleRequest.serializers,
  ..._i73.AssociateEnclaveCertificateIamRoleResult.serializers,
  ..._i74.IamInstanceProfileSpecification.serializers,
  ..._i75.AssociateIamInstanceProfileRequest.serializers,
  ..._i76.IamInstanceProfile.serializers,
  ..._i77.IamInstanceProfileAssociationState.serializers,
  ..._i78.IamInstanceProfileAssociation.serializers,
  ..._i79.AssociateIamInstanceProfileResult.serializers,
  ..._i80.InstanceEventWindowAssociationRequest.serializers,
  ..._i81.AssociateInstanceEventWindowRequest.serializers,
  ..._i82.WeekDay.serializers,
  ..._i83.InstanceEventWindowTimeRange.serializers,
  ..._i84.InstanceEventWindowAssociationTarget.serializers,
  ..._i85.InstanceEventWindowState.serializers,
  ..._i86.InstanceEventWindow.serializers,
  ..._i87.AssociateInstanceEventWindowResult.serializers,
  ..._i88.AssociateRouteTableRequest.serializers,
  ..._i89.RouteTableAssociationStateCode.serializers,
  ..._i90.RouteTableAssociationState.serializers,
  ..._i91.AssociateRouteTableResult.serializers,
  ..._i92.AssociateSubnetCidrBlockRequest.serializers,
  ..._i93.SubnetCidrBlockStateCode.serializers,
  ..._i94.SubnetCidrBlockState.serializers,
  ..._i95.SubnetIpv6CidrBlockAssociation.serializers,
  ..._i96.AssociateSubnetCidrBlockResult.serializers,
  ..._i97.AssociateTransitGatewayMulticastDomainRequest.serializers,
  ..._i98.AssociateTransitGatewayMulticastDomainResult.serializers,
  ..._i99.AssociateTransitGatewayPolicyTableRequest.serializers,
  ..._i100.TransitGatewayAssociationState.serializers,
  ..._i101.TransitGatewayPolicyTableAssociation.serializers,
  ..._i102.AssociateTransitGatewayPolicyTableResult.serializers,
  ..._i103.AssociateTransitGatewayRouteTableRequest.serializers,
  ..._i104.TransitGatewayAssociation.serializers,
  ..._i105.AssociateTransitGatewayRouteTableResult.serializers,
  ..._i106.AssociateTrunkInterfaceRequest.serializers,
  ..._i107.InterfaceProtocolType.serializers,
  ..._i108.TrunkInterfaceAssociation.serializers,
  ..._i109.AssociateTrunkInterfaceResult.serializers,
  ..._i110.AssociateVpcCidrBlockRequest.serializers,
  ..._i111.VpcCidrBlockStateCode.serializers,
  ..._i112.VpcCidrBlockState.serializers,
  ..._i113.VpcIpv6CidrBlockAssociation.serializers,
  ..._i114.VpcCidrBlockAssociation.serializers,
  ..._i115.AssociateVpcCidrBlockResult.serializers,
  ..._i116.AttachClassicLinkVpcRequest.serializers,
  ..._i117.AttachClassicLinkVpcResult.serializers,
  ..._i118.AttachInternetGatewayRequest.serializers,
  ..._i119.AttachNetworkInterfaceRequest.serializers,
  ..._i120.AttachNetworkInterfaceResult.serializers,
  ..._i121.AttachVolumeRequest.serializers,
  ..._i122.VolumeAttachmentState.serializers,
  ..._i123.VolumeAttachment.serializers,
  ..._i124.AttachVpnGatewayRequest.serializers,
  ..._i125.AttachmentStatus.serializers,
  ..._i126.VpcAttachment.serializers,
  ..._i127.AttachVpnGatewayResult.serializers,
  ..._i128.AuthorizeClientVpnIngressRequest.serializers,
  ..._i129.ClientVpnAuthorizationRuleStatusCode.serializers,
  ..._i130.ClientVpnAuthorizationRuleStatus.serializers,
  ..._i131.AuthorizeClientVpnIngressResult.serializers,
  ..._i132.IpRange.serializers,
  ..._i133.Ipv6Range.serializers,
  ..._i134.PrefixListId.serializers,
  ..._i135.UserIdGroupPair.serializers,
  ..._i136.IpPermission.serializers,
  ..._i137.AuthorizeSecurityGroupEgressRequest.serializers,
  ..._i138.ReferencedSecurityGroup.serializers,
  ..._i139.SecurityGroupRule.serializers,
  ..._i140.AuthorizeSecurityGroupEgressResult.serializers,
  ..._i141.AuthorizeSecurityGroupIngressRequest.serializers,
  ..._i142.AuthorizeSecurityGroupIngressResult.serializers,
  ..._i143.S3Storage.serializers,
  ..._i144.Storage.serializers,
  ..._i145.BundleInstanceRequest.serializers,
  ..._i146.BundleTaskError.serializers,
  ..._i147.BundleTaskState.serializers,
  ..._i148.BundleTask.serializers,
  ..._i149.BundleInstanceResult.serializers,
  ..._i150.CancelBundleTaskRequest.serializers,
  ..._i151.CancelBundleTaskResult.serializers,
  ..._i152.CancelCapacityReservationRequest.serializers,
  ..._i153.CancelCapacityReservationResult.serializers,
  ..._i154.CancelCapacityReservationFleetsRequest.serializers,
  ..._i155.CapacityReservationFleetState.serializers,
  ..._i156.CapacityReservationFleetCancellationState.serializers,
  ..._i157.CancelCapacityReservationFleetError.serializers,
  ..._i158.FailedCapacityReservationFleetCancellationResult.serializers,
  ..._i159.CancelCapacityReservationFleetsResult.serializers,
  ..._i160.CancelConversionRequest.serializers,
  ..._i161.CancelExportTaskRequest.serializers,
  ..._i162.CancelImportTaskRequest.serializers,
  ..._i163.CancelImportTaskResult.serializers,
  ..._i164.CancelReservedInstancesListingRequest.serializers,
  ..._i165.ListingState.serializers,
  ..._i166.InstanceCount.serializers,
  ..._i167.CurrencyCodeValues.serializers,
  ..._i168.PriceSchedule.serializers,
  ..._i169.ListingStatus.serializers,
  ..._i170.ReservedInstancesListing.serializers,
  ..._i171.CancelReservedInstancesListingResult.serializers,
  ..._i172.CancelSpotFleetRequestsRequest.serializers,
  ..._i173.BatchState.serializers,
  ..._i174.CancelSpotFleetRequestsSuccessItem.serializers,
  ..._i175.CancelBatchErrorCode.serializers,
  ..._i176.CancelSpotFleetRequestsError.serializers,
  ..._i177.CancelSpotFleetRequestsErrorItem.serializers,
  ..._i178.CancelSpotFleetRequestsResponse.serializers,
  ..._i179.CancelSpotInstanceRequestsRequest.serializers,
  ..._i180.CancelSpotInstanceRequestState.serializers,
  ..._i181.CancelledSpotInstanceRequest.serializers,
  ..._i182.CancelSpotInstanceRequestsResult.serializers,
  ..._i183.ConfirmProductInstanceRequest.serializers,
  ..._i184.ConfirmProductInstanceResult.serializers,
  ..._i185.CopyFpgaImageRequest.serializers,
  ..._i186.CopyFpgaImageResult.serializers,
  ..._i187.CopyImageRequest.serializers,
  ..._i188.CopyImageResult.serializers,
  ..._i189.CopySnapshotRequest.serializers,
  ..._i190.CopySnapshotResult.serializers,
  ..._i191.CapacityReservationInstancePlatform.serializers,
  ..._i192.CapacityReservationTenancy.serializers,
  ..._i193.EndDateType.serializers,
  ..._i194.InstanceMatchCriteria.serializers,
  ..._i195.CreateCapacityReservationRequest.serializers,
  ..._i196.CapacityReservationState.serializers,
  ..._i197.AllocationType.serializers,
  ..._i198.CapacityAllocation.serializers,
  ..._i199.CapacityReservation.serializers,
  ..._i200.CreateCapacityReservationResult.serializers,
  ..._i201.InstanceType.serializers,
  ..._i202.ReservationFleetInstanceSpecification.serializers,
  ..._i203.FleetCapacityReservationTenancy.serializers,
  ..._i204.FleetInstanceMatchCriteria.serializers,
  ..._i205.CreateCapacityReservationFleetRequest.serializers,
  ..._i206.FleetCapacityReservation.serializers,
  ..._i207.CreateCapacityReservationFleetResult.serializers,
  ..._i208.CreateCarrierGatewayRequest.serializers,
  ..._i209.CarrierGatewayState.serializers,
  ..._i210.CarrierGateway.serializers,
  ..._i211.CreateCarrierGatewayResult.serializers,
  ..._i212.ClientVpnAuthenticationType.serializers,
  ..._i213.DirectoryServiceAuthenticationRequest.serializers,
  ..._i214.CertificateAuthenticationRequest.serializers,
  ..._i215.FederatedAuthenticationRequest.serializers,
  ..._i216.ClientVpnAuthenticationRequest.serializers,
  ..._i217.ConnectionLogOptions.serializers,
  ..._i218.TransportProtocol.serializers,
  ..._i219.SelfServicePortal.serializers,
  ..._i220.ClientConnectOptions.serializers,
  ..._i221.ClientLoginBannerOptions.serializers,
  ..._i222.CreateClientVpnEndpointRequest.serializers,
  ..._i223.ClientVpnEndpointStatusCode.serializers,
  ..._i224.ClientVpnEndpointStatus.serializers,
  ..._i225.CreateClientVpnEndpointResult.serializers,
  ..._i226.CreateClientVpnRouteRequest.serializers,
  ..._i227.ClientVpnRouteStatusCode.serializers,
  ..._i228.ClientVpnRouteStatus.serializers,
  ..._i229.CreateClientVpnRouteResult.serializers,
  ..._i230.CreateCoipCidrRequest.serializers,
  ..._i231.CoipCidr.serializers,
  ..._i232.CreateCoipCidrResult.serializers,
  ..._i233.CreateCoipPoolRequest.serializers,
  ..._i234.CoipPool.serializers,
  ..._i235.CreateCoipPoolResult.serializers,
  ..._i236.GatewayType.serializers,
  ..._i237.CreateCustomerGatewayRequest.serializers,
  ..._i238.CustomerGateway.serializers,
  ..._i239.CreateCustomerGatewayResult.serializers,
  ..._i240.CreateDefaultSubnetRequest.serializers,
  ..._i241.SubnetState.serializers,
  ..._i242.HostnameType.serializers,
  ..._i243.PrivateDnsNameOptionsOnLaunch.serializers,
  ..._i244.Subnet.serializers,
  ..._i245.CreateDefaultSubnetResult.serializers,
  ..._i246.CreateDefaultVpcRequest.serializers,
  ..._i247.VpcState.serializers,
  ..._i248.Tenancy.serializers,
  ..._i249.Vpc.serializers,
  ..._i250.CreateDefaultVpcResult.serializers,
  ..._i251.NewDhcpConfiguration.serializers,
  ..._i252.CreateDhcpOptionsRequest.serializers,
  ..._i253.AttributeValue.serializers,
  ..._i254.DhcpConfiguration.serializers,
  ..._i255.DhcpOptions.serializers,
  ..._i256.CreateDhcpOptionsResult.serializers,
  ..._i257.CreateEgressOnlyInternetGatewayRequest.serializers,
  ..._i258.InternetGatewayAttachment.serializers,
  ..._i259.EgressOnlyInternetGateway.serializers,
  ..._i260.CreateEgressOnlyInternetGatewayResult.serializers,
  ..._i261.SpotAllocationStrategy.serializers,
  ..._i262.FleetReplacementStrategy.serializers,
  ..._i263.FleetSpotCapacityRebalanceRequest.serializers,
  ..._i264.FleetSpotMaintenanceStrategiesRequest.serializers,
  ..._i265.SpotInstanceInterruptionBehavior.serializers,
  ..._i266.SpotOptionsRequest.serializers,
  ..._i267.FleetOnDemandAllocationStrategy.serializers,
  ..._i268.FleetCapacityReservationUsageStrategy.serializers,
  ..._i269.CapacityReservationOptionsRequest.serializers,
  ..._i270.OnDemandOptionsRequest.serializers,
  ..._i271.FleetExcessCapacityTerminationPolicy.serializers,
  ..._i272.FleetLaunchTemplateSpecificationRequest.serializers,
  ..._i273.Placement.serializers,
  ..._i274.VCpuCountRangeRequest.serializers,
  ..._i275.MemoryMiBRequest.serializers,
  ..._i276.CpuManufacturer.serializers,
  ..._i277.MemoryGiBPerVCpuRequest.serializers,
  ..._i278.InstanceGeneration.serializers,
  ..._i279.BareMetal.serializers,
  ..._i280.BurstablePerformance.serializers,
  ..._i281.NetworkInterfaceCountRequest.serializers,
  ..._i282.LocalStorage.serializers,
  ..._i283.LocalStorageType.serializers,
  ..._i284.TotalLocalStorageGbRequest.serializers,
  ..._i285.BaselineEbsBandwidthMbpsRequest.serializers,
  ..._i286.AcceleratorType.serializers,
  ..._i287.AcceleratorCountRequest.serializers,
  ..._i288.AcceleratorManufacturer.serializers,
  ..._i289.AcceleratorName.serializers,
  ..._i290.AcceleratorTotalMemoryMiBRequest.serializers,
  ..._i291.InstanceRequirementsRequest.serializers,
  ..._i292.FleetLaunchTemplateOverridesRequest.serializers,
  ..._i293.FleetLaunchTemplateConfigRequest.serializers,
  ..._i294.DefaultTargetCapacityType.serializers,
  ..._i295.TargetCapacityUnitType.serializers,
  ..._i296.TargetCapacitySpecificationRequest.serializers,
  ..._i297.FleetType.serializers,
  ..._i298.CreateFleetRequest.serializers,
  ..._i299.FleetLaunchTemplateSpecification.serializers,
  ..._i300.PlacementResponse.serializers,
  ..._i301.VCpuCountRange.serializers,
  ..._i302.MemoryMib.serializers,
  ..._i303.MemoryGiBPerVCpu.serializers,
  ..._i304.NetworkInterfaceCount.serializers,
  ..._i305.TotalLocalStorageGb.serializers,
  ..._i306.BaselineEbsBandwidthMbps.serializers,
  ..._i307.AcceleratorCount.serializers,
  ..._i308.AcceleratorTotalMemoryMib.serializers,
  ..._i309.InstanceRequirements.serializers,
  ..._i310.FleetLaunchTemplateOverrides.serializers,
  ..._i311.LaunchTemplateAndOverridesResponse.serializers,
  ..._i312.InstanceLifecycle.serializers,
  ..._i313.CreateFleetError.serializers,
  ..._i314.PlatformValues.serializers,
  ..._i315.CreateFleetInstance.serializers,
  ..._i316.CreateFleetResult.serializers,
  ..._i317.FlowLogsResourceType.serializers,
  ..._i318.TrafficType.serializers,
  ..._i319.LogDestinationType.serializers,
  ..._i320.DestinationFileFormat.serializers,
  ..._i321.DestinationOptionsRequest.serializers,
  ..._i322.CreateFlowLogsRequest.serializers,
  ..._i323.CreateFlowLogsResult.serializers,
  ..._i324.StorageLocation.serializers,
  ..._i325.CreateFpgaImageRequest.serializers,
  ..._i326.CreateFpgaImageResult.serializers,
  ..._i327.VolumeType.serializers,
  ..._i328.EbsBlockDevice.serializers,
  ..._i329.BlockDeviceMapping.serializers,
  ..._i330.CreateImageRequest.serializers,
  ..._i331.CreateImageResult.serializers,
  ..._i332.InstanceEventWindowTimeRangeRequest.serializers,
  ..._i333.CreateInstanceEventWindowRequest.serializers,
  ..._i334.CreateInstanceEventWindowResult.serializers,
  ..._i335.ContainerFormat.serializers,
  ..._i336.DiskImageFormat.serializers,
  ..._i337.ExportToS3TaskSpecification.serializers,
  ..._i338.ExportEnvironment.serializers,
  ..._i339.CreateInstanceExportTaskRequest.serializers,
  ..._i340.ExportToS3Task.serializers,
  ..._i341.InstanceExportDetails.serializers,
  ..._i342.ExportTaskState.serializers,
  ..._i343.ExportTask.serializers,
  ..._i344.CreateInstanceExportTaskResult.serializers,
  ..._i345.CreateInternetGatewayRequest.serializers,
  ..._i346.InternetGateway.serializers,
  ..._i347.CreateInternetGatewayResult.serializers,
  ..._i348.AddIpamOperatingRegion.serializers,
  ..._i349.CreateIpamRequest.serializers,
  ..._i350.IpamOperatingRegion.serializers,
  ..._i351.IpamState.serializers,
  ..._i352.Ipam.serializers,
  ..._i353.CreateIpamResult.serializers,
  ..._i354.AddressFamily.serializers,
  ..._i355.RequestIpamResourceTag.serializers,
  ..._i356.IpamPoolAwsService.serializers,
  ..._i357.CreateIpamPoolRequest.serializers,
  ..._i358.IpamScopeType.serializers,
  ..._i359.IpamPoolState.serializers,
  ..._i360.IpamResourceTag.serializers,
  ..._i361.IpamPool.serializers,
  ..._i362.CreateIpamPoolResult.serializers,
  ..._i363.CreateIpamScopeRequest.serializers,
  ..._i364.IpamScopeState.serializers,
  ..._i365.IpamScope.serializers,
  ..._i366.CreateIpamScopeResult.serializers,
  ..._i367.KeyType.serializers,
  ..._i368.KeyFormat.serializers,
  ..._i369.CreateKeyPairRequest.serializers,
  ..._i370.KeyPair.serializers,
  ..._i371.LaunchTemplateIamInstanceProfileSpecificationRequest.serializers,
  ..._i372.LaunchTemplateEbsBlockDeviceRequest.serializers,
  ..._i373.LaunchTemplateBlockDeviceMappingRequest.serializers,
  ..._i374.InstanceIpv6AddressRequest.serializers,
  ..._i375.PrivateIpAddressSpecification.serializers,
  ..._i376.Ipv4PrefixSpecificationRequest.serializers,
  ..._i377.Ipv6PrefixSpecificationRequest.serializers,
  ..._i378
      .LaunchTemplateInstanceNetworkInterfaceSpecificationRequest.serializers,
  ..._i379.LaunchTemplatesMonitoringRequest.serializers,
  ..._i380.LaunchTemplatePlacementRequest.serializers,
  ..._i381.ShutdownBehavior.serializers,
  ..._i382.LaunchTemplateTagSpecificationRequest.serializers,
  ..._i383.ElasticGpuSpecification.serializers,
  ..._i384.LaunchTemplateElasticInferenceAccelerator.serializers,
  ..._i385.MarketType.serializers,
  ..._i386.SpotInstanceType.serializers,
  ..._i387.InstanceInterruptionBehavior.serializers,
  ..._i388.LaunchTemplateSpotMarketOptionsRequest.serializers,
  ..._i389.LaunchTemplateInstanceMarketOptionsRequest.serializers,
  ..._i390.CreditSpecificationRequest.serializers,
  ..._i391.LaunchTemplateCpuOptionsRequest.serializers,
  ..._i392.CapacityReservationPreference.serializers,
  ..._i393.CapacityReservationTarget.serializers,
  ..._i394.LaunchTemplateCapacityReservationSpecificationRequest.serializers,
  ..._i395.LaunchTemplateLicenseConfigurationRequest.serializers,
  ..._i396.LaunchTemplateHibernationOptionsRequest.serializers,
  ..._i397.LaunchTemplateHttpTokensState.serializers,
  ..._i398.LaunchTemplateInstanceMetadataEndpointState.serializers,
  ..._i399.LaunchTemplateInstanceMetadataProtocolIpv6.serializers,
  ..._i400.LaunchTemplateInstanceMetadataTagsState.serializers,
  ..._i401.LaunchTemplateInstanceMetadataOptionsRequest.serializers,
  ..._i402.LaunchTemplateEnclaveOptionsRequest.serializers,
  ..._i403.LaunchTemplatePrivateDnsNameOptionsRequest.serializers,
  ..._i404.LaunchTemplateAutoRecoveryState.serializers,
  ..._i405.LaunchTemplateInstanceMaintenanceOptionsRequest.serializers,
  ..._i406.RequestLaunchTemplateData.serializers,
  ..._i407.CreateLaunchTemplateRequest.serializers,
  ..._i408.LaunchTemplate.serializers,
  ..._i409.ValidationError.serializers,
  ..._i410.ValidationWarning.serializers,
  ..._i411.CreateLaunchTemplateResult.serializers,
  ..._i412.CreateLaunchTemplateVersionRequest.serializers,
  ..._i413.LaunchTemplateIamInstanceProfileSpecification.serializers,
  ..._i414.LaunchTemplateEbsBlockDevice.serializers,
  ..._i415.LaunchTemplateBlockDeviceMapping.serializers,
  ..._i416.InstanceIpv6Address.serializers,
  ..._i417.Ipv4PrefixSpecificationResponse.serializers,
  ..._i418.Ipv6PrefixSpecificationResponse.serializers,
  ..._i419.LaunchTemplateInstanceNetworkInterfaceSpecification.serializers,
  ..._i420.LaunchTemplatesMonitoring.serializers,
  ..._i421.LaunchTemplatePlacement.serializers,
  ..._i422.LaunchTemplateTagSpecification.serializers,
  ..._i423.ElasticGpuSpecificationResponse.serializers,
  ..._i424.LaunchTemplateElasticInferenceAcceleratorResponse.serializers,
  ..._i425.LaunchTemplateSpotMarketOptions.serializers,
  ..._i426.LaunchTemplateInstanceMarketOptions.serializers,
  ..._i427.CreditSpecification.serializers,
  ..._i428.LaunchTemplateCpuOptions.serializers,
  ..._i429.CapacityReservationTargetResponse.serializers,
  ..._i430.LaunchTemplateCapacityReservationSpecificationResponse.serializers,
  ..._i431.LaunchTemplateLicenseConfiguration.serializers,
  ..._i432.LaunchTemplateHibernationOptions.serializers,
  ..._i433.LaunchTemplateInstanceMetadataOptionsState.serializers,
  ..._i434.LaunchTemplateInstanceMetadataOptions.serializers,
  ..._i435.LaunchTemplateEnclaveOptions.serializers,
  ..._i436.LaunchTemplatePrivateDnsNameOptions.serializers,
  ..._i437.LaunchTemplateInstanceMaintenanceOptions.serializers,
  ..._i438.ResponseLaunchTemplateData.serializers,
  ..._i439.LaunchTemplateVersion.serializers,
  ..._i440.CreateLaunchTemplateVersionResult.serializers,
  ..._i441.CreateLocalGatewayRouteRequest.serializers,
  ..._i442.LocalGatewayRouteType.serializers,
  ..._i443.LocalGatewayRouteState.serializers,
  ..._i444.LocalGatewayRoute.serializers,
  ..._i445.CreateLocalGatewayRouteResult.serializers,
  ..._i446.LocalGatewayRouteTableMode.serializers,
  ..._i447.CreateLocalGatewayRouteTableRequest.serializers,
  ..._i448.StateReason.serializers,
  ..._i449.LocalGatewayRouteTable.serializers,
  ..._i450.CreateLocalGatewayRouteTableResult.serializers,
  ..._i451.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      .serializers,
  ..._i452.LocalGatewayRouteTableVirtualInterfaceGroupAssociation.serializers,
  ..._i453.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
      .serializers,
  ..._i454.CreateLocalGatewayRouteTableVpcAssociationRequest.serializers,
  ..._i455.LocalGatewayRouteTableVpcAssociation.serializers,
  ..._i456.CreateLocalGatewayRouteTableVpcAssociationResult.serializers,
  ..._i457.AddPrefixListEntry.serializers,
  ..._i458.CreateManagedPrefixListRequest.serializers,
  ..._i459.PrefixListState.serializers,
  ..._i460.ManagedPrefixList.serializers,
  ..._i461.CreateManagedPrefixListResult.serializers,
  ..._i462.ConnectivityType.serializers,
  ..._i463.CreateNatGatewayRequest.serializers,
  ..._i464.NatGatewayAddress.serializers,
  ..._i465.ProvisionedBandwidth.serializers,
  ..._i466.NatGatewayState.serializers,
  ..._i467.NatGateway.serializers,
  ..._i468.CreateNatGatewayResult.serializers,
  ..._i469.CreateNetworkAclRequest.serializers,
  ..._i470.NetworkAclAssociation.serializers,
  ..._i471.IcmpTypeCode.serializers,
  ..._i472.PortRange.serializers,
  ..._i473.RuleAction.serializers,
  ..._i474.NetworkAclEntry.serializers,
  ..._i475.NetworkAcl.serializers,
  ..._i476.CreateNetworkAclResult.serializers,
  ..._i477.CreateNetworkAclEntryRequest.serializers,
  ..._i478.Protocol.serializers,
  ..._i479.PacketHeaderStatementRequest.serializers,
  ..._i480.ResourceStatementRequest.serializers,
  ..._i481.PathStatementRequest.serializers,
  ..._i482.ThroughResourcesStatementRequest.serializers,
  ..._i483.AccessScopePathRequest.serializers,
  ..._i484.CreateNetworkInsightsAccessScopeRequest.serializers,
  ..._i485.NetworkInsightsAccessScope.serializers,
  ..._i486.PacketHeaderStatement.serializers,
  ..._i487.ResourceStatement.serializers,
  ..._i488.PathStatement.serializers,
  ..._i489.ThroughResourcesStatement.serializers,
  ..._i490.AccessScopePath.serializers,
  ..._i491.NetworkInsightsAccessScopeContent.serializers,
  ..._i492.CreateNetworkInsightsAccessScopeResult.serializers,
  ..._i493.CreateNetworkInsightsPathRequest.serializers,
  ..._i494.NetworkInsightsPath.serializers,
  ..._i495.CreateNetworkInsightsPathResult.serializers,
  ..._i496.NetworkInterfaceCreationType.serializers,
  ..._i497.CreateNetworkInterfaceRequest.serializers,
  ..._i498.NetworkInterfaceAssociation.serializers,
  ..._i499.NetworkInterfaceAttachment.serializers,
  ..._i500.GroupIdentifier.serializers,
  ..._i501.NetworkInterfaceType.serializers,
  ..._i502.NetworkInterfaceIpv6Address.serializers,
  ..._i503.NetworkInterfacePrivateIpAddress.serializers,
  ..._i504.Ipv6PrefixSpecification.serializers,
  ..._i505.NetworkInterfaceStatus.serializers,
  ..._i506.NetworkInterface.serializers,
  ..._i507.CreateNetworkInterfaceResult.serializers,
  ..._i508.InterfacePermissionType.serializers,
  ..._i509.CreateNetworkInterfacePermissionRequest.serializers,
  ..._i510.NetworkInterfacePermissionStateCode.serializers,
  ..._i511.NetworkInterfacePermissionState.serializers,
  ..._i512.NetworkInterfacePermission.serializers,
  ..._i513.CreateNetworkInterfacePermissionResult.serializers,
  ..._i514.PlacementStrategy.serializers,
  ..._i515.SpreadLevel.serializers,
  ..._i516.CreatePlacementGroupRequest.serializers,
  ..._i517.PlacementGroupState.serializers,
  ..._i518.PlacementGroup.serializers,
  ..._i519.CreatePlacementGroupResult.serializers,
  ..._i520.CreatePublicIpv4PoolRequest.serializers,
  ..._i521.CreatePublicIpv4PoolResult.serializers,
  ..._i522.CreateReplaceRootVolumeTaskRequest.serializers,
  ..._i523.ReplaceRootVolumeTaskState.serializers,
  ..._i524.ReplaceRootVolumeTask.serializers,
  ..._i525.CreateReplaceRootVolumeTaskResult.serializers,
  ..._i526.PriceScheduleSpecification.serializers,
  ..._i527.CreateReservedInstancesListingRequest.serializers,
  ..._i528.CreateReservedInstancesListingResult.serializers,
  ..._i529.CreateRestoreImageTaskRequest.serializers,
  ..._i530.CreateRestoreImageTaskResult.serializers,
  ..._i531.CreateRouteRequest.serializers,
  ..._i532.CreateRouteResult.serializers,
  ..._i533.CreateRouteTableRequest.serializers,
  ..._i534.RouteTableAssociation.serializers,
  ..._i535.PropagatingVgw.serializers,
  ..._i536.RouteOrigin.serializers,
  ..._i537.RouteState.serializers,
  ..._i538.Route.serializers,
  ..._i539.RouteTable.serializers,
  ..._i540.CreateRouteTableResult.serializers,
  ..._i541.CreateSecurityGroupRequest.serializers,
  ..._i542.CreateSecurityGroupResult.serializers,
  ..._i543.CreateSnapshotRequest.serializers,
  ..._i544.SnapshotState.serializers,
  ..._i545.StorageTier.serializers,
  ..._i546.Snapshot.serializers,
  ..._i547.InstanceSpecification.serializers,
  ..._i548.CopyTagsFromSource.serializers,
  ..._i549.CreateSnapshotsRequest.serializers,
  ..._i550.SnapshotInfo.serializers,
  ..._i551.CreateSnapshotsResult.serializers,
  ..._i552.CreateSpotDatafeedSubscriptionRequest.serializers,
  ..._i553.SpotInstanceStateFault.serializers,
  ..._i554.DatafeedSubscriptionState.serializers,
  ..._i555.SpotDatafeedSubscription.serializers,
  ..._i556.CreateSpotDatafeedSubscriptionResult.serializers,
  ..._i557.S3ObjectTag.serializers,
  ..._i558.CreateStoreImageTaskRequest.serializers,
  ..._i559.CreateStoreImageTaskResult.serializers,
  ..._i560.CreateSubnetRequest.serializers,
  ..._i561.CreateSubnetResult.serializers,
  ..._i562.SubnetCidrReservationType.serializers,
  ..._i563.CreateSubnetCidrReservationRequest.serializers,
  ..._i564.SubnetCidrReservation.serializers,
  ..._i565.CreateSubnetCidrReservationResult.serializers,
  ..._i566.CreateTagsRequest.serializers,
  ..._i567.CreateTrafficMirrorFilterRequest.serializers,
  ..._i568.TrafficDirection.serializers,
  ..._i569.TrafficMirrorRuleAction.serializers,
  ..._i570.TrafficMirrorPortRange.serializers,
  ..._i571.TrafficMirrorFilterRule.serializers,
  ..._i572.TrafficMirrorNetworkService.serializers,
  ..._i573.TrafficMirrorFilter.serializers,
  ..._i574.CreateTrafficMirrorFilterResult.serializers,
  ..._i575.TrafficMirrorPortRangeRequest.serializers,
  ..._i576.CreateTrafficMirrorFilterRuleRequest.serializers,
  ..._i577.CreateTrafficMirrorFilterRuleResult.serializers,
  ..._i578.CreateTrafficMirrorSessionRequest.serializers,
  ..._i579.TrafficMirrorSession.serializers,
  ..._i580.CreateTrafficMirrorSessionResult.serializers,
  ..._i581.CreateTrafficMirrorTargetRequest.serializers,
  ..._i582.TrafficMirrorTargetType.serializers,
  ..._i583.TrafficMirrorTarget.serializers,
  ..._i584.CreateTrafficMirrorTargetResult.serializers,
  ..._i585.AutoAcceptSharedAttachmentsValue.serializers,
  ..._i586.DefaultRouteTableAssociationValue.serializers,
  ..._i587.DefaultRouteTablePropagationValue.serializers,
  ..._i588.VpnEcmpSupportValue.serializers,
  ..._i589.MulticastSupportValue.serializers,
  ..._i590.TransitGatewayRequestOptions.serializers,
  ..._i591.CreateTransitGatewayRequest.serializers,
  ..._i592.TransitGatewayState.serializers,
  ..._i593.TransitGatewayOptions.serializers,
  ..._i594.TransitGateway.serializers,
  ..._i595.CreateTransitGatewayResult.serializers,
  ..._i596.ProtocolValue.serializers,
  ..._i597.CreateTransitGatewayConnectRequestOptions.serializers,
  ..._i598.CreateTransitGatewayConnectRequest.serializers,
  ..._i599.TransitGatewayConnectOptions.serializers,
  ..._i600.TransitGatewayConnect.serializers,
  ..._i601.CreateTransitGatewayConnectResult.serializers,
  ..._i602.TransitGatewayConnectRequestBgpOptions.serializers,
  ..._i603.CreateTransitGatewayConnectPeerRequest.serializers,
  ..._i604.TransitGatewayConnectPeerState.serializers,
  ..._i605.BgpStatus.serializers,
  ..._i606.TransitGatewayAttachmentBgpConfiguration.serializers,
  ..._i607.TransitGatewayConnectPeerConfiguration.serializers,
  ..._i608.TransitGatewayConnectPeer.serializers,
  ..._i609.CreateTransitGatewayConnectPeerResult.serializers,
  ..._i610.Igmpv2SupportValue.serializers,
  ..._i611.StaticSourcesSupportValue.serializers,
  ..._i612.AutoAcceptSharedAssociationsValue.serializers,
  ..._i613.CreateTransitGatewayMulticastDomainRequestOptions.serializers,
  ..._i614.CreateTransitGatewayMulticastDomainRequest.serializers,
  ..._i615.TransitGatewayMulticastDomainOptions.serializers,
  ..._i616.TransitGatewayMulticastDomainState.serializers,
  ..._i617.TransitGatewayMulticastDomain.serializers,
  ..._i618.CreateTransitGatewayMulticastDomainResult.serializers,
  ..._i619.CreateTransitGatewayPeeringAttachmentRequestOptions.serializers,
  ..._i620.CreateTransitGatewayPeeringAttachmentRequest.serializers,
  ..._i621.CreateTransitGatewayPeeringAttachmentResult.serializers,
  ..._i622.CreateTransitGatewayPolicyTableRequest.serializers,
  ..._i623.TransitGatewayPolicyTableState.serializers,
  ..._i624.TransitGatewayPolicyTable.serializers,
  ..._i625.CreateTransitGatewayPolicyTableResult.serializers,
  ..._i626.CreateTransitGatewayPrefixListReferenceRequest.serializers,
  ..._i627.TransitGatewayPrefixListReferenceState.serializers,
  ..._i628.TransitGatewayPrefixListAttachment.serializers,
  ..._i629.TransitGatewayPrefixListReference.serializers,
  ..._i630.CreateTransitGatewayPrefixListReferenceResult.serializers,
  ..._i631.CreateTransitGatewayRouteRequest.serializers,
  ..._i632.TransitGatewayRouteAttachment.serializers,
  ..._i633.TransitGatewayRouteType.serializers,
  ..._i634.TransitGatewayRouteState.serializers,
  ..._i635.TransitGatewayRoute.serializers,
  ..._i636.CreateTransitGatewayRouteResult.serializers,
  ..._i637.CreateTransitGatewayRouteTableRequest.serializers,
  ..._i638.TransitGatewayRouteTableState.serializers,
  ..._i639.TransitGatewayRouteTable.serializers,
  ..._i640.CreateTransitGatewayRouteTableResult.serializers,
  ..._i641.CreateTransitGatewayRouteTableAnnouncementRequest.serializers,
  ..._i642.TransitGatewayRouteTableAnnouncementDirection.serializers,
  ..._i643.TransitGatewayRouteTableAnnouncementState.serializers,
  ..._i644.TransitGatewayRouteTableAnnouncement.serializers,
  ..._i645.CreateTransitGatewayRouteTableAnnouncementResult.serializers,
  ..._i646.CreateTransitGatewayVpcAttachmentRequestOptions.serializers,
  ..._i647.CreateTransitGatewayVpcAttachmentRequest.serializers,
  ..._i648.CreateTransitGatewayVpcAttachmentResult.serializers,
  ..._i649.CreateVolumeRequest.serializers,
  ..._i650.VolumeState.serializers,
  ..._i651.Volume.serializers,
  ..._i652.CreateVpcRequest.serializers,
  ..._i653.CreateVpcResult.serializers,
  ..._i654.VpcEndpointType.serializers,
  ..._i655.IpAddressType.serializers,
  ..._i656.DnsRecordIpType.serializers,
  ..._i657.DnsOptionsSpecification.serializers,
  ..._i658.CreateVpcEndpointRequest.serializers,
  ..._i659.State.serializers,
  ..._i660.SecurityGroupIdentifier.serializers,
  ..._i661.DnsOptions.serializers,
  ..._i662.DnsEntry.serializers,
  ..._i663.LastError.serializers,
  ..._i664.VpcEndpoint.serializers,
  ..._i665.CreateVpcEndpointResult.serializers,
  ..._i666.CreateVpcEndpointConnectionNotificationRequest.serializers,
  ..._i667.ConnectionNotificationType.serializers,
  ..._i668.ConnectionNotificationState.serializers,
  ..._i669.ConnectionNotification.serializers,
  ..._i670.CreateVpcEndpointConnectionNotificationResult.serializers,
  ..._i671.CreateVpcEndpointServiceConfigurationRequest.serializers,
  ..._i672.ServiceType.serializers,
  ..._i673.ServiceTypeDetail.serializers,
  ..._i674.ServiceState.serializers,
  ..._i675.ServiceConnectivityType.serializers,
  ..._i676.DnsNameState.serializers,
  ..._i677.PrivateDnsNameConfiguration.serializers,
  ..._i678.PayerResponsibility.serializers,
  ..._i679.ServiceConfiguration.serializers,
  ..._i680.CreateVpcEndpointServiceConfigurationResult.serializers,
  ..._i681.CreateVpcPeeringConnectionRequest.serializers,
  ..._i682.CreateVpcPeeringConnectionResult.serializers,
  ..._i683.TunnelInsideIpVersion.serializers,
  ..._i684.Phase1EncryptionAlgorithmsRequestListValue.serializers,
  ..._i685.Phase2EncryptionAlgorithmsRequestListValue.serializers,
  ..._i686.Phase1IntegrityAlgorithmsRequestListValue.serializers,
  ..._i687.Phase2IntegrityAlgorithmsRequestListValue.serializers,
  ..._i688.Phase1DhGroupNumbersRequestListValue.serializers,
  ..._i689.Phase2DhGroupNumbersRequestListValue.serializers,
  ..._i690.IkeVersionsRequestListValue.serializers,
  ..._i691.CloudWatchLogOptionsSpecification.serializers,
  ..._i692.VpnTunnelLogOptionsSpecification.serializers,
  ..._i693.VpnTunnelOptionsSpecification.serializers,
  ..._i694.VpnConnectionOptionsSpecification.serializers,
  ..._i695.CreateVpnConnectionRequest.serializers,
  ..._i696.VpnState.serializers,
  ..._i697.GatewayAssociationState.serializers,
  ..._i698.Phase1EncryptionAlgorithmsListValue.serializers,
  ..._i699.Phase2EncryptionAlgorithmsListValue.serializers,
  ..._i700.Phase1IntegrityAlgorithmsListValue.serializers,
  ..._i701.Phase2IntegrityAlgorithmsListValue.serializers,
  ..._i702.Phase1DhGroupNumbersListValue.serializers,
  ..._i703.Phase2DhGroupNumbersListValue.serializers,
  ..._i704.IkeVersionsListValue.serializers,
  ..._i705.CloudWatchLogOptions.serializers,
  ..._i706.VpnTunnelLogOptions.serializers,
  ..._i707.TunnelOption.serializers,
  ..._i708.VpnConnectionOptions.serializers,
  ..._i709.VpnStaticRouteSource.serializers,
  ..._i710.VpnStaticRoute.serializers,
  ..._i711.TelemetryStatus.serializers,
  ..._i712.VgwTelemetry.serializers,
  ..._i713.VpnConnection.serializers,
  ..._i714.CreateVpnConnectionResult.serializers,
  ..._i715.CreateVpnConnectionRouteRequest.serializers,
  ..._i716.CreateVpnGatewayRequest.serializers,
  ..._i717.VpnGateway.serializers,
  ..._i718.CreateVpnGatewayResult.serializers,
  ..._i719.DeleteCarrierGatewayRequest.serializers,
  ..._i720.DeleteCarrierGatewayResult.serializers,
  ..._i721.DeleteClientVpnEndpointRequest.serializers,
  ..._i722.DeleteClientVpnEndpointResult.serializers,
  ..._i723.DeleteClientVpnRouteRequest.serializers,
  ..._i724.DeleteClientVpnRouteResult.serializers,
  ..._i725.DeleteCoipCidrRequest.serializers,
  ..._i726.DeleteCoipCidrResult.serializers,
  ..._i727.DeleteCoipPoolRequest.serializers,
  ..._i728.DeleteCoipPoolResult.serializers,
  ..._i729.DeleteCustomerGatewayRequest.serializers,
  ..._i730.DeleteDhcpOptionsRequest.serializers,
  ..._i731.DeleteEgressOnlyInternetGatewayRequest.serializers,
  ..._i732.DeleteEgressOnlyInternetGatewayResult.serializers,
  ..._i733.DeleteFleetsRequest.serializers,
  ..._i734.FleetStateCode.serializers,
  ..._i735.DeleteFleetSuccessItem.serializers,
  ..._i736.DeleteFleetErrorCode.serializers,
  ..._i737.DeleteFleetError.serializers,
  ..._i738.DeleteFleetErrorItem.serializers,
  ..._i739.DeleteFleetsResult.serializers,
  ..._i740.DeleteFlowLogsRequest.serializers,
  ..._i741.DeleteFlowLogsResult.serializers,
  ..._i742.DeleteFpgaImageRequest.serializers,
  ..._i743.DeleteFpgaImageResult.serializers,
  ..._i744.DeleteInstanceEventWindowRequest.serializers,
  ..._i745.InstanceEventWindowStateChange.serializers,
  ..._i746.DeleteInstanceEventWindowResult.serializers,
  ..._i747.DeleteInternetGatewayRequest.serializers,
  ..._i748.DeleteIpamRequest.serializers,
  ..._i749.DeleteIpamResult.serializers,
  ..._i750.DeleteIpamPoolRequest.serializers,
  ..._i751.DeleteIpamPoolResult.serializers,
  ..._i752.DeleteIpamScopeRequest.serializers,
  ..._i753.DeleteIpamScopeResult.serializers,
  ..._i754.DeleteKeyPairRequest.serializers,
  ..._i755.DeleteLaunchTemplateRequest.serializers,
  ..._i756.DeleteLaunchTemplateResult.serializers,
  ..._i757.DeleteLaunchTemplateVersionsRequest.serializers,
  ..._i758.DeleteLaunchTemplateVersionsResponseSuccessItem.serializers,
  ..._i759.LaunchTemplateErrorCode.serializers,
  ..._i760.ResponseError.serializers,
  ..._i761.DeleteLaunchTemplateVersionsResponseErrorItem.serializers,
  ..._i762.DeleteLaunchTemplateVersionsResult.serializers,
  ..._i763.DeleteLocalGatewayRouteRequest.serializers,
  ..._i764.DeleteLocalGatewayRouteResult.serializers,
  ..._i765.DeleteLocalGatewayRouteTableRequest.serializers,
  ..._i766.DeleteLocalGatewayRouteTableResult.serializers,
  ..._i767.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      .serializers,
  ..._i768.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
      .serializers,
  ..._i769.DeleteLocalGatewayRouteTableVpcAssociationRequest.serializers,
  ..._i770.DeleteLocalGatewayRouteTableVpcAssociationResult.serializers,
  ..._i771.DeleteManagedPrefixListRequest.serializers,
  ..._i772.DeleteManagedPrefixListResult.serializers,
  ..._i773.DeleteNatGatewayRequest.serializers,
  ..._i774.DeleteNatGatewayResult.serializers,
  ..._i775.DeleteNetworkAclRequest.serializers,
  ..._i776.DeleteNetworkAclEntryRequest.serializers,
  ..._i777.DeleteNetworkInsightsAccessScopeRequest.serializers,
  ..._i778.DeleteNetworkInsightsAccessScopeResult.serializers,
  ..._i779.DeleteNetworkInsightsAccessScopeAnalysisRequest.serializers,
  ..._i780.DeleteNetworkInsightsAccessScopeAnalysisResult.serializers,
  ..._i781.DeleteNetworkInsightsAnalysisRequest.serializers,
  ..._i782.DeleteNetworkInsightsAnalysisResult.serializers,
  ..._i783.DeleteNetworkInsightsPathRequest.serializers,
  ..._i784.DeleteNetworkInsightsPathResult.serializers,
  ..._i785.DeleteNetworkInterfaceRequest.serializers,
  ..._i786.DeleteNetworkInterfacePermissionRequest.serializers,
  ..._i787.DeleteNetworkInterfacePermissionResult.serializers,
  ..._i788.DeletePlacementGroupRequest.serializers,
  ..._i789.DeletePublicIpv4PoolRequest.serializers,
  ..._i790.DeletePublicIpv4PoolResult.serializers,
  ..._i791.DeleteQueuedReservedInstancesRequest.serializers,
  ..._i792.SuccessfulQueuedPurchaseDeletion.serializers,
  ..._i793.DeleteQueuedReservedInstancesErrorCode.serializers,
  ..._i794.DeleteQueuedReservedInstancesError.serializers,
  ..._i795.FailedQueuedPurchaseDeletion.serializers,
  ..._i796.DeleteQueuedReservedInstancesResult.serializers,
  ..._i797.DeleteRouteRequest.serializers,
  ..._i798.DeleteRouteTableRequest.serializers,
  ..._i799.DeleteSecurityGroupRequest.serializers,
  ..._i800.DeleteSnapshotRequest.serializers,
  ..._i801.DeleteSpotDatafeedSubscriptionRequest.serializers,
  ..._i802.DeleteSubnetRequest.serializers,
  ..._i803.DeleteSubnetCidrReservationRequest.serializers,
  ..._i804.DeleteSubnetCidrReservationResult.serializers,
  ..._i805.DeleteTagsRequest.serializers,
  ..._i806.DeleteTrafficMirrorFilterRequest.serializers,
  ..._i807.DeleteTrafficMirrorFilterResult.serializers,
  ..._i808.DeleteTrafficMirrorFilterRuleRequest.serializers,
  ..._i809.DeleteTrafficMirrorFilterRuleResult.serializers,
  ..._i810.DeleteTrafficMirrorSessionRequest.serializers,
  ..._i811.DeleteTrafficMirrorSessionResult.serializers,
  ..._i812.DeleteTrafficMirrorTargetRequest.serializers,
  ..._i813.DeleteTrafficMirrorTargetResult.serializers,
  ..._i814.DeleteTransitGatewayRequest.serializers,
  ..._i815.DeleteTransitGatewayResult.serializers,
  ..._i816.DeleteTransitGatewayConnectRequest.serializers,
  ..._i817.DeleteTransitGatewayConnectResult.serializers,
  ..._i818.DeleteTransitGatewayConnectPeerRequest.serializers,
  ..._i819.DeleteTransitGatewayConnectPeerResult.serializers,
  ..._i820.DeleteTransitGatewayMulticastDomainRequest.serializers,
  ..._i821.DeleteTransitGatewayMulticastDomainResult.serializers,
  ..._i822.DeleteTransitGatewayPeeringAttachmentRequest.serializers,
  ..._i823.DeleteTransitGatewayPeeringAttachmentResult.serializers,
  ..._i824.DeleteTransitGatewayPolicyTableRequest.serializers,
  ..._i825.DeleteTransitGatewayPolicyTableResult.serializers,
  ..._i826.DeleteTransitGatewayPrefixListReferenceRequest.serializers,
  ..._i827.DeleteTransitGatewayPrefixListReferenceResult.serializers,
  ..._i828.DeleteTransitGatewayRouteRequest.serializers,
  ..._i829.DeleteTransitGatewayRouteResult.serializers,
  ..._i830.DeleteTransitGatewayRouteTableRequest.serializers,
  ..._i831.DeleteTransitGatewayRouteTableResult.serializers,
  ..._i832.DeleteTransitGatewayRouteTableAnnouncementRequest.serializers,
  ..._i833.DeleteTransitGatewayRouteTableAnnouncementResult.serializers,
  ..._i834.DeleteTransitGatewayVpcAttachmentRequest.serializers,
  ..._i835.DeleteTransitGatewayVpcAttachmentResult.serializers,
  ..._i836.DeleteVolumeRequest.serializers,
  ..._i837.DeleteVpcRequest.serializers,
  ..._i838.DeleteVpcEndpointConnectionNotificationsRequest.serializers,
  ..._i839.DeleteVpcEndpointConnectionNotificationsResult.serializers,
  ..._i840.DeleteVpcEndpointServiceConfigurationsRequest.serializers,
  ..._i841.DeleteVpcEndpointServiceConfigurationsResult.serializers,
  ..._i842.DeleteVpcEndpointsRequest.serializers,
  ..._i843.DeleteVpcEndpointsResult.serializers,
  ..._i844.DeleteVpcPeeringConnectionRequest.serializers,
  ..._i845.DeleteVpcPeeringConnectionResult.serializers,
  ..._i846.DeleteVpnConnectionRequest.serializers,
  ..._i847.DeleteVpnConnectionRouteRequest.serializers,
  ..._i848.DeleteVpnGatewayRequest.serializers,
  ..._i849.DeprovisionByoipCidrRequest.serializers,
  ..._i850.DeprovisionByoipCidrResult.serializers,
  ..._i851.DeprovisionIpamPoolCidrRequest.serializers,
  ..._i852.IpamPoolCidrState.serializers,
  ..._i853.IpamPoolCidrFailureCode.serializers,
  ..._i854.IpamPoolCidrFailureReason.serializers,
  ..._i855.IpamPoolCidr.serializers,
  ..._i856.DeprovisionIpamPoolCidrResult.serializers,
  ..._i857.DeprovisionPublicIpv4PoolCidrRequest.serializers,
  ..._i858.DeprovisionPublicIpv4PoolCidrResult.serializers,
  ..._i859.DeregisterImageRequest.serializers,
  ..._i860.DeregisterInstanceTagAttributeRequest.serializers,
  ..._i861.DeregisterInstanceEventNotificationAttributesRequest.serializers,
  ..._i862.InstanceTagNotificationAttribute.serializers,
  ..._i863.DeregisterInstanceEventNotificationAttributesResult.serializers,
  ..._i864.DeregisterTransitGatewayMulticastGroupMembersRequest.serializers,
  ..._i865.TransitGatewayMulticastDeregisteredGroupMembers.serializers,
  ..._i866.DeregisterTransitGatewayMulticastGroupMembersResult.serializers,
  ..._i867.DeregisterTransitGatewayMulticastGroupSourcesRequest.serializers,
  ..._i868.TransitGatewayMulticastDeregisteredGroupSources.serializers,
  ..._i869.DeregisterTransitGatewayMulticastGroupSourcesResult.serializers,
  ..._i870.AccountAttributeName.serializers,
  ..._i871.DescribeAccountAttributesRequest.serializers,
  ..._i872.AccountAttributeValue.serializers,
  ..._i873.AccountAttribute.serializers,
  ..._i874.DescribeAccountAttributesResult.serializers,
  ..._i875.Filter.serializers,
  ..._i876.DescribeAddressesRequest.serializers,
  ..._i877.Address.serializers,
  ..._i878.DescribeAddressesResult.serializers,
  ..._i879.AddressAttributeName.serializers,
  ..._i880.DescribeAddressesAttributeRequest.serializers,
  ..._i881.PtrUpdateStatus.serializers,
  ..._i882.AddressAttribute.serializers,
  ..._i883.DescribeAddressesAttributeResult.serializers,
  ..._i884.DescribeAggregateIdFormatRequest.serializers,
  ..._i885.IdFormat.serializers,
  ..._i886.DescribeAggregateIdFormatResult.serializers,
  ..._i887.DescribeAvailabilityZonesRequest.serializers,
  ..._i888.AvailabilityZoneState.serializers,
  ..._i889.AvailabilityZoneOptInStatus.serializers,
  ..._i890.AvailabilityZoneMessage.serializers,
  ..._i891.AvailabilityZone.serializers,
  ..._i892.DescribeAvailabilityZonesResult.serializers,
  ..._i893.DescribeBundleTasksRequest.serializers,
  ..._i894.DescribeBundleTasksResult.serializers,
  ..._i895.DescribeByoipCidrsRequest.serializers,
  ..._i896.DescribeByoipCidrsResult.serializers,
  ..._i897.DescribeCapacityReservationFleetsRequest.serializers,
  ..._i898.CapacityReservationFleet.serializers,
  ..._i899.DescribeCapacityReservationFleetsResult.serializers,
  ..._i900.DescribeCapacityReservationsRequest.serializers,
  ..._i901.DescribeCapacityReservationsResult.serializers,
  ..._i902.DescribeCarrierGatewaysRequest.serializers,
  ..._i903.DescribeCarrierGatewaysResult.serializers,
  ..._i904.DescribeClassicLinkInstancesRequest.serializers,
  ..._i905.ClassicLinkInstance.serializers,
  ..._i906.DescribeClassicLinkInstancesResult.serializers,
  ..._i907.DescribeClientVpnAuthorizationRulesRequest.serializers,
  ..._i908.AuthorizationRule.serializers,
  ..._i909.DescribeClientVpnAuthorizationRulesResult.serializers,
  ..._i910.DescribeClientVpnConnectionsRequest.serializers,
  ..._i911.ClientVpnConnectionStatusCode.serializers,
  ..._i912.ClientVpnConnectionStatus.serializers,
  ..._i913.ClientVpnConnection.serializers,
  ..._i914.DescribeClientVpnConnectionsResult.serializers,
  ..._i915.DescribeClientVpnEndpointsRequest.serializers,
  ..._i916.VpnProtocol.serializers,
  ..._i917.AssociatedNetworkType.serializers,
  ..._i918.AssociatedTargetNetwork.serializers,
  ..._i919.DirectoryServiceAuthentication.serializers,
  ..._i920.CertificateAuthentication.serializers,
  ..._i921.FederatedAuthentication.serializers,
  ..._i922.ClientVpnAuthentication.serializers,
  ..._i923.ConnectionLogResponseOptions.serializers,
  ..._i924.ClientVpnEndpointAttributeStatusCode.serializers,
  ..._i925.ClientVpnEndpointAttributeStatus.serializers,
  ..._i926.ClientConnectResponseOptions.serializers,
  ..._i927.ClientLoginBannerResponseOptions.serializers,
  ..._i928.ClientVpnEndpoint.serializers,
  ..._i929.DescribeClientVpnEndpointsResult.serializers,
  ..._i930.DescribeClientVpnRoutesRequest.serializers,
  ..._i931.ClientVpnRoute.serializers,
  ..._i932.DescribeClientVpnRoutesResult.serializers,
  ..._i933.DescribeClientVpnTargetNetworksRequest.serializers,
  ..._i934.TargetNetwork.serializers,
  ..._i935.DescribeClientVpnTargetNetworksResult.serializers,
  ..._i936.DescribeCoipPoolsRequest.serializers,
  ..._i937.DescribeCoipPoolsResult.serializers,
  ..._i938.DescribeConversionTasksRequest.serializers,
  ..._i939.DiskImageDescription.serializers,
  ..._i940.DiskImageVolumeDescription.serializers,
  ..._i941.ImportInstanceVolumeDetailItem.serializers,
  ..._i942.ImportInstanceTaskDetails.serializers,
  ..._i943.ImportVolumeTaskDetails.serializers,
  ..._i944.ConversionTaskState.serializers,
  ..._i945.ConversionTask.serializers,
  ..._i946.DescribeConversionTasksResult.serializers,
  ..._i947.DescribeCustomerGatewaysRequest.serializers,
  ..._i948.DescribeCustomerGatewaysResult.serializers,
  ..._i949.DescribeDhcpOptionsRequest.serializers,
  ..._i950.DescribeDhcpOptionsResult.serializers,
  ..._i951.DescribeEgressOnlyInternetGatewaysRequest.serializers,
  ..._i952.DescribeEgressOnlyInternetGatewaysResult.serializers,
  ..._i953.DescribeElasticGpusRequest.serializers,
  ..._i954.ElasticGpuStatus.serializers,
  ..._i955.ElasticGpuHealth.serializers,
  ..._i956.ElasticGpuState.serializers,
  ..._i957.ElasticGpus.serializers,
  ..._i958.DescribeElasticGpusResult.serializers,
  ..._i959.DescribeExportImageTasksRequest.serializers,
  ..._i960.ExportTaskS3Location.serializers,
  ..._i961.ExportImageTask.serializers,
  ..._i962.DescribeExportImageTasksResult.serializers,
  ..._i963.DescribeExportTasksRequest.serializers,
  ..._i964.DescribeExportTasksResult.serializers,
  ..._i965.DescribeFastLaunchImagesRequest.serializers,
  ..._i966.FastLaunchResourceType.serializers,
  ..._i967.FastLaunchSnapshotConfigurationResponse.serializers,
  ..._i968.FastLaunchLaunchTemplateSpecificationResponse.serializers,
  ..._i969.FastLaunchStateCode.serializers,
  ..._i970.DescribeFastLaunchImagesSuccessItem.serializers,
  ..._i971.DescribeFastLaunchImagesResult.serializers,
  ..._i972.DescribeFastSnapshotRestoresRequest.serializers,
  ..._i973.FastSnapshotRestoreStateCode.serializers,
  ..._i974.DescribeFastSnapshotRestoreSuccessItem.serializers,
  ..._i975.DescribeFastSnapshotRestoresResult.serializers,
  ..._i976.FleetEventType.serializers,
  ..._i977.DescribeFleetHistoryRequest.serializers,
  ..._i978.EventInformation.serializers,
  ..._i979.HistoryRecordEntry.serializers,
  ..._i980.DescribeFleetHistoryResult.serializers,
  ..._i981.DescribeFleetInstancesRequest.serializers,
  ..._i982.InstanceHealthStatus.serializers,
  ..._i983.ActiveInstance.serializers,
  ..._i984.DescribeFleetInstancesResult.serializers,
  ..._i985.DescribeFleetsRequest.serializers,
  ..._i986.FleetActivityStatus.serializers,
  ..._i987.FleetLaunchTemplateConfig.serializers,
  ..._i988.TargetCapacitySpecification.serializers,
  ..._i989.FleetSpotCapacityRebalance.serializers,
  ..._i990.FleetSpotMaintenanceStrategies.serializers,
  ..._i991.SpotOptions.serializers,
  ..._i992.CapacityReservationOptions.serializers,
  ..._i993.OnDemandOptions.serializers,
  ..._i994.DescribeFleetError.serializers,
  ..._i995.DescribeFleetsInstances.serializers,
  ..._i996.FleetData.serializers,
  ..._i997.DescribeFleetsResult.serializers,
  ..._i998.DescribeFlowLogsRequest.serializers,
  ..._i999.DestinationOptionsResponse.serializers,
  ..._i1000.FlowLog.serializers,
  ..._i1001.DescribeFlowLogsResult.serializers,
  ..._i1002.FpgaImageAttributeName.serializers,
  ..._i1003.DescribeFpgaImageAttributeRequest.serializers,
  ..._i1004.PermissionGroup.serializers,
  ..._i1005.LoadPermission.serializers,
  ..._i1006.ProductCodeValues.serializers,
  ..._i1007.ProductCode.serializers,
  ..._i1008.FpgaImageAttribute.serializers,
  ..._i1009.DescribeFpgaImageAttributeResult.serializers,
  ..._i1010.DescribeFpgaImagesRequest.serializers,
  ..._i1011.PciId.serializers,
  ..._i1012.FpgaImageStateCode.serializers,
  ..._i1013.FpgaImageState.serializers,
  ..._i1014.FpgaImage.serializers,
  ..._i1015.DescribeFpgaImagesResult.serializers,
  ..._i1016.DescribeHostReservationOfferingsRequest.serializers,
  ..._i1017.PaymentOption.serializers,
  ..._i1018.HostOffering.serializers,
  ..._i1019.DescribeHostReservationOfferingsResult.serializers,
  ..._i1020.DescribeHostReservationsRequest.serializers,
  ..._i1021.ReservationState.serializers,
  ..._i1022.HostReservation.serializers,
  ..._i1023.DescribeHostReservationsResult.serializers,
  ..._i1024.DescribeHostsRequest.serializers,
  ..._i1025.InstanceCapacity.serializers,
  ..._i1026.AvailableCapacity.serializers,
  ..._i1027.HostProperties.serializers,
  ..._i1028.HostInstance.serializers,
  ..._i1029.AllocationState.serializers,
  ..._i1030.AllowsMultipleInstanceTypes.serializers,
  ..._i1031.Host.serializers,
  ..._i1032.DescribeHostsResult.serializers,
  ..._i1033.DescribeIamInstanceProfileAssociationsRequest.serializers,
  ..._i1034.DescribeIamInstanceProfileAssociationsResult.serializers,
  ..._i1035.DescribeIdFormatRequest.serializers,
  ..._i1036.DescribeIdFormatResult.serializers,
  ..._i1037.DescribeIdentityIdFormatRequest.serializers,
  ..._i1038.DescribeIdentityIdFormatResult.serializers,
  ..._i1039.ImageAttributeName.serializers,
  ..._i1040.DescribeImageAttributeRequest.serializers,
  ..._i1041.LaunchPermission.serializers,
  ..._i1042.ImageAttribute.serializers,
  ..._i1043.DescribeImagesRequest.serializers,
  ..._i1044.ArchitectureValues.serializers,
  ..._i1045.ImageTypeValues.serializers,
  ..._i1046.ImageState.serializers,
  ..._i1047.HypervisorType.serializers,
  ..._i1048.DeviceType.serializers,
  ..._i1049.VirtualizationType.serializers,
  ..._i1050.BootModeValues.serializers,
  ..._i1051.TpmSupportValues.serializers,
  ..._i1052.ImdsSupportValues.serializers,
  ..._i1053.Image.serializers,
  ..._i1054.DescribeImagesResult.serializers,
  ..._i1055.DescribeImportImageTasksRequest.serializers,
  ..._i1056.UserBucketDetails.serializers,
  ..._i1057.SnapshotDetail.serializers,
  ..._i1058.ImportImageLicenseConfigurationResponse.serializers,
  ..._i1059.ImportImageTask.serializers,
  ..._i1060.DescribeImportImageTasksResult.serializers,
  ..._i1061.DescribeImportSnapshotTasksRequest.serializers,
  ..._i1062.SnapshotTaskDetail.serializers,
  ..._i1063.ImportSnapshotTask.serializers,
  ..._i1064.DescribeImportSnapshotTasksResult.serializers,
  ..._i1065.InstanceAttributeName.serializers,
  ..._i1066.DescribeInstanceAttributeRequest.serializers,
  ..._i1067.EbsInstanceBlockDevice.serializers,
  ..._i1068.InstanceBlockDeviceMapping.serializers,
  ..._i1069.AttributeBooleanValue.serializers,
  ..._i1070.EnclaveOptions.serializers,
  ..._i1071.InstanceAttribute.serializers,
  ..._i1072.DescribeInstanceCreditSpecificationsRequest.serializers,
  ..._i1073.InstanceCreditSpecification.serializers,
  ..._i1074.DescribeInstanceCreditSpecificationsResult.serializers,
  ..._i1075.DescribeInstanceEventNotificationAttributesRequest.serializers,
  ..._i1076.DescribeInstanceEventNotificationAttributesResult.serializers,
  ..._i1077.DescribeInstanceEventWindowsRequest.serializers,
  ..._i1078.DescribeInstanceEventWindowsResult.serializers,
  ..._i1079.DescribeInstanceStatusRequest.serializers,
  ..._i1080.EventCode.serializers,
  ..._i1081.InstanceStatusEvent.serializers,
  ..._i1082.InstanceStateName.serializers,
  ..._i1083.InstanceState.serializers,
  ..._i1084.StatusName.serializers,
  ..._i1085.StatusType.serializers,
  ..._i1086.InstanceStatusDetails.serializers,
  ..._i1087.SummaryStatus.serializers,
  ..._i1088.InstanceStatusSummary.serializers,
  ..._i1089.InstanceStatus.serializers,
  ..._i1090.DescribeInstanceStatusResult.serializers,
  ..._i1091.LocationType.serializers,
  ..._i1092.DescribeInstanceTypeOfferingsRequest.serializers,
  ..._i1093.InstanceTypeOffering.serializers,
  ..._i1094.DescribeInstanceTypeOfferingsResult.serializers,
  ..._i1095.DescribeInstanceTypesRequest.serializers,
  ..._i1096.UsageClassType.serializers,
  ..._i1097.RootDeviceType.serializers,
  ..._i1098.InstanceTypeHypervisor.serializers,
  ..._i1099.ArchitectureType.serializers,
  ..._i1100.ProcessorInfo.serializers,
  ..._i1101.VCpuInfo.serializers,
  ..._i1102.MemoryInfo.serializers,
  ..._i1103.DiskType.serializers,
  ..._i1104.DiskInfo.serializers,
  ..._i1105.EphemeralNvmeSupport.serializers,
  ..._i1106.InstanceStorageEncryptionSupport.serializers,
  ..._i1107.InstanceStorageInfo.serializers,
  ..._i1108.EbsOptimizedSupport.serializers,
  ..._i1109.EbsEncryptionSupport.serializers,
  ..._i1110.EbsOptimizedInfo.serializers,
  ..._i1111.EbsNvmeSupport.serializers,
  ..._i1112.EbsInfo.serializers,
  ..._i1113.NetworkCardInfo.serializers,
  ..._i1114.EnaSupport.serializers,
  ..._i1115.EfaInfo.serializers,
  ..._i1116.NetworkInfo.serializers,
  ..._i1117.GpuDeviceMemoryInfo.serializers,
  ..._i1118.GpuDeviceInfo.serializers,
  ..._i1119.GpuInfo.serializers,
  ..._i1120.FpgaDeviceMemoryInfo.serializers,
  ..._i1121.FpgaDeviceInfo.serializers,
  ..._i1122.FpgaInfo.serializers,
  ..._i1123.PlacementGroupStrategy.serializers,
  ..._i1124.PlacementGroupInfo.serializers,
  ..._i1125.InferenceDeviceInfo.serializers,
  ..._i1126.InferenceAcceleratorInfo.serializers,
  ..._i1127.BootModeType.serializers,
  ..._i1128.InstanceTypeInfo.serializers,
  ..._i1129.DescribeInstanceTypesResult.serializers,
  ..._i1130.DescribeInstancesRequest.serializers,
  ..._i1131.MonitoringState.serializers,
  ..._i1132.Monitoring.serializers,
  ..._i1133.InstanceLifecycleType.serializers,
  ..._i1134.ElasticGpuAssociation.serializers,
  ..._i1135.ElasticInferenceAcceleratorAssociation.serializers,
  ..._i1136.InstanceNetworkInterfaceAssociation.serializers,
  ..._i1137.InstanceNetworkInterfaceAttachment.serializers,
  ..._i1138.InstancePrivateIpAddress.serializers,
  ..._i1139.InstanceIpv4Prefix.serializers,
  ..._i1140.InstanceIpv6Prefix.serializers,
  ..._i1141.InstanceNetworkInterface.serializers,
  ..._i1142.CpuOptions.serializers,
  ..._i1143.CapacityReservationSpecificationResponse.serializers,
  ..._i1144.HibernationOptions.serializers,
  ..._i1145.LicenseConfiguration.serializers,
  ..._i1146.InstanceMetadataOptionsState.serializers,
  ..._i1147.HttpTokensState.serializers,
  ..._i1148.InstanceMetadataEndpointState.serializers,
  ..._i1149.InstanceMetadataProtocolState.serializers,
  ..._i1150.InstanceMetadataTagsState.serializers,
  ..._i1151.InstanceMetadataOptionsResponse.serializers,
  ..._i1152.PrivateDnsNameOptionsResponse.serializers,
  ..._i1153.InstanceAutoRecoveryState.serializers,
  ..._i1154.InstanceMaintenanceOptions.serializers,
  ..._i1155.Instance.serializers,
  ..._i1156.Reservation.serializers,
  ..._i1157.DescribeInstancesResult.serializers,
  ..._i1158.DescribeInternetGatewaysRequest.serializers,
  ..._i1159.DescribeInternetGatewaysResult.serializers,
  ..._i1160.DescribeIpamPoolsRequest.serializers,
  ..._i1161.DescribeIpamPoolsResult.serializers,
  ..._i1162.DescribeIpamScopesRequest.serializers,
  ..._i1163.DescribeIpamScopesResult.serializers,
  ..._i1164.DescribeIpamsRequest.serializers,
  ..._i1165.DescribeIpamsResult.serializers,
  ..._i1166.DescribeIpv6PoolsRequest.serializers,
  ..._i1167.PoolCidrBlock.serializers,
  ..._i1168.Ipv6Pool.serializers,
  ..._i1169.DescribeIpv6PoolsResult.serializers,
  ..._i1170.DescribeKeyPairsRequest.serializers,
  ..._i1171.KeyPairInfo.serializers,
  ..._i1172.DescribeKeyPairsResult.serializers,
  ..._i1173.DescribeLaunchTemplateVersionsRequest.serializers,
  ..._i1174.DescribeLaunchTemplateVersionsResult.serializers,
  ..._i1175.DescribeLaunchTemplatesRequest.serializers,
  ..._i1176.DescribeLaunchTemplatesResult.serializers,
  ..._i1177
      .DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest
      .serializers,
  ..._i1178
      .DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
      .serializers,
  ..._i1179.DescribeLocalGatewayRouteTableVpcAssociationsRequest.serializers,
  ..._i1180.DescribeLocalGatewayRouteTableVpcAssociationsResult.serializers,
  ..._i1181.DescribeLocalGatewayRouteTablesRequest.serializers,
  ..._i1182.DescribeLocalGatewayRouteTablesResult.serializers,
  ..._i1183.DescribeLocalGatewayVirtualInterfaceGroupsRequest.serializers,
  ..._i1184.LocalGatewayVirtualInterfaceGroup.serializers,
  ..._i1185.DescribeLocalGatewayVirtualInterfaceGroupsResult.serializers,
  ..._i1186.DescribeLocalGatewayVirtualInterfacesRequest.serializers,
  ..._i1187.LocalGatewayVirtualInterface.serializers,
  ..._i1188.DescribeLocalGatewayVirtualInterfacesResult.serializers,
  ..._i1189.DescribeLocalGatewaysRequest.serializers,
  ..._i1190.LocalGateway.serializers,
  ..._i1191.DescribeLocalGatewaysResult.serializers,
  ..._i1192.DescribeManagedPrefixListsRequest.serializers,
  ..._i1193.DescribeManagedPrefixListsResult.serializers,
  ..._i1194.DescribeMovingAddressesRequest.serializers,
  ..._i1195.MoveStatus.serializers,
  ..._i1196.MovingAddressStatus.serializers,
  ..._i1197.DescribeMovingAddressesResult.serializers,
  ..._i1198.DescribeNatGatewaysRequest.serializers,
  ..._i1199.DescribeNatGatewaysResult.serializers,
  ..._i1200.DescribeNetworkAclsRequest.serializers,
  ..._i1201.DescribeNetworkAclsResult.serializers,
  ..._i1202.DescribeNetworkInsightsAccessScopeAnalysesRequest.serializers,
  ..._i1203.AnalysisStatus.serializers,
  ..._i1204.FindingsFound.serializers,
  ..._i1205.NetworkInsightsAccessScopeAnalysis.serializers,
  ..._i1206.DescribeNetworkInsightsAccessScopeAnalysesResult.serializers,
  ..._i1207.DescribeNetworkInsightsAccessScopesRequest.serializers,
  ..._i1208.DescribeNetworkInsightsAccessScopesResult.serializers,
  ..._i1209.DescribeNetworkInsightsAnalysesRequest.serializers,
  ..._i1210.AnalysisAclRule.serializers,
  ..._i1211.AnalysisComponent.serializers,
  ..._i1212.AnalysisPacketHeader.serializers,
  ..._i1213.AnalysisRouteTableRoute.serializers,
  ..._i1214.AnalysisSecurityGroupRule.serializers,
  ..._i1215.AdditionalDetail.serializers,
  ..._i1216.TransitGatewayRouteTableRoute.serializers,
  ..._i1217.AnalysisLoadBalancerListener.serializers,
  ..._i1218.AnalysisLoadBalancerTarget.serializers,
  ..._i1219.Explanation.serializers,
  ..._i1220.PathComponent.serializers,
  ..._i1221.AlternatePathHint.serializers,
  ..._i1222.NetworkInsightsAnalysis.serializers,
  ..._i1223.DescribeNetworkInsightsAnalysesResult.serializers,
  ..._i1224.DescribeNetworkInsightsPathsRequest.serializers,
  ..._i1225.DescribeNetworkInsightsPathsResult.serializers,
  ..._i1226.NetworkInterfaceAttribute.serializers,
  ..._i1227.DescribeNetworkInterfaceAttributeRequest.serializers,
  ..._i1228.DescribeNetworkInterfaceAttributeResult.serializers,
  ..._i1229.DescribeNetworkInterfacePermissionsRequest.serializers,
  ..._i1230.DescribeNetworkInterfacePermissionsResult.serializers,
  ..._i1231.DescribeNetworkInterfacesRequest.serializers,
  ..._i1232.DescribeNetworkInterfacesResult.serializers,
  ..._i1233.DescribePlacementGroupsRequest.serializers,
  ..._i1234.DescribePlacementGroupsResult.serializers,
  ..._i1235.DescribePrefixListsRequest.serializers,
  ..._i1236.PrefixList.serializers,
  ..._i1237.DescribePrefixListsResult.serializers,
  ..._i1238.DescribePrincipalIdFormatRequest.serializers,
  ..._i1239.PrincipalIdFormat.serializers,
  ..._i1240.DescribePrincipalIdFormatResult.serializers,
  ..._i1241.DescribePublicIpv4PoolsRequest.serializers,
  ..._i1242.PublicIpv4PoolRange.serializers,
  ..._i1243.PublicIpv4Pool.serializers,
  ..._i1244.DescribePublicIpv4PoolsResult.serializers,
  ..._i1245.DescribeRegionsRequest.serializers,
  ..._i1246.Region.serializers,
  ..._i1247.DescribeRegionsResult.serializers,
  ..._i1248.DescribeReplaceRootVolumeTasksRequest.serializers,
  ..._i1249.DescribeReplaceRootVolumeTasksResult.serializers,
  ..._i1250.OfferingClassType.serializers,
  ..._i1251.OfferingTypeValues.serializers,
  ..._i1252.DescribeReservedInstancesRequest.serializers,
  ..._i1253.RiProductDescription.serializers,
  ..._i1254.ReservedInstanceState.serializers,
  ..._i1255.RecurringChargeFrequency.serializers,
  ..._i1256.RecurringCharge.serializers,
  ..._i1257.Scope.serializers,
  ..._i1258.ReservedInstances.serializers,
  ..._i1259.DescribeReservedInstancesResult.serializers,
  ..._i1260.DescribeReservedInstancesListingsRequest.serializers,
  ..._i1261.DescribeReservedInstancesListingsResult.serializers,
  ..._i1262.DescribeReservedInstancesModificationsRequest.serializers,
  ..._i1263.ReservedInstancesConfiguration.serializers,
  ..._i1264.ReservedInstancesModificationResult.serializers,
  ..._i1265.ReservedInstancesId.serializers,
  ..._i1266.ReservedInstancesModification.serializers,
  ..._i1267.DescribeReservedInstancesModificationsResult.serializers,
  ..._i1268.DescribeReservedInstancesOfferingsRequest.serializers,
  ..._i1269.PricingDetail.serializers,
  ..._i1270.ReservedInstancesOffering.serializers,
  ..._i1271.DescribeReservedInstancesOfferingsResult.serializers,
  ..._i1272.DescribeRouteTablesRequest.serializers,
  ..._i1273.DescribeRouteTablesResult.serializers,
  ..._i1274.SlotDateTimeRangeRequest.serializers,
  ..._i1275.ScheduledInstanceRecurrenceRequest.serializers,
  ..._i1276.DescribeScheduledInstanceAvailabilityRequest.serializers,
  ..._i1277.ScheduledInstanceRecurrence.serializers,
  ..._i1278.ScheduledInstanceAvailability.serializers,
  ..._i1279.DescribeScheduledInstanceAvailabilityResult.serializers,
  ..._i1280.SlotStartTimeRangeRequest.serializers,
  ..._i1281.DescribeScheduledInstancesRequest.serializers,
  ..._i1282.ScheduledInstance.serializers,
  ..._i1283.DescribeScheduledInstancesResult.serializers,
  ..._i1284.DescribeSecurityGroupReferencesRequest.serializers,
  ..._i1285.SecurityGroupReference.serializers,
  ..._i1286.DescribeSecurityGroupReferencesResult.serializers,
  ..._i1287.DescribeSecurityGroupRulesRequest.serializers,
  ..._i1288.DescribeSecurityGroupRulesResult.serializers,
  ..._i1289.DescribeSecurityGroupsRequest.serializers,
  ..._i1290.SecurityGroup.serializers,
  ..._i1291.DescribeSecurityGroupsResult.serializers,
  ..._i1292.SnapshotAttributeName.serializers,
  ..._i1293.DescribeSnapshotAttributeRequest.serializers,
  ..._i1294.CreateVolumePermission.serializers,
  ..._i1295.DescribeSnapshotAttributeResult.serializers,
  ..._i1296.DescribeSnapshotTierStatusRequest.serializers,
  ..._i1297.TieringOperationStatus.serializers,
  ..._i1298.SnapshotTierStatus.serializers,
  ..._i1299.DescribeSnapshotTierStatusResult.serializers,
  ..._i1300.DescribeSnapshotsRequest.serializers,
  ..._i1301.DescribeSnapshotsResult.serializers,
  ..._i1302.DescribeSpotDatafeedSubscriptionRequest.serializers,
  ..._i1303.DescribeSpotDatafeedSubscriptionResult.serializers,
  ..._i1304.DescribeSpotFleetInstancesRequest.serializers,
  ..._i1305.DescribeSpotFleetInstancesResponse.serializers,
  ..._i1306.EventType.serializers,
  ..._i1307.DescribeSpotFleetRequestHistoryRequest.serializers,
  ..._i1308.HistoryRecord.serializers,
  ..._i1309.DescribeSpotFleetRequestHistoryResponse.serializers,
  ..._i1310.DescribeSpotFleetRequestsRequest.serializers,
  ..._i1311.ActivityStatus.serializers,
  ..._i1312.AllocationStrategy.serializers,
  ..._i1313.OnDemandAllocationStrategy.serializers,
  ..._i1314.ReplacementStrategy.serializers,
  ..._i1315.SpotCapacityRebalance.serializers,
  ..._i1316.SpotMaintenanceStrategies.serializers,
  ..._i1317.ExcessCapacityTerminationPolicy.serializers,
  ..._i1318.SpotFleetMonitoring.serializers,
  ..._i1319.InstanceNetworkInterfaceSpecification.serializers,
  ..._i1320.SpotPlacement.serializers,
  ..._i1321.SpotFleetTagSpecification.serializers,
  ..._i1322.SpotFleetLaunchSpecification.serializers,
  ..._i1323.LaunchTemplateOverrides.serializers,
  ..._i1324.LaunchTemplateConfig.serializers,
  ..._i1325.ClassicLoadBalancer.serializers,
  ..._i1326.ClassicLoadBalancersConfig.serializers,
  ..._i1327.TargetGroup.serializers,
  ..._i1328.TargetGroupsConfig.serializers,
  ..._i1329.LoadBalancersConfig.serializers,
  ..._i1330.SpotFleetRequestConfigData.serializers,
  ..._i1331.SpotFleetRequestConfig.serializers,
  ..._i1332.DescribeSpotFleetRequestsResponse.serializers,
  ..._i1333.DescribeSpotInstanceRequestsRequest.serializers,
  ..._i1334.RunInstancesMonitoringEnabled.serializers,
  ..._i1335.LaunchSpecification.serializers,
  ..._i1336.SpotInstanceState.serializers,
  ..._i1337.SpotInstanceStatus.serializers,
  ..._i1338.SpotInstanceRequest.serializers,
  ..._i1339.DescribeSpotInstanceRequestsResult.serializers,
  ..._i1340.DescribeSpotPriceHistoryRequest.serializers,
  ..._i1341.SpotPrice.serializers,
  ..._i1342.DescribeSpotPriceHistoryResult.serializers,
  ..._i1343.DescribeStaleSecurityGroupsRequest.serializers,
  ..._i1344.StaleIpPermission.serializers,
  ..._i1345.StaleSecurityGroup.serializers,
  ..._i1346.DescribeStaleSecurityGroupsResult.serializers,
  ..._i1347.DescribeStoreImageTasksRequest.serializers,
  ..._i1348.StoreImageTaskResult.serializers,
  ..._i1349.DescribeStoreImageTasksResult.serializers,
  ..._i1350.DescribeSubnetsRequest.serializers,
  ..._i1351.DescribeSubnetsResult.serializers,
  ..._i1352.DescribeTagsRequest.serializers,
  ..._i1353.TagDescription.serializers,
  ..._i1354.DescribeTagsResult.serializers,
  ..._i1355.DescribeTrafficMirrorFiltersRequest.serializers,
  ..._i1356.DescribeTrafficMirrorFiltersResult.serializers,
  ..._i1357.DescribeTrafficMirrorSessionsRequest.serializers,
  ..._i1358.DescribeTrafficMirrorSessionsResult.serializers,
  ..._i1359.DescribeTrafficMirrorTargetsRequest.serializers,
  ..._i1360.DescribeTrafficMirrorTargetsResult.serializers,
  ..._i1361.DescribeTransitGatewayAttachmentsRequest.serializers,
  ..._i1362.TransitGatewayAttachmentAssociation.serializers,
  ..._i1363.TransitGatewayAttachment.serializers,
  ..._i1364.DescribeTransitGatewayAttachmentsResult.serializers,
  ..._i1365.DescribeTransitGatewayConnectPeersRequest.serializers,
  ..._i1366.DescribeTransitGatewayConnectPeersResult.serializers,
  ..._i1367.DescribeTransitGatewayConnectsRequest.serializers,
  ..._i1368.DescribeTransitGatewayConnectsResult.serializers,
  ..._i1369.DescribeTransitGatewayMulticastDomainsRequest.serializers,
  ..._i1370.DescribeTransitGatewayMulticastDomainsResult.serializers,
  ..._i1371.DescribeTransitGatewayPeeringAttachmentsRequest.serializers,
  ..._i1372.DescribeTransitGatewayPeeringAttachmentsResult.serializers,
  ..._i1373.DescribeTransitGatewayPolicyTablesRequest.serializers,
  ..._i1374.DescribeTransitGatewayPolicyTablesResult.serializers,
  ..._i1375.DescribeTransitGatewayRouteTableAnnouncementsRequest.serializers,
  ..._i1376.DescribeTransitGatewayRouteTableAnnouncementsResult.serializers,
  ..._i1377.DescribeTransitGatewayRouteTablesRequest.serializers,
  ..._i1378.DescribeTransitGatewayRouteTablesResult.serializers,
  ..._i1379.DescribeTransitGatewayVpcAttachmentsRequest.serializers,
  ..._i1380.DescribeTransitGatewayVpcAttachmentsResult.serializers,
  ..._i1381.DescribeTransitGatewaysRequest.serializers,
  ..._i1382.DescribeTransitGatewaysResult.serializers,
  ..._i1383.DescribeTrunkInterfaceAssociationsRequest.serializers,
  ..._i1384.DescribeTrunkInterfaceAssociationsResult.serializers,
  ..._i1385.VolumeAttributeName.serializers,
  ..._i1386.DescribeVolumeAttributeRequest.serializers,
  ..._i1387.DescribeVolumeAttributeResult.serializers,
  ..._i1388.DescribeVolumeStatusRequest.serializers,
  ..._i1389.VolumeStatusAction.serializers,
  ..._i1390.VolumeStatusEvent.serializers,
  ..._i1391.VolumeStatusName.serializers,
  ..._i1392.VolumeStatusDetails.serializers,
  ..._i1393.VolumeStatusInfoStatus.serializers,
  ..._i1394.VolumeStatusInfo.serializers,
  ..._i1395.VolumeStatusAttachmentStatus.serializers,
  ..._i1396.VolumeStatusItem.serializers,
  ..._i1397.DescribeVolumeStatusResult.serializers,
  ..._i1398.DescribeVolumesRequest.serializers,
  ..._i1399.DescribeVolumesResult.serializers,
  ..._i1400.DescribeVolumesModificationsRequest.serializers,
  ..._i1401.VolumeModificationState.serializers,
  ..._i1402.VolumeModification.serializers,
  ..._i1403.DescribeVolumesModificationsResult.serializers,
  ..._i1404.VpcAttributeName.serializers,
  ..._i1405.DescribeVpcAttributeRequest.serializers,
  ..._i1406.DescribeVpcAttributeResult.serializers,
  ..._i1407.DescribeVpcClassicLinkRequest.serializers,
  ..._i1408.VpcClassicLink.serializers,
  ..._i1409.DescribeVpcClassicLinkResult.serializers,
  ..._i1410.DescribeVpcClassicLinkDnsSupportRequest.serializers,
  ..._i1411.ClassicLinkDnsSupport.serializers,
  ..._i1412.DescribeVpcClassicLinkDnsSupportResult.serializers,
  ..._i1413.DescribeVpcEndpointConnectionNotificationsRequest.serializers,
  ..._i1414.DescribeVpcEndpointConnectionNotificationsResult.serializers,
  ..._i1415.DescribeVpcEndpointConnectionsRequest.serializers,
  ..._i1416.VpcEndpointConnection.serializers,
  ..._i1417.DescribeVpcEndpointConnectionsResult.serializers,
  ..._i1418.DescribeVpcEndpointServiceConfigurationsRequest.serializers,
  ..._i1419.DescribeVpcEndpointServiceConfigurationsResult.serializers,
  ..._i1420.DescribeVpcEndpointServicePermissionsRequest.serializers,
  ..._i1421.PrincipalType.serializers,
  ..._i1422.AllowedPrincipal.serializers,
  ..._i1423.DescribeVpcEndpointServicePermissionsResult.serializers,
  ..._i1424.DescribeVpcEndpointServicesRequest.serializers,
  ..._i1425.PrivateDnsDetails.serializers,
  ..._i1426.ServiceDetail.serializers,
  ..._i1427.DescribeVpcEndpointServicesResult.serializers,
  ..._i1428.DescribeVpcEndpointsRequest.serializers,
  ..._i1429.DescribeVpcEndpointsResult.serializers,
  ..._i1430.DescribeVpcPeeringConnectionsRequest.serializers,
  ..._i1431.DescribeVpcPeeringConnectionsResult.serializers,
  ..._i1432.DescribeVpcsRequest.serializers,
  ..._i1433.DescribeVpcsResult.serializers,
  ..._i1434.DescribeVpnConnectionsRequest.serializers,
  ..._i1435.DescribeVpnConnectionsResult.serializers,
  ..._i1436.DescribeVpnGatewaysRequest.serializers,
  ..._i1437.DescribeVpnGatewaysResult.serializers,
  ..._i1438.DetachClassicLinkVpcRequest.serializers,
  ..._i1439.DetachClassicLinkVpcResult.serializers,
  ..._i1440.DetachInternetGatewayRequest.serializers,
  ..._i1441.DetachNetworkInterfaceRequest.serializers,
  ..._i1442.DetachVolumeRequest.serializers,
  ..._i1443.DetachVpnGatewayRequest.serializers,
  ..._i1444.DisableEbsEncryptionByDefaultRequest.serializers,
  ..._i1445.DisableEbsEncryptionByDefaultResult.serializers,
  ..._i1446.DisableFastLaunchRequest.serializers,
  ..._i1447.DisableFastLaunchResult.serializers,
  ..._i1448.DisableFastSnapshotRestoresRequest.serializers,
  ..._i1449.DisableFastSnapshotRestoreSuccessItem.serializers,
  ..._i1450.DisableFastSnapshotRestoreStateError.serializers,
  ..._i1451.DisableFastSnapshotRestoreStateErrorItem.serializers,
  ..._i1452.DisableFastSnapshotRestoreErrorItem.serializers,
  ..._i1453.DisableFastSnapshotRestoresResult.serializers,
  ..._i1454.DisableImageDeprecationRequest.serializers,
  ..._i1455.DisableImageDeprecationResult.serializers,
  ..._i1456.DisableIpamOrganizationAdminAccountRequest.serializers,
  ..._i1457.DisableIpamOrganizationAdminAccountResult.serializers,
  ..._i1458.DisableSerialConsoleAccessRequest.serializers,
  ..._i1459.DisableSerialConsoleAccessResult.serializers,
  ..._i1460.DisableTransitGatewayRouteTablePropagationRequest.serializers,
  ..._i1461.TransitGatewayPropagationState.serializers,
  ..._i1462.TransitGatewayPropagation.serializers,
  ..._i1463.DisableTransitGatewayRouteTablePropagationResult.serializers,
  ..._i1464.DisableVgwRoutePropagationRequest.serializers,
  ..._i1465.DisableVpcClassicLinkRequest.serializers,
  ..._i1466.DisableVpcClassicLinkResult.serializers,
  ..._i1467.DisableVpcClassicLinkDnsSupportRequest.serializers,
  ..._i1468.DisableVpcClassicLinkDnsSupportResult.serializers,
  ..._i1469.DisassociateAddressRequest.serializers,
  ..._i1470.DisassociateClientVpnTargetNetworkRequest.serializers,
  ..._i1471.DisassociateClientVpnTargetNetworkResult.serializers,
  ..._i1472.DisassociateEnclaveCertificateIamRoleRequest.serializers,
  ..._i1473.DisassociateEnclaveCertificateIamRoleResult.serializers,
  ..._i1474.DisassociateIamInstanceProfileRequest.serializers,
  ..._i1475.DisassociateIamInstanceProfileResult.serializers,
  ..._i1476.InstanceEventWindowDisassociationRequest.serializers,
  ..._i1477.DisassociateInstanceEventWindowRequest.serializers,
  ..._i1478.DisassociateInstanceEventWindowResult.serializers,
  ..._i1479.DisassociateRouteTableRequest.serializers,
  ..._i1480.DisassociateSubnetCidrBlockRequest.serializers,
  ..._i1481.DisassociateSubnetCidrBlockResult.serializers,
  ..._i1482.DisassociateTransitGatewayMulticastDomainRequest.serializers,
  ..._i1483.DisassociateTransitGatewayMulticastDomainResult.serializers,
  ..._i1484.DisassociateTransitGatewayPolicyTableRequest.serializers,
  ..._i1485.DisassociateTransitGatewayPolicyTableResult.serializers,
  ..._i1486.DisassociateTransitGatewayRouteTableRequest.serializers,
  ..._i1487.DisassociateTransitGatewayRouteTableResult.serializers,
  ..._i1488.DisassociateTrunkInterfaceRequest.serializers,
  ..._i1489.DisassociateTrunkInterfaceResult.serializers,
  ..._i1490.DisassociateVpcCidrBlockRequest.serializers,
  ..._i1491.DisassociateVpcCidrBlockResult.serializers,
  ..._i1492.EnableEbsEncryptionByDefaultRequest.serializers,
  ..._i1493.EnableEbsEncryptionByDefaultResult.serializers,
  ..._i1494.FastLaunchSnapshotConfigurationRequest.serializers,
  ..._i1495.FastLaunchLaunchTemplateSpecificationRequest.serializers,
  ..._i1496.EnableFastLaunchRequest.serializers,
  ..._i1497.EnableFastLaunchResult.serializers,
  ..._i1498.EnableFastSnapshotRestoresRequest.serializers,
  ..._i1499.EnableFastSnapshotRestoreSuccessItem.serializers,
  ..._i1500.EnableFastSnapshotRestoreStateError.serializers,
  ..._i1501.EnableFastSnapshotRestoreStateErrorItem.serializers,
  ..._i1502.EnableFastSnapshotRestoreErrorItem.serializers,
  ..._i1503.EnableFastSnapshotRestoresResult.serializers,
  ..._i1504.EnableImageDeprecationRequest.serializers,
  ..._i1505.EnableImageDeprecationResult.serializers,
  ..._i1506.EnableIpamOrganizationAdminAccountRequest.serializers,
  ..._i1507.EnableIpamOrganizationAdminAccountResult.serializers,
  ..._i1508.EnableSerialConsoleAccessRequest.serializers,
  ..._i1509.EnableSerialConsoleAccessResult.serializers,
  ..._i1510.EnableTransitGatewayRouteTablePropagationRequest.serializers,
  ..._i1511.EnableTransitGatewayRouteTablePropagationResult.serializers,
  ..._i1512.EnableVgwRoutePropagationRequest.serializers,
  ..._i1513.EnableVolumeIoRequest.serializers,
  ..._i1514.EnableVpcClassicLinkRequest.serializers,
  ..._i1515.EnableVpcClassicLinkResult.serializers,
  ..._i1516.EnableVpcClassicLinkDnsSupportRequest.serializers,
  ..._i1517.EnableVpcClassicLinkDnsSupportResult.serializers,
  ..._i1518.ExportClientVpnClientCertificateRevocationListRequest.serializers,
  ..._i1519.ClientCertificateRevocationListStatusCode.serializers,
  ..._i1520.ClientCertificateRevocationListStatus.serializers,
  ..._i1521.ExportClientVpnClientCertificateRevocationListResult.serializers,
  ..._i1522.ExportClientVpnClientConfigurationRequest.serializers,
  ..._i1523.ExportClientVpnClientConfigurationResult.serializers,
  ..._i1524.ExportTaskS3LocationRequest.serializers,
  ..._i1525.ExportImageRequest.serializers,
  ..._i1526.ExportImageResult.serializers,
  ..._i1527.ExportTransitGatewayRoutesRequest.serializers,
  ..._i1528.ExportTransitGatewayRoutesResult.serializers,
  ..._i1529.GetAssociatedEnclaveCertificateIamRolesRequest.serializers,
  ..._i1530.AssociatedRole.serializers,
  ..._i1531.GetAssociatedEnclaveCertificateIamRolesResult.serializers,
  ..._i1532.GetAssociatedIpv6PoolCidrsRequest.serializers,
  ..._i1533.Ipv6CidrAssociation.serializers,
  ..._i1534.GetAssociatedIpv6PoolCidrsResult.serializers,
  ..._i1535.GetCapacityReservationUsageRequest.serializers,
  ..._i1536.InstanceUsage.serializers,
  ..._i1537.GetCapacityReservationUsageResult.serializers,
  ..._i1538.GetCoipPoolUsageRequest.serializers,
  ..._i1539.CoipAddressUsage.serializers,
  ..._i1540.GetCoipPoolUsageResult.serializers,
  ..._i1541.GetConsoleOutputRequest.serializers,
  ..._i1542.GetConsoleOutputResult.serializers,
  ..._i1543.GetConsoleScreenshotRequest.serializers,
  ..._i1544.GetConsoleScreenshotResult.serializers,
  ..._i1545.UnlimitedSupportedInstanceFamily.serializers,
  ..._i1546.GetDefaultCreditSpecificationRequest.serializers,
  ..._i1547.InstanceFamilyCreditSpecification.serializers,
  ..._i1548.GetDefaultCreditSpecificationResult.serializers,
  ..._i1549.GetEbsDefaultKmsKeyIdRequest.serializers,
  ..._i1550.GetEbsDefaultKmsKeyIdResult.serializers,
  ..._i1551.GetEbsEncryptionByDefaultRequest.serializers,
  ..._i1552.GetEbsEncryptionByDefaultResult.serializers,
  ..._i1553.PartitionLoadFrequency.serializers,
  ..._i1554.AthenaIntegration.serializers,
  ..._i1555.IntegrateServices.serializers,
  ..._i1556.GetFlowLogsIntegrationTemplateRequest.serializers,
  ..._i1557.GetFlowLogsIntegrationTemplateResult.serializers,
  ..._i1558.GetGroupsForCapacityReservationRequest.serializers,
  ..._i1559.CapacityReservationGroup.serializers,
  ..._i1560.GetGroupsForCapacityReservationResult.serializers,
  ..._i1561.GetHostReservationPurchasePreviewRequest.serializers,
  ..._i1562.Purchase.serializers,
  ..._i1563.GetHostReservationPurchasePreviewResult.serializers,
  ..._i1564.GetInstanceTypesFromInstanceRequirementsRequest.serializers,
  ..._i1565.InstanceTypeInfoFromInstanceRequirements.serializers,
  ..._i1566.GetInstanceTypesFromInstanceRequirementsResult.serializers,
  ..._i1567.GetInstanceUefiDataRequest.serializers,
  ..._i1568.GetInstanceUefiDataResult.serializers,
  ..._i1569.GetIpamAddressHistoryRequest.serializers,
  ..._i1570.IpamAddressHistoryResourceType.serializers,
  ..._i1571.IpamComplianceStatus.serializers,
  ..._i1572.IpamOverlapStatus.serializers,
  ..._i1573.IpamAddressHistoryRecord.serializers,
  ..._i1574.GetIpamAddressHistoryResult.serializers,
  ..._i1575.GetIpamPoolAllocationsRequest.serializers,
  ..._i1576.GetIpamPoolAllocationsResult.serializers,
  ..._i1577.GetIpamPoolCidrsRequest.serializers,
  ..._i1578.GetIpamPoolCidrsResult.serializers,
  ..._i1579.IpamResourceType.serializers,
  ..._i1580.GetIpamResourceCidrsRequest.serializers,
  ..._i1581.IpamManagementState.serializers,
  ..._i1582.IpamResourceCidr.serializers,
  ..._i1583.GetIpamResourceCidrsResult.serializers,
  ..._i1584.GetLaunchTemplateDataRequest.serializers,
  ..._i1585.GetLaunchTemplateDataResult.serializers,
  ..._i1586.GetManagedPrefixListAssociationsRequest.serializers,
  ..._i1587.PrefixListAssociation.serializers,
  ..._i1588.GetManagedPrefixListAssociationsResult.serializers,
  ..._i1589.GetManagedPrefixListEntriesRequest.serializers,
  ..._i1590.PrefixListEntry.serializers,
  ..._i1591.GetManagedPrefixListEntriesResult.serializers,
  ..._i1592.GetNetworkInsightsAccessScopeAnalysisFindingsRequest.serializers,
  ..._i1593.AccessScopeAnalysisFinding.serializers,
  ..._i1594.GetNetworkInsightsAccessScopeAnalysisFindingsResult.serializers,
  ..._i1595.GetNetworkInsightsAccessScopeContentRequest.serializers,
  ..._i1596.GetNetworkInsightsAccessScopeContentResult.serializers,
  ..._i1597.GetPasswordDataRequest.serializers,
  ..._i1598.GetPasswordDataResult.serializers,
  ..._i1599.GetReservedInstancesExchangeQuoteRequest.serializers,
  ..._i1600.ReservationValue.serializers,
  ..._i1601.ReservedInstanceReservationValue.serializers,
  ..._i1602.TargetConfiguration.serializers,
  ..._i1603.TargetReservationValue.serializers,
  ..._i1604.GetReservedInstancesExchangeQuoteResult.serializers,
  ..._i1605.GetSerialConsoleAccessStatusRequest.serializers,
  ..._i1606.GetSerialConsoleAccessStatusResult.serializers,
  ..._i1607.InstanceRequirementsWithMetadataRequest.serializers,
  ..._i1608.GetSpotPlacementScoresRequest.serializers,
  ..._i1609.SpotPlacementScore.serializers,
  ..._i1610.GetSpotPlacementScoresResult.serializers,
  ..._i1611.GetSubnetCidrReservationsRequest.serializers,
  ..._i1612.GetSubnetCidrReservationsResult.serializers,
  ..._i1613.GetTransitGatewayAttachmentPropagationsRequest.serializers,
  ..._i1614.TransitGatewayAttachmentPropagation.serializers,
  ..._i1615.GetTransitGatewayAttachmentPropagationsResult.serializers,
  ..._i1616.GetTransitGatewayMulticastDomainAssociationsRequest.serializers,
  ..._i1617.TransitGatewayMulticastDomainAssociation.serializers,
  ..._i1618.GetTransitGatewayMulticastDomainAssociationsResult.serializers,
  ..._i1619.GetTransitGatewayPolicyTableAssociationsRequest.serializers,
  ..._i1620.GetTransitGatewayPolicyTableAssociationsResult.serializers,
  ..._i1621.GetTransitGatewayPolicyTableEntriesRequest.serializers,
  ..._i1622.TransitGatewayPolicyRuleMetaData.serializers,
  ..._i1623.TransitGatewayPolicyRule.serializers,
  ..._i1624.TransitGatewayPolicyTableEntry.serializers,
  ..._i1625.GetTransitGatewayPolicyTableEntriesResult.serializers,
  ..._i1626.GetTransitGatewayPrefixListReferencesRequest.serializers,
  ..._i1627.GetTransitGatewayPrefixListReferencesResult.serializers,
  ..._i1628.GetTransitGatewayRouteTableAssociationsRequest.serializers,
  ..._i1629.TransitGatewayRouteTableAssociation.serializers,
  ..._i1630.GetTransitGatewayRouteTableAssociationsResult.serializers,
  ..._i1631.GetTransitGatewayRouteTablePropagationsRequest.serializers,
  ..._i1632.TransitGatewayRouteTablePropagation.serializers,
  ..._i1633.GetTransitGatewayRouteTablePropagationsResult.serializers,
  ..._i1634.GetVpnConnectionDeviceSampleConfigurationRequest.serializers,
  ..._i1635.GetVpnConnectionDeviceSampleConfigurationResult.serializers,
  ..._i1636.GetVpnConnectionDeviceTypesRequest.serializers,
  ..._i1637.VpnConnectionDeviceType.serializers,
  ..._i1638.GetVpnConnectionDeviceTypesResult.serializers,
  ..._i1639.ImportClientVpnClientCertificateRevocationListRequest.serializers,
  ..._i1640.ImportClientVpnClientCertificateRevocationListResult.serializers,
  ..._i1641.ClientData.serializers,
  ..._i1642.UserBucket.serializers,
  ..._i1643.ImageDiskContainer.serializers,
  ..._i1644.ImportImageLicenseConfigurationRequest.serializers,
  ..._i1645.ImportImageRequest.serializers,
  ..._i1646.ImportImageResult.serializers,
  ..._i1647.DiskImageDetail.serializers,
  ..._i1648.VolumeDetail.serializers,
  ..._i1649.DiskImage.serializers,
  ..._i1650.UserData.serializers,
  ..._i1651.ImportInstanceLaunchSpecification.serializers,
  ..._i1652.ImportInstanceRequest.serializers,
  ..._i1653.ImportInstanceResult.serializers,
  ..._i1654.ImportKeyPairRequest.serializers,
  ..._i1655.ImportKeyPairResult.serializers,
  ..._i1656.SnapshotDiskContainer.serializers,
  ..._i1657.ImportSnapshotRequest.serializers,
  ..._i1658.ImportSnapshotResult.serializers,
  ..._i1659.ImportVolumeRequest.serializers,
  ..._i1660.ImportVolumeResult.serializers,
  ..._i1661.ListImagesInRecycleBinRequest.serializers,
  ..._i1662.ImageRecycleBinInfo.serializers,
  ..._i1663.ListImagesInRecycleBinResult.serializers,
  ..._i1664.ListSnapshotsInRecycleBinRequest.serializers,
  ..._i1665.SnapshotRecycleBinInfo.serializers,
  ..._i1666.ListSnapshotsInRecycleBinResult.serializers,
  ..._i1667.ModifyAddressAttributeRequest.serializers,
  ..._i1668.ModifyAddressAttributeResult.serializers,
  ..._i1669.ModifyAvailabilityZoneOptInStatus.serializers,
  ..._i1670.ModifyAvailabilityZoneGroupRequest.serializers,
  ..._i1671.ModifyAvailabilityZoneGroupResult.serializers,
  ..._i1672.ModifyCapacityReservationRequest.serializers,
  ..._i1673.ModifyCapacityReservationResult.serializers,
  ..._i1674.ModifyCapacityReservationFleetRequest.serializers,
  ..._i1675.ModifyCapacityReservationFleetResult.serializers,
  ..._i1676.DnsServersOptionsModifyStructure.serializers,
  ..._i1677.ModifyClientVpnEndpointRequest.serializers,
  ..._i1678.ModifyClientVpnEndpointResult.serializers,
  ..._i1679.ModifyDefaultCreditSpecificationRequest.serializers,
  ..._i1680.ModifyDefaultCreditSpecificationResult.serializers,
  ..._i1681.ModifyEbsDefaultKmsKeyIdRequest.serializers,
  ..._i1682.ModifyEbsDefaultKmsKeyIdResult.serializers,
  ..._i1683.ModifyFleetRequest.serializers,
  ..._i1684.ModifyFleetResult.serializers,
  ..._i1685.OperationType.serializers,
  ..._i1686.LoadPermissionRequest.serializers,
  ..._i1687.LoadPermissionModifications.serializers,
  ..._i1688.ModifyFpgaImageAttributeRequest.serializers,
  ..._i1689.ModifyFpgaImageAttributeResult.serializers,
  ..._i1690.ModifyHostsRequest.serializers,
  ..._i1691.ModifyHostsResult.serializers,
  ..._i1692.ModifyIdFormatRequest.serializers,
  ..._i1693.ModifyIdentityIdFormatRequest.serializers,
  ..._i1694.LaunchPermissionModifications.serializers,
  ..._i1695.ModifyImageAttributeRequest.serializers,
  ..._i1696.EbsInstanceBlockDeviceSpecification.serializers,
  ..._i1697.InstanceBlockDeviceMappingSpecification.serializers,
  ..._i1698.BlobAttributeValue.serializers,
  ..._i1699.ModifyInstanceAttributeRequest.serializers,
  ..._i1700.CapacityReservationSpecification.serializers,
  ..._i1701.ModifyInstanceCapacityReservationAttributesRequest.serializers,
  ..._i1702.ModifyInstanceCapacityReservationAttributesResult.serializers,
  ..._i1703.InstanceCreditSpecificationRequest.serializers,
  ..._i1704.ModifyInstanceCreditSpecificationRequest.serializers,
  ..._i1705.SuccessfulInstanceCreditSpecificationItem.serializers,
  ..._i1706.UnsuccessfulInstanceCreditSpecificationErrorCode.serializers,
  ..._i1707.UnsuccessfulInstanceCreditSpecificationItemError.serializers,
  ..._i1708.UnsuccessfulInstanceCreditSpecificationItem.serializers,
  ..._i1709.ModifyInstanceCreditSpecificationResult.serializers,
  ..._i1710.ModifyInstanceEventStartTimeRequest.serializers,
  ..._i1711.ModifyInstanceEventStartTimeResult.serializers,
  ..._i1712.ModifyInstanceEventWindowRequest.serializers,
  ..._i1713.ModifyInstanceEventWindowResult.serializers,
  ..._i1714.ModifyInstanceMaintenanceOptionsRequest.serializers,
  ..._i1715.ModifyInstanceMaintenanceOptionsResult.serializers,
  ..._i1716.ModifyInstanceMetadataOptionsRequest.serializers,
  ..._i1717.ModifyInstanceMetadataOptionsResult.serializers,
  ..._i1718.Affinity.serializers,
  ..._i1719.HostTenancy.serializers,
  ..._i1720.ModifyInstancePlacementRequest.serializers,
  ..._i1721.ModifyInstancePlacementResult.serializers,
  ..._i1722.RemoveIpamOperatingRegion.serializers,
  ..._i1723.ModifyIpamRequest.serializers,
  ..._i1724.ModifyIpamResult.serializers,
  ..._i1725.ModifyIpamPoolRequest.serializers,
  ..._i1726.ModifyIpamPoolResult.serializers,
  ..._i1727.ModifyIpamResourceCidrRequest.serializers,
  ..._i1728.ModifyIpamResourceCidrResult.serializers,
  ..._i1729.ModifyIpamScopeRequest.serializers,
  ..._i1730.ModifyIpamScopeResult.serializers,
  ..._i1731.ModifyLaunchTemplateRequest.serializers,
  ..._i1732.ModifyLaunchTemplateResult.serializers,
  ..._i1733.ModifyLocalGatewayRouteRequest.serializers,
  ..._i1734.ModifyLocalGatewayRouteResult.serializers,
  ..._i1735.RemovePrefixListEntry.serializers,
  ..._i1736.ModifyManagedPrefixListRequest.serializers,
  ..._i1737.ModifyManagedPrefixListResult.serializers,
  ..._i1738.NetworkInterfaceAttachmentChanges.serializers,
  ..._i1739.ModifyNetworkInterfaceAttributeRequest.serializers,
  ..._i1740.ModifyPrivateDnsNameOptionsRequest.serializers,
  ..._i1741.ModifyPrivateDnsNameOptionsResult.serializers,
  ..._i1742.ModifyReservedInstancesRequest.serializers,
  ..._i1743.ModifyReservedInstancesResult.serializers,
  ..._i1744.SecurityGroupRuleRequest.serializers,
  ..._i1745.SecurityGroupRuleUpdate.serializers,
  ..._i1746.ModifySecurityGroupRulesRequest.serializers,
  ..._i1747.ModifySecurityGroupRulesResult.serializers,
  ..._i1748.CreateVolumePermissionModifications.serializers,
  ..._i1749.ModifySnapshotAttributeRequest.serializers,
  ..._i1750.TargetStorageTier.serializers,
  ..._i1751.ModifySnapshotTierRequest.serializers,
  ..._i1752.ModifySnapshotTierResult.serializers,
  ..._i1753.ModifySpotFleetRequestRequest.serializers,
  ..._i1754.ModifySpotFleetRequestResponse.serializers,
  ..._i1755.ModifySubnetAttributeRequest.serializers,
  ..._i1756.ModifyTrafficMirrorFilterNetworkServicesRequest.serializers,
  ..._i1757.ModifyTrafficMirrorFilterNetworkServicesResult.serializers,
  ..._i1758.TrafficMirrorFilterRuleField.serializers,
  ..._i1759.ModifyTrafficMirrorFilterRuleRequest.serializers,
  ..._i1760.ModifyTrafficMirrorFilterRuleResult.serializers,
  ..._i1761.TrafficMirrorSessionField.serializers,
  ..._i1762.ModifyTrafficMirrorSessionRequest.serializers,
  ..._i1763.ModifyTrafficMirrorSessionResult.serializers,
  ..._i1764.ModifyTransitGatewayOptions.serializers,
  ..._i1765.ModifyTransitGatewayRequest.serializers,
  ..._i1766.ModifyTransitGatewayResult.serializers,
  ..._i1767.ModifyTransitGatewayPrefixListReferenceRequest.serializers,
  ..._i1768.ModifyTransitGatewayPrefixListReferenceResult.serializers,
  ..._i1769.ModifyTransitGatewayVpcAttachmentRequestOptions.serializers,
  ..._i1770.ModifyTransitGatewayVpcAttachmentRequest.serializers,
  ..._i1771.ModifyTransitGatewayVpcAttachmentResult.serializers,
  ..._i1772.ModifyVolumeRequest.serializers,
  ..._i1773.ModifyVolumeResult.serializers,
  ..._i1774.ModifyVolumeAttributeRequest.serializers,
  ..._i1775.ModifyVpcAttributeRequest.serializers,
  ..._i1776.ModifyVpcEndpointRequest.serializers,
  ..._i1777.ModifyVpcEndpointResult.serializers,
  ..._i1778.ModifyVpcEndpointConnectionNotificationRequest.serializers,
  ..._i1779.ModifyVpcEndpointConnectionNotificationResult.serializers,
  ..._i1780.ModifyVpcEndpointServiceConfigurationRequest.serializers,
  ..._i1781.ModifyVpcEndpointServiceConfigurationResult.serializers,
  ..._i1782.ModifyVpcEndpointServicePayerResponsibilityRequest.serializers,
  ..._i1783.ModifyVpcEndpointServicePayerResponsibilityResult.serializers,
  ..._i1784.ModifyVpcEndpointServicePermissionsRequest.serializers,
  ..._i1785.AddedPrincipal.serializers,
  ..._i1786.ModifyVpcEndpointServicePermissionsResult.serializers,
  ..._i1787.PeeringConnectionOptionsRequest.serializers,
  ..._i1788.ModifyVpcPeeringConnectionOptionsRequest.serializers,
  ..._i1789.PeeringConnectionOptions.serializers,
  ..._i1790.ModifyVpcPeeringConnectionOptionsResult.serializers,
  ..._i1791.VpcTenancy.serializers,
  ..._i1792.ModifyVpcTenancyRequest.serializers,
  ..._i1793.ModifyVpcTenancyResult.serializers,
  ..._i1794.ModifyVpnConnectionRequest.serializers,
  ..._i1795.ModifyVpnConnectionResult.serializers,
  ..._i1796.ModifyVpnConnectionOptionsRequest.serializers,
  ..._i1797.ModifyVpnConnectionOptionsResult.serializers,
  ..._i1798.ModifyVpnTunnelCertificateRequest.serializers,
  ..._i1799.ModifyVpnTunnelCertificateResult.serializers,
  ..._i1800.ModifyVpnTunnelOptionsSpecification.serializers,
  ..._i1801.ModifyVpnTunnelOptionsRequest.serializers,
  ..._i1802.ModifyVpnTunnelOptionsResult.serializers,
  ..._i1803.MonitorInstancesRequest.serializers,
  ..._i1804.InstanceMonitoring.serializers,
  ..._i1805.MonitorInstancesResult.serializers,
  ..._i1806.MoveAddressToVpcRequest.serializers,
  ..._i1807.Status.serializers,
  ..._i1808.MoveAddressToVpcResult.serializers,
  ..._i1809.MoveByoipCidrToIpamRequest.serializers,
  ..._i1810.MoveByoipCidrToIpamResult.serializers,
  ..._i1811.CidrAuthorizationContext.serializers,
  ..._i1812.ProvisionByoipCidrRequest.serializers,
  ..._i1813.ProvisionByoipCidrResult.serializers,
  ..._i1814.IpamCidrAuthorizationContext.serializers,
  ..._i1815.ProvisionIpamPoolCidrRequest.serializers,
  ..._i1816.ProvisionIpamPoolCidrResult.serializers,
  ..._i1817.ProvisionPublicIpv4PoolCidrRequest.serializers,
  ..._i1818.ProvisionPublicIpv4PoolCidrResult.serializers,
  ..._i1819.PurchaseHostReservationRequest.serializers,
  ..._i1820.PurchaseHostReservationResult.serializers,
  ..._i1821.ReservedInstanceLimitPrice.serializers,
  ..._i1822.PurchaseReservedInstancesOfferingRequest.serializers,
  ..._i1823.PurchaseReservedInstancesOfferingResult.serializers,
  ..._i1824.PurchaseRequest.serializers,
  ..._i1825.PurchaseScheduledInstancesRequest.serializers,
  ..._i1826.PurchaseScheduledInstancesResult.serializers,
  ..._i1827.RebootInstancesRequest.serializers,
  ..._i1828.RegisterImageRequest.serializers,
  ..._i1829.RegisterImageResult.serializers,
  ..._i1830.RegisterInstanceTagAttributeRequest.serializers,
  ..._i1831.RegisterInstanceEventNotificationAttributesRequest.serializers,
  ..._i1832.RegisterInstanceEventNotificationAttributesResult.serializers,
  ..._i1833.RegisterTransitGatewayMulticastGroupMembersRequest.serializers,
  ..._i1834.TransitGatewayMulticastRegisteredGroupMembers.serializers,
  ..._i1835.RegisterTransitGatewayMulticastGroupMembersResult.serializers,
  ..._i1836.RegisterTransitGatewayMulticastGroupSourcesRequest.serializers,
  ..._i1837.TransitGatewayMulticastRegisteredGroupSources.serializers,
  ..._i1838.RegisterTransitGatewayMulticastGroupSourcesResult.serializers,
  ..._i1839.RejectTransitGatewayMulticastDomainAssociationsRequest.serializers,
  ..._i1840.RejectTransitGatewayMulticastDomainAssociationsResult.serializers,
  ..._i1841.RejectTransitGatewayPeeringAttachmentRequest.serializers,
  ..._i1842.RejectTransitGatewayPeeringAttachmentResult.serializers,
  ..._i1843.RejectTransitGatewayVpcAttachmentRequest.serializers,
  ..._i1844.RejectTransitGatewayVpcAttachmentResult.serializers,
  ..._i1845.RejectVpcEndpointConnectionsRequest.serializers,
  ..._i1846.RejectVpcEndpointConnectionsResult.serializers,
  ..._i1847.RejectVpcPeeringConnectionRequest.serializers,
  ..._i1848.RejectVpcPeeringConnectionResult.serializers,
  ..._i1849.ReleaseAddressRequest.serializers,
  ..._i1850.ReleaseHostsRequest.serializers,
  ..._i1851.ReleaseHostsResult.serializers,
  ..._i1852.ReleaseIpamPoolAllocationRequest.serializers,
  ..._i1853.ReleaseIpamPoolAllocationResult.serializers,
  ..._i1854.ReplaceIamInstanceProfileAssociationRequest.serializers,
  ..._i1855.ReplaceIamInstanceProfileAssociationResult.serializers,
  ..._i1856.ReplaceNetworkAclAssociationRequest.serializers,
  ..._i1857.ReplaceNetworkAclAssociationResult.serializers,
  ..._i1858.ReplaceNetworkAclEntryRequest.serializers,
  ..._i1859.ReplaceRouteRequest.serializers,
  ..._i1860.ReplaceRouteTableAssociationRequest.serializers,
  ..._i1861.ReplaceRouteTableAssociationResult.serializers,
  ..._i1862.ReplaceTransitGatewayRouteRequest.serializers,
  ..._i1863.ReplaceTransitGatewayRouteResult.serializers,
  ..._i1864.ReportInstanceReasonCodes.serializers,
  ..._i1865.ReportStatusType.serializers,
  ..._i1866.ReportInstanceStatusRequest.serializers,
  ..._i1867.RequestSpotFleetRequest.serializers,
  ..._i1868.RequestSpotFleetResponse.serializers,
  ..._i1869.RequestSpotLaunchSpecification.serializers,
  ..._i1870.RequestSpotInstancesRequest.serializers,
  ..._i1871.RequestSpotInstancesResult.serializers,
  ..._i1872.ResetAddressAttributeRequest.serializers,
  ..._i1873.ResetAddressAttributeResult.serializers,
  ..._i1874.ResetEbsDefaultKmsKeyIdRequest.serializers,
  ..._i1875.ResetEbsDefaultKmsKeyIdResult.serializers,
  ..._i1876.ResetFpgaImageAttributeName.serializers,
  ..._i1877.ResetFpgaImageAttributeRequest.serializers,
  ..._i1878.ResetFpgaImageAttributeResult.serializers,
  ..._i1879.ResetImageAttributeName.serializers,
  ..._i1880.ResetImageAttributeRequest.serializers,
  ..._i1881.ResetInstanceAttributeRequest.serializers,
  ..._i1882.ResetNetworkInterfaceAttributeRequest.serializers,
  ..._i1883.ResetSnapshotAttributeRequest.serializers,
  ..._i1884.RestoreAddressToClassicRequest.serializers,
  ..._i1885.RestoreAddressToClassicResult.serializers,
  ..._i1886.RestoreImageFromRecycleBinRequest.serializers,
  ..._i1887.RestoreImageFromRecycleBinResult.serializers,
  ..._i1888.RestoreManagedPrefixListVersionRequest.serializers,
  ..._i1889.RestoreManagedPrefixListVersionResult.serializers,
  ..._i1890.RestoreSnapshotFromRecycleBinRequest.serializers,
  ..._i1891.RestoreSnapshotFromRecycleBinResult.serializers,
  ..._i1892.RestoreSnapshotTierRequest.serializers,
  ..._i1893.RestoreSnapshotTierResult.serializers,
  ..._i1894.RevokeClientVpnIngressRequest.serializers,
  ..._i1895.RevokeClientVpnIngressResult.serializers,
  ..._i1896.RevokeSecurityGroupEgressRequest.serializers,
  ..._i1897.RevokeSecurityGroupEgressResult.serializers,
  ..._i1898.RevokeSecurityGroupIngressRequest.serializers,
  ..._i1899.RevokeSecurityGroupIngressResult.serializers,
  ..._i1900.ElasticInferenceAccelerator.serializers,
  ..._i1901.LaunchTemplateSpecification.serializers,
  ..._i1902.SpotMarketOptions.serializers,
  ..._i1903.InstanceMarketOptionsRequest.serializers,
  ..._i1904.CpuOptionsRequest.serializers,
  ..._i1905.HibernationOptionsRequest.serializers,
  ..._i1906.LicenseConfigurationRequest.serializers,
  ..._i1907.InstanceMetadataOptionsRequest.serializers,
  ..._i1908.EnclaveOptionsRequest.serializers,
  ..._i1909.PrivateDnsNameOptionsRequest.serializers,
  ..._i1910.InstanceMaintenanceOptionsRequest.serializers,
  ..._i1911.RunInstancesRequest.serializers,
  ..._i1912.ScheduledInstancesEbs.serializers,
  ..._i1913.ScheduledInstancesBlockDeviceMapping.serializers,
  ..._i1914.ScheduledInstancesIamInstanceProfile.serializers,
  ..._i1915.ScheduledInstancesMonitoring.serializers,
  ..._i1916.ScheduledInstancesIpv6Address.serializers,
  ..._i1917.ScheduledInstancesPrivateIpAddressConfig.serializers,
  ..._i1918.ScheduledInstancesNetworkInterface.serializers,
  ..._i1919.ScheduledInstancesPlacement.serializers,
  ..._i1920.ScheduledInstancesLaunchSpecification.serializers,
  ..._i1921.RunScheduledInstancesRequest.serializers,
  ..._i1922.RunScheduledInstancesResult.serializers,
  ..._i1923.SearchLocalGatewayRoutesRequest.serializers,
  ..._i1924.SearchLocalGatewayRoutesResult.serializers,
  ..._i1925.SearchTransitGatewayMulticastGroupsRequest.serializers,
  ..._i1926.MembershipType.serializers,
  ..._i1927.TransitGatewayMulticastGroup.serializers,
  ..._i1928.SearchTransitGatewayMulticastGroupsResult.serializers,
  ..._i1929.SearchTransitGatewayRoutesRequest.serializers,
  ..._i1930.SearchTransitGatewayRoutesResult.serializers,
  ..._i1931.SendDiagnosticInterruptRequest.serializers,
  ..._i1932.StartInstancesRequest.serializers,
  ..._i1933.InstanceStateChange.serializers,
  ..._i1934.StartInstancesResult.serializers,
  ..._i1935.StartNetworkInsightsAccessScopeAnalysisRequest.serializers,
  ..._i1936.StartNetworkInsightsAccessScopeAnalysisResult.serializers,
  ..._i1937.StartNetworkInsightsAnalysisRequest.serializers,
  ..._i1938.StartNetworkInsightsAnalysisResult.serializers,
  ..._i1939.StartVpcEndpointServicePrivateDnsVerificationRequest.serializers,
  ..._i1940.StartVpcEndpointServicePrivateDnsVerificationResult.serializers,
  ..._i1941.StopInstancesRequest.serializers,
  ..._i1942.StopInstancesResult.serializers,
  ..._i1943.TerminateClientVpnConnectionsRequest.serializers,
  ..._i1944.TerminateConnectionStatus.serializers,
  ..._i1945.TerminateClientVpnConnectionsResult.serializers,
  ..._i1946.TerminateInstancesRequest.serializers,
  ..._i1947.TerminateInstancesResult.serializers,
  ..._i1948.UnassignIpv6AddressesRequest.serializers,
  ..._i1949.UnassignIpv6AddressesResult.serializers,
  ..._i1950.UnassignPrivateIpAddressesRequest.serializers,
  ..._i1951.UnmonitorInstancesRequest.serializers,
  ..._i1952.UnmonitorInstancesResult.serializers,
  ..._i1953.SecurityGroupRuleDescription.serializers,
  ..._i1954.UpdateSecurityGroupRuleDescriptionsEgressRequest.serializers,
  ..._i1955.UpdateSecurityGroupRuleDescriptionsEgressResult.serializers,
  ..._i1956.UpdateSecurityGroupRuleDescriptionsIngressRequest.serializers,
  ..._i1957.UpdateSecurityGroupRuleDescriptionsIngressResult.serializers,
  ..._i1958.WithdrawByoipCidrRequest.serializers,
  ..._i1959.WithdrawByoipCidrResult.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i1960.BuiltList,
    [FullType(String)],
  ): _i1960.ListBuilder<String>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i2.TargetConfigurationRequest)],
  ): _i1960.ListBuilder<_i2.TargetConfigurationRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i8.SubnetAssociation)],
  ): _i1960.ListBuilder<_i8.SubnetAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i17.Tag)],
  ): _i1960.ListBuilder<_i17.Tag>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i29.UnsuccessfulItem)],
  ): _i1960.ListBuilder<_i29.UnsuccessfulItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i33.CidrBlock)],
  ): _i1960.ListBuilder<_i33.CidrBlock>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i32.Ipv6CidrBlock)],
  ): _i1960.ListBuilder<_i32.Ipv6CidrBlock>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i46.TagSpecification)],
  ): _i1960.ListBuilder<_i46.TagSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i63.Ipv4PrefixSpecification)],
  ): _i1960.ListBuilder<_i63.Ipv4PrefixSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i62.AssignedPrivateIpAddress)],
  ): _i1960.ListBuilder<_i62.AssignedPrivateIpAddress>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i83.InstanceEventWindowTimeRange)],
  ): _i1960.ListBuilder<_i83.InstanceEventWindowTimeRange>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i132.IpRange)],
  ): _i1960.ListBuilder<_i132.IpRange>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i133.Ipv6Range)],
  ): _i1960.ListBuilder<_i133.Ipv6Range>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i134.PrefixListId)],
  ): _i1960.ListBuilder<_i134.PrefixListId>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i135.UserIdGroupPair)],
  ): _i1960.ListBuilder<_i135.UserIdGroupPair>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i136.IpPermission)],
  ): _i1960.ListBuilder<_i136.IpPermission>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i139.SecurityGroupRule)],
  ): _i1960.ListBuilder<_i139.SecurityGroupRule>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i158.FailedCapacityReservationFleetCancellationResult)],
  ): _i1960.ListBuilder<_i158.FailedCapacityReservationFleetCancellationResult>
      .new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i156.CapacityReservationFleetCancellationState)],
  ): _i1960.ListBuilder<_i156.CapacityReservationFleetCancellationState>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i166.InstanceCount)],
  ): _i1960.ListBuilder<_i166.InstanceCount>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i168.PriceSchedule)],
  ): _i1960.ListBuilder<_i168.PriceSchedule>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i170.ReservedInstancesListing)],
  ): _i1960.ListBuilder<_i170.ReservedInstancesListing>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i174.CancelSpotFleetRequestsSuccessItem)],
  ): _i1960.ListBuilder<_i174.CancelSpotFleetRequestsSuccessItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i177.CancelSpotFleetRequestsErrorItem)],
  ): _i1960.ListBuilder<_i177.CancelSpotFleetRequestsErrorItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i181.CancelledSpotInstanceRequest)],
  ): _i1960.ListBuilder<_i181.CancelledSpotInstanceRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i198.CapacityAllocation)],
  ): _i1960.ListBuilder<_i198.CapacityAllocation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i202.ReservationFleetInstanceSpecification)],
  ): _i1960.ListBuilder<_i202.ReservationFleetInstanceSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i206.FleetCapacityReservation)],
  ): _i1960.ListBuilder<_i206.FleetCapacityReservation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i216.ClientVpnAuthenticationRequest)],
  ): _i1960.ListBuilder<_i216.ClientVpnAuthenticationRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i95.SubnetIpv6CidrBlockAssociation)],
  ): _i1960.ListBuilder<_i95.SubnetIpv6CidrBlockAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i114.VpcCidrBlockAssociation)],
  ): _i1960.ListBuilder<_i114.VpcCidrBlockAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i113.VpcIpv6CidrBlockAssociation)],
  ): _i1960.ListBuilder<_i113.VpcIpv6CidrBlockAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i251.NewDhcpConfiguration)],
  ): _i1960.ListBuilder<_i251.NewDhcpConfiguration>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i253.AttributeValue)],
  ): _i1960.ListBuilder<_i253.AttributeValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i254.DhcpConfiguration)],
  ): _i1960.ListBuilder<_i254.DhcpConfiguration>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i258.InternetGatewayAttachment)],
  ): _i1960.ListBuilder<_i258.InternetGatewayAttachment>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i288.AcceleratorManufacturer)],
  ): _i1960.ListBuilder<_i288.AcceleratorManufacturer>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i289.AcceleratorName)],
  ): _i1960.ListBuilder<_i289.AcceleratorName>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i286.AcceleratorType)],
  ): _i1960.ListBuilder<_i286.AcceleratorType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i276.CpuManufacturer)],
  ): _i1960.ListBuilder<_i276.CpuManufacturer>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i278.InstanceGeneration)],
  ): _i1960.ListBuilder<_i278.InstanceGeneration>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i283.LocalStorageType)],
  ): _i1960.ListBuilder<_i283.LocalStorageType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i292.FleetLaunchTemplateOverridesRequest)],
  ): _i1960.ListBuilder<_i292.FleetLaunchTemplateOverridesRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i293.FleetLaunchTemplateConfigRequest)],
  ): _i1960.ListBuilder<_i293.FleetLaunchTemplateConfigRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i313.CreateFleetError)],
  ): _i1960.ListBuilder<_i313.CreateFleetError>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i315.CreateFleetInstance)],
  ): _i1960.ListBuilder<_i315.CreateFleetInstance>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i329.BlockDeviceMapping)],
  ): _i1960.ListBuilder<_i329.BlockDeviceMapping>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i332.InstanceEventWindowTimeRangeRequest)],
  ): _i1960.ListBuilder<_i332.InstanceEventWindowTimeRangeRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i348.AddIpamOperatingRegion)],
  ): _i1960.ListBuilder<_i348.AddIpamOperatingRegion>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i350.IpamOperatingRegion)],
  ): _i1960.ListBuilder<_i350.IpamOperatingRegion>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i355.RequestIpamResourceTag)],
  ): _i1960.ListBuilder<_i355.RequestIpamResourceTag>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i360.IpamResourceTag)],
  ): _i1960.ListBuilder<_i360.IpamResourceTag>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i376.Ipv4PrefixSpecificationRequest)],
  ): _i1960.ListBuilder<_i376.Ipv4PrefixSpecificationRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i374.InstanceIpv6AddressRequest)],
  ): _i1960.ListBuilder<_i374.InstanceIpv6AddressRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i377.Ipv6PrefixSpecificationRequest)],
  ): _i1960.ListBuilder<_i377.Ipv6PrefixSpecificationRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i375.PrivateIpAddressSpecification)],
  ): _i1960.ListBuilder<_i375.PrivateIpAddressSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i373.LaunchTemplateBlockDeviceMappingRequest)],
  ): _i1960.ListBuilder<_i373.LaunchTemplateBlockDeviceMappingRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i383.ElasticGpuSpecification)],
  ): _i1960.ListBuilder<_i383.ElasticGpuSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i384.LaunchTemplateElasticInferenceAccelerator)],
  ): _i1960.ListBuilder<_i384.LaunchTemplateElasticInferenceAccelerator>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i395.LaunchTemplateLicenseConfigurationRequest)],
  ): _i1960.ListBuilder<_i395.LaunchTemplateLicenseConfigurationRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [
      FullType(_i378.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest)
    ],
  ): _i1960.ListBuilder<
          _i378.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>
      .new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i382.LaunchTemplateTagSpecificationRequest)],
  ): _i1960.ListBuilder<_i382.LaunchTemplateTagSpecificationRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i409.ValidationError)],
  ): _i1960.ListBuilder<_i409.ValidationError>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i417.Ipv4PrefixSpecificationResponse)],
  ): _i1960.ListBuilder<_i417.Ipv4PrefixSpecificationResponse>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i416.InstanceIpv6Address)],
  ): _i1960.ListBuilder<_i416.InstanceIpv6Address>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i418.Ipv6PrefixSpecificationResponse)],
  ): _i1960.ListBuilder<_i418.Ipv6PrefixSpecificationResponse>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i415.LaunchTemplateBlockDeviceMapping)],
  ): _i1960.ListBuilder<_i415.LaunchTemplateBlockDeviceMapping>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i423.ElasticGpuSpecificationResponse)],
  ): _i1960.ListBuilder<_i423.ElasticGpuSpecificationResponse>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i424.LaunchTemplateElasticInferenceAcceleratorResponse)],
  ): _i1960.ListBuilder<_i424.LaunchTemplateElasticInferenceAcceleratorResponse>
      .new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i431.LaunchTemplateLicenseConfiguration)],
  ): _i1960.ListBuilder<_i431.LaunchTemplateLicenseConfiguration>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i419.LaunchTemplateInstanceNetworkInterfaceSpecification)],
  ): _i1960.ListBuilder<
          _i419.LaunchTemplateInstanceNetworkInterfaceSpecification>
      .new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i422.LaunchTemplateTagSpecification)],
  ): _i1960.ListBuilder<_i422.LaunchTemplateTagSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i457.AddPrefixListEntry)],
  ): _i1960.ListBuilder<_i457.AddPrefixListEntry>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i464.NatGatewayAddress)],
  ): _i1960.ListBuilder<_i464.NatGatewayAddress>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i470.NetworkAclAssociation)],
  ): _i1960.ListBuilder<_i470.NetworkAclAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i474.NetworkAclEntry)],
  ): _i1960.ListBuilder<_i474.NetworkAclEntry>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i478.Protocol)],
  ): _i1960.ListBuilder<_i478.Protocol>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i482.ThroughResourcesStatementRequest)],
  ): _i1960.ListBuilder<_i482.ThroughResourcesStatementRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i483.AccessScopePathRequest)],
  ): _i1960.ListBuilder<_i483.AccessScopePathRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i489.ThroughResourcesStatement)],
  ): _i1960.ListBuilder<_i489.ThroughResourcesStatement>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i490.AccessScopePath)],
  ): _i1960.ListBuilder<_i490.AccessScopePath>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i500.GroupIdentifier)],
  ): _i1960.ListBuilder<_i500.GroupIdentifier>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i502.NetworkInterfaceIpv6Address)],
  ): _i1960.ListBuilder<_i502.NetworkInterfaceIpv6Address>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i504.Ipv6PrefixSpecification)],
  ): _i1960.ListBuilder<_i504.Ipv6PrefixSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i503.NetworkInterfacePrivateIpAddress)],
  ): _i1960.ListBuilder<_i503.NetworkInterfacePrivateIpAddress>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i526.PriceScheduleSpecification)],
  ): _i1960.ListBuilder<_i526.PriceScheduleSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i534.RouteTableAssociation)],
  ): _i1960.ListBuilder<_i534.RouteTableAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i535.PropagatingVgw)],
  ): _i1960.ListBuilder<_i535.PropagatingVgw>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i538.Route)],
  ): _i1960.ListBuilder<_i538.Route>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i550.SnapshotInfo)],
  ): _i1960.ListBuilder<_i550.SnapshotInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i557.S3ObjectTag)],
  ): _i1960.ListBuilder<_i557.S3ObjectTag>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i571.TrafficMirrorFilterRule)],
  ): _i1960.ListBuilder<_i571.TrafficMirrorFilterRule>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i572.TrafficMirrorNetworkService)],
  ): _i1960.ListBuilder<_i572.TrafficMirrorNetworkService>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i606.TransitGatewayAttachmentBgpConfiguration)],
  ): _i1960.ListBuilder<_i606.TransitGatewayAttachmentBgpConfiguration>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i632.TransitGatewayRouteAttachment)],
  ): _i1960.ListBuilder<_i632.TransitGatewayRouteAttachment>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i123.VolumeAttachment)],
  ): _i1960.ListBuilder<_i123.VolumeAttachment>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i662.DnsEntry)],
  ): _i1960.ListBuilder<_i662.DnsEntry>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i660.SecurityGroupIdentifier)],
  ): _i1960.ListBuilder<_i660.SecurityGroupIdentifier>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i673.ServiceTypeDetail)],
  ): _i1960.ListBuilder<_i673.ServiceTypeDetail>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i675.ServiceConnectivityType)],
  ): _i1960.ListBuilder<_i675.ServiceConnectivityType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i690.IkeVersionsRequestListValue)],
  ): _i1960.ListBuilder<_i690.IkeVersionsRequestListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i688.Phase1DhGroupNumbersRequestListValue)],
  ): _i1960.ListBuilder<_i688.Phase1DhGroupNumbersRequestListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i684.Phase1EncryptionAlgorithmsRequestListValue)],
  ): _i1960.ListBuilder<_i684.Phase1EncryptionAlgorithmsRequestListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i686.Phase1IntegrityAlgorithmsRequestListValue)],
  ): _i1960.ListBuilder<_i686.Phase1IntegrityAlgorithmsRequestListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i689.Phase2DhGroupNumbersRequestListValue)],
  ): _i1960.ListBuilder<_i689.Phase2DhGroupNumbersRequestListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i685.Phase2EncryptionAlgorithmsRequestListValue)],
  ): _i1960.ListBuilder<_i685.Phase2EncryptionAlgorithmsRequestListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i687.Phase2IntegrityAlgorithmsRequestListValue)],
  ): _i1960.ListBuilder<_i687.Phase2IntegrityAlgorithmsRequestListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i693.VpnTunnelOptionsSpecification)],
  ): _i1960.ListBuilder<_i693.VpnTunnelOptionsSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i704.IkeVersionsListValue)],
  ): _i1960.ListBuilder<_i704.IkeVersionsListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i702.Phase1DhGroupNumbersListValue)],
  ): _i1960.ListBuilder<_i702.Phase1DhGroupNumbersListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i698.Phase1EncryptionAlgorithmsListValue)],
  ): _i1960.ListBuilder<_i698.Phase1EncryptionAlgorithmsListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i700.Phase1IntegrityAlgorithmsListValue)],
  ): _i1960.ListBuilder<_i700.Phase1IntegrityAlgorithmsListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i703.Phase2DhGroupNumbersListValue)],
  ): _i1960.ListBuilder<_i703.Phase2DhGroupNumbersListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i699.Phase2EncryptionAlgorithmsListValue)],
  ): _i1960.ListBuilder<_i699.Phase2EncryptionAlgorithmsListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i701.Phase2IntegrityAlgorithmsListValue)],
  ): _i1960.ListBuilder<_i701.Phase2IntegrityAlgorithmsListValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i707.TunnelOption)],
  ): _i1960.ListBuilder<_i707.TunnelOption>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i710.VpnStaticRoute)],
  ): _i1960.ListBuilder<_i710.VpnStaticRoute>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i712.VgwTelemetry)],
  ): _i1960.ListBuilder<_i712.VgwTelemetry>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i126.VpcAttachment)],
  ): _i1960.ListBuilder<_i126.VpcAttachment>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i735.DeleteFleetSuccessItem)],
  ): _i1960.ListBuilder<_i735.DeleteFleetSuccessItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i738.DeleteFleetErrorItem)],
  ): _i1960.ListBuilder<_i738.DeleteFleetErrorItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i758.DeleteLaunchTemplateVersionsResponseSuccessItem)],
  ): _i1960.ListBuilder<_i758.DeleteLaunchTemplateVersionsResponseSuccessItem>
      .new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i761.DeleteLaunchTemplateVersionsResponseErrorItem)],
  ): _i1960.ListBuilder<_i761.DeleteLaunchTemplateVersionsResponseErrorItem>
      .new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i795.FailedQueuedPurchaseDeletion)],
  ): _i1960.ListBuilder<_i795.FailedQueuedPurchaseDeletion>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i792.SuccessfulQueuedPurchaseDeletion)],
  ): _i1960.ListBuilder<_i792.SuccessfulQueuedPurchaseDeletion>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i870.AccountAttributeName)],
  ): _i1960.ListBuilder<_i870.AccountAttributeName>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i872.AccountAttributeValue)],
  ): _i1960.ListBuilder<_i872.AccountAttributeValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i873.AccountAttribute)],
  ): _i1960.ListBuilder<_i873.AccountAttribute>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i875.Filter)],
  ): _i1960.ListBuilder<_i875.Filter>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i877.Address)],
  ): _i1960.ListBuilder<_i877.Address>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i882.AddressAttribute)],
  ): _i1960.ListBuilder<_i882.AddressAttribute>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i885.IdFormat)],
  ): _i1960.ListBuilder<_i885.IdFormat>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i890.AvailabilityZoneMessage)],
  ): _i1960.ListBuilder<_i890.AvailabilityZoneMessage>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i891.AvailabilityZone)],
  ): _i1960.ListBuilder<_i891.AvailabilityZone>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i148.BundleTask)],
  ): _i1960.ListBuilder<_i148.BundleTask>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i42.ByoipCidr)],
  ): _i1960.ListBuilder<_i42.ByoipCidr>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i898.CapacityReservationFleet)],
  ): _i1960.ListBuilder<_i898.CapacityReservationFleet>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i199.CapacityReservation)],
  ): _i1960.ListBuilder<_i199.CapacityReservation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i210.CarrierGateway)],
  ): _i1960.ListBuilder<_i210.CarrierGateway>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i905.ClassicLinkInstance)],
  ): _i1960.ListBuilder<_i905.ClassicLinkInstance>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i908.AuthorizationRule)],
  ): _i1960.ListBuilder<_i908.AuthorizationRule>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i913.ClientVpnConnection)],
  ): _i1960.ListBuilder<_i913.ClientVpnConnection>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i928.ClientVpnEndpoint)],
  ): _i1960.ListBuilder<_i928.ClientVpnEndpoint>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i918.AssociatedTargetNetwork)],
  ): _i1960.ListBuilder<_i918.AssociatedTargetNetwork>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i922.ClientVpnAuthentication)],
  ): _i1960.ListBuilder<_i922.ClientVpnAuthentication>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i931.ClientVpnRoute)],
  ): _i1960.ListBuilder<_i931.ClientVpnRoute>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i934.TargetNetwork)],
  ): _i1960.ListBuilder<_i934.TargetNetwork>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i234.CoipPool)],
  ): _i1960.ListBuilder<_i234.CoipPool>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i941.ImportInstanceVolumeDetailItem)],
  ): _i1960.ListBuilder<_i941.ImportInstanceVolumeDetailItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i945.ConversionTask)],
  ): _i1960.ListBuilder<_i945.ConversionTask>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i238.CustomerGateway)],
  ): _i1960.ListBuilder<_i238.CustomerGateway>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i255.DhcpOptions)],
  ): _i1960.ListBuilder<_i255.DhcpOptions>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i259.EgressOnlyInternetGateway)],
  ): _i1960.ListBuilder<_i259.EgressOnlyInternetGateway>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i957.ElasticGpus)],
  ): _i1960.ListBuilder<_i957.ElasticGpus>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i961.ExportImageTask)],
  ): _i1960.ListBuilder<_i961.ExportImageTask>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i343.ExportTask)],
  ): _i1960.ListBuilder<_i343.ExportTask>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i970.DescribeFastLaunchImagesSuccessItem)],
  ): _i1960.ListBuilder<_i970.DescribeFastLaunchImagesSuccessItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i974.DescribeFastSnapshotRestoreSuccessItem)],
  ): _i1960.ListBuilder<_i974.DescribeFastSnapshotRestoreSuccessItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i979.HistoryRecordEntry)],
  ): _i1960.ListBuilder<_i979.HistoryRecordEntry>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i983.ActiveInstance)],
  ): _i1960.ListBuilder<_i983.ActiveInstance>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i996.FleetData)],
  ): _i1960.ListBuilder<_i996.FleetData>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i310.FleetLaunchTemplateOverrides)],
  ): _i1960.ListBuilder<_i310.FleetLaunchTemplateOverrides>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i994.DescribeFleetError)],
  ): _i1960.ListBuilder<_i994.DescribeFleetError>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i995.DescribeFleetsInstances)],
  ): _i1960.ListBuilder<_i995.DescribeFleetsInstances>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i987.FleetLaunchTemplateConfig)],
  ): _i1960.ListBuilder<_i987.FleetLaunchTemplateConfig>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1000.FlowLog)],
  ): _i1960.ListBuilder<_i1000.FlowLog>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1005.LoadPermission)],
  ): _i1960.ListBuilder<_i1005.LoadPermission>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1007.ProductCode)],
  ): _i1960.ListBuilder<_i1007.ProductCode>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1014.FpgaImage)],
  ): _i1960.ListBuilder<_i1014.FpgaImage>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1018.HostOffering)],
  ): _i1960.ListBuilder<_i1018.HostOffering>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1022.HostReservation)],
  ): _i1960.ListBuilder<_i1022.HostReservation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1031.Host)],
  ): _i1960.ListBuilder<_i1031.Host>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1025.InstanceCapacity)],
  ): _i1960.ListBuilder<_i1025.InstanceCapacity>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1028.HostInstance)],
  ): _i1960.ListBuilder<_i1028.HostInstance>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i78.IamInstanceProfileAssociation)],
  ): _i1960.ListBuilder<_i78.IamInstanceProfileAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1041.LaunchPermission)],
  ): _i1960.ListBuilder<_i1041.LaunchPermission>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1053.Image)],
  ): _i1960.ListBuilder<_i1053.Image>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1059.ImportImageTask)],
  ): _i1960.ListBuilder<_i1059.ImportImageTask>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1058.ImportImageLicenseConfigurationResponse)],
  ): _i1960.ListBuilder<_i1058.ImportImageLicenseConfigurationResponse>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1057.SnapshotDetail)],
  ): _i1960.ListBuilder<_i1057.SnapshotDetail>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1063.ImportSnapshotTask)],
  ): _i1960.ListBuilder<_i1063.ImportSnapshotTask>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1068.InstanceBlockDeviceMapping)],
  ): _i1960.ListBuilder<_i1068.InstanceBlockDeviceMapping>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1073.InstanceCreditSpecification)],
  ): _i1960.ListBuilder<_i1073.InstanceCreditSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i86.InstanceEventWindow)],
  ): _i1960.ListBuilder<_i86.InstanceEventWindow>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1089.InstanceStatus)],
  ): _i1960.ListBuilder<_i1089.InstanceStatus>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1086.InstanceStatusDetails)],
  ): _i1960.ListBuilder<_i1086.InstanceStatusDetails>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1081.InstanceStatusEvent)],
  ): _i1960.ListBuilder<_i1081.InstanceStatusEvent>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1093.InstanceTypeOffering)],
  ): _i1960.ListBuilder<_i1093.InstanceTypeOffering>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1128.InstanceTypeInfo)],
  ): _i1960.ListBuilder<_i1128.InstanceTypeInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i201.InstanceType)],
  ): _i1960.ListBuilder<_i201.InstanceType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1099.ArchitectureType)],
  ): _i1960.ListBuilder<_i1099.ArchitectureType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(int)],
  ): _i1960.ListBuilder<int>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1104.DiskInfo)],
  ): _i1960.ListBuilder<_i1104.DiskInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1113.NetworkCardInfo)],
  ): _i1960.ListBuilder<_i1113.NetworkCardInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1118.GpuDeviceInfo)],
  ): _i1960.ListBuilder<_i1118.GpuDeviceInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1121.FpgaDeviceInfo)],
  ): _i1960.ListBuilder<_i1121.FpgaDeviceInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1123.PlacementGroupStrategy)],
  ): _i1960.ListBuilder<_i1123.PlacementGroupStrategy>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1125.InferenceDeviceInfo)],
  ): _i1960.ListBuilder<_i1125.InferenceDeviceInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1127.BootModeType)],
  ): _i1960.ListBuilder<_i1127.BootModeType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1097.RootDeviceType)],
  ): _i1960.ListBuilder<_i1097.RootDeviceType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1096.UsageClassType)],
  ): _i1960.ListBuilder<_i1096.UsageClassType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1049.VirtualizationType)],
  ): _i1960.ListBuilder<_i1049.VirtualizationType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1156.Reservation)],
  ): _i1960.ListBuilder<_i1156.Reservation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1139.InstanceIpv4Prefix)],
  ): _i1960.ListBuilder<_i1139.InstanceIpv4Prefix>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1140.InstanceIpv6Prefix)],
  ): _i1960.ListBuilder<_i1140.InstanceIpv6Prefix>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1138.InstancePrivateIpAddress)],
  ): _i1960.ListBuilder<_i1138.InstancePrivateIpAddress>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1134.ElasticGpuAssociation)],
  ): _i1960.ListBuilder<_i1134.ElasticGpuAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1135.ElasticInferenceAcceleratorAssociation)],
  ): _i1960.ListBuilder<_i1135.ElasticInferenceAcceleratorAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1145.LicenseConfiguration)],
  ): _i1960.ListBuilder<_i1145.LicenseConfiguration>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1141.InstanceNetworkInterface)],
  ): _i1960.ListBuilder<_i1141.InstanceNetworkInterface>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1155.Instance)],
  ): _i1960.ListBuilder<_i1155.Instance>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i346.InternetGateway)],
  ): _i1960.ListBuilder<_i346.InternetGateway>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i361.IpamPool)],
  ): _i1960.ListBuilder<_i361.IpamPool>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i365.IpamScope)],
  ): _i1960.ListBuilder<_i365.IpamScope>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i352.Ipam)],
  ): _i1960.ListBuilder<_i352.Ipam>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1168.Ipv6Pool)],
  ): _i1960.ListBuilder<_i1168.Ipv6Pool>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1167.PoolCidrBlock)],
  ): _i1960.ListBuilder<_i1167.PoolCidrBlock>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1171.KeyPairInfo)],
  ): _i1960.ListBuilder<_i1171.KeyPairInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i439.LaunchTemplateVersion)],
  ): _i1960.ListBuilder<_i439.LaunchTemplateVersion>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i408.LaunchTemplate)],
  ): _i1960.ListBuilder<_i408.LaunchTemplate>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i452.LocalGatewayRouteTableVirtualInterfaceGroupAssociation)],
  ): _i1960.ListBuilder<
          _i452.LocalGatewayRouteTableVirtualInterfaceGroupAssociation>
      .new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i455.LocalGatewayRouteTableVpcAssociation)],
  ): _i1960.ListBuilder<_i455.LocalGatewayRouteTableVpcAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i449.LocalGatewayRouteTable)],
  ): _i1960.ListBuilder<_i449.LocalGatewayRouteTable>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1184.LocalGatewayVirtualInterfaceGroup)],
  ): _i1960.ListBuilder<_i1184.LocalGatewayVirtualInterfaceGroup>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1187.LocalGatewayVirtualInterface)],
  ): _i1960.ListBuilder<_i1187.LocalGatewayVirtualInterface>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1190.LocalGateway)],
  ): _i1960.ListBuilder<_i1190.LocalGateway>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i460.ManagedPrefixList)],
  ): _i1960.ListBuilder<_i460.ManagedPrefixList>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1196.MovingAddressStatus)],
  ): _i1960.ListBuilder<_i1196.MovingAddressStatus>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i467.NatGateway)],
  ): _i1960.ListBuilder<_i467.NatGateway>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i475.NetworkAcl)],
  ): _i1960.ListBuilder<_i475.NetworkAcl>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1205.NetworkInsightsAccessScopeAnalysis)],
  ): _i1960.ListBuilder<_i1205.NetworkInsightsAccessScopeAnalysis>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i485.NetworkInsightsAccessScope)],
  ): _i1960.ListBuilder<_i485.NetworkInsightsAccessScope>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1222.NetworkInsightsAnalysis)],
  ): _i1960.ListBuilder<_i1222.NetworkInsightsAnalysis>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i472.PortRange)],
  ): _i1960.ListBuilder<_i472.PortRange>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1211.AnalysisComponent)],
  ): _i1960.ListBuilder<_i1211.AnalysisComponent>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1215.AdditionalDetail)],
  ): _i1960.ListBuilder<_i1215.AdditionalDetail>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1219.Explanation)],
  ): _i1960.ListBuilder<_i1219.Explanation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1221.AlternatePathHint)],
  ): _i1960.ListBuilder<_i1221.AlternatePathHint>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1220.PathComponent)],
  ): _i1960.ListBuilder<_i1220.PathComponent>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i494.NetworkInsightsPath)],
  ): _i1960.ListBuilder<_i494.NetworkInsightsPath>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i512.NetworkInterfacePermission)],
  ): _i1960.ListBuilder<_i512.NetworkInterfacePermission>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i506.NetworkInterface)],
  ): _i1960.ListBuilder<_i506.NetworkInterface>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i518.PlacementGroup)],
  ): _i1960.ListBuilder<_i518.PlacementGroup>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1236.PrefixList)],
  ): _i1960.ListBuilder<_i1236.PrefixList>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1239.PrincipalIdFormat)],
  ): _i1960.ListBuilder<_i1239.PrincipalIdFormat>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1243.PublicIpv4Pool)],
  ): _i1960.ListBuilder<_i1243.PublicIpv4Pool>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1242.PublicIpv4PoolRange)],
  ): _i1960.ListBuilder<_i1242.PublicIpv4PoolRange>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1246.Region)],
  ): _i1960.ListBuilder<_i1246.Region>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i524.ReplaceRootVolumeTask)],
  ): _i1960.ListBuilder<_i524.ReplaceRootVolumeTask>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1256.RecurringCharge)],
  ): _i1960.ListBuilder<_i1256.RecurringCharge>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1258.ReservedInstances)],
  ): _i1960.ListBuilder<_i1258.ReservedInstances>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1266.ReservedInstancesModification)],
  ): _i1960.ListBuilder<_i1266.ReservedInstancesModification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1264.ReservedInstancesModificationResult)],
  ): _i1960.ListBuilder<_i1264.ReservedInstancesModificationResult>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1265.ReservedInstancesId)],
  ): _i1960.ListBuilder<_i1265.ReservedInstancesId>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1270.ReservedInstancesOffering)],
  ): _i1960.ListBuilder<_i1270.ReservedInstancesOffering>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1269.PricingDetail)],
  ): _i1960.ListBuilder<_i1269.PricingDetail>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i539.RouteTable)],
  ): _i1960.ListBuilder<_i539.RouteTable>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1278.ScheduledInstanceAvailability)],
  ): _i1960.ListBuilder<_i1278.ScheduledInstanceAvailability>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1282.ScheduledInstance)],
  ): _i1960.ListBuilder<_i1282.ScheduledInstance>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1285.SecurityGroupReference)],
  ): _i1960.ListBuilder<_i1285.SecurityGroupReference>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1290.SecurityGroup)],
  ): _i1960.ListBuilder<_i1290.SecurityGroup>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1294.CreateVolumePermission)],
  ): _i1960.ListBuilder<_i1294.CreateVolumePermission>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1298.SnapshotTierStatus)],
  ): _i1960.ListBuilder<_i1298.SnapshotTierStatus>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i546.Snapshot)],
  ): _i1960.ListBuilder<_i546.Snapshot>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1308.HistoryRecord)],
  ): _i1960.ListBuilder<_i1308.HistoryRecord>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1331.SpotFleetRequestConfig)],
  ): _i1960.ListBuilder<_i1331.SpotFleetRequestConfig>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1319.InstanceNetworkInterfaceSpecification)],
  ): _i1960.ListBuilder<_i1319.InstanceNetworkInterfaceSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1321.SpotFleetTagSpecification)],
  ): _i1960.ListBuilder<_i1321.SpotFleetTagSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1323.LaunchTemplateOverrides)],
  ): _i1960.ListBuilder<_i1323.LaunchTemplateOverrides>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1325.ClassicLoadBalancer)],
  ): _i1960.ListBuilder<_i1325.ClassicLoadBalancer>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1327.TargetGroup)],
  ): _i1960.ListBuilder<_i1327.TargetGroup>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1322.SpotFleetLaunchSpecification)],
  ): _i1960.ListBuilder<_i1322.SpotFleetLaunchSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1324.LaunchTemplateConfig)],
  ): _i1960.ListBuilder<_i1324.LaunchTemplateConfig>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1338.SpotInstanceRequest)],
  ): _i1960.ListBuilder<_i1338.SpotInstanceRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1341.SpotPrice)],
  ): _i1960.ListBuilder<_i1341.SpotPrice>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1345.StaleSecurityGroup)],
  ): _i1960.ListBuilder<_i1345.StaleSecurityGroup>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1344.StaleIpPermission)],
  ): _i1960.ListBuilder<_i1344.StaleIpPermission>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1348.StoreImageTaskResult)],
  ): _i1960.ListBuilder<_i1348.StoreImageTaskResult>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i244.Subnet)],
  ): _i1960.ListBuilder<_i244.Subnet>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1353.TagDescription)],
  ): _i1960.ListBuilder<_i1353.TagDescription>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i573.TrafficMirrorFilter)],
  ): _i1960.ListBuilder<_i573.TrafficMirrorFilter>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i579.TrafficMirrorSession)],
  ): _i1960.ListBuilder<_i579.TrafficMirrorSession>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i583.TrafficMirrorTarget)],
  ): _i1960.ListBuilder<_i583.TrafficMirrorTarget>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1363.TransitGatewayAttachment)],
  ): _i1960.ListBuilder<_i1363.TransitGatewayAttachment>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i608.TransitGatewayConnectPeer)],
  ): _i1960.ListBuilder<_i608.TransitGatewayConnectPeer>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i600.TransitGatewayConnect)],
  ): _i1960.ListBuilder<_i600.TransitGatewayConnect>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i617.TransitGatewayMulticastDomain)],
  ): _i1960.ListBuilder<_i617.TransitGatewayMulticastDomain>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i18.TransitGatewayPeeringAttachment)],
  ): _i1960.ListBuilder<_i18.TransitGatewayPeeringAttachment>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i624.TransitGatewayPolicyTable)],
  ): _i1960.ListBuilder<_i624.TransitGatewayPolicyTable>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i644.TransitGatewayRouteTableAnnouncement)],
  ): _i1960.ListBuilder<_i644.TransitGatewayRouteTableAnnouncement>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i639.TransitGatewayRouteTable)],
  ): _i1960.ListBuilder<_i639.TransitGatewayRouteTable>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i25.TransitGatewayVpcAttachment)],
  ): _i1960.ListBuilder<_i25.TransitGatewayVpcAttachment>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i594.TransitGateway)],
  ): _i1960.ListBuilder<_i594.TransitGateway>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i108.TrunkInterfaceAssociation)],
  ): _i1960.ListBuilder<_i108.TrunkInterfaceAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1396.VolumeStatusItem)],
  ): _i1960.ListBuilder<_i1396.VolumeStatusItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1392.VolumeStatusDetails)],
  ): _i1960.ListBuilder<_i1392.VolumeStatusDetails>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1389.VolumeStatusAction)],
  ): _i1960.ListBuilder<_i1389.VolumeStatusAction>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1395.VolumeStatusAttachmentStatus)],
  ): _i1960.ListBuilder<_i1395.VolumeStatusAttachmentStatus>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1390.VolumeStatusEvent)],
  ): _i1960.ListBuilder<_i1390.VolumeStatusEvent>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i651.Volume)],
  ): _i1960.ListBuilder<_i651.Volume>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1402.VolumeModification)],
  ): _i1960.ListBuilder<_i1402.VolumeModification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1408.VpcClassicLink)],
  ): _i1960.ListBuilder<_i1408.VpcClassicLink>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1411.ClassicLinkDnsSupport)],
  ): _i1960.ListBuilder<_i1411.ClassicLinkDnsSupport>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i669.ConnectionNotification)],
  ): _i1960.ListBuilder<_i669.ConnectionNotification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1416.VpcEndpointConnection)],
  ): _i1960.ListBuilder<_i1416.VpcEndpointConnection>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i679.ServiceConfiguration)],
  ): _i1960.ListBuilder<_i679.ServiceConfiguration>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1422.AllowedPrincipal)],
  ): _i1960.ListBuilder<_i1422.AllowedPrincipal>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1425.PrivateDnsDetails)],
  ): _i1960.ListBuilder<_i1425.PrivateDnsDetails>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1426.ServiceDetail)],
  ): _i1960.ListBuilder<_i1426.ServiceDetail>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i664.VpcEndpoint)],
  ): _i1960.ListBuilder<_i664.VpcEndpoint>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i38.VpcPeeringConnection)],
  ): _i1960.ListBuilder<_i38.VpcPeeringConnection>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i249.Vpc)],
  ): _i1960.ListBuilder<_i249.Vpc>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i713.VpnConnection)],
  ): _i1960.ListBuilder<_i713.VpnConnection>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i717.VpnGateway)],
  ): _i1960.ListBuilder<_i717.VpnGateway>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1451.DisableFastSnapshotRestoreStateErrorItem)],
  ): _i1960.ListBuilder<_i1451.DisableFastSnapshotRestoreStateErrorItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1449.DisableFastSnapshotRestoreSuccessItem)],
  ): _i1960.ListBuilder<_i1449.DisableFastSnapshotRestoreSuccessItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1452.DisableFastSnapshotRestoreErrorItem)],
  ): _i1960.ListBuilder<_i1452.DisableFastSnapshotRestoreErrorItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1501.EnableFastSnapshotRestoreStateErrorItem)],
  ): _i1960.ListBuilder<_i1501.EnableFastSnapshotRestoreStateErrorItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1499.EnableFastSnapshotRestoreSuccessItem)],
  ): _i1960.ListBuilder<_i1499.EnableFastSnapshotRestoreSuccessItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1502.EnableFastSnapshotRestoreErrorItem)],
  ): _i1960.ListBuilder<_i1502.EnableFastSnapshotRestoreErrorItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1530.AssociatedRole)],
  ): _i1960.ListBuilder<_i1530.AssociatedRole>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1533.Ipv6CidrAssociation)],
  ): _i1960.ListBuilder<_i1533.Ipv6CidrAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1536.InstanceUsage)],
  ): _i1960.ListBuilder<_i1536.InstanceUsage>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1539.CoipAddressUsage)],
  ): _i1960.ListBuilder<_i1539.CoipAddressUsage>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1554.AthenaIntegration)],
  ): _i1960.ListBuilder<_i1554.AthenaIntegration>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1559.CapacityReservationGroup)],
  ): _i1960.ListBuilder<_i1559.CapacityReservationGroup>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1562.Purchase)],
  ): _i1960.ListBuilder<_i1562.Purchase>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1565.InstanceTypeInfoFromInstanceRequirements)],
  ): _i1960.ListBuilder<_i1565.InstanceTypeInfoFromInstanceRequirements>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1573.IpamAddressHistoryRecord)],
  ): _i1960.ListBuilder<_i1573.IpamAddressHistoryRecord>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i55.IpamPoolAllocation)],
  ): _i1960.ListBuilder<_i55.IpamPoolAllocation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i855.IpamPoolCidr)],
  ): _i1960.ListBuilder<_i855.IpamPoolCidr>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1582.IpamResourceCidr)],
  ): _i1960.ListBuilder<_i1582.IpamResourceCidr>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1587.PrefixListAssociation)],
  ): _i1960.ListBuilder<_i1587.PrefixListAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1590.PrefixListEntry)],
  ): _i1960.ListBuilder<_i1590.PrefixListEntry>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1593.AccessScopeAnalysisFinding)],
  ): _i1960.ListBuilder<_i1593.AccessScopeAnalysisFinding>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1601.ReservedInstanceReservationValue)],
  ): _i1960.ListBuilder<_i1601.ReservedInstanceReservationValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1603.TargetReservationValue)],
  ): _i1960.ListBuilder<_i1603.TargetReservationValue>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1609.SpotPlacementScore)],
  ): _i1960.ListBuilder<_i1609.SpotPlacementScore>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i564.SubnetCidrReservation)],
  ): _i1960.ListBuilder<_i564.SubnetCidrReservation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1614.TransitGatewayAttachmentPropagation)],
  ): _i1960.ListBuilder<_i1614.TransitGatewayAttachmentPropagation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1617.TransitGatewayMulticastDomainAssociation)],
  ): _i1960.ListBuilder<_i1617.TransitGatewayMulticastDomainAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i101.TransitGatewayPolicyTableAssociation)],
  ): _i1960.ListBuilder<_i101.TransitGatewayPolicyTableAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1624.TransitGatewayPolicyTableEntry)],
  ): _i1960.ListBuilder<_i1624.TransitGatewayPolicyTableEntry>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i629.TransitGatewayPrefixListReference)],
  ): _i1960.ListBuilder<_i629.TransitGatewayPrefixListReference>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1629.TransitGatewayRouteTableAssociation)],
  ): _i1960.ListBuilder<_i1629.TransitGatewayRouteTableAssociation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1632.TransitGatewayRouteTablePropagation)],
  ): _i1960.ListBuilder<_i1632.TransitGatewayRouteTablePropagation>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1637.VpnConnectionDeviceType)],
  ): _i1960.ListBuilder<_i1637.VpnConnectionDeviceType>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1643.ImageDiskContainer)],
  ): _i1960.ListBuilder<_i1643.ImageDiskContainer>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1644.ImportImageLicenseConfigurationRequest)],
  ): _i1960.ListBuilder<_i1644.ImportImageLicenseConfigurationRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1649.DiskImage)],
  ): _i1960.ListBuilder<_i1649.DiskImage>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1662.ImageRecycleBinInfo)],
  ): _i1960.ListBuilder<_i1662.ImageRecycleBinInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1665.SnapshotRecycleBinInfo)],
  ): _i1960.ListBuilder<_i1665.SnapshotRecycleBinInfo>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1686.LoadPermissionRequest)],
  ): _i1960.ListBuilder<_i1686.LoadPermissionRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1697.InstanceBlockDeviceMappingSpecification)],
  ): _i1960.ListBuilder<_i1697.InstanceBlockDeviceMappingSpecification>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1703.InstanceCreditSpecificationRequest)],
  ): _i1960.ListBuilder<_i1703.InstanceCreditSpecificationRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1705.SuccessfulInstanceCreditSpecificationItem)],
  ): _i1960.ListBuilder<_i1705.SuccessfulInstanceCreditSpecificationItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1708.UnsuccessfulInstanceCreditSpecificationItem)],
  ): _i1960.ListBuilder<_i1708.UnsuccessfulInstanceCreditSpecificationItem>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1722.RemoveIpamOperatingRegion)],
  ): _i1960.ListBuilder<_i1722.RemoveIpamOperatingRegion>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1735.RemovePrefixListEntry)],
  ): _i1960.ListBuilder<_i1735.RemovePrefixListEntry>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1263.ReservedInstancesConfiguration)],
  ): _i1960.ListBuilder<_i1263.ReservedInstancesConfiguration>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1745.SecurityGroupRuleUpdate)],
  ): _i1960.ListBuilder<_i1745.SecurityGroupRuleUpdate>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1758.TrafficMirrorFilterRuleField)],
  ): _i1960.ListBuilder<_i1758.TrafficMirrorFilterRuleField>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1761.TrafficMirrorSessionField)],
  ): _i1960.ListBuilder<_i1761.TrafficMirrorSessionField>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1785.AddedPrincipal)],
  ): _i1960.ListBuilder<_i1785.AddedPrincipal>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1804.InstanceMonitoring)],
  ): _i1960.ListBuilder<_i1804.InstanceMonitoring>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1824.PurchaseRequest)],
  ): _i1960.ListBuilder<_i1824.PurchaseRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1864.ReportInstanceReasonCodes)],
  ): _i1960.ListBuilder<_i1864.ReportInstanceReasonCodes>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1900.ElasticInferenceAccelerator)],
  ): _i1960.ListBuilder<_i1900.ElasticInferenceAccelerator>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1906.LicenseConfigurationRequest)],
  ): _i1960.ListBuilder<_i1906.LicenseConfigurationRequest>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1916.ScheduledInstancesIpv6Address)],
  ): _i1960.ListBuilder<_i1916.ScheduledInstancesIpv6Address>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1917.ScheduledInstancesPrivateIpAddressConfig)],
  ): _i1960.ListBuilder<_i1917.ScheduledInstancesPrivateIpAddressConfig>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1913.ScheduledInstancesBlockDeviceMapping)],
  ): _i1960.ListBuilder<_i1913.ScheduledInstancesBlockDeviceMapping>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1918.ScheduledInstancesNetworkInterface)],
  ): _i1960.ListBuilder<_i1918.ScheduledInstancesNetworkInterface>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i444.LocalGatewayRoute)],
  ): _i1960.ListBuilder<_i444.LocalGatewayRoute>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1927.TransitGatewayMulticastGroup)],
  ): _i1960.ListBuilder<_i1927.TransitGatewayMulticastGroup>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i635.TransitGatewayRoute)],
  ): _i1960.ListBuilder<_i635.TransitGatewayRoute>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1933.InstanceStateChange)],
  ): _i1960.ListBuilder<_i1933.InstanceStateChange>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1944.TerminateConnectionStatus)],
  ): _i1960.ListBuilder<_i1944.TerminateConnectionStatus>.new,
  const FullType(
    _i1960.BuiltList,
    [FullType(_i1953.SecurityGroupRuleDescription)],
  ): _i1960.ListBuilder<_i1953.SecurityGroupRuleDescription>.new,
};
