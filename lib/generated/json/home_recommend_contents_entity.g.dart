import 'package:flutter_windows_store/generated/json/base/json_convert_content.dart';
import 'package:flutter_windows_store/entity/home_recommend_contents_entity.dart';

HomeRecommendContentsEntity $HomeRecommendContentsEntityFromJson(
    Map<String, dynamic> json) {
  final HomeRecommendContentsEntity homeRecommendContentsEntity = HomeRecommendContentsEntity();
  final dynamic computerType = json['computerType'];
  if (computerType != null) {
    homeRecommendContentsEntity.computerType = computerType;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    homeRecommendContentsEntity.title = title;
  }
  final String? pageType = jsonConvert.convert<String>(json['pageType']);
  if (pageType != null) {
    homeRecommendContentsEntity.pageType = pageType;
  }
  final String? cardType = jsonConvert.convert<String>(json['cardType']);
  if (cardType != null) {
    homeRecommendContentsEntity.cardType = cardType;
  }
  final String? orderNum = jsonConvert.convert<String>(json['orderNum']);
  if (orderNum != null) {
    homeRecommendContentsEntity.orderNum = orderNum;
  }
  final String? operate = jsonConvert.convert<String>(json['operate']);
  if (operate != null) {
    homeRecommendContentsEntity.operate = operate;
  }
  final String? row = jsonConvert.convert<String>(json['row']);
  if (row != null) {
    homeRecommendContentsEntity.row = row;
  }
  final String? column = jsonConvert.convert<String>(json['column']);
  if (column != null) {
    homeRecommendContentsEntity.column = column;
  }
  final String? targetType = jsonConvert.convert<String>(json['targetType']);
  if (targetType != null) {
    homeRecommendContentsEntity.targetType = targetType;
  }
  final String? targetContent = jsonConvert.convert<String>(
      json['targetContent']);
  if (targetContent != null) {
    homeRecommendContentsEntity.targetContent = targetContent;
  }
  final int? hoverShow = jsonConvert.convert<int>(json['hoverShow']);
  if (hoverShow != null) {
    homeRecommendContentsEntity.hoverShow = hoverShow;
  }
  final List<
      HomeRecommendContentsDataList>? dataList = (json['dataList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeRecommendContentsDataList>(
          e) as HomeRecommendContentsDataList).toList();
  if (dataList != null) {
    homeRecommendContentsEntity.dataList = dataList;
  }
  final dynamic backgroundImg = json['backgroundImg'];
  if (backgroundImg != null) {
    homeRecommendContentsEntity.backgroundImg = backgroundImg;
  }
  final int? styleType = jsonConvert.convert<int>(json['styleType']);
  if (styleType != null) {
    homeRecommendContentsEntity.styleType = styleType;
  }
  return homeRecommendContentsEntity;
}

Map<String, dynamic> $HomeRecommendContentsEntityToJson(
    HomeRecommendContentsEntity entity) {
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

extension HomeRecommendContentsEntityExtension on HomeRecommendContentsEntity {
  HomeRecommendContentsEntity copyWith({
    dynamic computerType,
    String? title,
    String? pageType,
    String? cardType,
    String? orderNum,
    String? operate,
    String? row,
    String? column,
    String? targetType,
    String? targetContent,
    int? hoverShow,
    List<HomeRecommendContentsDataList>? dataList,
    dynamic backgroundImg,
    int? styleType,
  }) {
    return HomeRecommendContentsEntity()
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

HomeRecommendContentsDataList $HomeRecommendContentsDataListFromJson(
    Map<String, dynamic> json) {
  final HomeRecommendContentsDataList homeRecommendContentsDataList = HomeRecommendContentsDataList();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homeRecommendContentsDataList.name = name;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    homeRecommendContentsDataList.code = code;
  }
  final String? pageCardContentId = jsonConvert.convert<String>(
      json['pageCardContentId']);
  if (pageCardContentId != null) {
    homeRecommendContentsDataList.pageCardContentId = pageCardContentId;
  }
  final dynamic imgUrl = json['imgUrl'];
  if (imgUrl != null) {
    homeRecommendContentsDataList.imgUrl = imgUrl;
  }
  final dynamic targetContent = json['targetContent'];
  if (targetContent != null) {
    homeRecommendContentsDataList.targetContent = targetContent;
  }
  final dynamic targetType = json['targetType'];
  if (targetType != null) {
    homeRecommendContentsDataList.targetType = targetType;
  }
  final List<HomeRecommendContentsDataListApps>? apps = (json['apps'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeRecommendContentsDataListApps>(
          e) as HomeRecommendContentsDataListApps).toList();
  if (apps != null) {
    homeRecommendContentsDataList.apps = apps;
  }
  final dynamic org = json['org'];
  if (org != null) {
    homeRecommendContentsDataList.org = org;
  }
  final dynamic nameBackgroundImg = json['nameBackgroundImg'];
  if (nameBackgroundImg != null) {
    homeRecommendContentsDataList.nameBackgroundImg = nameBackgroundImg;
  }
  final dynamic interactType = json['interactType'];
  if (interactType != null) {
    homeRecommendContentsDataList.interactType = interactType;
  }
  return homeRecommendContentsDataList;
}

Map<String, dynamic> $HomeRecommendContentsDataListToJson(
    HomeRecommendContentsDataList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['code'] = entity.code;
  data['pageCardContentId'] = entity.pageCardContentId;
  data['imgUrl'] = entity.imgUrl;
  data['targetContent'] = entity.targetContent;
  data['targetType'] = entity.targetType;
  data['apps'] = entity.apps?.map((v) => v.toJson()).toList();
  data['org'] = entity.org;
  data['nameBackgroundImg'] = entity.nameBackgroundImg;
  data['interactType'] = entity.interactType;
  return data;
}

extension HomeRecommendContentsDataListExtension on HomeRecommendContentsDataList {
  HomeRecommendContentsDataList copyWith({
    String? name,
    String? code,
    String? pageCardContentId,
    dynamic imgUrl,
    dynamic targetContent,
    dynamic targetType,
    List<HomeRecommendContentsDataListApps>? apps,
    dynamic org,
    dynamic nameBackgroundImg,
    dynamic interactType,
  }) {
    return HomeRecommendContentsDataList()
      ..name = name ?? this.name
      ..code = code ?? this.code
      ..pageCardContentId = pageCardContentId ?? this.pageCardContentId
      ..imgUrl = imgUrl ?? this.imgUrl
      ..targetContent = targetContent ?? this.targetContent
      ..targetType = targetType ?? this.targetType
      ..apps = apps ?? this.apps
      ..org = org ?? this.org
      ..nameBackgroundImg = nameBackgroundImg ?? this.nameBackgroundImg
      ..interactType = interactType ?? this.interactType;
  }
}

HomeRecommendContentsDataListApps $HomeRecommendContentsDataListAppsFromJson(
    Map<String, dynamic> json) {
  final HomeRecommendContentsDataListApps homeRecommendContentsDataListApps = HomeRecommendContentsDataListApps();
  final String? androidType = jsonConvert.convert<String>(json['androidType']);
  if (androidType != null) {
    homeRecommendContentsDataListApps.androidType = androidType;
  }
  final String? androidSmallIcon = jsonConvert.convert<String>(
      json['androidSmallIcon']);
  if (androidSmallIcon != null) {
    homeRecommendContentsDataListApps.androidSmallIcon = androidSmallIcon;
  }
  final String? developerName = jsonConvert.convert<String>(
      json['developerName']);
  if (developerName != null) {
    homeRecommendContentsDataListApps.developerName = developerName;
  }
  final String? packageName = jsonConvert.convert<String>(json['packageName']);
  if (packageName != null) {
    homeRecommendContentsDataListApps.packageName = packageName;
  }
  final String? versionCode = jsonConvert.convert<String>(json['versionCode']);
  if (versionCode != null) {
    homeRecommendContentsDataListApps.versionCode = versionCode;
  }
  final String? pid = jsonConvert.convert<String>(json['pid']);
  if (pid != null) {
    homeRecommendContentsDataListApps.pid = pid;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    homeRecommendContentsDataListApps.id = id;
  }
  final String? softID = jsonConvert.convert<String>(json['softID']);
  if (softID != null) {
    homeRecommendContentsDataListApps.softID = softID;
  }
  final String? softName = jsonConvert.convert<String>(json['softName']);
  if (softName != null) {
    homeRecommendContentsDataListApps.softName = softName;
  }
  final String? installFileSize = jsonConvert.convert<String>(
      json['installFileSize']);
  if (installFileSize != null) {
    homeRecommendContentsDataListApps.installFileSize = installFileSize;
  }
  final String? introduction = jsonConvert.convert<String>(
      json['introduction']);
  if (introduction != null) {
    homeRecommendContentsDataListApps.introduction = introduction;
  }
  final String? score = jsonConvert.convert<String>(json['score']);
  if (score != null) {
    homeRecommendContentsDataListApps.score = score;
  }
  final String? downLoadUrl = jsonConvert.convert<String>(json['downLoadUrl']);
  if (downLoadUrl != null) {
    homeRecommendContentsDataListApps.downLoadUrl = downLoadUrl;
  }
  final String? logoFile = jsonConvert.convert<String>(json['logoFile']);
  if (logoFile != null) {
    homeRecommendContentsDataListApps.logoFile = logoFile;
  }
  final List<String>? supportOsbit = (json['supportOsbit'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<String>(e) as String)
      .toList();
  if (supportOsbit != null) {
    homeRecommendContentsDataListApps.supportOsbit = supportOsbit;
  }
  final List<String>? supportPlatform = (json['supportPlatform'] as List<
      dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (supportPlatform != null) {
    homeRecommendContentsDataListApps.supportPlatform = supportPlatform;
  }
  final List<dynamic>? programs = (json['programs'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (programs != null) {
    homeRecommendContentsDataListApps.programs = programs;
  }
  final String? downloadCount = jsonConvert.convert<String>(
      json['downloadCount']);
  if (downloadCount != null) {
    homeRecommendContentsDataListApps.downloadCount = downloadCount;
  }
  final List<String>? guid = (json['guid'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (guid != null) {
    homeRecommendContentsDataListApps.guid = guid;
  }
  final String? bizInfo = jsonConvert.convert<String>(json['bizInfo']);
  if (bizInfo != null) {
    homeRecommendContentsDataListApps.bizInfo = bizInfo;
  }
  final String? classID = jsonConvert.convert<String>(json['classID']);
  if (classID != null) {
    homeRecommendContentsDataListApps.classID = classID;
  }
  final String? tag = jsonConvert.convert<String>(json['tag']);
  if (tag != null) {
    homeRecommendContentsDataListApps.tag = tag;
  }
  final String? version = jsonConvert.convert<String>(json['version']);
  if (version != null) {
    homeRecommendContentsDataListApps.version = version;
  }
  final String? stable = jsonConvert.convert<String>(json['stable']);
  if (stable != null) {
    homeRecommendContentsDataListApps.stable = stable;
  }
  final String? isFree = jsonConvert.convert<String>(json['isFree']);
  if (isFree != null) {
    homeRecommendContentsDataListApps.isFree = isFree;
  }
  final String? isPlugin = jsonConvert.convert<String>(json['isPlugin']);
  if (isPlugin != null) {
    homeRecommendContentsDataListApps.isPlugin = isPlugin;
  }
  final String? adKey = jsonConvert.convert<String>(json['adKey']);
  if (adKey != null) {
    homeRecommendContentsDataListApps.adKey = adKey;
  }
  final dynamic isIntervene = json['isIntervene'];
  if (isIntervene != null) {
    homeRecommendContentsDataListApps.isIntervene = isIntervene;
  }
  final String? ztImg = jsonConvert.convert<String>(json['ztImg']);
  if (ztImg != null) {
    homeRecommendContentsDataListApps.ztImg = ztImg;
  }
  final dynamic collectCount = json['collectCount'];
  if (collectCount != null) {
    homeRecommendContentsDataListApps.collectCount = collectCount;
  }
  final dynamic itemType = json['itemType'];
  if (itemType != null) {
    homeRecommendContentsDataListApps.itemType = itemType;
  }
  final dynamic appDesc = json['appDesc'];
  if (appDesc != null) {
    homeRecommendContentsDataListApps.appDesc = appDesc;
  }
  final String? resUrl = jsonConvert.convert<String>(json['resUrl']);
  if (resUrl != null) {
    homeRecommendContentsDataListApps.resUrl = resUrl;
  }
  final int? orderNum = jsonConvert.convert<int>(json['orderNum']);
  if (orderNum != null) {
    homeRecommendContentsDataListApps.orderNum = orderNum;
  }
  final dynamic downloadProportionDesc = json['downloadProportionDesc'];
  if (downloadProportionDesc != null) {
    homeRecommendContentsDataListApps.downloadProportionDesc =
        downloadProportionDesc;
  }
  final int? commentUserCount = jsonConvert.convert<int>(
      json['commentUserCount']);
  if (commentUserCount != null) {
    homeRecommendContentsDataListApps.commentUserCount = commentUserCount;
  }
  final dynamic originalPrice = json['originalPrice'];
  if (originalPrice != null) {
    homeRecommendContentsDataListApps.originalPrice = originalPrice;
  }
  final dynamic currentPrice = json['currentPrice'];
  if (currentPrice != null) {
    homeRecommendContentsDataListApps.currentPrice = currentPrice;
  }
  final int? payType = jsonConvert.convert<int>(json['payType']);
  if (payType != null) {
    homeRecommendContentsDataListApps.payType = payType;
  }
  final HomeRecommendContentsDataListAppsSourceInfo? sourceInfo = jsonConvert
      .convert<HomeRecommendContentsDataListAppsSourceInfo>(json['sourceInfo']);
  if (sourceInfo != null) {
    homeRecommendContentsDataListApps.sourceInfo = sourceInfo;
  }
  final List<String>? captureFileList = (json['captureFileList'] as List<
      dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (captureFileList != null) {
    homeRecommendContentsDataListApps.captureFileList = captureFileList;
  }
  final String? vImg = jsonConvert.convert<String>(json['vImg']);
  if (vImg != null) {
    homeRecommendContentsDataListApps.vImg = vImg;
  }
  final String? scoreRadio = jsonConvert.convert<String>(json['scoreRadio']);
  if (scoreRadio != null) {
    homeRecommendContentsDataListApps.scoreRadio = scoreRadio;
  }
  final List<
      HomeRecommendContentsDataListAppsRelationTags>? relationTags = (json['relationTags'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          HomeRecommendContentsDataListAppsRelationTags>(
          e) as HomeRecommendContentsDataListAppsRelationTags).toList();
  if (relationTags != null) {
    homeRecommendContentsDataListApps.relationTags = relationTags;
  }
  final int? installFileType = jsonConvert.convert<int>(
      json['installFileType']);
  if (installFileType != null) {
    homeRecommendContentsDataListApps.installFileType = installFileType;
  }
  final String? createdTime = jsonConvert.convert<String>(json['createdTime']);
  if (createdTime != null) {
    homeRecommendContentsDataListApps.createdTime = createdTime;
  }
  final String? appProperty = jsonConvert.convert<String>(json['appProperty']);
  if (appProperty != null) {
    homeRecommendContentsDataListApps.appProperty = appProperty;
  }
  final int? appBizType = jsonConvert.convert<int>(json['appBizType']);
  if (appBizType != null) {
    homeRecommendContentsDataListApps.appBizType = appBizType;
  }
  final HomeRecommendContentsDataListAppsAppBizContent? appBizContent = jsonConvert
      .convert<HomeRecommendContentsDataListAppsAppBizContent>(
      json['appBizContent']);
  if (appBizContent != null) {
    homeRecommendContentsDataListApps.appBizContent = appBizContent;
  }
  return homeRecommendContentsDataListApps;
}

Map<String, dynamic> $HomeRecommendContentsDataListAppsToJson(
    HomeRecommendContentsDataListApps entity) {
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
  data['relationTags'] = entity.relationTags?.map((v) => v.toJson()).toList();
  data['installFileType'] = entity.installFileType;
  data['createdTime'] = entity.createdTime;
  data['appProperty'] = entity.appProperty;
  data['appBizType'] = entity.appBizType;
  data['appBizContent'] = entity.appBizContent?.toJson();
  return data;
}

extension HomeRecommendContentsDataListAppsExtension on HomeRecommendContentsDataListApps {
  HomeRecommendContentsDataListApps copyWith({
    String? androidType,
    String? androidSmallIcon,
    String? developerName,
    String? packageName,
    String? versionCode,
    String? pid,
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
    String? tag,
    String? version,
    String? stable,
    String? isFree,
    String? isPlugin,
    String? adKey,
    dynamic isIntervene,
    String? ztImg,
    dynamic collectCount,
    dynamic itemType,
    dynamic appDesc,
    String? resUrl,
    int? orderNum,
    dynamic downloadProportionDesc,
    int? commentUserCount,
    dynamic originalPrice,
    dynamic currentPrice,
    int? payType,
    HomeRecommendContentsDataListAppsSourceInfo? sourceInfo,
    List<String>? captureFileList,
    String? vImg,
    String? scoreRadio,
    List<HomeRecommendContentsDataListAppsRelationTags>? relationTags,
    int? installFileType,
    String? createdTime,
    String? appProperty,
    int? appBizType,
    HomeRecommendContentsDataListAppsAppBizContent? appBizContent,
  }) {
    return HomeRecommendContentsDataListApps()
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

HomeRecommendContentsDataListAppsSourceInfo $HomeRecommendContentsDataListAppsSourceInfoFromJson(
    Map<String, dynamic> json) {
  final HomeRecommendContentsDataListAppsSourceInfo homeRecommendContentsDataListAppsSourceInfo = HomeRecommendContentsDataListAppsSourceInfo();
  final dynamic sourceId = json['sourceId'];
  if (sourceId != null) {
    homeRecommendContentsDataListAppsSourceInfo.sourceId = sourceId;
  }
  final dynamic commodityId = json['commodityId'];
  if (commodityId != null) {
    homeRecommendContentsDataListAppsSourceInfo.commodityId = commodityId;
  }
  final dynamic sourceCode = json['sourceCode'];
  if (sourceCode != null) {
    homeRecommendContentsDataListAppsSourceInfo.sourceCode = sourceCode;
  }
  final dynamic sourceDesc = json['sourceDesc'];
  if (sourceDesc != null) {
    homeRecommendContentsDataListAppsSourceInfo.sourceDesc = sourceDesc;
  }
  final dynamic sourceUrl = json['sourceUrl'];
  if (sourceUrl != null) {
    homeRecommendContentsDataListAppsSourceInfo.sourceUrl = sourceUrl;
  }
  final HomeRecommendContentsDataListAppsSourceInfoSellInfo? sellInfo = jsonConvert
      .convert<HomeRecommendContentsDataListAppsSourceInfoSellInfo>(
      json['sellInfo']);
  if (sellInfo != null) {
    homeRecommendContentsDataListAppsSourceInfo.sellInfo = sellInfo;
  }
  final int? sourceType = jsonConvert.convert<int>(json['sourceType']);
  if (sourceType != null) {
    homeRecommendContentsDataListAppsSourceInfo.sourceType = sourceType;
  }
  final dynamic sku = json['sku'];
  if (sku != null) {
    homeRecommendContentsDataListAppsSourceInfo.sku = sku;
  }
  return homeRecommendContentsDataListAppsSourceInfo;
}

Map<String, dynamic> $HomeRecommendContentsDataListAppsSourceInfoToJson(
    HomeRecommendContentsDataListAppsSourceInfo entity) {
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

extension HomeRecommendContentsDataListAppsSourceInfoExtension on HomeRecommendContentsDataListAppsSourceInfo {
  HomeRecommendContentsDataListAppsSourceInfo copyWith({
    dynamic sourceId,
    dynamic commodityId,
    dynamic sourceCode,
    dynamic sourceDesc,
    dynamic sourceUrl,
    HomeRecommendContentsDataListAppsSourceInfoSellInfo? sellInfo,
    int? sourceType,
    dynamic sku,
  }) {
    return HomeRecommendContentsDataListAppsSourceInfo()
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

HomeRecommendContentsDataListAppsSourceInfoSellInfo $HomeRecommendContentsDataListAppsSourceInfoSellInfoFromJson(
    Map<String, dynamic> json) {
  final HomeRecommendContentsDataListAppsSourceInfoSellInfo homeRecommendContentsDataListAppsSourceInfoSellInfo = HomeRecommendContentsDataListAppsSourceInfoSellInfo();
  final dynamic originalPrice = json['originalPrice'];
  if (originalPrice != null) {
    homeRecommendContentsDataListAppsSourceInfoSellInfo.originalPrice =
        originalPrice;
  }
  final dynamic currentPrice = json['currentPrice'];
  if (currentPrice != null) {
    homeRecommendContentsDataListAppsSourceInfoSellInfo.currentPrice =
        currentPrice;
  }
  final dynamic discount = json['discount'];
  if (discount != null) {
    homeRecommendContentsDataListAppsSourceInfoSellInfo.discount = discount;
  }
  final dynamic discountDesc = json['discountDesc'];
  if (discountDesc != null) {
    homeRecommendContentsDataListAppsSourceInfoSellInfo.discountDesc =
        discountDesc;
  }
  return homeRecommendContentsDataListAppsSourceInfoSellInfo;
}

Map<String, dynamic> $HomeRecommendContentsDataListAppsSourceInfoSellInfoToJson(
    HomeRecommendContentsDataListAppsSourceInfoSellInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['originalPrice'] = entity.originalPrice;
  data['currentPrice'] = entity.currentPrice;
  data['discount'] = entity.discount;
  data['discountDesc'] = entity.discountDesc;
  return data;
}

extension HomeRecommendContentsDataListAppsSourceInfoSellInfoExtension on HomeRecommendContentsDataListAppsSourceInfoSellInfo {
  HomeRecommendContentsDataListAppsSourceInfoSellInfo copyWith({
    dynamic originalPrice,
    dynamic currentPrice,
    dynamic discount,
    dynamic discountDesc,
  }) {
    return HomeRecommendContentsDataListAppsSourceInfoSellInfo()
      ..originalPrice = originalPrice ?? this.originalPrice
      ..currentPrice = currentPrice ?? this.currentPrice
      ..discount = discount ?? this.discount
      ..discountDesc = discountDesc ?? this.discountDesc;
  }
}

HomeRecommendContentsDataListAppsRelationTags $HomeRecommendContentsDataListAppsRelationTagsFromJson(
    Map<String, dynamic> json) {
  final HomeRecommendContentsDataListAppsRelationTags homeRecommendContentsDataListAppsRelationTags = HomeRecommendContentsDataListAppsRelationTags();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homeRecommendContentsDataListAppsRelationTags.name = name;
  }
  final String? targetContent = jsonConvert.convert<String>(
      json['targetContent']);
  if (targetContent != null) {
    homeRecommendContentsDataListAppsRelationTags.targetContent = targetContent;
  }
  final String? targetType = jsonConvert.convert<String>(json['targetType']);
  if (targetType != null) {
    homeRecommendContentsDataListAppsRelationTags.targetType = targetType;
  }
  return homeRecommendContentsDataListAppsRelationTags;
}

Map<String, dynamic> $HomeRecommendContentsDataListAppsRelationTagsToJson(
    HomeRecommendContentsDataListAppsRelationTags entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['targetContent'] = entity.targetContent;
  data['targetType'] = entity.targetType;
  return data;
}

extension HomeRecommendContentsDataListAppsRelationTagsExtension on HomeRecommendContentsDataListAppsRelationTags {
  HomeRecommendContentsDataListAppsRelationTags copyWith({
    String? name,
    String? targetContent,
    String? targetType,
  }) {
    return HomeRecommendContentsDataListAppsRelationTags()
      ..name = name ?? this.name
      ..targetContent = targetContent ?? this.targetContent
      ..targetType = targetType ?? this.targetType;
  }
}

HomeRecommendContentsDataListAppsAppBizContent $HomeRecommendContentsDataListAppsAppBizContentFromJson(
    Map<String, dynamic> json) {
  final HomeRecommendContentsDataListAppsAppBizContent homeRecommendContentsDataListAppsAppBizContent = HomeRecommendContentsDataListAppsAppBizContent();
  return homeRecommendContentsDataListAppsAppBizContent;
}

Map<String, dynamic> $HomeRecommendContentsDataListAppsAppBizContentToJson(
    HomeRecommendContentsDataListAppsAppBizContent entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension HomeRecommendContentsDataListAppsAppBizContentExtension on HomeRecommendContentsDataListAppsAppBizContent {
}