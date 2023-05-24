import 'package:flutter_windows_store/generated/json/base/json_convert_content.dart';
import 'package:flutter_windows_store/bean/home_banner_entity.dart';

HomeBannerEntity $HomeBannerEntityFromJson(Map<String, dynamic> json) {
	final HomeBannerEntity homeBannerEntity = HomeBannerEntity();
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		homeBannerEntity.status = status;
	}
	final dynamic message = jsonConvert.convert<dynamic>(json['message']);
	if (message != null) {
		homeBannerEntity.message = message;
	}
	final List<HomeBannerData>? data = jsonConvert.convertListNotNull<HomeBannerData>(json['data']);
	if (data != null) {
		homeBannerEntity.data = data;
	}
	return homeBannerEntity;
}

Map<String, dynamic> $HomeBannerEntityToJson(HomeBannerEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['data'] =  entity.data?.map((v) => v.toJson()).toList();
	return data;
}

HomeBannerData $HomeBannerDataFromJson(Map<String, dynamic> json) {
	final HomeBannerData homeBannerData = HomeBannerData();
	final dynamic computerType = jsonConvert.convert<dynamic>(json['computerType']);
	if (computerType != null) {
		homeBannerData.computerType = computerType;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeBannerData.title = title;
	}
	final String? pageType = jsonConvert.convert<String>(json['pageType']);
	if (pageType != null) {
		homeBannerData.pageType = pageType;
	}
	final String? cardType = jsonConvert.convert<String>(json['cardType']);
	if (cardType != null) {
		homeBannerData.cardType = cardType;
	}
	final String? orderNum = jsonConvert.convert<String>(json['orderNum']);
	if (orderNum != null) {
		homeBannerData.orderNum = orderNum;
	}
	final dynamic operate = jsonConvert.convert<dynamic>(json['operate']);
	if (operate != null) {
		homeBannerData.operate = operate;
	}
	final dynamic row = jsonConvert.convert<dynamic>(json['row']);
	if (row != null) {
		homeBannerData.row = row;
	}
	final dynamic column = jsonConvert.convert<dynamic>(json['column']);
	if (column != null) {
		homeBannerData.column = column;
	}
	final dynamic targetType = jsonConvert.convert<dynamic>(json['targetType']);
	if (targetType != null) {
		homeBannerData.targetType = targetType;
	}
	final dynamic targetContent = jsonConvert.convert<dynamic>(json['targetContent']);
	if (targetContent != null) {
		homeBannerData.targetContent = targetContent;
	}
	final int? hoverShow = jsonConvert.convert<int>(json['hoverShow']);
	if (hoverShow != null) {
		homeBannerData.hoverShow = hoverShow;
	}
	final List<HomeBannerDataDataList>? dataList = jsonConvert.convertListNotNull<HomeBannerDataDataList>(json['dataList']);
	if (dataList != null) {
		homeBannerData.dataList = dataList;
	}
	final dynamic backgroundImg = jsonConvert.convert<dynamic>(json['backgroundImg']);
	if (backgroundImg != null) {
		homeBannerData.backgroundImg = backgroundImg;
	}
	final int? styleType = jsonConvert.convert<int>(json['styleType']);
	if (styleType != null) {
		homeBannerData.styleType = styleType;
	}
	return homeBannerData;
}

Map<String, dynamic> $HomeBannerDataToJson(HomeBannerData entity) {
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

HomeBannerDataDataList $HomeBannerDataDataListFromJson(Map<String, dynamic> json) {
	final HomeBannerDataDataList homeBannerDataDataList = HomeBannerDataDataList();
	final String? pageCardContentId = jsonConvert.convert<String>(json['pageCardContentId']);
	if (pageCardContentId != null) {
		homeBannerDataDataList.pageCardContentId = pageCardContentId;
	}
	final String? contentImg = jsonConvert.convert<String>(json['contentImg']);
	if (contentImg != null) {
		homeBannerDataDataList.contentImg = contentImg;
	}
	final String? contentImgBig = jsonConvert.convert<String>(json['contentImgBig']);
	if (contentImgBig != null) {
		homeBannerDataDataList.contentImgBig = contentImgBig;
	}
	final String? contentTitle = jsonConvert.convert<String>(json['contentTitle']);
	if (contentTitle != null) {
		homeBannerDataDataList.contentTitle = contentTitle;
	}
	final String? contentDesc = jsonConvert.convert<String>(json['contentDesc']);
	if (contentDesc != null) {
		homeBannerDataDataList.contentDesc = contentDesc;
	}
	final dynamic contentType = jsonConvert.convert<dynamic>(json['contentType']);
	if (contentType != null) {
		homeBannerDataDataList.contentType = contentType;
	}
	final String? targetContent = jsonConvert.convert<String>(json['targetContent']);
	if (targetContent != null) {
		homeBannerDataDataList.targetContent = targetContent;
	}
	final String? targetType = jsonConvert.convert<String>(json['targetType']);
	if (targetType != null) {
		homeBannerDataDataList.targetType = targetType;
	}
	final HomeBannerDataDataListAppInfo? appInfo = jsonConvert.convert<HomeBannerDataDataListAppInfo>(json['appInfo']);
	if (appInfo != null) {
		homeBannerDataDataList.appInfo = appInfo;
	}
	final String? bizInfo = jsonConvert.convert<String>(json['bizInfo']);
	if (bizInfo != null) {
		homeBannerDataDataList.bizInfo = bizInfo;
	}
	return homeBannerDataDataList;
}

Map<String, dynamic> $HomeBannerDataDataListToJson(HomeBannerDataDataList entity) {
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

HomeBannerDataDataListAppInfo $HomeBannerDataDataListAppInfoFromJson(Map<String, dynamic> json) {
	final HomeBannerDataDataListAppInfo homeBannerDataDataListAppInfo = HomeBannerDataDataListAppInfo();
	final String? androidType = jsonConvert.convert<String>(json['androidType']);
	if (androidType != null) {
		homeBannerDataDataListAppInfo.androidType = androidType;
	}
	final dynamic androidSmallIcon = jsonConvert.convert<dynamic>(json['androidSmallIcon']);
	if (androidSmallIcon != null) {
		homeBannerDataDataListAppInfo.androidSmallIcon = androidSmallIcon;
	}
	final dynamic developerName = jsonConvert.convert<dynamic>(json['developerName']);
	if (developerName != null) {
		homeBannerDataDataListAppInfo.developerName = developerName;
	}
	final dynamic packageName = jsonConvert.convert<dynamic>(json['packageName']);
	if (packageName != null) {
		homeBannerDataDataListAppInfo.packageName = packageName;
	}
	final dynamic versionCode = jsonConvert.convert<dynamic>(json['versionCode']);
	if (versionCode != null) {
		homeBannerDataDataListAppInfo.versionCode = versionCode;
	}
	final dynamic pid = jsonConvert.convert<dynamic>(json['pid']);
	if (pid != null) {
		homeBannerDataDataListAppInfo.pid = pid;
	}
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		homeBannerDataDataListAppInfo.id = id;
	}
	final String? softID = jsonConvert.convert<String>(json['softID']);
	if (softID != null) {
		homeBannerDataDataListAppInfo.softID = softID;
	}
	final String? softName = jsonConvert.convert<String>(json['softName']);
	if (softName != null) {
		homeBannerDataDataListAppInfo.softName = softName;
	}
	final String? installFileSize = jsonConvert.convert<String>(json['installFileSize']);
	if (installFileSize != null) {
		homeBannerDataDataListAppInfo.installFileSize = installFileSize;
	}
	final String? introduction = jsonConvert.convert<String>(json['introduction']);
	if (introduction != null) {
		homeBannerDataDataListAppInfo.introduction = introduction;
	}
	final String? score = jsonConvert.convert<String>(json['score']);
	if (score != null) {
		homeBannerDataDataListAppInfo.score = score;
	}
	final String? downLoadUrl = jsonConvert.convert<String>(json['downLoadUrl']);
	if (downLoadUrl != null) {
		homeBannerDataDataListAppInfo.downLoadUrl = downLoadUrl;
	}
	final String? logoFile = jsonConvert.convert<String>(json['logoFile']);
	if (logoFile != null) {
		homeBannerDataDataListAppInfo.logoFile = logoFile;
	}
	final List<String>? supportOsbit = jsonConvert.convertListNotNull<String>(json['supportOsbit']);
	if (supportOsbit != null) {
		homeBannerDataDataListAppInfo.supportOsbit = supportOsbit;
	}
	final List<String>? supportPlatform = jsonConvert.convertListNotNull<String>(json['supportPlatform']);
	if (supportPlatform != null) {
		homeBannerDataDataListAppInfo.supportPlatform = supportPlatform;
	}
	final dynamic programs = jsonConvert.convert<dynamic>(json['programs']);
	if (programs != null) {
		homeBannerDataDataListAppInfo.programs = programs;
	}
	final String? downloadCount = jsonConvert.convert<String>(json['downloadCount']);
	if (downloadCount != null) {
		homeBannerDataDataListAppInfo.downloadCount = downloadCount;
	}
	// final List<dynamic>? guid = jsonConvert.convertListNotNull<dynamic>(json['guid']);
	// if (guid != null) {
	// 	homeBannerDataDataListAppInfo.guid = guid;
	// }
	final String? bizInfo = jsonConvert.convert<String>(json['bizInfo']);
	if (bizInfo != null) {
		homeBannerDataDataListAppInfo.bizInfo = bizInfo;
	}
	final String? classID = jsonConvert.convert<String>(json['classID']);
	if (classID != null) {
		homeBannerDataDataListAppInfo.classID = classID;
	}
	final dynamic tag = jsonConvert.convert<dynamic>(json['tag']);
	if (tag != null) {
		homeBannerDataDataListAppInfo.tag = tag;
	}
	final String? version = jsonConvert.convert<String>(json['version']);
	if (version != null) {
		homeBannerDataDataListAppInfo.version = version;
	}
	final String? stable = jsonConvert.convert<String>(json['stable']);
	if (stable != null) {
		homeBannerDataDataListAppInfo.stable = stable;
	}
	final dynamic isFree = jsonConvert.convert<dynamic>(json['isFree']);
	if (isFree != null) {
		homeBannerDataDataListAppInfo.isFree = isFree;
	}
	final dynamic isPlugin = jsonConvert.convert<dynamic>(json['isPlugin']);
	if (isPlugin != null) {
		homeBannerDataDataListAppInfo.isPlugin = isPlugin;
	}
	final String? adKey = jsonConvert.convert<String>(json['adKey']);
	if (adKey != null) {
		homeBannerDataDataListAppInfo.adKey = adKey;
	}
	final dynamic isIntervene = jsonConvert.convert<dynamic>(json['isIntervene']);
	if (isIntervene != null) {
		homeBannerDataDataListAppInfo.isIntervene = isIntervene;
	}
	final dynamic ztImg = jsonConvert.convert<dynamic>(json['ztImg']);
	if (ztImg != null) {
		homeBannerDataDataListAppInfo.ztImg = ztImg;
	}
	final dynamic collectCount = jsonConvert.convert<dynamic>(json['collectCount']);
	if (collectCount != null) {
		homeBannerDataDataListAppInfo.collectCount = collectCount;
	}
	final dynamic itemType = jsonConvert.convert<dynamic>(json['itemType']);
	if (itemType != null) {
		homeBannerDataDataListAppInfo.itemType = itemType;
	}
	final dynamic appDesc = jsonConvert.convert<dynamic>(json['appDesc']);
	if (appDesc != null) {
		homeBannerDataDataListAppInfo.appDesc = appDesc;
	}
	final dynamic resUrl = jsonConvert.convert<dynamic>(json['resUrl']);
	if (resUrl != null) {
		homeBannerDataDataListAppInfo.resUrl = resUrl;
	}
	final int? orderNum = jsonConvert.convert<int>(json['orderNum']);
	if (orderNum != null) {
		homeBannerDataDataListAppInfo.orderNum = orderNum;
	}
	final dynamic downloadProportionDesc = jsonConvert.convert<dynamic>(json['downloadProportionDesc']);
	if (downloadProportionDesc != null) {
		homeBannerDataDataListAppInfo.downloadProportionDesc = downloadProportionDesc;
	}
	final int? commentUserCount = jsonConvert.convert<int>(json['commentUserCount']);
	if (commentUserCount != null) {
		homeBannerDataDataListAppInfo.commentUserCount = commentUserCount;
	}
	final dynamic originalPrice = jsonConvert.convert<dynamic>(json['originalPrice']);
	if (originalPrice != null) {
		homeBannerDataDataListAppInfo.originalPrice = originalPrice;
	}
	final dynamic currentPrice = jsonConvert.convert<dynamic>(json['currentPrice']);
	if (currentPrice != null) {
		homeBannerDataDataListAppInfo.currentPrice = currentPrice;
	}
	final int? payType = jsonConvert.convert<int>(json['payType']);
	if (payType != null) {
		homeBannerDataDataListAppInfo.payType = payType;
	}
	final HomeBannerDataDataListAppInfoSourceInfo? sourceInfo = jsonConvert.convert<HomeBannerDataDataListAppInfoSourceInfo>(json['sourceInfo']);
	if (sourceInfo != null) {
		homeBannerDataDataListAppInfo.sourceInfo = sourceInfo;
	}
	final List<String>? captureFileList = jsonConvert.convertListNotNull<String>(json['captureFileList']);
	if (captureFileList != null) {
		homeBannerDataDataListAppInfo.captureFileList = captureFileList;
	}
	final dynamic vImg = jsonConvert.convert<dynamic>(json['vImg']);
	if (vImg != null) {
		homeBannerDataDataListAppInfo.vImg = vImg;
	}
	final dynamic scoreRadio = jsonConvert.convert<dynamic>(json['scoreRadio']);
	if (scoreRadio != null) {
		homeBannerDataDataListAppInfo.scoreRadio = scoreRadio;
	}
	final dynamic relationTags = jsonConvert.convert<dynamic>(json['relationTags']);
	if (relationTags != null) {
		homeBannerDataDataListAppInfo.relationTags = relationTags;
	}
	final int? installFileType = jsonConvert.convert<int>(json['installFileType']);
	if (installFileType != null) {
		homeBannerDataDataListAppInfo.installFileType = installFileType;
	}
	final String? createdTime = jsonConvert.convert<String>(json['createdTime']);
	if (createdTime != null) {
		homeBannerDataDataListAppInfo.createdTime = createdTime;
	}
	final String? appProperty = jsonConvert.convert<String>(json['appProperty']);
	if (appProperty != null) {
		homeBannerDataDataListAppInfo.appProperty = appProperty;
	}
	final int? appBizType = jsonConvert.convert<int>(json['appBizType']);
	if (appBizType != null) {
		homeBannerDataDataListAppInfo.appBizType = appBizType;
	}
	final dynamic appBizContent = jsonConvert.convert<dynamic>(json['appBizContent']);
	if (appBizContent != null) {
		homeBannerDataDataListAppInfo.appBizContent = appBizContent;
	}
	return homeBannerDataDataListAppInfo;
}

Map<String, dynamic> $HomeBannerDataDataListAppInfoToJson(HomeBannerDataDataListAppInfo entity) {
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
	data['programs'] = entity.programs;
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
	data['relationTags'] = entity.relationTags;
	data['installFileType'] = entity.installFileType;
	data['createdTime'] = entity.createdTime;
	data['appProperty'] = entity.appProperty;
	data['appBizType'] = entity.appBizType;
	data['appBizContent'] = entity.appBizContent;
	return data;
}

HomeBannerDataDataListAppInfoSourceInfo $HomeBannerDataDataListAppInfoSourceInfoFromJson(Map<String, dynamic> json) {
	final HomeBannerDataDataListAppInfoSourceInfo homeBannerDataDataListAppInfoSourceInfo = HomeBannerDataDataListAppInfoSourceInfo();
	final dynamic sourceId = jsonConvert.convert<dynamic>(json['sourceId']);
	if (sourceId != null) {
		homeBannerDataDataListAppInfoSourceInfo.sourceId = sourceId;
	}
	final dynamic commodityId = jsonConvert.convert<dynamic>(json['commodityId']);
	if (commodityId != null) {
		homeBannerDataDataListAppInfoSourceInfo.commodityId = commodityId;
	}
	final dynamic sourceCode = jsonConvert.convert<dynamic>(json['sourceCode']);
	if (sourceCode != null) {
		homeBannerDataDataListAppInfoSourceInfo.sourceCode = sourceCode;
	}
	final dynamic sourceDesc = jsonConvert.convert<dynamic>(json['sourceDesc']);
	if (sourceDesc != null) {
		homeBannerDataDataListAppInfoSourceInfo.sourceDesc = sourceDesc;
	}
	final dynamic sourceUrl = jsonConvert.convert<dynamic>(json['sourceUrl']);
	if (sourceUrl != null) {
		homeBannerDataDataListAppInfoSourceInfo.sourceUrl = sourceUrl;
	}
	final HomeBannerDataDataListAppInfoSourceInfoSellInfo? sellInfo = jsonConvert.convert<HomeBannerDataDataListAppInfoSourceInfoSellInfo>(json['sellInfo']);
	if (sellInfo != null) {
		homeBannerDataDataListAppInfoSourceInfo.sellInfo = sellInfo;
	}
	final int? sourceType = jsonConvert.convert<int>(json['sourceType']);
	if (sourceType != null) {
		homeBannerDataDataListAppInfoSourceInfo.sourceType = sourceType;
	}
	return homeBannerDataDataListAppInfoSourceInfo;
}

Map<String, dynamic> $HomeBannerDataDataListAppInfoSourceInfoToJson(HomeBannerDataDataListAppInfoSourceInfo entity) {
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

HomeBannerDataDataListAppInfoSourceInfoSellInfo $HomeBannerDataDataListAppInfoSourceInfoSellInfoFromJson(Map<String, dynamic> json) {
	final HomeBannerDataDataListAppInfoSourceInfoSellInfo homeBannerDataDataListAppInfoSourceInfoSellInfo = HomeBannerDataDataListAppInfoSourceInfoSellInfo();
	final dynamic originalPrice = jsonConvert.convert<dynamic>(json['originalPrice']);
	if (originalPrice != null) {
		homeBannerDataDataListAppInfoSourceInfoSellInfo.originalPrice = originalPrice;
	}
	final dynamic currentPrice = jsonConvert.convert<dynamic>(json['currentPrice']);
	if (currentPrice != null) {
		homeBannerDataDataListAppInfoSourceInfoSellInfo.currentPrice = currentPrice;
	}
	final dynamic discount = jsonConvert.convert<dynamic>(json['discount']);
	if (discount != null) {
		homeBannerDataDataListAppInfoSourceInfoSellInfo.discount = discount;
	}
	final dynamic discountDesc = jsonConvert.convert<dynamic>(json['discountDesc']);
	if (discountDesc != null) {
		homeBannerDataDataListAppInfoSourceInfoSellInfo.discountDesc = discountDesc;
	}
	return homeBannerDataDataListAppInfoSourceInfoSellInfo;
}

Map<String, dynamic> $HomeBannerDataDataListAppInfoSourceInfoSellInfoToJson(HomeBannerDataDataListAppInfoSourceInfoSellInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['originalPrice'] = entity.originalPrice;
	data['currentPrice'] = entity.currentPrice;
	data['discount'] = entity.discount;
	data['discountDesc'] = entity.discountDesc;
	return data;
}