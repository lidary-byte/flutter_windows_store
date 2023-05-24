import 'package:flutter_windows_store/generated/json/base/json_field.dart';
import 'package:flutter_windows_store/generated/json/home_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeListEntity {
	int? status;
	dynamic message;
	List<HomeListData>? data;

	HomeListEntity();

	factory HomeListEntity.fromJson(Map<String, dynamic> json) => $HomeListEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListData {
	dynamic computerType;
	String? title;
	String? pageType;
	String? cardType;
	String? orderNum;
	String? operate;
	String? row;
	String? column;
	String? targetType;
	String? targetContent;
	int? hoverShow;
	List<HomeListDataDataList>? dataList;
	dynamic backgroundImg;
	int? styleType;

	HomeListData();

	factory HomeListData.fromJson(Map<String, dynamic> json) => $HomeListDataFromJson(json);

	Map<String, dynamic> toJson() => $HomeListDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListDataDataList {
	String? name;
	String? code;
	String? pageCardContentId;
	dynamic imgUrl;
	dynamic targetContent;
	dynamic targetType;
	List<HomeListDataDataListApps>? apps;
	dynamic org;
	dynamic nameBackgroundImg;
	dynamic interactType;

	HomeListDataDataList();

	factory HomeListDataDataList.fromJson(Map<String, dynamic> json) => $HomeListDataDataListFromJson(json);

	Map<String, dynamic> toJson() => $HomeListDataDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListDataDataListApps {
	String? androidType;
	dynamic androidSmallIcon;
	dynamic developerName;
	dynamic packageName;
	dynamic versionCode;
	dynamic pid;
	String? id;
	String? softID;
	String? softName;
	String? installFileSize;
	String? introduction;
	String? score;
	String? downLoadUrl;
	String? logoFile;
	List<String>? supportOsbit;
	List<String>? supportPlatform;
	List<dynamic>? programs;
	String? downloadCount;
	List<String>? guid;
	String? bizInfo;
	String? classID;
	String? tag;
	String? version;
	String? stable;
	String? isFree;
	String? isPlugin;
	String? adKey;
	dynamic isIntervene;
	String? ztImg;
	dynamic collectCount;
	dynamic itemType;
	dynamic appDesc;
	String? resUrl;
	int? orderNum;
	dynamic downloadProportionDesc;
	int? commentUserCount;
	dynamic originalPrice;
	dynamic currentPrice;
	int? payType;
	HomeListDataDataListAppsSourceInfo? sourceInfo;
	List<String>? captureFileList;
	String? vImg;
	String? scoreRadio;
	List<HomeListDataDataListAppsRelationTags>? relationTags;
	int? installFileType;
	String? createdTime;
	String? appProperty;
	int? appBizType;
	dynamic appBizContent;

	HomeListDataDataListApps();

	factory HomeListDataDataListApps.fromJson(Map<String, dynamic> json) => $HomeListDataDataListAppsFromJson(json);

	Map<String, dynamic> toJson() => $HomeListDataDataListAppsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListDataDataListAppsSourceInfo {
	dynamic sourceId;
	dynamic commodityId;
	dynamic sourceCode;
	dynamic sourceDesc;
	dynamic sourceUrl;
	HomeListDataDataListAppsSourceInfoSellInfo? sellInfo;
	int? sourceType;

	HomeListDataDataListAppsSourceInfo();

	factory HomeListDataDataListAppsSourceInfo.fromJson(Map<String, dynamic> json) => $HomeListDataDataListAppsSourceInfoFromJson(json);

	Map<String, dynamic> toJson() => $HomeListDataDataListAppsSourceInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListDataDataListAppsSourceInfoSellInfo {
	dynamic originalPrice;
	dynamic currentPrice;
	dynamic discount;
	dynamic discountDesc;

	HomeListDataDataListAppsSourceInfoSellInfo();

	factory HomeListDataDataListAppsSourceInfoSellInfo.fromJson(Map<String, dynamic> json) => $HomeListDataDataListAppsSourceInfoSellInfoFromJson(json);

	Map<String, dynamic> toJson() => $HomeListDataDataListAppsSourceInfoSellInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeListDataDataListAppsRelationTags {
	String? name;
	String? targetContent;
	String? targetType;

	HomeListDataDataListAppsRelationTags();

	factory HomeListDataDataListAppsRelationTags.fromJson(Map<String, dynamic> json) => $HomeListDataDataListAppsRelationTagsFromJson(json);

	Map<String, dynamic> toJson() => $HomeListDataDataListAppsRelationTagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}