// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceType extends _i1.SmithyEnum<InstanceType> {
  const InstanceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InstanceType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const a12Xlarge = InstanceType._(
    0,
    'a1_2xlarge',
    'a1.2xlarge',
  );

  static const a14Xlarge = InstanceType._(
    1,
    'a1_4xlarge',
    'a1.4xlarge',
  );

  static const a1Large = InstanceType._(
    2,
    'a1_large',
    'a1.large',
  );

  static const a1Medium = InstanceType._(
    3,
    'a1_medium',
    'a1.medium',
  );

  static const a1Metal = InstanceType._(
    4,
    'a1_metal',
    'a1.metal',
  );

  static const a1Xlarge = InstanceType._(
    5,
    'a1_xlarge',
    'a1.xlarge',
  );

  static const c1Medium = InstanceType._(
    6,
    'c1_medium',
    'c1.medium',
  );

  static const c1Xlarge = InstanceType._(
    7,
    'c1_xlarge',
    'c1.xlarge',
  );

  static const c32Xlarge = InstanceType._(
    8,
    'c3_2xlarge',
    'c3.2xlarge',
  );

  static const c34Xlarge = InstanceType._(
    9,
    'c3_4xlarge',
    'c3.4xlarge',
  );

  static const c38Xlarge = InstanceType._(
    10,
    'c3_8xlarge',
    'c3.8xlarge',
  );

  static const c3Large = InstanceType._(
    11,
    'c3_large',
    'c3.large',
  );

  static const c3Xlarge = InstanceType._(
    12,
    'c3_xlarge',
    'c3.xlarge',
  );

  static const c42Xlarge = InstanceType._(
    13,
    'c4_2xlarge',
    'c4.2xlarge',
  );

  static const c44Xlarge = InstanceType._(
    14,
    'c4_4xlarge',
    'c4.4xlarge',
  );

  static const c48Xlarge = InstanceType._(
    15,
    'c4_8xlarge',
    'c4.8xlarge',
  );

  static const c4Large = InstanceType._(
    16,
    'c4_large',
    'c4.large',
  );

  static const c4Xlarge = InstanceType._(
    17,
    'c4_xlarge',
    'c4.xlarge',
  );

  static const c512Xlarge = InstanceType._(
    18,
    'c5_12xlarge',
    'c5.12xlarge',
  );

  static const c518Xlarge = InstanceType._(
    19,
    'c5_18xlarge',
    'c5.18xlarge',
  );

  static const c524Xlarge = InstanceType._(
    20,
    'c5_24xlarge',
    'c5.24xlarge',
  );

  static const c52Xlarge = InstanceType._(
    21,
    'c5_2xlarge',
    'c5.2xlarge',
  );

  static const c54Xlarge = InstanceType._(
    22,
    'c5_4xlarge',
    'c5.4xlarge',
  );

  static const c59Xlarge = InstanceType._(
    23,
    'c5_9xlarge',
    'c5.9xlarge',
  );

  static const c5A12Xlarge = InstanceType._(
    24,
    'c5a_12xlarge',
    'c5a.12xlarge',
  );

  static const c5A16Xlarge = InstanceType._(
    25,
    'c5a_16xlarge',
    'c5a.16xlarge',
  );

  static const c5A24Xlarge = InstanceType._(
    26,
    'c5a_24xlarge',
    'c5a.24xlarge',
  );

  static const c5A2Xlarge = InstanceType._(
    27,
    'c5a_2xlarge',
    'c5a.2xlarge',
  );

  static const c5A4Xlarge = InstanceType._(
    28,
    'c5a_4xlarge',
    'c5a.4xlarge',
  );

  static const c5A8Xlarge = InstanceType._(
    29,
    'c5a_8xlarge',
    'c5a.8xlarge',
  );

  static const c5ALarge = InstanceType._(
    30,
    'c5a_large',
    'c5a.large',
  );

  static const c5AXlarge = InstanceType._(
    31,
    'c5a_xlarge',
    'c5a.xlarge',
  );

  static const c5Ad12Xlarge = InstanceType._(
    32,
    'c5ad_12xlarge',
    'c5ad.12xlarge',
  );

  static const c5Ad16Xlarge = InstanceType._(
    33,
    'c5ad_16xlarge',
    'c5ad.16xlarge',
  );

  static const c5Ad24Xlarge = InstanceType._(
    34,
    'c5ad_24xlarge',
    'c5ad.24xlarge',
  );

  static const c5Ad2Xlarge = InstanceType._(
    35,
    'c5ad_2xlarge',
    'c5ad.2xlarge',
  );

  static const c5Ad4Xlarge = InstanceType._(
    36,
    'c5ad_4xlarge',
    'c5ad.4xlarge',
  );

  static const c5Ad8Xlarge = InstanceType._(
    37,
    'c5ad_8xlarge',
    'c5ad.8xlarge',
  );

  static const c5AdLarge = InstanceType._(
    38,
    'c5ad_large',
    'c5ad.large',
  );

  static const c5AdXlarge = InstanceType._(
    39,
    'c5ad_xlarge',
    'c5ad.xlarge',
  );

  static const c5D12Xlarge = InstanceType._(
    40,
    'c5d_12xlarge',
    'c5d.12xlarge',
  );

  static const c5D18Xlarge = InstanceType._(
    41,
    'c5d_18xlarge',
    'c5d.18xlarge',
  );

  static const c5D24Xlarge = InstanceType._(
    42,
    'c5d_24xlarge',
    'c5d.24xlarge',
  );

  static const c5D2Xlarge = InstanceType._(
    43,
    'c5d_2xlarge',
    'c5d.2xlarge',
  );

  static const c5D4Xlarge = InstanceType._(
    44,
    'c5d_4xlarge',
    'c5d.4xlarge',
  );

  static const c5D9Xlarge = InstanceType._(
    45,
    'c5d_9xlarge',
    'c5d.9xlarge',
  );

  static const c5DLarge = InstanceType._(
    46,
    'c5d_large',
    'c5d.large',
  );

  static const c5DMetal = InstanceType._(
    47,
    'c5d_metal',
    'c5d.metal',
  );

  static const c5DXlarge = InstanceType._(
    48,
    'c5d_xlarge',
    'c5d.xlarge',
  );

  static const c5Large = InstanceType._(
    49,
    'c5_large',
    'c5.large',
  );

  static const c5Metal = InstanceType._(
    50,
    'c5_metal',
    'c5.metal',
  );

  static const c5N18Xlarge = InstanceType._(
    51,
    'c5n_18xlarge',
    'c5n.18xlarge',
  );

  static const c5N2Xlarge = InstanceType._(
    52,
    'c5n_2xlarge',
    'c5n.2xlarge',
  );

  static const c5N4Xlarge = InstanceType._(
    53,
    'c5n_4xlarge',
    'c5n.4xlarge',
  );

  static const c5N9Xlarge = InstanceType._(
    54,
    'c5n_9xlarge',
    'c5n.9xlarge',
  );

  static const c5NLarge = InstanceType._(
    55,
    'c5n_large',
    'c5n.large',
  );

  static const c5NMetal = InstanceType._(
    56,
    'c5n_metal',
    'c5n.metal',
  );

  static const c5NXlarge = InstanceType._(
    57,
    'c5n_xlarge',
    'c5n.xlarge',
  );

  static const c5Xlarge = InstanceType._(
    58,
    'c5_xlarge',
    'c5.xlarge',
  );

  static const c6A12Xlarge = InstanceType._(
    59,
    'c6a_12xlarge',
    'c6a.12xlarge',
  );

  static const c6A16Xlarge = InstanceType._(
    60,
    'c6a_16xlarge',
    'c6a.16xlarge',
  );

  static const c6A24Xlarge = InstanceType._(
    61,
    'c6a_24xlarge',
    'c6a.24xlarge',
  );

  static const c6A2Xlarge = InstanceType._(
    62,
    'c6a_2xlarge',
    'c6a.2xlarge',
  );

  static const c6A32Xlarge = InstanceType._(
    63,
    'c6a_32xlarge',
    'c6a.32xlarge',
  );

  static const c6A48Xlarge = InstanceType._(
    64,
    'c6a_48xlarge',
    'c6a.48xlarge',
  );

  static const c6A4Xlarge = InstanceType._(
    65,
    'c6a_4xlarge',
    'c6a.4xlarge',
  );

  static const c6A8Xlarge = InstanceType._(
    66,
    'c6a_8xlarge',
    'c6a.8xlarge',
  );

  static const c6ALarge = InstanceType._(
    67,
    'c6a_large',
    'c6a.large',
  );

  static const c6AMetal = InstanceType._(
    68,
    'c6a_metal',
    'c6a.metal',
  );

  static const c6AXlarge = InstanceType._(
    69,
    'c6a_xlarge',
    'c6a.xlarge',
  );

  static const c6G12Xlarge = InstanceType._(
    70,
    'c6g_12xlarge',
    'c6g.12xlarge',
  );

  static const c6G16Xlarge = InstanceType._(
    71,
    'c6g_16xlarge',
    'c6g.16xlarge',
  );

  static const c6G2Xlarge = InstanceType._(
    72,
    'c6g_2xlarge',
    'c6g.2xlarge',
  );

  static const c6G4Xlarge = InstanceType._(
    73,
    'c6g_4xlarge',
    'c6g.4xlarge',
  );

  static const c6G8Xlarge = InstanceType._(
    74,
    'c6g_8xlarge',
    'c6g.8xlarge',
  );

  static const c6GLarge = InstanceType._(
    75,
    'c6g_large',
    'c6g.large',
  );

  static const c6GMedium = InstanceType._(
    76,
    'c6g_medium',
    'c6g.medium',
  );

  static const c6GMetal = InstanceType._(
    77,
    'c6g_metal',
    'c6g.metal',
  );

  static const c6GXlarge = InstanceType._(
    78,
    'c6g_xlarge',
    'c6g.xlarge',
  );

  static const c6Gd12Xlarge = InstanceType._(
    79,
    'c6gd_12xlarge',
    'c6gd.12xlarge',
  );

  static const c6Gd16Xlarge = InstanceType._(
    80,
    'c6gd_16xlarge',
    'c6gd.16xlarge',
  );

  static const c6Gd2Xlarge = InstanceType._(
    81,
    'c6gd_2xlarge',
    'c6gd.2xlarge',
  );

  static const c6Gd4Xlarge = InstanceType._(
    82,
    'c6gd_4xlarge',
    'c6gd.4xlarge',
  );

  static const c6Gd8Xlarge = InstanceType._(
    83,
    'c6gd_8xlarge',
    'c6gd.8xlarge',
  );

  static const c6GdLarge = InstanceType._(
    84,
    'c6gd_large',
    'c6gd.large',
  );

  static const c6GdMedium = InstanceType._(
    85,
    'c6gd_medium',
    'c6gd.medium',
  );

  static const c6GdMetal = InstanceType._(
    86,
    'c6gd_metal',
    'c6gd.metal',
  );

  static const c6GdXlarge = InstanceType._(
    87,
    'c6gd_xlarge',
    'c6gd.xlarge',
  );

  static const c6Gn12Xlarge = InstanceType._(
    88,
    'c6gn_12xlarge',
    'c6gn.12xlarge',
  );

  static const c6Gn16Xlarge = InstanceType._(
    89,
    'c6gn_16xlarge',
    'c6gn.16xlarge',
  );

  static const c6Gn2Xlarge = InstanceType._(
    90,
    'c6gn_2xlarge',
    'c6gn.2xlarge',
  );

  static const c6Gn4Xlarge = InstanceType._(
    91,
    'c6gn_4xlarge',
    'c6gn.4xlarge',
  );

  static const c6Gn8Xlarge = InstanceType._(
    92,
    'c6gn_8xlarge',
    'c6gn.8xlarge',
  );

  static const c6GnLarge = InstanceType._(
    93,
    'c6gn_large',
    'c6gn.large',
  );

  static const c6GnMedium = InstanceType._(
    94,
    'c6gn_medium',
    'c6gn.medium',
  );

  static const c6GnXlarge = InstanceType._(
    95,
    'c6gn_xlarge',
    'c6gn.xlarge',
  );

  static const c6I12Xlarge = InstanceType._(
    96,
    'c6i_12xlarge',
    'c6i.12xlarge',
  );

  static const c6I16Xlarge = InstanceType._(
    97,
    'c6i_16xlarge',
    'c6i.16xlarge',
  );

  static const c6I24Xlarge = InstanceType._(
    98,
    'c6i_24xlarge',
    'c6i.24xlarge',
  );

  static const c6I2Xlarge = InstanceType._(
    99,
    'c6i_2xlarge',
    'c6i.2xlarge',
  );

  static const c6I32Xlarge = InstanceType._(
    100,
    'c6i_32xlarge',
    'c6i.32xlarge',
  );

  static const c6I4Xlarge = InstanceType._(
    101,
    'c6i_4xlarge',
    'c6i.4xlarge',
  );

  static const c6I8Xlarge = InstanceType._(
    102,
    'c6i_8xlarge',
    'c6i.8xlarge',
  );

  static const c6ILarge = InstanceType._(
    103,
    'c6i_large',
    'c6i.large',
  );

  static const c6IMetal = InstanceType._(
    104,
    'c6i_metal',
    'c6i.metal',
  );

  static const c6IXlarge = InstanceType._(
    105,
    'c6i_xlarge',
    'c6i.xlarge',
  );

  static const c6Id12Xlarge = InstanceType._(
    106,
    'c6id_12xlarge',
    'c6id.12xlarge',
  );

  static const c6Id16Xlarge = InstanceType._(
    107,
    'c6id_16xlarge',
    'c6id.16xlarge',
  );

  static const c6Id24Xlarge = InstanceType._(
    108,
    'c6id_24xlarge',
    'c6id.24xlarge',
  );

  static const c6Id2Xlarge = InstanceType._(
    109,
    'c6id_2xlarge',
    'c6id.2xlarge',
  );

  static const c6Id32Xlarge = InstanceType._(
    110,
    'c6id_32xlarge',
    'c6id.32xlarge',
  );

  static const c6Id4Xlarge = InstanceType._(
    111,
    'c6id_4xlarge',
    'c6id.4xlarge',
  );

  static const c6Id8Xlarge = InstanceType._(
    112,
    'c6id_8xlarge',
    'c6id.8xlarge',
  );

  static const c6IdLarge = InstanceType._(
    113,
    'c6id_large',
    'c6id.large',
  );

  static const c6IdMetal = InstanceType._(
    114,
    'c6id_metal',
    'c6id.metal',
  );

  static const c6IdXlarge = InstanceType._(
    115,
    'c6id_xlarge',
    'c6id.xlarge',
  );

  static const c7G12Xlarge = InstanceType._(
    116,
    'c7g_12xlarge',
    'c7g.12xlarge',
  );

  static const c7G16Xlarge = InstanceType._(
    117,
    'c7g_16xlarge',
    'c7g.16xlarge',
  );

  static const c7G2Xlarge = InstanceType._(
    118,
    'c7g_2xlarge',
    'c7g.2xlarge',
  );

  static const c7G4Xlarge = InstanceType._(
    119,
    'c7g_4xlarge',
    'c7g.4xlarge',
  );

  static const c7G8Xlarge = InstanceType._(
    120,
    'c7g_8xlarge',
    'c7g.8xlarge',
  );

  static const c7GLarge = InstanceType._(
    121,
    'c7g_large',
    'c7g.large',
  );

  static const c7GMedium = InstanceType._(
    122,
    'c7g_medium',
    'c7g.medium',
  );

  static const c7GXlarge = InstanceType._(
    123,
    'c7g_xlarge',
    'c7g.xlarge',
  );

  static const cc14Xlarge = InstanceType._(
    124,
    'cc1_4xlarge',
    'cc1.4xlarge',
  );

  static const cc28Xlarge = InstanceType._(
    125,
    'cc2_8xlarge',
    'cc2.8xlarge',
  );

  static const cg14Xlarge = InstanceType._(
    126,
    'cg1_4xlarge',
    'cg1.4xlarge',
  );

  static const cr18Xlarge = InstanceType._(
    127,
    'cr1_8xlarge',
    'cr1.8xlarge',
  );

  static const d22Xlarge = InstanceType._(
    128,
    'd2_2xlarge',
    'd2.2xlarge',
  );

  static const d24Xlarge = InstanceType._(
    129,
    'd2_4xlarge',
    'd2.4xlarge',
  );

  static const d28Xlarge = InstanceType._(
    130,
    'd2_8xlarge',
    'd2.8xlarge',
  );

  static const d2Xlarge = InstanceType._(
    131,
    'd2_xlarge',
    'd2.xlarge',
  );

  static const d32Xlarge = InstanceType._(
    132,
    'd3_2xlarge',
    'd3.2xlarge',
  );

  static const d34Xlarge = InstanceType._(
    133,
    'd3_4xlarge',
    'd3.4xlarge',
  );

  static const d38Xlarge = InstanceType._(
    134,
    'd3_8xlarge',
    'd3.8xlarge',
  );

  static const d3En12Xlarge = InstanceType._(
    135,
    'd3en_12xlarge',
    'd3en.12xlarge',
  );

  static const d3En2Xlarge = InstanceType._(
    136,
    'd3en_2xlarge',
    'd3en.2xlarge',
  );

  static const d3En4Xlarge = InstanceType._(
    137,
    'd3en_4xlarge',
    'd3en.4xlarge',
  );

  static const d3En6Xlarge = InstanceType._(
    138,
    'd3en_6xlarge',
    'd3en.6xlarge',
  );

  static const d3En8Xlarge = InstanceType._(
    139,
    'd3en_8xlarge',
    'd3en.8xlarge',
  );

  static const d3EnXlarge = InstanceType._(
    140,
    'd3en_xlarge',
    'd3en.xlarge',
  );

  static const d3Xlarge = InstanceType._(
    141,
    'd3_xlarge',
    'd3.xlarge',
  );

  static const dl124Xlarge = InstanceType._(
    142,
    'dl1_24xlarge',
    'dl1.24xlarge',
  );

  static const f116Xlarge = InstanceType._(
    143,
    'f1_16xlarge',
    'f1.16xlarge',
  );

  static const f12Xlarge = InstanceType._(
    144,
    'f1_2xlarge',
    'f1.2xlarge',
  );

  static const f14Xlarge = InstanceType._(
    145,
    'f1_4xlarge',
    'f1.4xlarge',
  );

  static const g22Xlarge = InstanceType._(
    146,
    'g2_2xlarge',
    'g2.2xlarge',
  );

  static const g28Xlarge = InstanceType._(
    147,
    'g2_8xlarge',
    'g2.8xlarge',
  );

  static const g316Xlarge = InstanceType._(
    148,
    'g3_16xlarge',
    'g3.16xlarge',
  );

  static const g34Xlarge = InstanceType._(
    149,
    'g3_4xlarge',
    'g3.4xlarge',
  );

  static const g38Xlarge = InstanceType._(
    150,
    'g3_8xlarge',
    'g3.8xlarge',
  );

  static const g3SXlarge = InstanceType._(
    151,
    'g3s_xlarge',
    'g3s.xlarge',
  );

  static const g4Ad16Xlarge = InstanceType._(
    152,
    'g4ad_16xlarge',
    'g4ad.16xlarge',
  );

  static const g4Ad2Xlarge = InstanceType._(
    153,
    'g4ad_2xlarge',
    'g4ad.2xlarge',
  );

  static const g4Ad4Xlarge = InstanceType._(
    154,
    'g4ad_4xlarge',
    'g4ad.4xlarge',
  );

  static const g4Ad8Xlarge = InstanceType._(
    155,
    'g4ad_8xlarge',
    'g4ad.8xlarge',
  );

  static const g4AdXlarge = InstanceType._(
    156,
    'g4ad_xlarge',
    'g4ad.xlarge',
  );

  static const g4Dn12Xlarge = InstanceType._(
    157,
    'g4dn_12xlarge',
    'g4dn.12xlarge',
  );

  static const g4Dn16Xlarge = InstanceType._(
    158,
    'g4dn_16xlarge',
    'g4dn.16xlarge',
  );

  static const g4Dn2Xlarge = InstanceType._(
    159,
    'g4dn_2xlarge',
    'g4dn.2xlarge',
  );

  static const g4Dn4Xlarge = InstanceType._(
    160,
    'g4dn_4xlarge',
    'g4dn.4xlarge',
  );

  static const g4Dn8Xlarge = InstanceType._(
    161,
    'g4dn_8xlarge',
    'g4dn.8xlarge',
  );

  static const g4DnMetal = InstanceType._(
    162,
    'g4dn_metal',
    'g4dn.metal',
  );

  static const g4DnXlarge = InstanceType._(
    163,
    'g4dn_xlarge',
    'g4dn.xlarge',
  );

  static const g512Xlarge = InstanceType._(
    164,
    'g5_12xlarge',
    'g5.12xlarge',
  );

  static const g516Xlarge = InstanceType._(
    165,
    'g5_16xlarge',
    'g5.16xlarge',
  );

  static const g524Xlarge = InstanceType._(
    166,
    'g5_24xlarge',
    'g5.24xlarge',
  );

  static const g52Xlarge = InstanceType._(
    167,
    'g5_2xlarge',
    'g5.2xlarge',
  );

  static const g548Xlarge = InstanceType._(
    168,
    'g5_48xlarge',
    'g5.48xlarge',
  );

  static const g54Xlarge = InstanceType._(
    169,
    'g5_4xlarge',
    'g5.4xlarge',
  );

  static const g58Xlarge = InstanceType._(
    170,
    'g5_8xlarge',
    'g5.8xlarge',
  );

  static const g5G16Xlarge = InstanceType._(
    171,
    'g5g_16xlarge',
    'g5g.16xlarge',
  );

  static const g5G2Xlarge = InstanceType._(
    172,
    'g5g_2xlarge',
    'g5g.2xlarge',
  );

  static const g5G4Xlarge = InstanceType._(
    173,
    'g5g_4xlarge',
    'g5g.4xlarge',
  );

  static const g5G8Xlarge = InstanceType._(
    174,
    'g5g_8xlarge',
    'g5g.8xlarge',
  );

  static const g5GMetal = InstanceType._(
    175,
    'g5g_metal',
    'g5g.metal',
  );

  static const g5GXlarge = InstanceType._(
    176,
    'g5g_xlarge',
    'g5g.xlarge',
  );

  static const g5Xlarge = InstanceType._(
    177,
    'g5_xlarge',
    'g5.xlarge',
  );

  static const h116Xlarge = InstanceType._(
    178,
    'h1_16xlarge',
    'h1.16xlarge',
  );

  static const h12Xlarge = InstanceType._(
    179,
    'h1_2xlarge',
    'h1.2xlarge',
  );

  static const h14Xlarge = InstanceType._(
    180,
    'h1_4xlarge',
    'h1.4xlarge',
  );

  static const h18Xlarge = InstanceType._(
    181,
    'h1_8xlarge',
    'h1.8xlarge',
  );

  static const hi14Xlarge = InstanceType._(
    182,
    'hi1_4xlarge',
    'hi1.4xlarge',
  );

  static const hpc6A48Xlarge = InstanceType._(
    183,
    'hpc6a_48xlarge',
    'hpc6a.48xlarge',
  );

  static const hs18Xlarge = InstanceType._(
    184,
    'hs1_8xlarge',
    'hs1.8xlarge',
  );

  static const i22Xlarge = InstanceType._(
    185,
    'i2_2xlarge',
    'i2.2xlarge',
  );

  static const i24Xlarge = InstanceType._(
    186,
    'i2_4xlarge',
    'i2.4xlarge',
  );

  static const i28Xlarge = InstanceType._(
    187,
    'i2_8xlarge',
    'i2.8xlarge',
  );

  static const i2Xlarge = InstanceType._(
    188,
    'i2_xlarge',
    'i2.xlarge',
  );

  static const i316Xlarge = InstanceType._(
    189,
    'i3_16xlarge',
    'i3.16xlarge',
  );

  static const i32Xlarge = InstanceType._(
    190,
    'i3_2xlarge',
    'i3.2xlarge',
  );

  static const i34Xlarge = InstanceType._(
    191,
    'i3_4xlarge',
    'i3.4xlarge',
  );

  static const i38Xlarge = InstanceType._(
    192,
    'i3_8xlarge',
    'i3.8xlarge',
  );

  static const i3En12Xlarge = InstanceType._(
    193,
    'i3en_12xlarge',
    'i3en.12xlarge',
  );

  static const i3En24Xlarge = InstanceType._(
    194,
    'i3en_24xlarge',
    'i3en.24xlarge',
  );

  static const i3En2Xlarge = InstanceType._(
    195,
    'i3en_2xlarge',
    'i3en.2xlarge',
  );

  static const i3En3Xlarge = InstanceType._(
    196,
    'i3en_3xlarge',
    'i3en.3xlarge',
  );

  static const i3En6Xlarge = InstanceType._(
    197,
    'i3en_6xlarge',
    'i3en.6xlarge',
  );

  static const i3EnLarge = InstanceType._(
    198,
    'i3en_large',
    'i3en.large',
  );

  static const i3EnMetal = InstanceType._(
    199,
    'i3en_metal',
    'i3en.metal',
  );

  static const i3EnXlarge = InstanceType._(
    200,
    'i3en_xlarge',
    'i3en.xlarge',
  );

  static const i3Large = InstanceType._(
    201,
    'i3_large',
    'i3.large',
  );

  static const i3Metal = InstanceType._(
    202,
    'i3_metal',
    'i3.metal',
  );

  static const i3Xlarge = InstanceType._(
    203,
    'i3_xlarge',
    'i3.xlarge',
  );

  static const i4I16Xlarge = InstanceType._(
    204,
    'i4i_16xlarge',
    'i4i.16xlarge',
  );

  static const i4I2Xlarge = InstanceType._(
    205,
    'i4i_2xlarge',
    'i4i.2xlarge',
  );

  static const i4I32Xlarge = InstanceType._(
    206,
    'i4i_32xlarge',
    'i4i.32xlarge',
  );

  static const i4I4Xlarge = InstanceType._(
    207,
    'i4i_4xlarge',
    'i4i.4xlarge',
  );

  static const i4I8Xlarge = InstanceType._(
    208,
    'i4i_8xlarge',
    'i4i.8xlarge',
  );

  static const i4ILarge = InstanceType._(
    209,
    'i4i_large',
    'i4i.large',
  );

  static const i4IMetal = InstanceType._(
    210,
    'i4i_metal',
    'i4i.metal',
  );

  static const i4IXlarge = InstanceType._(
    211,
    'i4i_xlarge',
    'i4i.xlarge',
  );

  static const im4Gn16Xlarge = InstanceType._(
    212,
    'im4gn_16xlarge',
    'im4gn.16xlarge',
  );

  static const im4Gn2Xlarge = InstanceType._(
    213,
    'im4gn_2xlarge',
    'im4gn.2xlarge',
  );

  static const im4Gn4Xlarge = InstanceType._(
    214,
    'im4gn_4xlarge',
    'im4gn.4xlarge',
  );

  static const im4Gn8Xlarge = InstanceType._(
    215,
    'im4gn_8xlarge',
    'im4gn.8xlarge',
  );

  static const im4GnLarge = InstanceType._(
    216,
    'im4gn_large',
    'im4gn.large',
  );

  static const im4GnXlarge = InstanceType._(
    217,
    'im4gn_xlarge',
    'im4gn.xlarge',
  );

  static const inf124Xlarge = InstanceType._(
    218,
    'inf1_24xlarge',
    'inf1.24xlarge',
  );

  static const inf12Xlarge = InstanceType._(
    219,
    'inf1_2xlarge',
    'inf1.2xlarge',
  );

  static const inf16Xlarge = InstanceType._(
    220,
    'inf1_6xlarge',
    'inf1.6xlarge',
  );

  static const inf1Xlarge = InstanceType._(
    221,
    'inf1_xlarge',
    'inf1.xlarge',
  );

  static const is4Gen2Xlarge = InstanceType._(
    222,
    'is4gen_2xlarge',
    'is4gen.2xlarge',
  );

  static const is4Gen4Xlarge = InstanceType._(
    223,
    'is4gen_4xlarge',
    'is4gen.4xlarge',
  );

  static const is4Gen8Xlarge = InstanceType._(
    224,
    'is4gen_8xlarge',
    'is4gen.8xlarge',
  );

  static const is4GenLarge = InstanceType._(
    225,
    'is4gen_large',
    'is4gen.large',
  );

  static const is4GenMedium = InstanceType._(
    226,
    'is4gen_medium',
    'is4gen.medium',
  );

  static const is4GenXlarge = InstanceType._(
    227,
    'is4gen_xlarge',
    'is4gen.xlarge',
  );

  static const m1Large = InstanceType._(
    228,
    'm1_large',
    'm1.large',
  );

  static const m1Medium = InstanceType._(
    229,
    'm1_medium',
    'm1.medium',
  );

  static const m1Small = InstanceType._(
    230,
    'm1_small',
    'm1.small',
  );

  static const m1Xlarge = InstanceType._(
    231,
    'm1_xlarge',
    'm1.xlarge',
  );

  static const m22Xlarge = InstanceType._(
    232,
    'm2_2xlarge',
    'm2.2xlarge',
  );

  static const m24Xlarge = InstanceType._(
    233,
    'm2_4xlarge',
    'm2.4xlarge',
  );

  static const m2Xlarge = InstanceType._(
    234,
    'm2_xlarge',
    'm2.xlarge',
  );

  static const m32Xlarge = InstanceType._(
    235,
    'm3_2xlarge',
    'm3.2xlarge',
  );

  static const m3Large = InstanceType._(
    236,
    'm3_large',
    'm3.large',
  );

  static const m3Medium = InstanceType._(
    237,
    'm3_medium',
    'm3.medium',
  );

  static const m3Xlarge = InstanceType._(
    238,
    'm3_xlarge',
    'm3.xlarge',
  );

  static const m410Xlarge = InstanceType._(
    239,
    'm4_10xlarge',
    'm4.10xlarge',
  );

  static const m416Xlarge = InstanceType._(
    240,
    'm4_16xlarge',
    'm4.16xlarge',
  );

  static const m42Xlarge = InstanceType._(
    241,
    'm4_2xlarge',
    'm4.2xlarge',
  );

  static const m44Xlarge = InstanceType._(
    242,
    'm4_4xlarge',
    'm4.4xlarge',
  );

  static const m4Large = InstanceType._(
    243,
    'm4_large',
    'm4.large',
  );

  static const m4Xlarge = InstanceType._(
    244,
    'm4_xlarge',
    'm4.xlarge',
  );

  static const m512Xlarge = InstanceType._(
    245,
    'm5_12xlarge',
    'm5.12xlarge',
  );

  static const m516Xlarge = InstanceType._(
    246,
    'm5_16xlarge',
    'm5.16xlarge',
  );

  static const m524Xlarge = InstanceType._(
    247,
    'm5_24xlarge',
    'm5.24xlarge',
  );

  static const m52Xlarge = InstanceType._(
    248,
    'm5_2xlarge',
    'm5.2xlarge',
  );

  static const m54Xlarge = InstanceType._(
    249,
    'm5_4xlarge',
    'm5.4xlarge',
  );

  static const m58Xlarge = InstanceType._(
    250,
    'm5_8xlarge',
    'm5.8xlarge',
  );

  static const m5A12Xlarge = InstanceType._(
    251,
    'm5a_12xlarge',
    'm5a.12xlarge',
  );

  static const m5A16Xlarge = InstanceType._(
    252,
    'm5a_16xlarge',
    'm5a.16xlarge',
  );

  static const m5A24Xlarge = InstanceType._(
    253,
    'm5a_24xlarge',
    'm5a.24xlarge',
  );

  static const m5A2Xlarge = InstanceType._(
    254,
    'm5a_2xlarge',
    'm5a.2xlarge',
  );

  static const m5A4Xlarge = InstanceType._(
    255,
    'm5a_4xlarge',
    'm5a.4xlarge',
  );

  static const m5A8Xlarge = InstanceType._(
    256,
    'm5a_8xlarge',
    'm5a.8xlarge',
  );

  static const m5ALarge = InstanceType._(
    257,
    'm5a_large',
    'm5a.large',
  );

  static const m5AXlarge = InstanceType._(
    258,
    'm5a_xlarge',
    'm5a.xlarge',
  );

  static const m5Ad12Xlarge = InstanceType._(
    259,
    'm5ad_12xlarge',
    'm5ad.12xlarge',
  );

  static const m5Ad16Xlarge = InstanceType._(
    260,
    'm5ad_16xlarge',
    'm5ad.16xlarge',
  );

  static const m5Ad24Xlarge = InstanceType._(
    261,
    'm5ad_24xlarge',
    'm5ad.24xlarge',
  );

  static const m5Ad2Xlarge = InstanceType._(
    262,
    'm5ad_2xlarge',
    'm5ad.2xlarge',
  );

  static const m5Ad4Xlarge = InstanceType._(
    263,
    'm5ad_4xlarge',
    'm5ad.4xlarge',
  );

  static const m5Ad8Xlarge = InstanceType._(
    264,
    'm5ad_8xlarge',
    'm5ad.8xlarge',
  );

  static const m5AdLarge = InstanceType._(
    265,
    'm5ad_large',
    'm5ad.large',
  );

  static const m5AdXlarge = InstanceType._(
    266,
    'm5ad_xlarge',
    'm5ad.xlarge',
  );

  static const m5D12Xlarge = InstanceType._(
    267,
    'm5d_12xlarge',
    'm5d.12xlarge',
  );

  static const m5D16Xlarge = InstanceType._(
    268,
    'm5d_16xlarge',
    'm5d.16xlarge',
  );

  static const m5D24Xlarge = InstanceType._(
    269,
    'm5d_24xlarge',
    'm5d.24xlarge',
  );

  static const m5D2Xlarge = InstanceType._(
    270,
    'm5d_2xlarge',
    'm5d.2xlarge',
  );

  static const m5D4Xlarge = InstanceType._(
    271,
    'm5d_4xlarge',
    'm5d.4xlarge',
  );

  static const m5D8Xlarge = InstanceType._(
    272,
    'm5d_8xlarge',
    'm5d.8xlarge',
  );

  static const m5DLarge = InstanceType._(
    273,
    'm5d_large',
    'm5d.large',
  );

  static const m5DMetal = InstanceType._(
    274,
    'm5d_metal',
    'm5d.metal',
  );

  static const m5DXlarge = InstanceType._(
    275,
    'm5d_xlarge',
    'm5d.xlarge',
  );

  static const m5Dn12Xlarge = InstanceType._(
    276,
    'm5dn_12xlarge',
    'm5dn.12xlarge',
  );

  static const m5Dn16Xlarge = InstanceType._(
    277,
    'm5dn_16xlarge',
    'm5dn.16xlarge',
  );

  static const m5Dn24Xlarge = InstanceType._(
    278,
    'm5dn_24xlarge',
    'm5dn.24xlarge',
  );

  static const m5Dn2Xlarge = InstanceType._(
    279,
    'm5dn_2xlarge',
    'm5dn.2xlarge',
  );

  static const m5Dn4Xlarge = InstanceType._(
    280,
    'm5dn_4xlarge',
    'm5dn.4xlarge',
  );

  static const m5Dn8Xlarge = InstanceType._(
    281,
    'm5dn_8xlarge',
    'm5dn.8xlarge',
  );

  static const m5DnLarge = InstanceType._(
    282,
    'm5dn_large',
    'm5dn.large',
  );

  static const m5DnMetal = InstanceType._(
    283,
    'm5dn_metal',
    'm5dn.metal',
  );

  static const m5DnXlarge = InstanceType._(
    284,
    'm5dn_xlarge',
    'm5dn.xlarge',
  );

  static const m5Large = InstanceType._(
    285,
    'm5_large',
    'm5.large',
  );

  static const m5Metal = InstanceType._(
    286,
    'm5_metal',
    'm5.metal',
  );

  static const m5N12Xlarge = InstanceType._(
    287,
    'm5n_12xlarge',
    'm5n.12xlarge',
  );

  static const m5N16Xlarge = InstanceType._(
    288,
    'm5n_16xlarge',
    'm5n.16xlarge',
  );

  static const m5N24Xlarge = InstanceType._(
    289,
    'm5n_24xlarge',
    'm5n.24xlarge',
  );

  static const m5N2Xlarge = InstanceType._(
    290,
    'm5n_2xlarge',
    'm5n.2xlarge',
  );

  static const m5N4Xlarge = InstanceType._(
    291,
    'm5n_4xlarge',
    'm5n.4xlarge',
  );

  static const m5N8Xlarge = InstanceType._(
    292,
    'm5n_8xlarge',
    'm5n.8xlarge',
  );

  static const m5NLarge = InstanceType._(
    293,
    'm5n_large',
    'm5n.large',
  );

  static const m5NMetal = InstanceType._(
    294,
    'm5n_metal',
    'm5n.metal',
  );

  static const m5NXlarge = InstanceType._(
    295,
    'm5n_xlarge',
    'm5n.xlarge',
  );

  static const m5Xlarge = InstanceType._(
    296,
    'm5_xlarge',
    'm5.xlarge',
  );

  static const m5Zn12Xlarge = InstanceType._(
    297,
    'm5zn_12xlarge',
    'm5zn.12xlarge',
  );

  static const m5Zn2Xlarge = InstanceType._(
    298,
    'm5zn_2xlarge',
    'm5zn.2xlarge',
  );

  static const m5Zn3Xlarge = InstanceType._(
    299,
    'm5zn_3xlarge',
    'm5zn.3xlarge',
  );

  static const m5Zn6Xlarge = InstanceType._(
    300,
    'm5zn_6xlarge',
    'm5zn.6xlarge',
  );

  static const m5ZnLarge = InstanceType._(
    301,
    'm5zn_large',
    'm5zn.large',
  );

  static const m5ZnMetal = InstanceType._(
    302,
    'm5zn_metal',
    'm5zn.metal',
  );

  static const m5ZnXlarge = InstanceType._(
    303,
    'm5zn_xlarge',
    'm5zn.xlarge',
  );

  static const m6A12Xlarge = InstanceType._(
    304,
    'm6a_12xlarge',
    'm6a.12xlarge',
  );

  static const m6A16Xlarge = InstanceType._(
    305,
    'm6a_16xlarge',
    'm6a.16xlarge',
  );

  static const m6A24Xlarge = InstanceType._(
    306,
    'm6a_24xlarge',
    'm6a.24xlarge',
  );

  static const m6A2Xlarge = InstanceType._(
    307,
    'm6a_2xlarge',
    'm6a.2xlarge',
  );

  static const m6A32Xlarge = InstanceType._(
    308,
    'm6a_32xlarge',
    'm6a.32xlarge',
  );

  static const m6A48Xlarge = InstanceType._(
    309,
    'm6a_48xlarge',
    'm6a.48xlarge',
  );

  static const m6A4Xlarge = InstanceType._(
    310,
    'm6a_4xlarge',
    'm6a.4xlarge',
  );

  static const m6A8Xlarge = InstanceType._(
    311,
    'm6a_8xlarge',
    'm6a.8xlarge',
  );

  static const m6ALarge = InstanceType._(
    312,
    'm6a_large',
    'm6a.large',
  );

  static const m6AMetal = InstanceType._(
    313,
    'm6a_metal',
    'm6a.metal',
  );

  static const m6AXlarge = InstanceType._(
    314,
    'm6a_xlarge',
    'm6a.xlarge',
  );

  static const m6G12Xlarge = InstanceType._(
    315,
    'm6g_12xlarge',
    'm6g.12xlarge',
  );

  static const m6G16Xlarge = InstanceType._(
    316,
    'm6g_16xlarge',
    'm6g.16xlarge',
  );

  static const m6G2Xlarge = InstanceType._(
    317,
    'm6g_2xlarge',
    'm6g.2xlarge',
  );

  static const m6G4Xlarge = InstanceType._(
    318,
    'm6g_4xlarge',
    'm6g.4xlarge',
  );

  static const m6G8Xlarge = InstanceType._(
    319,
    'm6g_8xlarge',
    'm6g.8xlarge',
  );

  static const m6GLarge = InstanceType._(
    320,
    'm6g_large',
    'm6g.large',
  );

  static const m6GMedium = InstanceType._(
    321,
    'm6g_medium',
    'm6g.medium',
  );

  static const m6GMetal = InstanceType._(
    322,
    'm6g_metal',
    'm6g.metal',
  );

  static const m6GXlarge = InstanceType._(
    323,
    'm6g_xlarge',
    'm6g.xlarge',
  );

  static const m6Gd12Xlarge = InstanceType._(
    324,
    'm6gd_12xlarge',
    'm6gd.12xlarge',
  );

  static const m6Gd16Xlarge = InstanceType._(
    325,
    'm6gd_16xlarge',
    'm6gd.16xlarge',
  );

  static const m6Gd2Xlarge = InstanceType._(
    326,
    'm6gd_2xlarge',
    'm6gd.2xlarge',
  );

  static const m6Gd4Xlarge = InstanceType._(
    327,
    'm6gd_4xlarge',
    'm6gd.4xlarge',
  );

  static const m6Gd8Xlarge = InstanceType._(
    328,
    'm6gd_8xlarge',
    'm6gd.8xlarge',
  );

  static const m6GdLarge = InstanceType._(
    329,
    'm6gd_large',
    'm6gd.large',
  );

  static const m6GdMedium = InstanceType._(
    330,
    'm6gd_medium',
    'm6gd.medium',
  );

  static const m6GdMetal = InstanceType._(
    331,
    'm6gd_metal',
    'm6gd.metal',
  );

  static const m6GdXlarge = InstanceType._(
    332,
    'm6gd_xlarge',
    'm6gd.xlarge',
  );

  static const m6I12Xlarge = InstanceType._(
    333,
    'm6i_12xlarge',
    'm6i.12xlarge',
  );

  static const m6I16Xlarge = InstanceType._(
    334,
    'm6i_16xlarge',
    'm6i.16xlarge',
  );

  static const m6I24Xlarge = InstanceType._(
    335,
    'm6i_24xlarge',
    'm6i.24xlarge',
  );

  static const m6I2Xlarge = InstanceType._(
    336,
    'm6i_2xlarge',
    'm6i.2xlarge',
  );

  static const m6I32Xlarge = InstanceType._(
    337,
    'm6i_32xlarge',
    'm6i.32xlarge',
  );

  static const m6I4Xlarge = InstanceType._(
    338,
    'm6i_4xlarge',
    'm6i.4xlarge',
  );

  static const m6I8Xlarge = InstanceType._(
    339,
    'm6i_8xlarge',
    'm6i.8xlarge',
  );

  static const m6ILarge = InstanceType._(
    340,
    'm6i_large',
    'm6i.large',
  );

  static const m6IMetal = InstanceType._(
    341,
    'm6i_metal',
    'm6i.metal',
  );

  static const m6IXlarge = InstanceType._(
    342,
    'm6i_xlarge',
    'm6i.xlarge',
  );

  static const m6Id12Xlarge = InstanceType._(
    343,
    'm6id_12xlarge',
    'm6id.12xlarge',
  );

  static const m6Id16Xlarge = InstanceType._(
    344,
    'm6id_16xlarge',
    'm6id.16xlarge',
  );

  static const m6Id24Xlarge = InstanceType._(
    345,
    'm6id_24xlarge',
    'm6id.24xlarge',
  );

  static const m6Id2Xlarge = InstanceType._(
    346,
    'm6id_2xlarge',
    'm6id.2xlarge',
  );

  static const m6Id32Xlarge = InstanceType._(
    347,
    'm6id_32xlarge',
    'm6id.32xlarge',
  );

  static const m6Id4Xlarge = InstanceType._(
    348,
    'm6id_4xlarge',
    'm6id.4xlarge',
  );

  static const m6Id8Xlarge = InstanceType._(
    349,
    'm6id_8xlarge',
    'm6id.8xlarge',
  );

  static const m6IdLarge = InstanceType._(
    350,
    'm6id_large',
    'm6id.large',
  );

  static const m6IdMetal = InstanceType._(
    351,
    'm6id_metal',
    'm6id.metal',
  );

  static const m6IdXlarge = InstanceType._(
    352,
    'm6id_xlarge',
    'm6id.xlarge',
  );

  static const mac1Metal = InstanceType._(
    353,
    'mac1_metal',
    'mac1.metal',
  );

  static const mac2Metal = InstanceType._(
    354,
    'mac2_metal',
    'mac2.metal',
  );

  static const p216Xlarge = InstanceType._(
    355,
    'p2_16xlarge',
    'p2.16xlarge',
  );

  static const p28Xlarge = InstanceType._(
    356,
    'p2_8xlarge',
    'p2.8xlarge',
  );

  static const p2Xlarge = InstanceType._(
    357,
    'p2_xlarge',
    'p2.xlarge',
  );

  static const p316Xlarge = InstanceType._(
    358,
    'p3_16xlarge',
    'p3.16xlarge',
  );

  static const p32Xlarge = InstanceType._(
    359,
    'p3_2xlarge',
    'p3.2xlarge',
  );

  static const p38Xlarge = InstanceType._(
    360,
    'p3_8xlarge',
    'p3.8xlarge',
  );

  static const p3Dn24Xlarge = InstanceType._(
    361,
    'p3dn_24xlarge',
    'p3dn.24xlarge',
  );

  static const p4D24Xlarge = InstanceType._(
    362,
    'p4d_24xlarge',
    'p4d.24xlarge',
  );

  static const p4De24Xlarge = InstanceType._(
    363,
    'p4de_24xlarge',
    'p4de.24xlarge',
  );

  static const r32Xlarge = InstanceType._(
    364,
    'r3_2xlarge',
    'r3.2xlarge',
  );

  static const r34Xlarge = InstanceType._(
    365,
    'r3_4xlarge',
    'r3.4xlarge',
  );

  static const r38Xlarge = InstanceType._(
    366,
    'r3_8xlarge',
    'r3.8xlarge',
  );

  static const r3Large = InstanceType._(
    367,
    'r3_large',
    'r3.large',
  );

  static const r3Xlarge = InstanceType._(
    368,
    'r3_xlarge',
    'r3.xlarge',
  );

  static const r416Xlarge = InstanceType._(
    369,
    'r4_16xlarge',
    'r4.16xlarge',
  );

  static const r42Xlarge = InstanceType._(
    370,
    'r4_2xlarge',
    'r4.2xlarge',
  );

  static const r44Xlarge = InstanceType._(
    371,
    'r4_4xlarge',
    'r4.4xlarge',
  );

  static const r48Xlarge = InstanceType._(
    372,
    'r4_8xlarge',
    'r4.8xlarge',
  );

  static const r4Large = InstanceType._(
    373,
    'r4_large',
    'r4.large',
  );

  static const r4Xlarge = InstanceType._(
    374,
    'r4_xlarge',
    'r4.xlarge',
  );

  static const r512Xlarge = InstanceType._(
    375,
    'r5_12xlarge',
    'r5.12xlarge',
  );

  static const r516Xlarge = InstanceType._(
    376,
    'r5_16xlarge',
    'r5.16xlarge',
  );

  static const r524Xlarge = InstanceType._(
    377,
    'r5_24xlarge',
    'r5.24xlarge',
  );

  static const r52Xlarge = InstanceType._(
    378,
    'r5_2xlarge',
    'r5.2xlarge',
  );

  static const r54Xlarge = InstanceType._(
    379,
    'r5_4xlarge',
    'r5.4xlarge',
  );

  static const r58Xlarge = InstanceType._(
    380,
    'r5_8xlarge',
    'r5.8xlarge',
  );

  static const r5A12Xlarge = InstanceType._(
    381,
    'r5a_12xlarge',
    'r5a.12xlarge',
  );

  static const r5A16Xlarge = InstanceType._(
    382,
    'r5a_16xlarge',
    'r5a.16xlarge',
  );

  static const r5A24Xlarge = InstanceType._(
    383,
    'r5a_24xlarge',
    'r5a.24xlarge',
  );

  static const r5A2Xlarge = InstanceType._(
    384,
    'r5a_2xlarge',
    'r5a.2xlarge',
  );

  static const r5A4Xlarge = InstanceType._(
    385,
    'r5a_4xlarge',
    'r5a.4xlarge',
  );

  static const r5A8Xlarge = InstanceType._(
    386,
    'r5a_8xlarge',
    'r5a.8xlarge',
  );

  static const r5ALarge = InstanceType._(
    387,
    'r5a_large',
    'r5a.large',
  );

  static const r5AXlarge = InstanceType._(
    388,
    'r5a_xlarge',
    'r5a.xlarge',
  );

  static const r5Ad12Xlarge = InstanceType._(
    389,
    'r5ad_12xlarge',
    'r5ad.12xlarge',
  );

  static const r5Ad16Xlarge = InstanceType._(
    390,
    'r5ad_16xlarge',
    'r5ad.16xlarge',
  );

  static const r5Ad24Xlarge = InstanceType._(
    391,
    'r5ad_24xlarge',
    'r5ad.24xlarge',
  );

  static const r5Ad2Xlarge = InstanceType._(
    392,
    'r5ad_2xlarge',
    'r5ad.2xlarge',
  );

  static const r5Ad4Xlarge = InstanceType._(
    393,
    'r5ad_4xlarge',
    'r5ad.4xlarge',
  );

  static const r5Ad8Xlarge = InstanceType._(
    394,
    'r5ad_8xlarge',
    'r5ad.8xlarge',
  );

  static const r5AdLarge = InstanceType._(
    395,
    'r5ad_large',
    'r5ad.large',
  );

  static const r5AdXlarge = InstanceType._(
    396,
    'r5ad_xlarge',
    'r5ad.xlarge',
  );

  static const r5B12Xlarge = InstanceType._(
    397,
    'r5b_12xlarge',
    'r5b.12xlarge',
  );

  static const r5B16Xlarge = InstanceType._(
    398,
    'r5b_16xlarge',
    'r5b.16xlarge',
  );

  static const r5B24Xlarge = InstanceType._(
    399,
    'r5b_24xlarge',
    'r5b.24xlarge',
  );

  static const r5B2Xlarge = InstanceType._(
    400,
    'r5b_2xlarge',
    'r5b.2xlarge',
  );

  static const r5B4Xlarge = InstanceType._(
    401,
    'r5b_4xlarge',
    'r5b.4xlarge',
  );

  static const r5B8Xlarge = InstanceType._(
    402,
    'r5b_8xlarge',
    'r5b.8xlarge',
  );

  static const r5BLarge = InstanceType._(
    403,
    'r5b_large',
    'r5b.large',
  );

  static const r5BMetal = InstanceType._(
    404,
    'r5b_metal',
    'r5b.metal',
  );

  static const r5BXlarge = InstanceType._(
    405,
    'r5b_xlarge',
    'r5b.xlarge',
  );

  static const r5D12Xlarge = InstanceType._(
    406,
    'r5d_12xlarge',
    'r5d.12xlarge',
  );

  static const r5D16Xlarge = InstanceType._(
    407,
    'r5d_16xlarge',
    'r5d.16xlarge',
  );

  static const r5D24Xlarge = InstanceType._(
    408,
    'r5d_24xlarge',
    'r5d.24xlarge',
  );

  static const r5D2Xlarge = InstanceType._(
    409,
    'r5d_2xlarge',
    'r5d.2xlarge',
  );

  static const r5D4Xlarge = InstanceType._(
    410,
    'r5d_4xlarge',
    'r5d.4xlarge',
  );

  static const r5D8Xlarge = InstanceType._(
    411,
    'r5d_8xlarge',
    'r5d.8xlarge',
  );

  static const r5DLarge = InstanceType._(
    412,
    'r5d_large',
    'r5d.large',
  );

  static const r5DMetal = InstanceType._(
    413,
    'r5d_metal',
    'r5d.metal',
  );

  static const r5DXlarge = InstanceType._(
    414,
    'r5d_xlarge',
    'r5d.xlarge',
  );

  static const r5Dn12Xlarge = InstanceType._(
    415,
    'r5dn_12xlarge',
    'r5dn.12xlarge',
  );

  static const r5Dn16Xlarge = InstanceType._(
    416,
    'r5dn_16xlarge',
    'r5dn.16xlarge',
  );

  static const r5Dn24Xlarge = InstanceType._(
    417,
    'r5dn_24xlarge',
    'r5dn.24xlarge',
  );

  static const r5Dn2Xlarge = InstanceType._(
    418,
    'r5dn_2xlarge',
    'r5dn.2xlarge',
  );

  static const r5Dn4Xlarge = InstanceType._(
    419,
    'r5dn_4xlarge',
    'r5dn.4xlarge',
  );

  static const r5Dn8Xlarge = InstanceType._(
    420,
    'r5dn_8xlarge',
    'r5dn.8xlarge',
  );

  static const r5DnLarge = InstanceType._(
    421,
    'r5dn_large',
    'r5dn.large',
  );

  static const r5DnMetal = InstanceType._(
    422,
    'r5dn_metal',
    'r5dn.metal',
  );

  static const r5DnXlarge = InstanceType._(
    423,
    'r5dn_xlarge',
    'r5dn.xlarge',
  );

  static const r5Large = InstanceType._(
    424,
    'r5_large',
    'r5.large',
  );

  static const r5Metal = InstanceType._(
    425,
    'r5_metal',
    'r5.metal',
  );

  static const r5N12Xlarge = InstanceType._(
    426,
    'r5n_12xlarge',
    'r5n.12xlarge',
  );

  static const r5N16Xlarge = InstanceType._(
    427,
    'r5n_16xlarge',
    'r5n.16xlarge',
  );

  static const r5N24Xlarge = InstanceType._(
    428,
    'r5n_24xlarge',
    'r5n.24xlarge',
  );

  static const r5N2Xlarge = InstanceType._(
    429,
    'r5n_2xlarge',
    'r5n.2xlarge',
  );

  static const r5N4Xlarge = InstanceType._(
    430,
    'r5n_4xlarge',
    'r5n.4xlarge',
  );

  static const r5N8Xlarge = InstanceType._(
    431,
    'r5n_8xlarge',
    'r5n.8xlarge',
  );

  static const r5NLarge = InstanceType._(
    432,
    'r5n_large',
    'r5n.large',
  );

  static const r5NMetal = InstanceType._(
    433,
    'r5n_metal',
    'r5n.metal',
  );

  static const r5NXlarge = InstanceType._(
    434,
    'r5n_xlarge',
    'r5n.xlarge',
  );

  static const r5Xlarge = InstanceType._(
    435,
    'r5_xlarge',
    'r5.xlarge',
  );

  static const r6A12Xlarge = InstanceType._(
    436,
    'r6a_12xlarge',
    'r6a.12xlarge',
  );

  static const r6A16Xlarge = InstanceType._(
    437,
    'r6a_16xlarge',
    'r6a.16xlarge',
  );

  static const r6A24Xlarge = InstanceType._(
    438,
    'r6a_24xlarge',
    'r6a.24xlarge',
  );

  static const r6A2Xlarge = InstanceType._(
    439,
    'r6a_2xlarge',
    'r6a.2xlarge',
  );

  static const r6A32Xlarge = InstanceType._(
    440,
    'r6a_32xlarge',
    'r6a.32xlarge',
  );

  static const r6A48Xlarge = InstanceType._(
    441,
    'r6a_48xlarge',
    'r6a.48xlarge',
  );

  static const r6A4Xlarge = InstanceType._(
    442,
    'r6a_4xlarge',
    'r6a.4xlarge',
  );

  static const r6A8Xlarge = InstanceType._(
    443,
    'r6a_8xlarge',
    'r6a.8xlarge',
  );

  static const r6ALarge = InstanceType._(
    444,
    'r6a_large',
    'r6a.large',
  );

  static const r6AMetal = InstanceType._(
    445,
    'r6a_metal',
    'r6a.metal',
  );

  static const r6AXlarge = InstanceType._(
    446,
    'r6a_xlarge',
    'r6a.xlarge',
  );

  static const r6G12Xlarge = InstanceType._(
    447,
    'r6g_12xlarge',
    'r6g.12xlarge',
  );

  static const r6G16Xlarge = InstanceType._(
    448,
    'r6g_16xlarge',
    'r6g.16xlarge',
  );

  static const r6G2Xlarge = InstanceType._(
    449,
    'r6g_2xlarge',
    'r6g.2xlarge',
  );

  static const r6G4Xlarge = InstanceType._(
    450,
    'r6g_4xlarge',
    'r6g.4xlarge',
  );

  static const r6G8Xlarge = InstanceType._(
    451,
    'r6g_8xlarge',
    'r6g.8xlarge',
  );

  static const r6GLarge = InstanceType._(
    452,
    'r6g_large',
    'r6g.large',
  );

  static const r6GMedium = InstanceType._(
    453,
    'r6g_medium',
    'r6g.medium',
  );

  static const r6GMetal = InstanceType._(
    454,
    'r6g_metal',
    'r6g.metal',
  );

  static const r6GXlarge = InstanceType._(
    455,
    'r6g_xlarge',
    'r6g.xlarge',
  );

  static const r6Gd12Xlarge = InstanceType._(
    456,
    'r6gd_12xlarge',
    'r6gd.12xlarge',
  );

  static const r6Gd16Xlarge = InstanceType._(
    457,
    'r6gd_16xlarge',
    'r6gd.16xlarge',
  );

  static const r6Gd2Xlarge = InstanceType._(
    458,
    'r6gd_2xlarge',
    'r6gd.2xlarge',
  );

  static const r6Gd4Xlarge = InstanceType._(
    459,
    'r6gd_4xlarge',
    'r6gd.4xlarge',
  );

  static const r6Gd8Xlarge = InstanceType._(
    460,
    'r6gd_8xlarge',
    'r6gd.8xlarge',
  );

  static const r6GdLarge = InstanceType._(
    461,
    'r6gd_large',
    'r6gd.large',
  );

  static const r6GdMedium = InstanceType._(
    462,
    'r6gd_medium',
    'r6gd.medium',
  );

  static const r6GdMetal = InstanceType._(
    463,
    'r6gd_metal',
    'r6gd.metal',
  );

  static const r6GdXlarge = InstanceType._(
    464,
    'r6gd_xlarge',
    'r6gd.xlarge',
  );

  static const r6I12Xlarge = InstanceType._(
    465,
    'r6i_12xlarge',
    'r6i.12xlarge',
  );

  static const r6I16Xlarge = InstanceType._(
    466,
    'r6i_16xlarge',
    'r6i.16xlarge',
  );

  static const r6I24Xlarge = InstanceType._(
    467,
    'r6i_24xlarge',
    'r6i.24xlarge',
  );

  static const r6I2Xlarge = InstanceType._(
    468,
    'r6i_2xlarge',
    'r6i.2xlarge',
  );

  static const r6I32Xlarge = InstanceType._(
    469,
    'r6i_32xlarge',
    'r6i.32xlarge',
  );

  static const r6I4Xlarge = InstanceType._(
    470,
    'r6i_4xlarge',
    'r6i.4xlarge',
  );

  static const r6I8Xlarge = InstanceType._(
    471,
    'r6i_8xlarge',
    'r6i.8xlarge',
  );

  static const r6ILarge = InstanceType._(
    472,
    'r6i_large',
    'r6i.large',
  );

  static const r6IMetal = InstanceType._(
    473,
    'r6i_metal',
    'r6i.metal',
  );

  static const r6IXlarge = InstanceType._(
    474,
    'r6i_xlarge',
    'r6i.xlarge',
  );

  static const r6Id12Xlarge = InstanceType._(
    475,
    'r6id_12xlarge',
    'r6id.12xlarge',
  );

  static const r6Id16Xlarge = InstanceType._(
    476,
    'r6id_16xlarge',
    'r6id.16xlarge',
  );

  static const r6Id24Xlarge = InstanceType._(
    477,
    'r6id_24xlarge',
    'r6id.24xlarge',
  );

  static const r6Id2Xlarge = InstanceType._(
    478,
    'r6id_2xlarge',
    'r6id.2xlarge',
  );

  static const r6Id32Xlarge = InstanceType._(
    479,
    'r6id_32xlarge',
    'r6id.32xlarge',
  );

  static const r6Id4Xlarge = InstanceType._(
    480,
    'r6id_4xlarge',
    'r6id.4xlarge',
  );

  static const r6Id8Xlarge = InstanceType._(
    481,
    'r6id_8xlarge',
    'r6id.8xlarge',
  );

  static const r6IdLarge = InstanceType._(
    482,
    'r6id_large',
    'r6id.large',
  );

  static const r6IdMetal = InstanceType._(
    483,
    'r6id_metal',
    'r6id.metal',
  );

  static const r6IdXlarge = InstanceType._(
    484,
    'r6id_xlarge',
    'r6id.xlarge',
  );

  static const t1Micro = InstanceType._(
    485,
    't1_micro',
    't1.micro',
  );

  static const t22Xlarge = InstanceType._(
    486,
    't2_2xlarge',
    't2.2xlarge',
  );

  static const t2Large = InstanceType._(
    487,
    't2_large',
    't2.large',
  );

  static const t2Medium = InstanceType._(
    488,
    't2_medium',
    't2.medium',
  );

  static const t2Micro = InstanceType._(
    489,
    't2_micro',
    't2.micro',
  );

  static const t2Nano = InstanceType._(
    490,
    't2_nano',
    't2.nano',
  );

  static const t2Small = InstanceType._(
    491,
    't2_small',
    't2.small',
  );

  static const t2Xlarge = InstanceType._(
    492,
    't2_xlarge',
    't2.xlarge',
  );

  static const t32Xlarge = InstanceType._(
    493,
    't3_2xlarge',
    't3.2xlarge',
  );

  static const t3A2Xlarge = InstanceType._(
    494,
    't3a_2xlarge',
    't3a.2xlarge',
  );

  static const t3ALarge = InstanceType._(
    495,
    't3a_large',
    't3a.large',
  );

  static const t3AMedium = InstanceType._(
    496,
    't3a_medium',
    't3a.medium',
  );

  static const t3AMicro = InstanceType._(
    497,
    't3a_micro',
    't3a.micro',
  );

  static const t3ANano = InstanceType._(
    498,
    't3a_nano',
    't3a.nano',
  );

  static const t3ASmall = InstanceType._(
    499,
    't3a_small',
    't3a.small',
  );

  static const t3AXlarge = InstanceType._(
    500,
    't3a_xlarge',
    't3a.xlarge',
  );

  static const t3Large = InstanceType._(
    501,
    't3_large',
    't3.large',
  );

  static const t3Medium = InstanceType._(
    502,
    't3_medium',
    't3.medium',
  );

  static const t3Micro = InstanceType._(
    503,
    't3_micro',
    't3.micro',
  );

  static const t3Nano = InstanceType._(
    504,
    't3_nano',
    't3.nano',
  );

  static const t3Small = InstanceType._(
    505,
    't3_small',
    't3.small',
  );

  static const t3Xlarge = InstanceType._(
    506,
    't3_xlarge',
    't3.xlarge',
  );

  static const t4G2Xlarge = InstanceType._(
    507,
    't4g_2xlarge',
    't4g.2xlarge',
  );

  static const t4GLarge = InstanceType._(
    508,
    't4g_large',
    't4g.large',
  );

  static const t4GMedium = InstanceType._(
    509,
    't4g_medium',
    't4g.medium',
  );

  static const t4GMicro = InstanceType._(
    510,
    't4g_micro',
    't4g.micro',
  );

  static const t4GNano = InstanceType._(
    511,
    't4g_nano',
    't4g.nano',
  );

  static const t4GSmall = InstanceType._(
    512,
    't4g_small',
    't4g.small',
  );

  static const t4GXlarge = InstanceType._(
    513,
    't4g_xlarge',
    't4g.xlarge',
  );

  static const u12Tb1112Xlarge = InstanceType._(
    514,
    'u_12tb1_112xlarge',
    'u-12tb1.112xlarge',
  );

  static const u12Tb1Metal = InstanceType._(
    515,
    'u_12tb1_metal',
    'u-12tb1.metal',
  );

  static const u18Tb1Metal = InstanceType._(
    516,
    'u_18tb1_metal',
    'u-18tb1.metal',
  );

  static const u24Tb1Metal = InstanceType._(
    517,
    'u_24tb1_metal',
    'u-24tb1.metal',
  );

  static const u3Tb156Xlarge = InstanceType._(
    518,
    'u_3tb1_56xlarge',
    'u-3tb1.56xlarge',
  );

  static const u6Tb1112Xlarge = InstanceType._(
    519,
    'u_6tb1_112xlarge',
    'u-6tb1.112xlarge',
  );

  static const u6Tb156Xlarge = InstanceType._(
    520,
    'u_6tb1_56xlarge',
    'u-6tb1.56xlarge',
  );

  static const u6Tb1Metal = InstanceType._(
    521,
    'u_6tb1_metal',
    'u-6tb1.metal',
  );

  static const u9Tb1112Xlarge = InstanceType._(
    522,
    'u_9tb1_112xlarge',
    'u-9tb1.112xlarge',
  );

  static const u9Tb1Metal = InstanceType._(
    523,
    'u_9tb1_metal',
    'u-9tb1.metal',
  );

  static const vt124Xlarge = InstanceType._(
    524,
    'vt1_24xlarge',
    'vt1.24xlarge',
  );

  static const vt13Xlarge = InstanceType._(
    525,
    'vt1_3xlarge',
    'vt1.3xlarge',
  );

  static const vt16Xlarge = InstanceType._(
    526,
    'vt1_6xlarge',
    'vt1.6xlarge',
  );

  static const x116Xlarge = InstanceType._(
    527,
    'x1_16xlarge',
    'x1.16xlarge',
  );

  static const x132Xlarge = InstanceType._(
    528,
    'x1_32xlarge',
    'x1.32xlarge',
  );

  static const x1E16Xlarge = InstanceType._(
    529,
    'x1e_16xlarge',
    'x1e.16xlarge',
  );

  static const x1E2Xlarge = InstanceType._(
    530,
    'x1e_2xlarge',
    'x1e.2xlarge',
  );

  static const x1E32Xlarge = InstanceType._(
    531,
    'x1e_32xlarge',
    'x1e.32xlarge',
  );

  static const x1E4Xlarge = InstanceType._(
    532,
    'x1e_4xlarge',
    'x1e.4xlarge',
  );

  static const x1E8Xlarge = InstanceType._(
    533,
    'x1e_8xlarge',
    'x1e.8xlarge',
  );

  static const x1EXlarge = InstanceType._(
    534,
    'x1e_xlarge',
    'x1e.xlarge',
  );

  static const x2Gd12Xlarge = InstanceType._(
    535,
    'x2gd_12xlarge',
    'x2gd.12xlarge',
  );

  static const x2Gd16Xlarge = InstanceType._(
    536,
    'x2gd_16xlarge',
    'x2gd.16xlarge',
  );

  static const x2Gd2Xlarge = InstanceType._(
    537,
    'x2gd_2xlarge',
    'x2gd.2xlarge',
  );

  static const x2Gd4Xlarge = InstanceType._(
    538,
    'x2gd_4xlarge',
    'x2gd.4xlarge',
  );

  static const x2Gd8Xlarge = InstanceType._(
    539,
    'x2gd_8xlarge',
    'x2gd.8xlarge',
  );

  static const x2GdLarge = InstanceType._(
    540,
    'x2gd_large',
    'x2gd.large',
  );

  static const x2GdMedium = InstanceType._(
    541,
    'x2gd_medium',
    'x2gd.medium',
  );

  static const x2GdMetal = InstanceType._(
    542,
    'x2gd_metal',
    'x2gd.metal',
  );

  static const x2GdXlarge = InstanceType._(
    543,
    'x2gd_xlarge',
    'x2gd.xlarge',
  );

  static const x2Idn16Xlarge = InstanceType._(
    544,
    'x2idn_16xlarge',
    'x2idn.16xlarge',
  );

  static const x2Idn24Xlarge = InstanceType._(
    545,
    'x2idn_24xlarge',
    'x2idn.24xlarge',
  );

  static const x2Idn32Xlarge = InstanceType._(
    546,
    'x2idn_32xlarge',
    'x2idn.32xlarge',
  );

  static const x2IdnMetal = InstanceType._(
    547,
    'x2idn_metal',
    'x2idn.metal',
  );

  static const x2Iedn16Xlarge = InstanceType._(
    548,
    'x2iedn_16xlarge',
    'x2iedn.16xlarge',
  );

  static const x2Iedn24Xlarge = InstanceType._(
    549,
    'x2iedn_24xlarge',
    'x2iedn.24xlarge',
  );

  static const x2Iedn2Xlarge = InstanceType._(
    550,
    'x2iedn_2xlarge',
    'x2iedn.2xlarge',
  );

  static const x2Iedn32Xlarge = InstanceType._(
    551,
    'x2iedn_32xlarge',
    'x2iedn.32xlarge',
  );

  static const x2Iedn4Xlarge = InstanceType._(
    552,
    'x2iedn_4xlarge',
    'x2iedn.4xlarge',
  );

  static const x2Iedn8Xlarge = InstanceType._(
    553,
    'x2iedn_8xlarge',
    'x2iedn.8xlarge',
  );

  static const x2IednMetal = InstanceType._(
    554,
    'x2iedn_metal',
    'x2iedn.metal',
  );

  static const x2IednXlarge = InstanceType._(
    555,
    'x2iedn_xlarge',
    'x2iedn.xlarge',
  );

  static const x2Iezn12Xlarge = InstanceType._(
    556,
    'x2iezn_12xlarge',
    'x2iezn.12xlarge',
  );

  static const x2Iezn2Xlarge = InstanceType._(
    557,
    'x2iezn_2xlarge',
    'x2iezn.2xlarge',
  );

  static const x2Iezn4Xlarge = InstanceType._(
    558,
    'x2iezn_4xlarge',
    'x2iezn.4xlarge',
  );

  static const x2Iezn6Xlarge = InstanceType._(
    559,
    'x2iezn_6xlarge',
    'x2iezn.6xlarge',
  );

  static const x2Iezn8Xlarge = InstanceType._(
    560,
    'x2iezn_8xlarge',
    'x2iezn.8xlarge',
  );

  static const x2IeznMetal = InstanceType._(
    561,
    'x2iezn_metal',
    'x2iezn.metal',
  );

  static const z1D12Xlarge = InstanceType._(
    562,
    'z1d_12xlarge',
    'z1d.12xlarge',
  );

  static const z1D2Xlarge = InstanceType._(
    563,
    'z1d_2xlarge',
    'z1d.2xlarge',
  );

  static const z1D3Xlarge = InstanceType._(
    564,
    'z1d_3xlarge',
    'z1d.3xlarge',
  );

  static const z1D6Xlarge = InstanceType._(
    565,
    'z1d_6xlarge',
    'z1d.6xlarge',
  );

  static const z1DLarge = InstanceType._(
    566,
    'z1d_large',
    'z1d.large',
  );

  static const z1DMetal = InstanceType._(
    567,
    'z1d_metal',
    'z1d.metal',
  );

  static const z1DXlarge = InstanceType._(
    568,
    'z1d_xlarge',
    'z1d.xlarge',
  );

  /// All values of [InstanceType].
  static const values = <InstanceType>[
    InstanceType.a12Xlarge,
    InstanceType.a14Xlarge,
    InstanceType.a1Large,
    InstanceType.a1Medium,
    InstanceType.a1Metal,
    InstanceType.a1Xlarge,
    InstanceType.c1Medium,
    InstanceType.c1Xlarge,
    InstanceType.c32Xlarge,
    InstanceType.c34Xlarge,
    InstanceType.c38Xlarge,
    InstanceType.c3Large,
    InstanceType.c3Xlarge,
    InstanceType.c42Xlarge,
    InstanceType.c44Xlarge,
    InstanceType.c48Xlarge,
    InstanceType.c4Large,
    InstanceType.c4Xlarge,
    InstanceType.c512Xlarge,
    InstanceType.c518Xlarge,
    InstanceType.c524Xlarge,
    InstanceType.c52Xlarge,
    InstanceType.c54Xlarge,
    InstanceType.c59Xlarge,
    InstanceType.c5A12Xlarge,
    InstanceType.c5A16Xlarge,
    InstanceType.c5A24Xlarge,
    InstanceType.c5A2Xlarge,
    InstanceType.c5A4Xlarge,
    InstanceType.c5A8Xlarge,
    InstanceType.c5ALarge,
    InstanceType.c5AXlarge,
    InstanceType.c5Ad12Xlarge,
    InstanceType.c5Ad16Xlarge,
    InstanceType.c5Ad24Xlarge,
    InstanceType.c5Ad2Xlarge,
    InstanceType.c5Ad4Xlarge,
    InstanceType.c5Ad8Xlarge,
    InstanceType.c5AdLarge,
    InstanceType.c5AdXlarge,
    InstanceType.c5D12Xlarge,
    InstanceType.c5D18Xlarge,
    InstanceType.c5D24Xlarge,
    InstanceType.c5D2Xlarge,
    InstanceType.c5D4Xlarge,
    InstanceType.c5D9Xlarge,
    InstanceType.c5DLarge,
    InstanceType.c5DMetal,
    InstanceType.c5DXlarge,
    InstanceType.c5Large,
    InstanceType.c5Metal,
    InstanceType.c5N18Xlarge,
    InstanceType.c5N2Xlarge,
    InstanceType.c5N4Xlarge,
    InstanceType.c5N9Xlarge,
    InstanceType.c5NLarge,
    InstanceType.c5NMetal,
    InstanceType.c5NXlarge,
    InstanceType.c5Xlarge,
    InstanceType.c6A12Xlarge,
    InstanceType.c6A16Xlarge,
    InstanceType.c6A24Xlarge,
    InstanceType.c6A2Xlarge,
    InstanceType.c6A32Xlarge,
    InstanceType.c6A48Xlarge,
    InstanceType.c6A4Xlarge,
    InstanceType.c6A8Xlarge,
    InstanceType.c6ALarge,
    InstanceType.c6AMetal,
    InstanceType.c6AXlarge,
    InstanceType.c6G12Xlarge,
    InstanceType.c6G16Xlarge,
    InstanceType.c6G2Xlarge,
    InstanceType.c6G4Xlarge,
    InstanceType.c6G8Xlarge,
    InstanceType.c6GLarge,
    InstanceType.c6GMedium,
    InstanceType.c6GMetal,
    InstanceType.c6GXlarge,
    InstanceType.c6Gd12Xlarge,
    InstanceType.c6Gd16Xlarge,
    InstanceType.c6Gd2Xlarge,
    InstanceType.c6Gd4Xlarge,
    InstanceType.c6Gd8Xlarge,
    InstanceType.c6GdLarge,
    InstanceType.c6GdMedium,
    InstanceType.c6GdMetal,
    InstanceType.c6GdXlarge,
    InstanceType.c6Gn12Xlarge,
    InstanceType.c6Gn16Xlarge,
    InstanceType.c6Gn2Xlarge,
    InstanceType.c6Gn4Xlarge,
    InstanceType.c6Gn8Xlarge,
    InstanceType.c6GnLarge,
    InstanceType.c6GnMedium,
    InstanceType.c6GnXlarge,
    InstanceType.c6I12Xlarge,
    InstanceType.c6I16Xlarge,
    InstanceType.c6I24Xlarge,
    InstanceType.c6I2Xlarge,
    InstanceType.c6I32Xlarge,
    InstanceType.c6I4Xlarge,
    InstanceType.c6I8Xlarge,
    InstanceType.c6ILarge,
    InstanceType.c6IMetal,
    InstanceType.c6IXlarge,
    InstanceType.c6Id12Xlarge,
    InstanceType.c6Id16Xlarge,
    InstanceType.c6Id24Xlarge,
    InstanceType.c6Id2Xlarge,
    InstanceType.c6Id32Xlarge,
    InstanceType.c6Id4Xlarge,
    InstanceType.c6Id8Xlarge,
    InstanceType.c6IdLarge,
    InstanceType.c6IdMetal,
    InstanceType.c6IdXlarge,
    InstanceType.c7G12Xlarge,
    InstanceType.c7G16Xlarge,
    InstanceType.c7G2Xlarge,
    InstanceType.c7G4Xlarge,
    InstanceType.c7G8Xlarge,
    InstanceType.c7GLarge,
    InstanceType.c7GMedium,
    InstanceType.c7GXlarge,
    InstanceType.cc14Xlarge,
    InstanceType.cc28Xlarge,
    InstanceType.cg14Xlarge,
    InstanceType.cr18Xlarge,
    InstanceType.d22Xlarge,
    InstanceType.d24Xlarge,
    InstanceType.d28Xlarge,
    InstanceType.d2Xlarge,
    InstanceType.d32Xlarge,
    InstanceType.d34Xlarge,
    InstanceType.d38Xlarge,
    InstanceType.d3En12Xlarge,
    InstanceType.d3En2Xlarge,
    InstanceType.d3En4Xlarge,
    InstanceType.d3En6Xlarge,
    InstanceType.d3En8Xlarge,
    InstanceType.d3EnXlarge,
    InstanceType.d3Xlarge,
    InstanceType.dl124Xlarge,
    InstanceType.f116Xlarge,
    InstanceType.f12Xlarge,
    InstanceType.f14Xlarge,
    InstanceType.g22Xlarge,
    InstanceType.g28Xlarge,
    InstanceType.g316Xlarge,
    InstanceType.g34Xlarge,
    InstanceType.g38Xlarge,
    InstanceType.g3SXlarge,
    InstanceType.g4Ad16Xlarge,
    InstanceType.g4Ad2Xlarge,
    InstanceType.g4Ad4Xlarge,
    InstanceType.g4Ad8Xlarge,
    InstanceType.g4AdXlarge,
    InstanceType.g4Dn12Xlarge,
    InstanceType.g4Dn16Xlarge,
    InstanceType.g4Dn2Xlarge,
    InstanceType.g4Dn4Xlarge,
    InstanceType.g4Dn8Xlarge,
    InstanceType.g4DnMetal,
    InstanceType.g4DnXlarge,
    InstanceType.g512Xlarge,
    InstanceType.g516Xlarge,
    InstanceType.g524Xlarge,
    InstanceType.g52Xlarge,
    InstanceType.g548Xlarge,
    InstanceType.g54Xlarge,
    InstanceType.g58Xlarge,
    InstanceType.g5G16Xlarge,
    InstanceType.g5G2Xlarge,
    InstanceType.g5G4Xlarge,
    InstanceType.g5G8Xlarge,
    InstanceType.g5GMetal,
    InstanceType.g5GXlarge,
    InstanceType.g5Xlarge,
    InstanceType.h116Xlarge,
    InstanceType.h12Xlarge,
    InstanceType.h14Xlarge,
    InstanceType.h18Xlarge,
    InstanceType.hi14Xlarge,
    InstanceType.hpc6A48Xlarge,
    InstanceType.hs18Xlarge,
    InstanceType.i22Xlarge,
    InstanceType.i24Xlarge,
    InstanceType.i28Xlarge,
    InstanceType.i2Xlarge,
    InstanceType.i316Xlarge,
    InstanceType.i32Xlarge,
    InstanceType.i34Xlarge,
    InstanceType.i38Xlarge,
    InstanceType.i3En12Xlarge,
    InstanceType.i3En24Xlarge,
    InstanceType.i3En2Xlarge,
    InstanceType.i3En3Xlarge,
    InstanceType.i3En6Xlarge,
    InstanceType.i3EnLarge,
    InstanceType.i3EnMetal,
    InstanceType.i3EnXlarge,
    InstanceType.i3Large,
    InstanceType.i3Metal,
    InstanceType.i3Xlarge,
    InstanceType.i4I16Xlarge,
    InstanceType.i4I2Xlarge,
    InstanceType.i4I32Xlarge,
    InstanceType.i4I4Xlarge,
    InstanceType.i4I8Xlarge,
    InstanceType.i4ILarge,
    InstanceType.i4IMetal,
    InstanceType.i4IXlarge,
    InstanceType.im4Gn16Xlarge,
    InstanceType.im4Gn2Xlarge,
    InstanceType.im4Gn4Xlarge,
    InstanceType.im4Gn8Xlarge,
    InstanceType.im4GnLarge,
    InstanceType.im4GnXlarge,
    InstanceType.inf124Xlarge,
    InstanceType.inf12Xlarge,
    InstanceType.inf16Xlarge,
    InstanceType.inf1Xlarge,
    InstanceType.is4Gen2Xlarge,
    InstanceType.is4Gen4Xlarge,
    InstanceType.is4Gen8Xlarge,
    InstanceType.is4GenLarge,
    InstanceType.is4GenMedium,
    InstanceType.is4GenXlarge,
    InstanceType.m1Large,
    InstanceType.m1Medium,
    InstanceType.m1Small,
    InstanceType.m1Xlarge,
    InstanceType.m22Xlarge,
    InstanceType.m24Xlarge,
    InstanceType.m2Xlarge,
    InstanceType.m32Xlarge,
    InstanceType.m3Large,
    InstanceType.m3Medium,
    InstanceType.m3Xlarge,
    InstanceType.m410Xlarge,
    InstanceType.m416Xlarge,
    InstanceType.m42Xlarge,
    InstanceType.m44Xlarge,
    InstanceType.m4Large,
    InstanceType.m4Xlarge,
    InstanceType.m512Xlarge,
    InstanceType.m516Xlarge,
    InstanceType.m524Xlarge,
    InstanceType.m52Xlarge,
    InstanceType.m54Xlarge,
    InstanceType.m58Xlarge,
    InstanceType.m5A12Xlarge,
    InstanceType.m5A16Xlarge,
    InstanceType.m5A24Xlarge,
    InstanceType.m5A2Xlarge,
    InstanceType.m5A4Xlarge,
    InstanceType.m5A8Xlarge,
    InstanceType.m5ALarge,
    InstanceType.m5AXlarge,
    InstanceType.m5Ad12Xlarge,
    InstanceType.m5Ad16Xlarge,
    InstanceType.m5Ad24Xlarge,
    InstanceType.m5Ad2Xlarge,
    InstanceType.m5Ad4Xlarge,
    InstanceType.m5Ad8Xlarge,
    InstanceType.m5AdLarge,
    InstanceType.m5AdXlarge,
    InstanceType.m5D12Xlarge,
    InstanceType.m5D16Xlarge,
    InstanceType.m5D24Xlarge,
    InstanceType.m5D2Xlarge,
    InstanceType.m5D4Xlarge,
    InstanceType.m5D8Xlarge,
    InstanceType.m5DLarge,
    InstanceType.m5DMetal,
    InstanceType.m5DXlarge,
    InstanceType.m5Dn12Xlarge,
    InstanceType.m5Dn16Xlarge,
    InstanceType.m5Dn24Xlarge,
    InstanceType.m5Dn2Xlarge,
    InstanceType.m5Dn4Xlarge,
    InstanceType.m5Dn8Xlarge,
    InstanceType.m5DnLarge,
    InstanceType.m5DnMetal,
    InstanceType.m5DnXlarge,
    InstanceType.m5Large,
    InstanceType.m5Metal,
    InstanceType.m5N12Xlarge,
    InstanceType.m5N16Xlarge,
    InstanceType.m5N24Xlarge,
    InstanceType.m5N2Xlarge,
    InstanceType.m5N4Xlarge,
    InstanceType.m5N8Xlarge,
    InstanceType.m5NLarge,
    InstanceType.m5NMetal,
    InstanceType.m5NXlarge,
    InstanceType.m5Xlarge,
    InstanceType.m5Zn12Xlarge,
    InstanceType.m5Zn2Xlarge,
    InstanceType.m5Zn3Xlarge,
    InstanceType.m5Zn6Xlarge,
    InstanceType.m5ZnLarge,
    InstanceType.m5ZnMetal,
    InstanceType.m5ZnXlarge,
    InstanceType.m6A12Xlarge,
    InstanceType.m6A16Xlarge,
    InstanceType.m6A24Xlarge,
    InstanceType.m6A2Xlarge,
    InstanceType.m6A32Xlarge,
    InstanceType.m6A48Xlarge,
    InstanceType.m6A4Xlarge,
    InstanceType.m6A8Xlarge,
    InstanceType.m6ALarge,
    InstanceType.m6AMetal,
    InstanceType.m6AXlarge,
    InstanceType.m6G12Xlarge,
    InstanceType.m6G16Xlarge,
    InstanceType.m6G2Xlarge,
    InstanceType.m6G4Xlarge,
    InstanceType.m6G8Xlarge,
    InstanceType.m6GLarge,
    InstanceType.m6GMedium,
    InstanceType.m6GMetal,
    InstanceType.m6GXlarge,
    InstanceType.m6Gd12Xlarge,
    InstanceType.m6Gd16Xlarge,
    InstanceType.m6Gd2Xlarge,
    InstanceType.m6Gd4Xlarge,
    InstanceType.m6Gd8Xlarge,
    InstanceType.m6GdLarge,
    InstanceType.m6GdMedium,
    InstanceType.m6GdMetal,
    InstanceType.m6GdXlarge,
    InstanceType.m6I12Xlarge,
    InstanceType.m6I16Xlarge,
    InstanceType.m6I24Xlarge,
    InstanceType.m6I2Xlarge,
    InstanceType.m6I32Xlarge,
    InstanceType.m6I4Xlarge,
    InstanceType.m6I8Xlarge,
    InstanceType.m6ILarge,
    InstanceType.m6IMetal,
    InstanceType.m6IXlarge,
    InstanceType.m6Id12Xlarge,
    InstanceType.m6Id16Xlarge,
    InstanceType.m6Id24Xlarge,
    InstanceType.m6Id2Xlarge,
    InstanceType.m6Id32Xlarge,
    InstanceType.m6Id4Xlarge,
    InstanceType.m6Id8Xlarge,
    InstanceType.m6IdLarge,
    InstanceType.m6IdMetal,
    InstanceType.m6IdXlarge,
    InstanceType.mac1Metal,
    InstanceType.mac2Metal,
    InstanceType.p216Xlarge,
    InstanceType.p28Xlarge,
    InstanceType.p2Xlarge,
    InstanceType.p316Xlarge,
    InstanceType.p32Xlarge,
    InstanceType.p38Xlarge,
    InstanceType.p3Dn24Xlarge,
    InstanceType.p4D24Xlarge,
    InstanceType.p4De24Xlarge,
    InstanceType.r32Xlarge,
    InstanceType.r34Xlarge,
    InstanceType.r38Xlarge,
    InstanceType.r3Large,
    InstanceType.r3Xlarge,
    InstanceType.r416Xlarge,
    InstanceType.r42Xlarge,
    InstanceType.r44Xlarge,
    InstanceType.r48Xlarge,
    InstanceType.r4Large,
    InstanceType.r4Xlarge,
    InstanceType.r512Xlarge,
    InstanceType.r516Xlarge,
    InstanceType.r524Xlarge,
    InstanceType.r52Xlarge,
    InstanceType.r54Xlarge,
    InstanceType.r58Xlarge,
    InstanceType.r5A12Xlarge,
    InstanceType.r5A16Xlarge,
    InstanceType.r5A24Xlarge,
    InstanceType.r5A2Xlarge,
    InstanceType.r5A4Xlarge,
    InstanceType.r5A8Xlarge,
    InstanceType.r5ALarge,
    InstanceType.r5AXlarge,
    InstanceType.r5Ad12Xlarge,
    InstanceType.r5Ad16Xlarge,
    InstanceType.r5Ad24Xlarge,
    InstanceType.r5Ad2Xlarge,
    InstanceType.r5Ad4Xlarge,
    InstanceType.r5Ad8Xlarge,
    InstanceType.r5AdLarge,
    InstanceType.r5AdXlarge,
    InstanceType.r5B12Xlarge,
    InstanceType.r5B16Xlarge,
    InstanceType.r5B24Xlarge,
    InstanceType.r5B2Xlarge,
    InstanceType.r5B4Xlarge,
    InstanceType.r5B8Xlarge,
    InstanceType.r5BLarge,
    InstanceType.r5BMetal,
    InstanceType.r5BXlarge,
    InstanceType.r5D12Xlarge,
    InstanceType.r5D16Xlarge,
    InstanceType.r5D24Xlarge,
    InstanceType.r5D2Xlarge,
    InstanceType.r5D4Xlarge,
    InstanceType.r5D8Xlarge,
    InstanceType.r5DLarge,
    InstanceType.r5DMetal,
    InstanceType.r5DXlarge,
    InstanceType.r5Dn12Xlarge,
    InstanceType.r5Dn16Xlarge,
    InstanceType.r5Dn24Xlarge,
    InstanceType.r5Dn2Xlarge,
    InstanceType.r5Dn4Xlarge,
    InstanceType.r5Dn8Xlarge,
    InstanceType.r5DnLarge,
    InstanceType.r5DnMetal,
    InstanceType.r5DnXlarge,
    InstanceType.r5Large,
    InstanceType.r5Metal,
    InstanceType.r5N12Xlarge,
    InstanceType.r5N16Xlarge,
    InstanceType.r5N24Xlarge,
    InstanceType.r5N2Xlarge,
    InstanceType.r5N4Xlarge,
    InstanceType.r5N8Xlarge,
    InstanceType.r5NLarge,
    InstanceType.r5NMetal,
    InstanceType.r5NXlarge,
    InstanceType.r5Xlarge,
    InstanceType.r6A12Xlarge,
    InstanceType.r6A16Xlarge,
    InstanceType.r6A24Xlarge,
    InstanceType.r6A2Xlarge,
    InstanceType.r6A32Xlarge,
    InstanceType.r6A48Xlarge,
    InstanceType.r6A4Xlarge,
    InstanceType.r6A8Xlarge,
    InstanceType.r6ALarge,
    InstanceType.r6AMetal,
    InstanceType.r6AXlarge,
    InstanceType.r6G12Xlarge,
    InstanceType.r6G16Xlarge,
    InstanceType.r6G2Xlarge,
    InstanceType.r6G4Xlarge,
    InstanceType.r6G8Xlarge,
    InstanceType.r6GLarge,
    InstanceType.r6GMedium,
    InstanceType.r6GMetal,
    InstanceType.r6GXlarge,
    InstanceType.r6Gd12Xlarge,
    InstanceType.r6Gd16Xlarge,
    InstanceType.r6Gd2Xlarge,
    InstanceType.r6Gd4Xlarge,
    InstanceType.r6Gd8Xlarge,
    InstanceType.r6GdLarge,
    InstanceType.r6GdMedium,
    InstanceType.r6GdMetal,
    InstanceType.r6GdXlarge,
    InstanceType.r6I12Xlarge,
    InstanceType.r6I16Xlarge,
    InstanceType.r6I24Xlarge,
    InstanceType.r6I2Xlarge,
    InstanceType.r6I32Xlarge,
    InstanceType.r6I4Xlarge,
    InstanceType.r6I8Xlarge,
    InstanceType.r6ILarge,
    InstanceType.r6IMetal,
    InstanceType.r6IXlarge,
    InstanceType.r6Id12Xlarge,
    InstanceType.r6Id16Xlarge,
    InstanceType.r6Id24Xlarge,
    InstanceType.r6Id2Xlarge,
    InstanceType.r6Id32Xlarge,
    InstanceType.r6Id4Xlarge,
    InstanceType.r6Id8Xlarge,
    InstanceType.r6IdLarge,
    InstanceType.r6IdMetal,
    InstanceType.r6IdXlarge,
    InstanceType.t1Micro,
    InstanceType.t22Xlarge,
    InstanceType.t2Large,
    InstanceType.t2Medium,
    InstanceType.t2Micro,
    InstanceType.t2Nano,
    InstanceType.t2Small,
    InstanceType.t2Xlarge,
    InstanceType.t32Xlarge,
    InstanceType.t3A2Xlarge,
    InstanceType.t3ALarge,
    InstanceType.t3AMedium,
    InstanceType.t3AMicro,
    InstanceType.t3ANano,
    InstanceType.t3ASmall,
    InstanceType.t3AXlarge,
    InstanceType.t3Large,
    InstanceType.t3Medium,
    InstanceType.t3Micro,
    InstanceType.t3Nano,
    InstanceType.t3Small,
    InstanceType.t3Xlarge,
    InstanceType.t4G2Xlarge,
    InstanceType.t4GLarge,
    InstanceType.t4GMedium,
    InstanceType.t4GMicro,
    InstanceType.t4GNano,
    InstanceType.t4GSmall,
    InstanceType.t4GXlarge,
    InstanceType.u12Tb1112Xlarge,
    InstanceType.u12Tb1Metal,
    InstanceType.u18Tb1Metal,
    InstanceType.u24Tb1Metal,
    InstanceType.u3Tb156Xlarge,
    InstanceType.u6Tb1112Xlarge,
    InstanceType.u6Tb156Xlarge,
    InstanceType.u6Tb1Metal,
    InstanceType.u9Tb1112Xlarge,
    InstanceType.u9Tb1Metal,
    InstanceType.vt124Xlarge,
    InstanceType.vt13Xlarge,
    InstanceType.vt16Xlarge,
    InstanceType.x116Xlarge,
    InstanceType.x132Xlarge,
    InstanceType.x1E16Xlarge,
    InstanceType.x1E2Xlarge,
    InstanceType.x1E32Xlarge,
    InstanceType.x1E4Xlarge,
    InstanceType.x1E8Xlarge,
    InstanceType.x1EXlarge,
    InstanceType.x2Gd12Xlarge,
    InstanceType.x2Gd16Xlarge,
    InstanceType.x2Gd2Xlarge,
    InstanceType.x2Gd4Xlarge,
    InstanceType.x2Gd8Xlarge,
    InstanceType.x2GdLarge,
    InstanceType.x2GdMedium,
    InstanceType.x2GdMetal,
    InstanceType.x2GdXlarge,
    InstanceType.x2Idn16Xlarge,
    InstanceType.x2Idn24Xlarge,
    InstanceType.x2Idn32Xlarge,
    InstanceType.x2IdnMetal,
    InstanceType.x2Iedn16Xlarge,
    InstanceType.x2Iedn24Xlarge,
    InstanceType.x2Iedn2Xlarge,
    InstanceType.x2Iedn32Xlarge,
    InstanceType.x2Iedn4Xlarge,
    InstanceType.x2Iedn8Xlarge,
    InstanceType.x2IednMetal,
    InstanceType.x2IednXlarge,
    InstanceType.x2Iezn12Xlarge,
    InstanceType.x2Iezn2Xlarge,
    InstanceType.x2Iezn4Xlarge,
    InstanceType.x2Iezn6Xlarge,
    InstanceType.x2Iezn8Xlarge,
    InstanceType.x2IeznMetal,
    InstanceType.z1D12Xlarge,
    InstanceType.z1D2Xlarge,
    InstanceType.z1D3Xlarge,
    InstanceType.z1D6Xlarge,
    InstanceType.z1DLarge,
    InstanceType.z1DMetal,
    InstanceType.z1DXlarge,
  ];

  static const List<_i1.SmithySerializer<InstanceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceType',
      values: values,
      sdkUnknown: InstanceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceTypeHelpers on List<InstanceType> {
  /// Returns the value of [InstanceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceType] whose value matches [value].
  InstanceType byValue(String value) => firstWhere((el) => el.value == value);
}
