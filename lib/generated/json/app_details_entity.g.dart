import 'package:flutter_windows_store/generated/json/base/json_convert_content.dart';
import 'package:flutter_windows_store/entity/app_details_entity.dart';

AppDetailsEntity $AppDetailsEntityFromJson(Map<String, dynamic> json) {
  final AppDetailsEntity appDetailsEntity = AppDetailsEntity();
  final String? androidType = jsonConvert.convert<String>(json['androidType']);
  if (androidType != null) {
    appDetailsEntity.androidType = androidType;
  }
  final String? softID = jsonConvert.convert<String>(json['softID']);
  if (softID != null) {
    appDetailsEntity.softID = softID;
  }
  final String? softName = jsonConvert.convert<String>(json['softName']);
  if (softName != null) {
    appDetailsEntity.softName = softName;
  }
  final String? version = jsonConvert.convert<String>(json['version']);
  if (version != null) {
    appDetailsEntity.version = version;
  }
  final String? installFileSize = jsonConvert.convert<String>(
      json['installFileSize']);
  if (installFileSize != null) {
    appDetailsEntity.installFileSize = installFileSize;
  }
  final String? detailInfo = jsonConvert.convert<String>(json['detailInfo']);
  if (detailInfo != null) {
    appDetailsEntity.detailInfo = detailInfo;
  }
  final String? score = jsonConvert.convert<String>(json['score']);
  if (score != null) {
    appDetailsEntity.score = score;
  }
  final String? logoFile = jsonConvert.convert<String>(json['logoFile']);
  if (logoFile != null) {
    appDetailsEntity.logoFile = logoFile;
  }
  final List<
      AppDetailsCaptureFileList>? captureFileList = (json['captureFileList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AppDetailsCaptureFileList>(
          e) as AppDetailsCaptureFileList).toList();
  if (captureFileList != null) {
    appDetailsEntity.captureFileList = captureFileList;
  }
  final String? whatNew = jsonConvert.convert<String>(json['whatNew']);
  if (whatNew != null) {
    appDetailsEntity.whatNew = whatNew;
  }
  final String? createdTime = jsonConvert.convert<String>(json['createdTime']);
  if (createdTime != null) {
    appDetailsEntity.createdTime = createdTime;
  }
  final String? downloadUrl = jsonConvert.convert<String>(json['downloadUrl']);
  if (downloadUrl != null) {
    appDetailsEntity.downloadUrl = downloadUrl;
  }
  final String? downloadCount = jsonConvert.convert<String>(
      json['downloadCount']);
  if (downloadCount != null) {
    appDetailsEntity.downloadCount = downloadCount;
  }
  final List<AppDetailsDetailsTag>? detailsTag = (json['detailsTag'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<AppDetailsDetailsTag>(e) as AppDetailsDetailsTag)
      .toList();
  if (detailsTag != null) {
    appDetailsEntity.detailsTag = detailsTag;
  }
  final dynamic warmTips = json['warmTips'];
  if (warmTips != null) {
    appDetailsEntity.warmTips = warmTips;
  }
  final String? softType = jsonConvert.convert<String>(json['softType']);
  if (softType != null) {
    appDetailsEntity.softType = softType;
  }
  final AppDetailsCover? cover = jsonConvert.convert<AppDetailsCover>(
      json['cover']);
  if (cover != null) {
    appDetailsEntity.cover = cover;
  }
  final dynamic hardwareConfigurationList = json['hardwareConfigurationList'];
  if (hardwareConfigurationList != null) {
    appDetailsEntity.hardwareConfigurationList = hardwareConfigurationList;
  }
  final dynamic classRankingDesc = json['classRankingDesc'];
  if (classRankingDesc != null) {
    appDetailsEntity.classRankingDesc = classRankingDesc;
  }
  final dynamic editorRecommend = json['editorRecommend'];
  if (editorRecommend != null) {
    appDetailsEntity.editorRecommend = editorRecommend;
  }
  final List<
      AppDetailsActivityList>? activityList = (json['activityList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<AppDetailsActivityList>(e) as AppDetailsActivityList)
      .toList();
  if (activityList != null) {
    appDetailsEntity.activityList = activityList;
  }
  final dynamic hasGiftBag = json['hasGiftBag'];
  if (hasGiftBag != null) {
    appDetailsEntity.hasGiftBag = hasGiftBag;
  }
  final int? hasCollect = jsonConvert.convert<int>(json['hasCollect']);
  if (hasCollect != null) {
    appDetailsEntity.hasCollect = hasCollect;
  }
  final dynamic appRecommend = json['appRecommend'];
  if (appRecommend != null) {
    appDetailsEntity.appRecommend = appRecommend;
  }
  final List<
      AppDetailsAppLabelList>? appLabelList = (json['appLabelList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<AppDetailsAppLabelList>(e) as AppDetailsAppLabelList)
      .toList();
  if (appLabelList != null) {
    appDetailsEntity.appLabelList = appLabelList;
  }
  final dynamic sourceInfo = json['sourceInfo'];
  if (sourceInfo != null) {
    appDetailsEntity.sourceInfo = sourceInfo;
  }
  final String? lenovoClassId = jsonConvert.convert<String>(
      json['lenovoClassId']);
  if (lenovoClassId != null) {
    appDetailsEntity.lenovoClassId = lenovoClassId;
  }
  final dynamic originalPrice = json['originalPrice'];
  if (originalPrice != null) {
    appDetailsEntity.originalPrice = originalPrice;
  }
  final dynamic currentPrice = json['currentPrice'];
  if (currentPrice != null) {
    appDetailsEntity.currentPrice = currentPrice;
  }
  final int? payType = jsonConvert.convert<int>(json['payType']);
  if (payType != null) {
    appDetailsEntity.payType = payType;
  }
  final int? appBizType = jsonConvert.convert<int>(json['appBizType']);
  if (appBizType != null) {
    appDetailsEntity.appBizType = appBizType;
  }
  final AppDetailsAppBizContent? appBizContent = jsonConvert.convert<
      AppDetailsAppBizContent>(json['appBizContent']);
  if (appBizContent != null) {
    appDetailsEntity.appBizContent = appBizContent;
  }
  return appDetailsEntity;
}

Map<String, dynamic> $AppDetailsEntityToJson(AppDetailsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['androidType'] = entity.androidType;
  data['softID'] = entity.softID;
  data['softName'] = entity.softName;
  data['version'] = entity.version;
  data['installFileSize'] = entity.installFileSize;
  data['detailInfo'] = entity.detailInfo;
  data['score'] = entity.score;
  data['logoFile'] = entity.logoFile;
  data['captureFileList'] =
      entity.captureFileList?.map((v) => v.toJson()).toList();
  data['whatNew'] = entity.whatNew;
  data['createdTime'] = entity.createdTime;
  data['downloadUrl'] = entity.downloadUrl;
  data['downloadCount'] = entity.downloadCount;
  data['detailsTag'] = entity.detailsTag?.map((v) => v.toJson()).toList();
  data['warmTips'] = entity.warmTips;
  data['softType'] = entity.softType;
  data['cover'] = entity.cover?.toJson();
  data['hardwareConfigurationList'] = entity.hardwareConfigurationList;
  data['classRankingDesc'] = entity.classRankingDesc;
  data['editorRecommend'] = entity.editorRecommend;
  data['activityList'] = entity.activityList?.map((v) => v.toJson()).toList();
  data['hasGiftBag'] = entity.hasGiftBag;
  data['hasCollect'] = entity.hasCollect;
  data['appRecommend'] = entity.appRecommend;
  data['appLabelList'] = entity.appLabelList?.map((v) => v.toJson()).toList();
  data['sourceInfo'] = entity.sourceInfo;
  data['lenovoClassId'] = entity.lenovoClassId;
  data['originalPrice'] = entity.originalPrice;
  data['currentPrice'] = entity.currentPrice;
  data['payType'] = entity.payType;
  data['appBizType'] = entity.appBizType;
  data['appBizContent'] = entity.appBizContent?.toJson();
  return data;
}

extension AppDetailsEntityExtension on AppDetailsEntity {
  AppDetailsEntity copyWith({
    String? androidType,
    String? softID,
    String? softName,
    String? version,
    String? installFileSize,
    String? detailInfo,
    String? score,
    String? logoFile,
    List<AppDetailsCaptureFileList>? captureFileList,
    String? whatNew,
    String? createdTime,
    String? downloadUrl,
    String? downloadCount,
    List<AppDetailsDetailsTag>? detailsTag,
    dynamic warmTips,
    String? softType,
    AppDetailsCover? cover,
    dynamic hardwareConfigurationList,
    dynamic classRankingDesc,
    dynamic editorRecommend,
    List<AppDetailsActivityList>? activityList,
    dynamic hasGiftBag,
    int? hasCollect,
    dynamic appRecommend,
    List<AppDetailsAppLabelList>? appLabelList,
    dynamic sourceInfo,
    String? lenovoClassId,
    dynamic originalPrice,
    dynamic currentPrice,
    int? payType,
    int? appBizType,
    AppDetailsAppBizContent? appBizContent,
  }) {
    return AppDetailsEntity()
      ..androidType = androidType ?? this.androidType
      ..softID = softID ?? this.softID
      ..softName = softName ?? this.softName
      ..version = version ?? this.version
      ..installFileSize = installFileSize ?? this.installFileSize
      ..detailInfo = detailInfo ?? this.detailInfo
      ..score = score ?? this.score
      ..logoFile = logoFile ?? this.logoFile
      ..captureFileList = captureFileList ?? this.captureFileList
      ..whatNew = whatNew ?? this.whatNew
      ..createdTime = createdTime ?? this.createdTime
      ..downloadUrl = downloadUrl ?? this.downloadUrl
      ..downloadCount = downloadCount ?? this.downloadCount
      ..detailsTag = detailsTag ?? this.detailsTag
      ..warmTips = warmTips ?? this.warmTips
      ..softType = softType ?? this.softType
      ..cover = cover ?? this.cover
      ..hardwareConfigurationList = hardwareConfigurationList ??
          this.hardwareConfigurationList
      ..classRankingDesc = classRankingDesc ?? this.classRankingDesc
      ..editorRecommend = editorRecommend ?? this.editorRecommend
      ..activityList = activityList ?? this.activityList
      ..hasGiftBag = hasGiftBag ?? this.hasGiftBag
      ..hasCollect = hasCollect ?? this.hasCollect
      ..appRecommend = appRecommend ?? this.appRecommend
      ..appLabelList = appLabelList ?? this.appLabelList
      ..sourceInfo = sourceInfo ?? this.sourceInfo
      ..lenovoClassId = lenovoClassId ?? this.lenovoClassId
      ..originalPrice = originalPrice ?? this.originalPrice
      ..currentPrice = currentPrice ?? this.currentPrice
      ..payType = payType ?? this.payType
      ..appBizType = appBizType ?? this.appBizType
      ..appBizContent = appBizContent ?? this.appBizContent;
  }
}

AppDetailsCaptureFileList $AppDetailsCaptureFileListFromJson(
    Map<String, dynamic> json) {
  final AppDetailsCaptureFileList appDetailsCaptureFileList = AppDetailsCaptureFileList();
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    appDetailsCaptureFileList.type = type;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    appDetailsCaptureFileList.url = url;
  }
  final String? videoImg = jsonConvert.convert<String>(json['videoImg']);
  if (videoImg != null) {
    appDetailsCaptureFileList.videoImg = videoImg;
  }
  return appDetailsCaptureFileList;
}

Map<String, dynamic> $AppDetailsCaptureFileListToJson(
    AppDetailsCaptureFileList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['url'] = entity.url;
  data['videoImg'] = entity.videoImg;
  return data;
}

extension AppDetailsCaptureFileListExtension on AppDetailsCaptureFileList {
  AppDetailsCaptureFileList copyWith({
    String? type,
    String? url,
    String? videoImg,
  }) {
    return AppDetailsCaptureFileList()
      ..type = type ?? this.type
      ..url = url ?? this.url
      ..videoImg = videoImg ?? this.videoImg;
  }
}

AppDetailsDetailsTag $AppDetailsDetailsTagFromJson(Map<String, dynamic> json) {
  final AppDetailsDetailsTag appDetailsDetailsTag = AppDetailsDetailsTag();
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    appDetailsDetailsTag.icon = icon;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    appDetailsDetailsTag.name = name;
  }
  final String? tips = jsonConvert.convert<String>(json['tips']);
  if (tips != null) {
    appDetailsDetailsTag.tips = tips;
  }
  return appDetailsDetailsTag;
}

Map<String, dynamic> $AppDetailsDetailsTagToJson(AppDetailsDetailsTag entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['icon'] = entity.icon;
  data['name'] = entity.name;
  data['tips'] = entity.tips;
  return data;
}

extension AppDetailsDetailsTagExtension on AppDetailsDetailsTag {
  AppDetailsDetailsTag copyWith({
    String? icon,
    String? name,
    String? tips,
  }) {
    return AppDetailsDetailsTag()
      ..icon = icon ?? this.icon
      ..name = name ?? this.name
      ..tips = tips ?? this.tips;
  }
}

AppDetailsCover $AppDetailsCoverFromJson(Map<String, dynamic> json) {
  final AppDetailsCover appDetailsCover = AppDetailsCover();
  final String? coverImg = jsonConvert.convert<String>(json['coverImg']);
  if (coverImg != null) {
    appDetailsCover.coverImg = coverImg;
  }
  final String? videoId = jsonConvert.convert<String>(json['videoId']);
  if (videoId != null) {
    appDetailsCover.videoId = videoId;
  }
  final String? videoUrl = jsonConvert.convert<String>(json['videoUrl']);
  if (videoUrl != null) {
    appDetailsCover.videoUrl = videoUrl;
  }
  final String? showVideo = jsonConvert.convert<String>(json['showVideo']);
  if (showVideo != null) {
    appDetailsCover.showVideo = showVideo;
  }
  final String? coverImgBig = jsonConvert.convert<String>(json['coverImgBig']);
  if (coverImgBig != null) {
    appDetailsCover.coverImgBig = coverImgBig;
  }
  return appDetailsCover;
}

Map<String, dynamic> $AppDetailsCoverToJson(AppDetailsCover entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['coverImg'] = entity.coverImg;
  data['videoId'] = entity.videoId;
  data['videoUrl'] = entity.videoUrl;
  data['showVideo'] = entity.showVideo;
  data['coverImgBig'] = entity.coverImgBig;
  return data;
}

extension AppDetailsCoverExtension on AppDetailsCover {
  AppDetailsCover copyWith({
    String? coverImg,
    String? videoId,
    String? videoUrl,
    String? showVideo,
    String? coverImgBig,
  }) {
    return AppDetailsCover()
      ..coverImg = coverImg ?? this.coverImg
      ..videoId = videoId ?? this.videoId
      ..videoUrl = videoUrl ?? this.videoUrl
      ..showVideo = showVideo ?? this.showVideo
      ..coverImgBig = coverImgBig ?? this.coverImgBig;
  }
}

AppDetailsActivityList $AppDetailsActivityListFromJson(
    Map<String, dynamic> json) {
  final AppDetailsActivityList appDetailsActivityList = AppDetailsActivityList();
  final String? targetType = jsonConvert.convert<String>(json['targetType']);
  if (targetType != null) {
    appDetailsActivityList.targetType = targetType;
  }
  final String? targetContent = jsonConvert.convert<String>(
      json['targetContent']);
  if (targetContent != null) {
    appDetailsActivityList.targetContent = targetContent;
  }
  final String? activityDesc = jsonConvert.convert<String>(
      json['activityDesc']);
  if (activityDesc != null) {
    appDetailsActivityList.activityDesc = activityDesc;
  }
  return appDetailsActivityList;
}

Map<String, dynamic> $AppDetailsActivityListToJson(
    AppDetailsActivityList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['targetType'] = entity.targetType;
  data['targetContent'] = entity.targetContent;
  data['activityDesc'] = entity.activityDesc;
  return data;
}

extension AppDetailsActivityListExtension on AppDetailsActivityList {
  AppDetailsActivityList copyWith({
    String? targetType,
    String? targetContent,
    String? activityDesc,
  }) {
    return AppDetailsActivityList()
      ..targetType = targetType ?? this.targetType
      ..targetContent = targetContent ?? this.targetContent
      ..activityDesc = activityDesc ?? this.activityDesc;
  }
}

AppDetailsAppLabelList $AppDetailsAppLabelListFromJson(
    Map<String, dynamic> json) {
  final AppDetailsAppLabelList appDetailsAppLabelList = AppDetailsAppLabelList();
  final String? labelName = jsonConvert.convert<String>(json['labelName']);
  if (labelName != null) {
    appDetailsAppLabelList.labelName = labelName;
  }
  final String? targetType = jsonConvert.convert<String>(json['targetType']);
  if (targetType != null) {
    appDetailsAppLabelList.targetType = targetType;
  }
  final String? targetContent = jsonConvert.convert<String>(
      json['targetContent']);
  if (targetContent != null) {
    appDetailsAppLabelList.targetContent = targetContent;
  }
  return appDetailsAppLabelList;
}

Map<String, dynamic> $AppDetailsAppLabelListToJson(
    AppDetailsAppLabelList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['labelName'] = entity.labelName;
  data['targetType'] = entity.targetType;
  data['targetContent'] = entity.targetContent;
  return data;
}

extension AppDetailsAppLabelListExtension on AppDetailsAppLabelList {
  AppDetailsAppLabelList copyWith({
    String? labelName,
    String? targetType,
    String? targetContent,
  }) {
    return AppDetailsAppLabelList()
      ..labelName = labelName ?? this.labelName
      ..targetType = targetType ?? this.targetType
      ..targetContent = targetContent ?? this.targetContent;
  }
}

AppDetailsAppBizContent $AppDetailsAppBizContentFromJson(
    Map<String, dynamic> json) {
  final AppDetailsAppBizContent appDetailsAppBizContent = AppDetailsAppBizContent();
  return appDetailsAppBizContent;
}

Map<String, dynamic> $AppDetailsAppBizContentToJson(
    AppDetailsAppBizContent entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension AppDetailsAppBizContentExtension on AppDetailsAppBizContent {
}