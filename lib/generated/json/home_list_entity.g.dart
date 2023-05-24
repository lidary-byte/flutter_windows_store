import 'package:flutter_windows_store/generated/json/base/json_convert_content.dart';
import 'package:flutter_windows_store/bean/home_list_entity.dart';

HomeListEntity $HomeListEntityFromJson(Map<String, dynamic> json) {
	final HomeListEntity homeListEntity = HomeListEntity();
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		homeListEntity.status = status;
	}
	final dynamic message = jsonConvert.convert<dynamic>(json['message']);
	if (message != null) {
		homeListEntity.message = message;
	}
	final List<HomeListData>? data = jsonConvert.convertListNotNull<HomeListData>(json['data']);
	if (data != null) {
		homeListEntity.data = data;
	}
	return homeListEntity;
}

Map<String, dynamic> $HomeListEntityToJson(HomeListEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['data'] =  entity.data?.map((v) => v.toJson()).toList();
	return data;
}

HomeListData $HomeListDataFromJson(Map<String, dynamic> json) {
	final HomeListData homeListData = HomeListData();
	final dynamic computerType = jsonConvert.convert<dynamic>(json['computerType']);
	if (computerType != null) {
		homeListData.computerType = computerType;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeListData.title = title;
	}
	final String? pageType = jsonConvert.convert<String>(json['pageType']);
	if (pageType != null) {
		homeListData.pageType = pageType;
	}
	final String? cardType = jsonConvert.convert<String>(json['cardType']);
	if (cardType != null) {
		homeListData.cardType = cardType;
	}
	final String? orderNum = jsonConvert.convert<String>(json['orderNum']);
	if (orderNum != null) {
		homeListData.orderNum = orderNum;
	}
	final String? operate = jsonConvert.convert<String>(json['operate']);
	if (operate != null) {
		homeListData.operate = operate;
	}
	final String? row = jsonConvert.convert<String>(json['row']);
	if (row != null) {
		homeListData.row = row;
	}
	final String? column = jsonConvert.convert<String>(json['column']);
	if (column != null) {
		homeListData.column = column;
	}
	final String? targetType = jsonConvert.convert<String>(json['targetType']);
	if (targetType != null) {
		homeListData.targetType = targetType;
	}
	final String? targetContent = jsonConvert.convert<String>(json['targetContent']);
	if (targetContent != null) {
		homeListData.targetContent = targetContent;
	}
	final int? hoverShow = jsonConvert.convert<int>(json['hoverShow']);
	if (hoverShow != null) {
		homeListData.hoverShow = hoverShow;
	}
	final List<HomeListDataDataList>? dataList = jsonConvert.convertListNotNull<HomeListDataDataList>(json['dataList']);
	if (dataList != null) {
		homeListData.dataList = dataList;
	}
	final dynamic backgroundImg = jsonConvert.convert<dynamic>(json['backgroundImg']);
	if (backgroundImg != null) {
		homeListData.backgroundImg = backgroundImg;
	}
	final int? styleType = jsonConvert.convert<int>(json['styleType']);
	if (styleType != null) {
		homeListData.styleType = styleType;
	}
	return homeListData;
}

Map<String, dynamic> $HomeListDataToJson(HomeListData entity) {
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
	data['dataList'] =  entity.dataList?.map((v) => v.toJson()).toList();
	data['backgroundImg'] = entity.backgroundImg;
	data['styleType'] = entity.styleType;
	return data;
}

HomeListDataDataList $HomeListDataDataListFromJson(Map<String, dynamic> json) {
	final HomeListDataDataList homeListDataDataList = HomeListDataDataList();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		homeListDataDataList.name = name;
	}
	final String? code = jsonConvert.convert<String>(json['code']);
	if (code != null) {
		homeListDataDataList.code = code;
	}
	final String? pageCardContentId = jsonConvert.convert<String>(json['pageCardContentId']);
	if (pageCardContentId != null) {
		homeListDataDataList.pageCardContentId = pageCardContentId;
	}
	final dynamic imgUrl = jsonConvert.convert<dynamic>(json['imgUrl']);
	if (imgUrl != null) {
		homeListDataDataList.imgUrl = imgUrl;
	}
	final dynamic targetContent = jsonConvert.convert<dynamic>(json['targetContent']);
	if (targetContent != null) {
		homeListDataDataList.targetContent = targetContent;
	}
	final dynamic targetType = jsonConvert.convert<dynamic>(json['targetType']);
	if (targetType != null) {
		homeListDataDataList.targetType = targetType;
	}
	final List<HomeListDataDataListApps>? apps = jsonConvert.convertListNotNull<HomeListDataDataListApps>(json['apps']);
	if (apps != null) {
		homeListDataDataList.apps = apps;
	}
	final dynamic org = jsonConvert.convert<dynamic>(json['org']);
	if (org != null) {
		homeListDataDataList.org = org;
	}
	final dynamic nameBackgroundImg = jsonConvert.convert<dynamic>(json['nameBackgroundImg']);
	if (nameBackgroundImg != null) {
		homeListDataDataList.nameBackgroundImg = nameBackgroundImg;
	}
	final dynamic interactType = jsonConvert.convert<dynamic>(json['interactType']);
	if (interactType != null) {
		homeListDataDataList.interactType = interactType;
	}
	return homeListDataDataList;
}

Map<String, dynamic> $HomeListDataDataListToJson(HomeListDataDataList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['code'] = entity.code;
	data['pageCardContentId'] = entity.pageCardContentId;
	data['imgUrl'] = entity.imgUrl;
	data['targetContent'] = entity.targetContent;
	data['targetType'] = entity.targetType;
	data['apps'] =  entity.apps?.map((v) => v.toJson()).toList();
	data['org'] = entity.org;
	data['nameBackgroundImg'] = entity.nameBackgroundImg;
	data['interactType'] = entity.interactType;
	return data;
}

HomeListDataDataListApps $HomeListDataDataListAppsFromJson(Map<String, dynamic> json) {
	final HomeListDataDataListApps homeListDataDataListApps = HomeListDataDataListApps();
	final String? androidType = jsonConvert.convert<String>(json['androidType']);
	if (androidType != null) {
		homeListDataDataListApps.androidType = androidType;
	}
	final dynamic androidSmallIcon = jsonConvert.convert<dynamic>(json['androidSmallIcon']);
	if (androidSmallIcon != null) {
		homeListDataDataListApps.androidSmallIcon = androidSmallIcon;
	}
	final dynamic developerName = jsonConvert.convert<dynamic>(json['developerName']);
	if (developerName != null) {
		homeListDataDataListApps.developerName = developerName;
	}
	final dynamic packageName = jsonConvert.convert<dynamic>(json['packageName']);
	if (packageName != null) {
		homeListDataDataListApps.packageName = packageName;
	}
	final dynamic versionCode = jsonConvert.convert<dynamic>(json['versionCode']);
	if (versionCode != null) {
		homeListDataDataListApps.versionCode = versionCode;
	}
	final dynamic pid = jsonConvert.convert<dynamic>(json['pid']);
	if (pid != null) {
		homeListDataDataListApps.pid = pid;
	}
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		homeListDataDataListApps.id = id;
	}
	final String? softID = jsonConvert.convert<String>(json['softID']);
	if (softID != null) {
		homeListDataDataListApps.softID = softID;
	}
	final String? softName = jsonConvert.convert<String>(json['softName']);
	if (softName != null) {
		homeListDataDataListApps.softName = softName;
	}
	final String? installFileSize = jsonConvert.convert<String>(json['installFileSize']);
	if (installFileSize != null) {
		homeListDataDataListApps.installFileSize = installFileSize;
	}
	final String? introduction = jsonConvert.convert<String>(json['introduction']);
	if (introduction != null) {
		homeListDataDataListApps.introduction = introduction;
	}
	final String? score = jsonConvert.convert<String>(json['score']);
	if (score != null) {
		homeListDataDataListApps.score = score;
	}
	final String? downLoadUrl = jsonConvert.convert<String>(json['downLoadUrl']);
	if (downLoadUrl != null) {
		homeListDataDataListApps.downLoadUrl = downLoadUrl;
	}
	final String? logoFile = jsonConvert.convert<String>(json['logoFile']);
	if (logoFile != null) {
		homeListDataDataListApps.logoFile = logoFile;
	}
	final List<String>? supportOsbit = jsonConvert.convertListNotNull<String>(json['supportOsbit']);
	if (supportOsbit != null) {
		homeListDataDataListApps.supportOsbit = supportOsbit;
	}
	final List<String>? supportPlatform = jsonConvert.convertListNotNull<String>(json['supportPlatform']);
	if (supportPlatform != null) {
		homeListDataDataListApps.supportPlatform = supportPlatform;
	}
	final List<dynamic>? programs = jsonConvert.convertListNotNull<dynamic>(json['programs']);
	if (programs != null) {
		homeListDataDataListApps.programs = programs;
	}
	final String? downloadCount = jsonConvert.convert<String>(json['downloadCount']);
	if (downloadCount != null) {
		homeListDataDataListApps.downloadCount = downloadCount;
	}
	final List<String>? guid = jsonConvert.convertListNotNull<String>(json['guid']);
	if (guid != null) {
		homeListDataDataListApps.guid = guid;
	}
	final String? bizInfo = jsonConvert.convert<String>(json['bizInfo']);
	if (bizInfo != null) {
		homeListDataDataListApps.bizInfo = bizInfo;
	}
	final String? classID = jsonConvert.convert<String>(json['classID']);
	if (classID != null) {
		homeListDataDataListApps.classID = classID;
	}
	final String? tag = jsonConvert.convert<String>(json['tag']);
	if (tag != null) {
		homeListDataDataListApps.tag = tag;
	}
	final String? version = jsonConvert.convert<String>(json['version']);
	if (version != null) {
		homeListDataDataListApps.version = version;
	}
	final String? stable = jsonConvert.convert<String>(json['stable']);
	if (stable != null) {
		homeListDataDataListApps.stable = stable;
	}
	final String? isFree = jsonConvert.convert<String>(json['isFree']);
	if (isFree != null) {
		homeListDataDataListApps.isFree = isFree;
	}
	final String? isPlugin = jsonConvert.convert<String>(json['isPlugin']);
	if (isPlugin != null) {
		homeListDataDataListApps.isPlugin = isPlugin;
	}
	final String? adKey = jsonConvert.convert<String>(json['adKey']);
	if (adKey != null) {
		homeListDataDataListApps.adKey = adKey;
	}
	final dynamic isIntervene = jsonConvert.convert<dynamic>(json['isIntervene']);
	if (isIntervene != null) {
		homeListDataDataListApps.isIntervene = isIntervene;
	}
	final String? ztImg = jsonConvert.convert<String>(json['ztImg']);
	if (ztImg != null) {
		homeListDataDataListApps.ztImg = ztImg;
	}
	final dynamic collectCount = jsonConvert.convert<dynamic>(json['collectCount']);
	if (collectCount != null) {
		homeListDataDataListApps.collectCount = collectCount;
	}
	final dynamic itemType = jsonConvert.convert<dynamic>(json['itemType']);
	if (itemType != null) {
		homeListDataDataListApps.itemType = itemType;
	}
	final dynamic appDesc = jsonConvert.convert<dynamic>(json['appDesc']);
	if (appDesc != null) {
		homeListDataDataListApps.appDesc = appDesc;
	}
	final String? resUrl = jsonConvert.convert<String>(json['resUrl']);
	if (resUrl != null) {
		homeListDataDataListApps.resUrl = resUrl;
	}
	final int? orderNum = jsonConvert.convert<int>(json['orderNum']);
	if (orderNum != null) {
		homeListDataDataListApps.orderNum = orderNum;
	}
	final dynamic downloadProportionDesc = jsonConvert.convert<dynamic>(json['downloadProportionDesc']);
	if (downloadProportionDesc != null) {
		homeListDataDataListApps.downloadProportionDesc = downloadProportionDesc;
	}
	final int? commentUserCount = jsonConvert.convert<int>(json['commentUserCount']);
	if (commentUserCount != null) {
		homeListDataDataListApps.commentUserCount = commentUserCount;
	}
	final dynamic originalPrice = jsonConvert.convert<dynamic>(json['originalPrice']);
	if (originalPrice != null) {
		homeListDataDataListApps.originalPrice = originalPrice;
	}
	final dynamic currentPrice = jsonConvert.convert<dynamic>(json['currentPrice']);
	if (currentPrice != null) {
		homeListDataDataListApps.currentPrice = currentPrice;
	}
	final int? payType = jsonConvert.convert<int>(json['payType']);
	if (payType != null) {
		homeListDataDataListApps.payType = payType;
	}
	final HomeListDataDataListAppsSourceInfo? sourceInfo = jsonConvert.convert<HomeListDataDataListAppsSourceInfo>(json['sourceInfo']);
	if (sourceInfo != null) {
		homeListDataDataListApps.sourceInfo = sourceInfo;
	}
	final List<String>? captureFileList = jsonConvert.convertListNotNull<String>(json['captureFileList']);
	if (captureFileList != null) {
		homeListDataDataListApps.captureFileList = captureFileList;
	}
	final String? vImg = jsonConvert.convert<String>(json['vImg']);
	if (vImg != null) {
		homeListDataDataListApps.vImg = vImg;
	}
	final String? scoreRadio = jsonConvert.convert<String>(json['scoreRadio']);
	if (scoreRadio != null) {
		homeListDataDataListApps.scoreRadio = scoreRadio;
	}
	final List<HomeListDataDataListAppsRelationTags>? relationTags = jsonConvert.convertListNotNull<HomeListDataDataListAppsRelationTags>(json['relationTags']);
	if (relationTags != null) {
		homeListDataDataListApps.relationTags = relationTags;
	}
	final int? installFileType = jsonConvert.convert<int>(json['installFileType']);
	if (installFileType != null) {
		homeListDataDataListApps.installFileType = installFileType;
	}
	final String? createdTime = jsonConvert.convert<String>(json['createdTime']);
	if (createdTime != null) {
		homeListDataDataListApps.createdTime = createdTime;
	}
	final String? appProperty = jsonConvert.convert<String>(json['appProperty']);
	if (appProperty != null) {
		homeListDataDataListApps.appProperty = appProperty;
	}
	final int? appBizType = jsonConvert.convert<int>(json['appBizType']);
	if (appBizType != null) {
		homeListDataDataListApps.appBizType = appBizType;
	}
	final dynamic appBizContent = jsonConvert.convert<dynamic>(json['appBizContent']);
	if (appBizContent != null) {
		homeListDataDataListApps.appBizContent = appBizContent;
	}
	return homeListDataDataListApps;
}

Map<String, dynamic> $HomeListDataDataListAppsToJson(HomeListDataDataListApps entity) {
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
	data['supportOsbit'] =  entity.supportOsbit;
	data['supportPlatform'] =  entity.supportPlatform;
	data['programs'] =  entity.programs;
	data['downloadCount'] = entity.downloadCount;
	data['guid'] =  entity.guid;
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
	data['captureFileList'] =  entity.captureFileList;
	data['vImg'] = entity.vImg;
	data['scoreRadio'] = entity.scoreRadio;
	data['relationTags'] =  entity.relationTags?.map((v) => v.toJson()).toList();
	data['installFileType'] = entity.installFileType;
	data['createdTime'] = entity.createdTime;
	data['appProperty'] = entity.appProperty;
	data['appBizType'] = entity.appBizType;
	data['appBizContent'] = entity.appBizContent;
	return data;
}

HomeListDataDataListAppsSourceInfo $HomeListDataDataListAppsSourceInfoFromJson(Map<String, dynamic> json) {
	final HomeListDataDataListAppsSourceInfo homeListDataDataListAppsSourceInfo = HomeListDataDataListAppsSourceInfo();
	final dynamic sourceId = jsonConvert.convert<dynamic>(json['sourceId']);
	if (sourceId != null) {
		homeListDataDataListAppsSourceInfo.sourceId = sourceId;
	}
	final dynamic commodityId = jsonConvert.convert<dynamic>(json['commodityId']);
	if (commodityId != null) {
		homeListDataDataListAppsSourceInfo.commodityId = commodityId;
	}
	final dynamic sourceCode = jsonConvert.convert<dynamic>(json['sourceCode']);
	if (sourceCode != null) {
		homeListDataDataListAppsSourceInfo.sourceCode = sourceCode;
	}
	final dynamic sourceDesc = jsonConvert.convert<dynamic>(json['sourceDesc']);
	if (sourceDesc != null) {
		homeListDataDataListAppsSourceInfo.sourceDesc = sourceDesc;
	}
	final dynamic sourceUrl = jsonConvert.convert<dynamic>(json['sourceUrl']);
	if (sourceUrl != null) {
		homeListDataDataListAppsSourceInfo.sourceUrl = sourceUrl;
	}
	final HomeListDataDataListAppsSourceInfoSellInfo? sellInfo = jsonConvert.convert<HomeListDataDataListAppsSourceInfoSellInfo>(json['sellInfo']);
	if (sellInfo != null) {
		homeListDataDataListAppsSourceInfo.sellInfo = sellInfo;
	}
	final int? sourceType = jsonConvert.convert<int>(json['sourceType']);
	if (sourceType != null) {
		homeListDataDataListAppsSourceInfo.sourceType = sourceType;
	}
	return homeListDataDataListAppsSourceInfo;
}

Map<String, dynamic> $HomeListDataDataListAppsSourceInfoToJson(HomeListDataDataListAppsSourceInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['sourceId'] = entity.sourceId;
	data['commodityId'] = entity.commodityId;
	data['sourceCode'] = entity.sourceCode;
	data['sourceDesc'] = entity.sourceDesc;
	data['sourceUrl'] = entity.sourceUrl;
	data['sellInfo'] = entity.sellInfo?.toJson();
	data['sourceType'] = entity.sourceType;
	return data;
}

HomeListDataDataListAppsSourceInfoSellInfo $HomeListDataDataListAppsSourceInfoSellInfoFromJson(Map<String, dynamic> json) {
	final HomeListDataDataListAppsSourceInfoSellInfo homeListDataDataListAppsSourceInfoSellInfo = HomeListDataDataListAppsSourceInfoSellInfo();
	final dynamic originalPrice = jsonConvert.convert<dynamic>(json['originalPrice']);
	if (originalPrice != null) {
		homeListDataDataListAppsSourceInfoSellInfo.originalPrice = originalPrice;
	}
	final dynamic currentPrice = jsonConvert.convert<dynamic>(json['currentPrice']);
	if (currentPrice != null) {
		homeListDataDataListAppsSourceInfoSellInfo.currentPrice = currentPrice;
	}
	final dynamic discount = jsonConvert.convert<dynamic>(json['discount']);
	if (discount != null) {
		homeListDataDataListAppsSourceInfoSellInfo.discount = discount;
	}
	final dynamic discountDesc = jsonConvert.convert<dynamic>(json['discountDesc']);
	if (discountDesc != null) {
		homeListDataDataListAppsSourceInfoSellInfo.discountDesc = discountDesc;
	}
	return homeListDataDataListAppsSourceInfoSellInfo;
}

Map<String, dynamic> $HomeListDataDataListAppsSourceInfoSellInfoToJson(HomeListDataDataListAppsSourceInfoSellInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['originalPrice'] = entity.originalPrice;
	data['currentPrice'] = entity.currentPrice;
	data['discount'] = entity.discount;
	data['discountDesc'] = entity.discountDesc;
	return data;
}

HomeListDataDataListAppsRelationTags $HomeListDataDataListAppsRelationTagsFromJson(Map<String, dynamic> json) {
	final HomeListDataDataListAppsRelationTags homeListDataDataListAppsRelationTags = HomeListDataDataListAppsRelationTags();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		homeListDataDataListAppsRelationTags.name = name;
	}
	final String? targetContent = jsonConvert.convert<String>(json['targetContent']);
	if (targetContent != null) {
		homeListDataDataListAppsRelationTags.targetContent = targetContent;
	}
	final String? targetType = jsonConvert.convert<String>(json['targetType']);
	if (targetType != null) {
		homeListDataDataListAppsRelationTags.targetType = targetType;
	}
	return homeListDataDataListAppsRelationTags;
}

Map<String, dynamic> $HomeListDataDataListAppsRelationTagsToJson(HomeListDataDataListAppsRelationTags entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['targetContent'] = entity.targetContent;
	data['targetType'] = entity.targetType;
	return data;
}