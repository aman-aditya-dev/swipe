import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/style.dart';
import './image_asset.dart';
import 'screen_service.dart';

class BaseImage extends StatelessWidget {
  final Asset asset;
  final LocalAsset defaultAsset;
  final double height, width;
  final bool showCircularLoader;
  final BoxFit fit;
  final Color color;

  BaseImage({
    @required this.asset,
    this.defaultAsset,
    this.height,
    this.color,
    this.width,
    this.showCircularLoader = true,
    this.fit,
  }) : super();

  int get _memCacheHeight =>
      height != null ? (height * ScreenService.scale).toInt() : null;

  int get _memCacheWidth =>
      width != null ? (width * ScreenService.scale).toInt() : null;

  Widget build(BuildContext context) {
    if (asset.url == null || asset.url == '') {
      return _defaultAssetImage(
        defaultAsset: defaultAsset,
        height: height,
        width: width,
      );
    } else if (asset is NetworkAsset) {
      if (_isSvgImage(asset.url)) {
        return SvgPicture.network(
          asset.url,
          placeholderBuilder: (BuildContext context) =>
              _placeholderBuilder(context, showCircularLoader),
          height: height,
          width: width,
          fit: fit,
        );
      } else if (defaultAsset != null) {
        return CachedNetworkImage(
          height: height,
          width: width,
          memCacheHeight: _memCacheHeight,
          memCacheWidth: _memCacheWidth,
          imageUrl: asset.url,
          placeholder: (context, url) => _defaultAssetImage(
            defaultAsset: defaultAsset,
            height: height,
            width: width,
          ),
          errorWidget: (context, url, error) {
            return _error404(
              defaultAsset: defaultAsset,
              height: height,
              width: width,
            );
          },
          fit: fit,
        );
      } else {
        return CachedNetworkImage(
          height: height,
          width: width,
          memCacheHeight: _memCacheHeight,
          memCacheWidth: _memCacheWidth,
          imageUrl: asset.url,
          progressIndicatorBuilder: (
            context,
            url,
            downloadProgress,
          ) =>
              Center(
            child: showCircularLoader
                ? Text('Loading')
                : SizedBox(
                    width: 1,
                    height: 1,
                  ),
          ),
          errorWidget: (context, url, error) {
            return _error404(
              defaultAsset: defaultAsset,
              height: height,
              width: width,
            );
          },
          fit: fit,
        );
      }
    } else if (asset is StorageAsset) {
      return _isSvgImage(asset.url)
          ? Semantics(
              label: 'team_full_dialog',
              child: SvgPicture.file(
                File(asset.url),
                height: height,
                width: width,
                fit: fit,
              ),
            )
          : Semantics(
              label: 'drop_down_icon',
              child: Image.file(
                File(asset.url),
                height: height,
                width: width,
                fit: fit,
              ),
            );
    } else {
      return _isSvgImage(asset.url)
          ? Semantics(
              label: 'team_full_dialog',
              child: SvgPicture.asset(
                asset.url,
                color: color,
                height: height,
                width: width,
                fit: fit ?? BoxFit.contain,
              ),
            )
          : Semantics(
              label: 'drop_down_icon',
              child: Image(
                image: AssetImage(asset.url),
                height: height,
                width: width,
              ),
            );
    }
  }
}

Widget _error404({LocalAsset defaultAsset, double height, double width}) {
  return Stack(
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        child: _defaultAssetImage(
            defaultAsset: defaultAsset, height: height, width: width),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          '!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontSize: (height ?? 20) * 0.7,
          ),
        ),
      )
    ],
  );
}

Widget _placeholderBuilder(BuildContext context, bool showCircularLoader) {
  return Padding(
    padding: const EdgeInsets.all(Spacing.space4),
    child: Center(
      child: showCircularLoader
          ? Text('Loading')
          : SizedBox(
              width: 1,
              height: 1,
            ),
    ),
  );
}

Widget _defaultAssetImage(
    {LocalAsset defaultAsset, double height, double width}) {
  if (defaultAsset != null) {
    if (_isSvgImage(defaultAsset.url)) {
      return SvgPicture.asset(
        defaultAsset.url,
        height: height,
        width: width,
      );
    }
    return Image(
      image: AssetImage(defaultAsset.url),
      height: height,
      width: width,
    );
  }
  return Container(
    color: Colors.grey,
    height: height,
    width: width,
  );
}

bool _isSvgImage(String url) {
  return (url.toLowerCase()).endsWith('.svg');
}
