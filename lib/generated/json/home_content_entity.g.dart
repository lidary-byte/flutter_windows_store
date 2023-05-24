/*
import 'package:flutter_windows_store/generated/json/base/json_convert_content.dart';
import 'package:flutter_windows_store/bean/home_content_entity.dart';

HomeContentBeanEntity $HomeContentBeanEntityFromJson(Map<String, dynamic> json) {
	final HomeContentBeanEntity homeContentBeanEntity = HomeContentBeanEntity();
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		homeContentBeanEntity.status = status;
	}
	final dynamic message = jsonConvert.convert<dynamic>(json['message']);
	if (message != null) {
		homeContentBeanEntity.message = message;
	}
	final List<HomeContentBeanData>? data = jsonConvert.convertListNotNull<HomeContentBeanData>(json['data']);
	if (data != null) {
		homeContentBeanEntity.data = data;
	}
	return homeContentBeanEntity;
}

Map<String, dynamic> $HomeContentBeanEntityToJson(HomeContentBeanEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['data'] =  entity.data?.map((v) => v.toJson()).toList();
	return data;
}

HomeContentBeanData $HomeContentBeanDataFromJson(Map<String, dynamic> json) {
	final HomeContentBeanData homeContentBeanData = HomeContentBeanData();
	final String? pageType = jsonConvert.convert<String>(json['pageType']);
	if (pageType != null) {
		homeContentBeanData.pageType = pageType;
	}
	final List<HomeContentBeanDataDataList>? dataList = jsonConvert.convertListNotNull<HomeContentBeanDataDataList>(json['dataList']);
	if (dataList != null) {
		homeContentBeanData.dataList = dataList;
	}
	final String? cardType = jsonConvert.convert<String>(json['cardType']);
	if (cardType != null) {
		homeContentBeanData.cardType = cardType;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		homeContentBeanData.title = title;
	}
	return homeContentBeanData;
}

Map<String, dynamic> $HomeContentBeanDataToJson(HomeContentBeanData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['pageType'] = entity.pageType;
	data['dataList'] =  entity.dataList?.map((v) => v.toJson()).toList();
	data['cardType'] = entity.cardType;
	data['title'] = entity.title;
	return data;
}

HomeContentBeanDataDataList $HomeContentBeanDataDataListFromJson(Map<String, dynamic> json) {
	final HomeContentBeanDataDataList homeContentBeanDataDataList = HomeContentBeanDataDataList();
	final String? imgUrl = jsonConvert.convert<String>(json['imgUrl']);
	if (imgUrl != null) {
		homeContentBeanDataDataList.imgUrl = imgUrl;
	}
	final String? code = jsonConvert.convert<String>(json['code']);
	if (code != null) {
		homeContentBeanDataDataList.code = code;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		homeContentBeanDataDataList.name = name;
	}
	final String? pageCardContentId = jsonConvert.convert<String>(json['pageCardContentId']);
	if (pageCardContentId != null) {
		homeContentBeanDataDataList.pageCardContentId = pageCardContentId;
	}
	final List<HomeContentBeanDataDataListApps>? apps = jsonConvert.convertListNotNull<HomeContentBeanDataDataListApps>(json['apps']);
	if (apps != null) {
		homeContentBeanDataDataList.apps = apps;
	}
	return homeContentBeanDataDataList;
}

Map<String, dynamic> $HomeContentBeanDataDataListToJson(HomeContentBeanDataDataList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['imgUrl'] = entity.imgUrl;
	data['code'] = entity.code;
	data['name'] = entity.name;
	data['pageCardContentId'] = entity.pageCardContentId;
	data['apps'] =  entity.apps?.map((v) => v.toJson()).toList();
	return data;
}

HomeContentBeanDataDataListApps $HomeContentBeanDataDataListAppsFromJson(Map<String, dynamic> json) {
	final HomeContentBeanDataDataListApps homeContentBeanDataDataListApps = HomeContentBeanDataDataListApps();
	final String? score = jsonConvert.convert<String>(json['score']);
	if (score != null) {
		homeContentBeanDataDataListApps.score = score;
	}
	final String? logoFile = jsonConvert.convert<String>(json['logoFile']);
	if (logoFile != null) {
		homeContentBeanDataDataListApps.logoFile = logoFile;
	}
	final String? softName = jsonConvert.convert<String>(json['softName']);
	if (softName != null) {
		homeContentBeanDataDataListApps.softName = softName;
	}
	final String? bizInfo = jsonConvert.convert<String>(json['bizInfo']);
	if (bizInfo != null) {
		homeContentBeanDataDataListApps.bizInfo = bizInfo;
	}
	final String? softID = jsonConvert.convert<String>(json['softID']);
	if (softID != null) {
		homeContentBeanDataDataListApps.softID = softID;
	}
	final String? introduction = jsonConvert.convert<String>(json['introduction']);
	if (introduction != null) {
		homeContentBeanDataDataListApps.introduction = introduction;
	}
	final String? downloadCount = jsonConvert.convert<String>(json['downloadCount']);
	if (downloadCount != null) {
		homeContentBeanDataDataListApps.downloadCount = downloadCount;
	}
	return homeContentBeanDataDataListApps;
}

Map<String, dynamic> $HomeContentBeanDataDataListAppsToJson(HomeContentBeanDataDataListApps entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['score'] = entity.score;
	data['logoFile'] = entity.logoFile;
	data['softName'] = entity.softName;
	data['bizInfo'] = entity.bizInfo;
	data['softID'] = entity.softID;
	data['introduction'] = entity.introduction;
	data['downloadCount'] = entity.downloadCount;
	return data;
}*/
