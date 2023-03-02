// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amplify Analytics Pinpoint
library amplify_analytics_pinpoint;

/// Overridable Flutter injected dependencies.
export 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart'
    show
        AppLifecycleProvider,
        AWSPinpointUserProfile,
        EndpointStorageScope,
        ChannelType,
        NotFoundException;

/// Category Implementation.
export 'src/analytics_plugin_impl.dart';

/// Push Notifications
export 'src/flutter_analytics_client.dart';

/// Cognito Auth endpoint management
export 'src/flutter_endpoint_info_store_manager.dart';
