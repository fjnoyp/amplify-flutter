// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library ec2_query_v2.ec2_protocol.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i45;
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/aws_config.dart' as _i44;
import 'package:ec2_query_v2/src/ec2_protocol/model/client_config.dart' as _i41;
import 'package:ec2_query_v2/src/ec2_protocol/model/complex_error.dart' as _i8;
import 'package:ec2_query_v2/src/ec2_protocol/model/complex_nested_error_data.dart'
    as _i9;
import 'package:ec2_query_v2/src/ec2_protocol/model/datetime_offsets_output.dart'
    as _i2;
import 'package:ec2_query_v2/src/ec2_protocol/model/empty_input_and_empty_output_input.dart'
    as _i3;
import 'package:ec2_query_v2/src/ec2_protocol/model/empty_input_and_empty_output_output.dart'
    as _i4;
import 'package:ec2_query_v2/src/ec2_protocol/model/environment_config.dart'
    as _i36;
import 'package:ec2_query_v2/src/ec2_protocol/model/file_config_settings.dart'
    as _i39;
import 'package:ec2_query_v2/src/ec2_protocol/model/foo_enum.dart' as _i24;
import 'package:ec2_query_v2/src/ec2_protocol/model/fractional_seconds_output.dart'
    as _i6;
import 'package:ec2_query_v2/src/ec2_protocol/model/greeting_struct.dart'
    as _i17;
import 'package:ec2_query_v2/src/ec2_protocol/model/greeting_with_errors_output.dart'
    as _i7;
import 'package:ec2_query_v2/src/ec2_protocol/model/host_label_input.dart'
    as _i5;
import 'package:ec2_query_v2/src/ec2_protocol/model/ignores_wrapping_xml_name_output.dart'
    as _i11;
import 'package:ec2_query_v2/src/ec2_protocol/model/integer_enum.dart' as _i29;
import 'package:ec2_query_v2/src/ec2_protocol/model/invalid_greeting.dart'
    as _i10;
import 'package:ec2_query_v2/src/ec2_protocol/model/nested_struct_with_list.dart'
    as _i18;
import 'package:ec2_query_v2/src/ec2_protocol/model/nested_structures_input.dart'
    as _i12;
import 'package:ec2_query_v2/src/ec2_protocol/model/no_input_and_output_output.dart'
    as _i14;
import 'package:ec2_query_v2/src/ec2_protocol/model/operation_config.dart'
    as _i42;
import 'package:ec2_query_v2/src/ec2_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i15;
import 'package:ec2_query_v2/src/ec2_protocol/model/query_lists_input.dart'
    as _i16;
import 'package:ec2_query_v2/src/ec2_protocol/model/query_timestamps_input.dart'
    as _i19;
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output.dart'
    as _i20;
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output_nested1.dart'
    as _i21;
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output_nested2.dart'
    as _i22;
import 'package:ec2_query_v2/src/ec2_protocol/model/retry_config.dart' as _i40;
import 'package:ec2_query_v2/src/ec2_protocol/model/retry_mode.dart' as _i35;
import 'package:ec2_query_v2/src/ec2_protocol/model/s3_addressing_style.dart'
    as _i37;
import 'package:ec2_query_v2/src/ec2_protocol/model/s3_config.dart' as _i38;
import 'package:ec2_query_v2/src/ec2_protocol/model/scoped_config.dart' as _i43;
import 'package:ec2_query_v2/src/ec2_protocol/model/simple_input_params_input.dart'
    as _i23;
import 'package:ec2_query_v2/src/ec2_protocol/model/simple_scalar_xml_properties_output.dart'
    as _i25;
import 'package:ec2_query_v2/src/ec2_protocol/model/struct_arg.dart' as _i13;
import 'package:ec2_query_v2/src/ec2_protocol/model/structure_list_member.dart'
    as _i28;
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_blobs_output.dart'
    as _i26;
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_enums_output.dart'
    as _i30;
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_int_enums_output.dart'
    as _i31;
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_lists_output.dart'
    as _i27;
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_namespace_nested.dart'
    as _i33;
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_namespaces_output.dart'
    as _i32;
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_timestamps_output.dart'
    as _i34;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.DatetimeOffsetsOutput.serializers,
  ..._i3.EmptyInputAndEmptyOutputInput.serializers,
  ..._i4.EmptyInputAndEmptyOutputOutput.serializers,
  ..._i5.HostLabelInput.serializers,
  ..._i6.FractionalSecondsOutput.serializers,
  ..._i7.GreetingWithErrorsOutput.serializers,
  ..._i8.ComplexError.serializers,
  ..._i9.ComplexNestedErrorData.serializers,
  ..._i10.InvalidGreeting.serializers,
  ..._i11.IgnoresWrappingXmlNameOutput.serializers,
  ..._i12.NestedStructuresInput.serializers,
  ..._i13.StructArg.serializers,
  ..._i14.NoInputAndOutputOutput.serializers,
  ..._i15.QueryIdempotencyTokenAutoFillInput.serializers,
  ..._i16.QueryListsInput.serializers,
  ..._i17.GreetingStruct.serializers,
  ..._i18.NestedStructWithList.serializers,
  ..._i19.QueryTimestampsInput.serializers,
  ..._i20.RecursiveXmlShapesOutput.serializers,
  ..._i21.RecursiveXmlShapesOutputNested1.serializers,
  ..._i22.RecursiveXmlShapesOutputNested2.serializers,
  ..._i23.SimpleInputParamsInput.serializers,
  ..._i24.FooEnum.serializers,
  ..._i25.SimpleScalarXmlPropertiesOutput.serializers,
  ..._i26.XmlBlobsOutput.serializers,
  ..._i27.XmlListsOutput.serializers,
  ..._i28.StructureListMember.serializers,
  ..._i29.IntegerEnum.serializers,
  ..._i30.XmlEnumsOutput.serializers,
  ..._i31.XmlIntEnumsOutput.serializers,
  ..._i32.XmlNamespacesOutput.serializers,
  ..._i33.XmlNamespaceNested.serializers,
  ..._i34.XmlTimestampsOutput.serializers,
  ..._i35.RetryMode.serializers,
  ..._i36.EnvironmentConfig.serializers,
  ..._i37.S3AddressingStyle.serializers,
  ..._i38.S3Config.serializers,
  ..._i39.FileConfigSettings.serializers,
  ..._i40.RetryConfig.serializers,
  ..._i41.ClientConfig.serializers,
  ..._i42.OperationConfig.serializers,
  ..._i43.ScopedConfig.serializers,
  ..._i44.AwsConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i45.BuiltList,
    [FullType(String)],
  ): _i45.ListBuilder<String>.new,
  const FullType(
    _i45.BuiltList,
    [FullType(_i17.GreetingStruct)],
  ): _i45.ListBuilder<_i17.GreetingStruct>.new,
  const FullType(
    _i45.BuiltSet,
    [FullType(String)],
  ): _i45.SetBuilder<String>.new,
  const FullType(
    _i45.BuiltList,
    [FullType(int)],
  ): _i45.ListBuilder<int>.new,
  const FullType(
    _i45.BuiltList,
    [FullType(bool)],
  ): _i45.ListBuilder<bool>.new,
  const FullType(
    _i45.BuiltList,
    [FullType(DateTime)],
  ): _i45.ListBuilder<DateTime>.new,
  const FullType(
    _i45.BuiltList,
    [FullType(_i24.FooEnum)],
  ): _i45.ListBuilder<_i24.FooEnum>.new,
  const FullType(
    _i45.BuiltList,
    [FullType(_i29.IntegerEnum)],
  ): _i45.ListBuilder<_i29.IntegerEnum>.new,
  const FullType(
    _i45.BuiltList,
    [
      FullType(
        _i45.BuiltList,
        [FullType(String)],
      )
    ],
  ): _i45.ListBuilder<_i45.BuiltList<String>>.new,
  const FullType(
    _i45.BuiltList,
    [FullType(_i28.StructureListMember)],
  ): _i45.ListBuilder<_i28.StructureListMember>.new,
  const FullType(
    _i45.BuiltSet,
    [FullType(_i24.FooEnum)],
  ): _i45.SetBuilder<_i24.FooEnum>.new,
  const FullType(
    _i45.BuiltMap,
    [
      FullType(String),
      FullType(_i24.FooEnum),
    ],
  ): _i45.MapBuilder<String, _i24.FooEnum>.new,
  const FullType(
    _i45.BuiltSet,
    [FullType(_i29.IntegerEnum)],
  ): _i45.SetBuilder<_i29.IntegerEnum>.new,
  const FullType(
    _i45.BuiltMap,
    [
      FullType(String),
      FullType(_i29.IntegerEnum),
    ],
  ): _i45.MapBuilder<String, _i29.IntegerEnum>.new,
  const FullType(
    _i45.BuiltMap,
    [
      FullType(String),
      FullType(_i39.FileConfigSettings),
    ],
  ): _i45.MapBuilder<String, _i39.FileConfigSettings>.new,
};
