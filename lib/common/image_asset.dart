import 'package:flutter/material.dart';

enum AssetType { network, local, storage }

class Asset {
  final AssetType type;
  final String url;
  Asset({@required this.url, @required this.type});
}

class NetworkAsset extends Asset {
  NetworkAsset({@required this.url})
      : super(
          url: url,
          type: AssetType.network,
        );
  final String url;
}

// assets shipped with the app build
class LocalAsset extends Asset {
  LocalAsset({@required this.url})
      : assert(url != null),
        assert(url != ''),
        super(
          url: url,
          type: AssetType.local,
        );
  final String url;
}

// stuff stored on the device's storage
class StorageAsset extends Asset {
  StorageAsset({@required this.url})
      : assert(url != null),
        assert(url != ''),
        super(
          url: url,
          type: AssetType.storage,
        );
  final String url;
}
