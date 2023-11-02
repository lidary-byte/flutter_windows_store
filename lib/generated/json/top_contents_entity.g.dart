import 'package:flutter_windows_store/generated/json/base/json_convert_content.dart';
import 'package:flutter_windows_store/entity/top_contents_entity.dart';

TopContentsEntity $TopContentsEntityFromJson(Map<String, dynamic> json) {
  final TopContentsEntity topContentsEntity = TopContentsEntity();
  final dynamic computerType = json['computerType'];
  if (computerType != null) {
    topContentsEntity.computerType = computerType;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    topContentsEntity.title = title;
  }
  final String? pageType = jsonConvert.convert<String>(json['pageType']);
  if (pageType != null) {
    topContentsEntity.pageType = pageType;
  }
  final String? cardType = jsonConvert.convert<String>(json['cardType']);
  if (cardType != null) {
    topContentsEntity.cardType = cardType;
  }
  final String? orderNum = jsonConvert.convert<String>(json['orderNum']);
  if (orderNum != null) {
    topContentsEntity.orderNum = orderNum;
  }
  final dynamic operate = json['operate'];
  if (operate != null) {
    topContentsEntity.operate = operate;
  }
  final dynamic row = json['row'];
  if (row != null) {
    topContentsEntity.row = row;
  }
  final dynamic column = json['column'];
  if (column != null) {
    topContentsEntity.column = column;
  }
  final dynamic targetType = json['targetType'];
  if (targetType != null) {
    topContentsEntity.targetType = targetType;
  }
  final dynamic targetContent = json['targetContent'];
  if (targetContent != null) {
    topContentsEntity.targetContent = targetContent;
  }
  final int? hoverShow = jsonConvert.convert<int>(json['hoverShow']);
  if (hoverShow != null) {
    topContentsEntity.hoverShow = hoverShow;
  }
  final List<TopContentsDataList>? dataList = (json['dataList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<TopContentsDataList>(e) as TopContentsDataList)
      .toList();
  if (dataList != null) {
    topContentsEntity.dataList = dataList;
  }
  final dynamic backgroundImg = json['backgroundImg'];
  if (backgroundImg != null) {
    topContentsEntity.backgroundImg = backgroundImg;
  }
  final int? styleType = jsonConvert.convert<int>(json['styleType']);
  if (styleType != null) {
    topContentsEntity.styleType = styleType;
  }
  return topContentsEntity;
}

Map<String, dynamic> $TopContentsEntityToJson(TopContentsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['computerType'] = entity.computerType;
  data['title'] = entity.title;
  data['pageType'] = entity.pageType;
  data['cardType'] = entity.cardType;
  data['orderNum'] = entity.orderNum;
  data['operate'] = entity.operate;
  data['row'] = entity.row;
  data['column'] = entity.column;
  data['targetType'] = entity.targetType;
  data['targetContent'] = entity.targetContent;
  data['hoverShow'] = entity.hoverShow;
  data['dataList'] = entity.dataList?.map((v) => v.toJson()).toList();
  data['backgroundImg'] = entity.backgroundImg;
  data['styleType'] = entity.styleType;
  return data;
}

extension TopContentsEntityExtension on TopContentsEntity {
  TopContentsEntity copyWith({
    dynamic computerType,
    String? title,
    String? pageType,
    String? cardType,
    String? orderNum,
    dynamic operate,
    dynamic row,
    dynamic column,
    dynamic targetType,
    dynamic targetContent,
    int? hoverShow,
    List<TopContentsDataList>? dataList,
    dynamic backgroundImg,
    int? styleType,
  }) {
    return TopContentsEntity()
      ..computerType = computerType ?? this.computerType
      ..title = title ?? this.title
      ..pageType = pageType ?? this.pageType
      ..cardType = cardType ?? this.cardType
      ..orderNum = orderNum ?? this.orderNum
      ..operate = operate ?? this.operate
      ..row = row ?? this.row
      ..column = column ?? this.column
      ..targetType = targetType ?? this.targetType
      ..targetContent = targetContent ?? this.targetContent
      ..hoverShow = hoverShow ?? this.hoverShow
      ..dataList = dataList ?? this.dataList
      ..backgroundImg = backgroundImg ?? this.backgroundImg
      ..styleType = styleType ?? this.styleType;
  }
}

TopContentsDataList $TopContentsDataListFromJson(Map<String, dynamic> json) {
  final TopContentsDataList topContentsDataList = TopContentsDataList();
  final String? pageCardContentId = jsonConvert.convert<String>(
      json['pageCardContentId']);
  if (pageCardContentId != null) {
    topContentsDataList.pageCardContentId = pageCardContentId;
  }
  final String? contentImg = jsonConvert.convert<String>(json['contentImg']);
  if (contentImg != null) {
    topContentsDataList.contentImg = contentImg;
  }
  final String? contentImgBig = jsonConvert.convert<String>(
      json['contentImgBig']);
  if (contentImgBig != null) {
    topContentsDataList.contentImgBig = contentImgBig;
  }
  final String? contentTitle = jsonConvert.convert<String>(
      json['contentTitle']);
  if (contentTitle != null) {
    topContentsDataList.contentTitle = contentTitle;
  }
  final String? contentDesc = jsonConvert.convert<String>(json['contentDesc']);
  if (contentDesc != null) {
    topContentsDataList.contentDesc = contentDesc;
  }
  final dynamic contentType = json['contentType'];
  if (contentType != null) {
    topContentsDataList.contentType = contentType;
  }
  final String? targetContent = jsonConvert.convert<String>(
      json['targetContent']);
  if (targetContent != null) {
    topContentsDataList.targetContent = targetContent;
  }
  final String? targetType = jsonConvert.convert<String>(json['targetType']);
  if (targetType != null) {
    topContentsDataList.targetType = targetType;
  }
  final TopContentsDataListAppInfo? appInfo = jsonConvert.convert<
      TopContentsDataListAppInfo>(json['appInfo']);
  if (appInfo != null) {
    topContentsDataList.appInfo = appInfo;
  }
  final String? bizInfo = jsonConvert.convert<String>(json['bizInfo']);
  if (bizInfo != null) {
    topContentsDataList.bizInfo = bizInfo;
  }
  return topContentsDataList;
}

Map<String, dynamic> $TopContentsDataListToJson(TopContentsDataList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['pageCardContentId'] = entity.pageCardContentId;
  data['contentImg'] = entity.contentImg;
  data['contentImgBig'] = entity.contentImgBig;
  data['contentTitle'] = entity.contentTitle;
  data['contentDesc'] = entity.contentDesc;
  data['contentType'] = entity.contentType;
  data['targetContent'] = entity.targetContent;
  data['targetType'] = entity.targetType;
  data['appInfo'] = entity.appInfo?.toJson();
  data['bizInfo'] = entity.bizInfo;
  return data;
}

extension TopContentsDataListExtension on TopContentsDataList {
  TopContentsDataList copyWith({
    String? pageCardContentId,
    String? contentImg,
    String? contentImgBig,
    String? contentTitle,
    String? contentDesc,
    dynamic contentType,
    String? targetContent,
    String? targetType,
    TopContentsDataListAppInfo? appInfo,
    String? bizInfo,
  }) {
    return TopContentsDataList()
      ..pageCardContentId = pageCardContentId ?? this.pageCardContentId
      ..contentImg = contentImg ?? this.contentImg
      ..contentImgBig = contentImgBig ?? this.contentImgBig
      ..contentTitle = contentTitle ?? this.contentTitle
      ..contentDesc = contentDesc ?? this.contentDesc
      ..contentType = contentType ?? this.contentType
      ..targetContent = targetContent ?? this.targetContent
      ..targetType = targetType ?? this.targetType
      ..appInfo = appInfo ?? this.appInfo
      ..bizInfo = bizInfo ?? this.bizInfo;
  }
}

TopContentsDataListAppInfo $TopContentsDataListAppInfoFromJson(
    Map<String, dynamic> json) {
  final TopContentsDataListAppInfo topContentsDataListAppInfo = TopContentsDataListAppInfo();
  final String? androidType = jsonConvert.convert<String>(json['androidType']);
  if (androidType != null) {
    topContentsDataListAppInfo.androidType = androidType;
  }
  final dynamic androidSmallIcon = json['androidSmallIcon'];
  if (androidSmallIcon != null) {
    topContentsDataListAppInfo.androidSmallIcon = androidSmallIcon;
  }
  final dynamic developerName = json['developerName'];
  if (developerName != null) {
    topContentsDataListAppInfo.developerName = developerName;
  }
  final dynamic packageName = json['packageName'];
  if (packageName != null) {
    topContentsDataListAppInfo.packageName = packageName;
  }
  final dynamic versionCode = json['versionCode'];
  if (versionCode != null) {
    topContentsDataListAppInfo.versionCode = versionCode;
  }
  final dynamic pid = json['pid'];
  if (pid != null) {
    topContentsDataListAppInfo.pid = pid;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    topContentsDataListAppInfo.id = id;
  }
  final String? softID = jsonConvert.convert<String>(json['softID']);
  if (softID != null) {
    topContentsDataListAppInfo.softID = softID;
  }
  final String? softName = jsonConvert.convert<String>(json['softName']);
  if (softName != null) {
    topContentsDataListAppInfo.softName = softName;
  }
  final String? installFileSize = jsonConvert.convert<String>(
      json['installFileSize']);
  if (installFileSize != null) {
    topContentsDataListAppInfo.installFileSize = installFileSize;
  }
  final String? introduction = jsonConvert.convert<String>(
      json['introduction']);
  if (introduction != null) {
    topContentsDataListAppInfo.introduction = introduction;
  }
  final String? score = jsonConvert.convert<String>(json['score']);
  if (score != null) {
    topContentsDataListAppInfo.score = score;
  }
  final String? downLoadUrl = jsonConvert.convert<String>(json['downLoadUrl']);
  if (downLoadUrl != null) {
    topContentsDataListAppInfo.downLoadUrl = downLoadUrl;
  }
  final String? logoFile = jsonConvert.convert<String>(json['logoFile']);
  if (logoFile != null) {
    topContentsDataListAppInfo.logoFile = logoFile;
  }
  final List<String>? supportOsbit = (json['supportOsbit'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<String>(e) as String)
      .toList();
  if (supportOsbit != null) {
    topContentsDataListAppInfo.supportOsbit = supportOsbit;
  }
  final List<String>? supportPlatform = (json['supportPlatform'] as List<
      dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (supportPlatform != null) {
    topContentsDataListAppInfo.supportPlatform = supportPlatform;
  }
  final List<dynamic>? programs = (json['programs'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (programs != null) {
    topContentsDataListAppInfo.programs = programs;
  }
  final String? downloadCount = jsonConvert.convert<String>(
      json['downloadCount']);
  if (downloadCount != null) {
    topContentsDataListAppInfo.downloadCount = downloadCount;
  }
  final List<String>? guid = (json['guid'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (guid != null) {
    topContentsDataListAppInfo.guid = guid;
  }
  final String? bizInfo = jsonConvert.convert<String>(json['bizInfo']);
  if (bizInfo != null) {
    topContentsDataListAppInfo.bizInfo = bizInfo;
  }
  final String? classID = jsonConvert.convert<String>(json['classID']);
  if (classID != null) {
    topContentsDataListAppInfo.classID = classID;
  }
  final dynamic tag = json['tag'];
  if (tag != null) {
    topContentsDataListAppInfo.tag = tag;
  }
  final String? version = jsonConvert.convert<String>(json['version']);
  if (version != null) {
    topContentsDataListAppInfo.version = version;
  }
  final String? stable = jsonConvert.convert<String>(json['stable']);
  if (stable != null) {
    topContentsDataListAppInfo.stable = stable;
  }
  final dynamic isFree = json['isFree'];
  if (isFree != null) {
    topContentsDataListAppInfo.isFree = isFree;
  }
  final dynamic isPlugin = json['isPlugin'];
  if (isPlugin != null) {
    topContentsDataListAppInfo.isPlugin = isPlugin;
  }
  final String? adKey = jsonConvert.convert<String>(json['adKey']);
  if (adKey != null) {
    topContentsDataListAppInfo.adKey = adKey;
  }
  final dynamic isIntervene = json['isIntervene'];
  if (isIntervene != null) {
    topContentsDataListAppInfo.isIntervene = isIntervene;
  }
  final dynamic ztImg = json['ztImg'];
  if (ztImg != null) {
    topContentsDataListAppInfo.ztImg = ztImg;
  }
  final dynamic collectCount = json['collectCount'];
  if (collectCount != null) {
    topContentsDataListAppInfo.collectCount = collectCount;
  }
  final dynamic itemType = json['itemType'];
  if (itemType != null) {
    topContentsDataListAppInfo.itemType = itemType;
  }
  final dynamic appDesc = json['appDesc'];
  if (appDesc != null) {
    topContentsDataListAppInfo.appDesc = appDesc;
  }
  final dynamic resUrl = json['resUrl'];
  if (resUrl != null) {
    topContentsDataListAppInfo.resUrl = resUrl;
  }
  final int? orderNum = jsonConvert.convert<int>(json['orderNum']);
  if (orderNum != null) {
    topContentsDataListAppInfo.orderNum = orderNum;
  }
  final dynamic downloadProportionDesc = json['downloadProportionDesc'];
  if (downloadProportionDesc != null) {
    topContentsDataListAppInfo.downloadProportionDesc = downloadProportionDesc;
  }
  final int? commentUserCount = jsonConvert.convert<int>(
      json['commentUserCount']);
  if (commentUserCount != null) {
    topContentsDataListAppInfo.commentUserCount = commentUserCount;
  }
  final dynamic originalPrice = json['originalPrice'];
  if (originalPrice != null) {
    topContentsDataListAppInfo.originalPrice = originalPrice;
  }
  final dynamic currentPrice = json['currentPrice'];
  if (currentPrice != null) {
    topContentsDataListAppInfo.currentPrice = currentPrice;
  }
  final int? payType = jsonConvert.convert<int>(json['payType']);
  if (payType != null) {
    topContentsDataListAppInfo.payType = payType;
  }
  final TopContentsDataListAppInfoSourceInfo? sourceInfo = jsonConvert.convert<
      TopContentsDataListAppInfoSourceInfo>(json['sourceInfo']);
  if (sourceInfo != null) {
    topContentsDataListAppInfo.sourceInfo = sourceInfo;
  }
  final List<String>? captureFileList = (json['captureFileList'] as List<
      dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (captureFileList != null) {
    topContentsDataListAppInfo.captureFileList = captureFileList;
  }
  final dynamic vImg = json['vImg'];
  if (vImg != null) {
    topContentsDataListAppInfo.vImg = vImg;
  }
  final dynamic scoreRadio = json['scoreRadio'];
  if (scoreRadio != null) {
    topContentsDataListAppInfo.scoreRadio = scoreRadio;
  }
  final dynamic relationTags = json['relationTags'];
  if (relationTags != null) {
    topContentsDataListAppInfo.relationTags = relationTags;
  }
  final int? installFileType = jsonConvert.convert<int>(
      json['installFileType']);
  if (installFileType != null) {
    topContentsDataListAppInfo.installFileType = installFileType;
  }
  final String? createdTime = jsonConvert.convert<String>(json['createdTime']);
  if (createdTime != null) {
    topContentsDataListAppInfo.createdTime = createdTime;
  }
  final String? appProperty = jsonConvert.convert<String>(json['appProperty']);
  if (appProperty != null) {
    topContentsDataListAppInfo.appProperty = appProperty;
  }
  final int? appBizType = jsonConvert.convert<int>(json['appBizType']);
  if (appBizType != null) {
    topContentsDataListAppInfo.appBizType = appBizType;
  }
  final TopContentsDataListAppInfoAppBizContent? appBizContent = jsonConvert
      .convert<TopContentsDataListAppInfoAppBizContent>(json['appBizContent']);
  if (appBizContent != null) {
    topContentsDataListAppInfo.appBizContent = appBizContent;
  }
  return topContentsDataListAppInfo;
}

Map<String, dynamic> $TopContentsDataListAppInfoToJson(
    TopContentsDataListAppInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['androidType'] = entity.androidType;
  data['androidSmallIcon'] = entity.androidSmallIcon;
  data['developerName'] = entity.developerName;
  data['packageName'] = entity.packageName;
  data['versionCode'] = entity.versionCode;
  data['pid'] = entity.pid;
  data['id'] = entity.id;
  data['softID'] = entity.softID;
  data['softName'] = entity.softName;
  data['installFileSize'] = entity.installFileSize;
  data['introduction'] = entity.introduction;
  data['score'] = entity.score;
  data['downLoadUrl'] = entity.downLoadUrl;
  data['logoFile'] = entity.logoFile;
  data['supportOsbit'] = entity.supportOsbit;
  data['supportPlatform'] = entity.supportPlatform;
  data['programs'] = entity.programs;
  data['downloadCount'] = entity.downloadCount;
  data['guid'] = entity.guid;
  data['bizInfo'] = entity.bizInfo;
  data['classID'] = entity.classID;
  data['tag'] = entity.tag;
  data['version'] = entity.version;
  data['stable'] = entity.stable;
  data['isFree'] = entity.isFree;
  data['isPlugin'] = entity.isPlugin;
  data['adKey'] = entity.adKey;
  data['isIntervene'] = entity.isIntervene;
  data['ztImg'] = entity.ztImg;
  data['collectCount'] = entity.collectCount;
  data['itemType'] = entity.itemType;
  data['appDesc'] = entity.appDesc;
  data['resUrl'] = entity.resUrl;
  data['orderNum'] = entity.orderNum;
  data['downloadProportionDesc'] = entity.downloadProportionDesc;
  data['commentUserCount'] = entity.commentUserCount;
  data['originalPrice'] = entity.originalPrice;
  data['currentPrice'] = entity.currentPrice;
  data['payType'] = entity.payType;
  data['sourceInfo'] = entity.sourceInfo?.toJson();
  data['captureFileList'] = entity.captureFileList;
  data['vImg'] = entity.vImg;
  data['scoreRadio'] = entity.scoreRadio;
  data['relationTags'] = entity.relationTags;
  data['installFileType'] = entity.installFileType;
  data['createdTime'] = entity.createdTime;
  data['appProperty'] = entity.appProperty;
  data['appBizType'] = entity.appBizType;
  data['appBizContent'] = entity.appBizContent?.toJson();
  return data;
}

extension TopContentsDataListAppInfoExtension on TopContentsDataListAppInfo {
  TopContentsDataListAppInfo copyWith({
    String? androidType,
    dynamic androidSmallIcon,
    dynamic developerName,
    dynamic packageName,
    dynamic versionCode,
    dynamic pid,
    String? id,
    String? softID,
    String? softName,
    String? installFileSize,
    String? introduction,
    String? score,
    String? downLoadUrl,
    String? logoFile,
    List<String>? supportOsbit,
    List<String>? supportPlatform,
    List<dynamic>? programs,
    String? downloadCount,
    List<String>? guid,
    String? bizInfo,
    String? classID,
    dynamic tag,
    String? version,
    String? stable,
    dynamic isFree,
    dynamic isPlugin,
    String? adKey,
    dynamic isIntervene,
    dynamic ztImg,
    dynamic collectCount,
    dynamic itemType,
    dynamic appDesc,
    dynamic resUrl,
    int? orderNum,
    dynamic downloadProportionDesc,
    int? commentUserCount,
    dynamic originalPrice,
    dynamic currentPrice,
    int? payType,
    TopContentsDataListAppInfoSourceInfo? sourceInfo,
    List<String>? captureFileList,
    dynamic vImg,
    dynamic scoreRadio,
    dynamic relationTags,
    int? installFileType,
    String? createdTime,
    String? appProperty,
    int? appBizType,
    TopContentsDataListAppInfoAppBizContent? appBizContent,
  }) {
    return TopContentsDataListAppInfo()
      ..androidType = androidType ?? this.androidType
      ..androidSmallIcon = androidSmallIcon ?? this.androidSmallIcon
      ..developerName = developerName ?? this.developerName
      ..packageName = packageName ?? this.packageName
      ..versionCode = versionCode ?? this.versionCode
      ..pid = pid ?? this.pid
      ..id = id ?? this.id
      ..softID = softID ?? this.softID
      ..softName = softName ?? this.softName
      ..installFileSize = installFileSize ?? this.installFileSize
      ..introduction = introduction ?? this.introduction
      ..score = score ?? this.score
      ..downLoadUrl = downLoadUrl ?? this.downLoadUrl
      ..logoFile = logoFile ?? this.logoFile
      ..supportOsbit = supportOsbit ?? this.supportOsbit
      ..supportPlatform = supportPlatform ?? this.supportPlatform
      ..programs = programs ?? this.programs
      ..downloadCount = downloadCount ?? this.downloadCount
      ..guid = guid ?? this.guid
      ..bizInfo = bizInfo ?? this.bizInfo
      ..classID = classID ?? this.classID
      ..tag = tag ?? this.tag
      ..version = version ?? this.version
      ..stable = stable ?? this.stable
      ..isFree = isFree ?? this.isFree
      ..isPlugin = isPlugin ?? this.isPlugin
      ..adKey = adKey ?? this.adKey
      ..isIntervene = isIntervene ?? this.isIntervene
      ..ztImg = ztImg ?? this.ztImg
      ..collectCount = collectCount ?? this.collectCount
      ..itemType = itemType ?? this.itemType
      ..appDesc = appDesc ?? this.appDesc
      ..resUrl = resUrl ?? this.resUrl
      ..orderNum = orderNum ?? this.orderNum
      ..downloadProportionDesc = downloadProportionDesc ??
          this.downloadProportionDesc
      ..commentUserCount = commentUserCount ?? this.commentUserCount
      ..originalPrice = originalPrice ?? this.originalPrice
      ..currentPrice = currentPrice ?? this.currentPrice
      ..payType = payType ?? this.payType
      ..sourceInfo = sourceInfo ?? this.sourceInfo
      ..captureFileList = captureFileList ?? this.captureFileList
      ..vImg = vImg ?? this.vImg
      ..scoreRadio = scoreRadio ?? this.scoreRadio
      ..relationTags = relationTags ?? this.relationTags
      ..installFileType = installFileType ?? this.installFileType
      ..createdTime = createdTime ?? this.createdTime
      ..appProperty = appProperty ?? this.appProperty
      ..appBizType = appBizType ?? this.appBizType
      ..appBizContent = appBizContent ?? this.appBizContent;
  }
}

TopContentsDataListAppInfoSourceInfo $TopContentsDataListAppInfoSourceInfoFromJson(
    Map<String, dynamic> json) {
  final TopContentsDataListAppInfoSourceInfo topContentsDataListAppInfoSourceInfo = TopContentsDataListAppInfoSourceInfo();
  final dynamic sourceId = json['sourceId'];
  if (sourceId != null) {
    topContentsDataListAppInfoSourceInfo.sourceId = sourceId;
  }
  final dynamic commodityId = json['commodityId'];
  if (commodityId != null) {
    topContentsDataListAppInfoSourceInfo.commodityId = commodityId;
  }
  final dynamic sourceCode = json['sourceCode'];
  if (sourceCode != null) {
    topContentsDataListAppInfoSourceInfo.sourceCode = sourceCode;
  }
  final dynamic sourceDesc = json['sourceDesc'];
  if (sourceDesc != null) {
    topContentsDataListAppInfoSourceInfo.sourceDesc = sourceDesc;
  }
  final dynamic sourceUrl = json['sourceUrl'];
  if (sourceUrl != null) {
    topContentsDataListAppInfoSourceInfo.sourceUrl = sourceUrl;
  }
  final TopContentsDataListAppInfoSourceInfoSellInfo? sellInfo = jsonConvert
      .convert<TopContentsDataListAppInfoSourceInfoSellInfo>(json['sellInfo']);
  if (sellInfo != null) {
    topContentsDataListAppInfoSourceInfo.sellInfo = sellInfo;
  }
  final int? sourceType = jsonConvert.convert<int>(json['sourceType']);
  if (sourceType != null) {
    topContentsDataListAppInfoSourceInfo.sourceType = sourceType;
  }
  final dynamic sku = json['sku'];
  if (sku != null) {
    topContentsDataListAppInfoSourceInfo.sku = sku;
  }
  return topContentsDataListAppInfoSourceInfo;
}

Map<String, dynamic> $TopContentsDataListAppInfoSourceInfoToJson(
    TopContentsDataListAppInfoSourceInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['sourceId'] = entity.sourceId;
  data['commodityId'] = entity.commodityId;
  data['sourceCode'] = entity.sourceCode;
  data['sourceDesc'] = entity.sourceDesc;
  data['sourceUrl'] = entity.sourceUrl;
  data['sellInfo'] = entity.sellInfo?.toJson();
  data['sourceType'] = entity.sourceType;
  data['sku'] = entity.sku;
  return data;
}

extension TopContentsDataListAppInfoSourceInfoExtension on TopContentsDataListAppInfoSourceInfo {
  TopContentsDataListAppInfoSourceInfo copyWith({
    dynamic sourceId,
    dynamic commodityId,
    dynamic sourceCode,
    dynamic sourceDesc,
    dynamic sourceUrl,
    TopContentsDataListAppInfoSourceInfoSellInfo? sellInfo,
    int? sourceType,
    dynamic sku,
  }) {
    return TopContentsDataListAppInfoSourceInfo()
      ..sourceId = sourceId ?? this.sourceId
      ..commodityId = commodityId ?? this.commodityId
      ..sourceCode = sourceCode ?? this.sourceCode
      ..sourceDesc = sourceDesc ?? this.sourceDesc
      ..sourceUrl = sourceUrl ?? this.sourceUrl
      ..sellInfo = sellInfo ?? this.sellInfo
      ..sourceType = sourceType ?? this.sourceType
      ..sku = sku ?? this.sku;
  }
}

TopContentsDataListAppInfoSourceInfoSellInfo $TopContentsDataListAppInfoSourceInfoSellInfoFromJson(
    Map<String, dynamic> json) {
  final TopContentsDataListAppInfoSourceInfoSellInfo topContentsDataListAppInfoSourceInfoSellInfo = TopContentsDataListAppInfoSourceInfoSellInfo();
  final dynamic originalPrice = json['originalPrice'];
  if (originalPrice != null) {
    topContentsDataListAppInfoSourceInfoSellInfo.originalPrice = originalPrice;
  }
  final dynamic currentPrice = json['currentPrice'];
  if (currentPrice != null) {
    topContentsDataListAppInfoSourceInfoSellInfo.currentPrice = currentPrice;
  }
  final dynamic discount = json['discount'];
  if (discount != null) {
    topContentsDataListAppInfoSourceInfoSellInfo.discount = discount;
  }
  final dynamic discountDesc = json['discountDesc'];
  if (discountDesc != null) {
    topContentsDataListAppInfoSourceInfoSellInfo.discountDesc = discountDesc;
  }
  return topContentsDataListAppInfoSourceInfoSellInfo;
}

Map<String, dynamic> $TopContentsDataListAppInfoSourceInfoSellInfoToJson(
    TopContentsDataListAppInfoSourceInfoSellInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['originalPrice'] = entity.originalPrice;
  data['currentPrice'] = entity.currentPrice;
  data['discount'] = entity.discount;
  data['discountDesc'] = entity.discountDesc;
  return data;
}

extension TopContentsDataListAppInfoSourceInfoSellInfoExtension on TopContentsDataListAppInfoSourceInfoSellInfo {
  TopContentsDataListAppInfoSourceInfoSellInfo copyWith({
    dynamic originalPrice,
    dynamic currentPrice,
    dynamic discount,
    dynamic discountDesc,
  }) {
    return TopContentsDataListAppInfoSourceInfoSellInfo()
      ..originalPrice = originalPrice ?? this.originalPrice
      ..currentPrice = currentPrice ?? this.currentPrice
      ..discount = discount ?? this.discount
      ..discountDesc = discountDesc ?? this.discountDesc;
  }
}

TopContentsDataListAppInfoAppBizContent $TopContentsDataListAppInfoAppBizContentFromJson(
    Map<String, dynamic> json) {
  final TopContentsDataListAppInfoAppBizContent topContentsDataListAppInfoAppBizContent = TopContentsDataListAppInfoAppBizContent();
  return topContentsDataListAppInfoAppBizContent;
}

Map<String, dynamic> $TopContentsDataListAppInfoAppBizContentToJson(
    TopContentsDataListAppInfoAppBizContent entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension TopContentsDataListAppInfoAppBizContentExtension on TopContentsDataListAppInfoAppBizContent {
}