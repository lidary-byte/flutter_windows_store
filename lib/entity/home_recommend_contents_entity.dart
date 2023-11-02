import 'package:flutter_windows_store/generated/json/base/json_field.dart';
import 'package:flutter_windows_store/generated/json/home_recommend_contents_entity.g.dart';
import 'dart:convert';
export 'package:flutter_windows_store/generated/json/home_recommend_contents_entity.g.dart';

@JsonSerializable()
class HomeRecommendContentsEntity {
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
	List<HomeRecommendContentsDataList>? dataList;
	dynamic backgroundImg;
	int? styleType;

	HomeRecommendContentsEntity();

	factory HomeRecommendContentsEntity.fromJson(Map<String, dynamic> json) => $HomeRecommendContentsEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendContentsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendContentsDataList {
	String? name;
	String? code;
	String? pageCardContentId;
	dynamic imgUrl;
	dynamic targetContent;
	dynamic targetType;
	List<HomeRecommendContentsDataListApps>? apps;
	dynamic org;
	dynamic nameBackgroundImg;
	dynamic interactType;

	HomeRecommendContentsDataList();

	factory HomeRecommendContentsDataList.fromJson(Map<String, dynamic> json) => $HomeRecommendContentsDataListFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendContentsDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendContentsDataListApps {
	String? androidType;
	String? androidSmallIcon;
	String? developerName;
	String? packageName;
	String? versionCode;
	String? pid;
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
	HomeRecommendContentsDataListAppsSourceInfo? sourceInfo;
	List<String>? captureFileList;
	String? vImg;
	String? scoreRadio;
	List<HomeRecommendContentsDataListAppsRelationTags>? relationTags;
	int? installFileType;
	String? createdTime;
	String? appProperty;
	int? appBizType;
	HomeRecommendContentsDataListAppsAppBizContent? appBizContent;

	HomeRecommendContentsDataListApps();

	factory HomeRecommendContentsDataListApps.fromJson(Map<String, dynamic> json) => $HomeRecommendContentsDataListAppsFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendContentsDataListAppsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendContentsDataListAppsSourceInfo {
	dynamic sourceId;
	dynamic commodityId;
	dynamic sourceCode;
	dynamic sourceDesc;
	dynamic sourceUrl;
	HomeRecommendContentsDataListAppsSourceInfoSellInfo? sellInfo;
	int? sourceType;
	dynamic sku;

	HomeRecommendContentsDataListAppsSourceInfo();

	factory HomeRecommendContentsDataListAppsSourceInfo.fromJson(Map<String, dynamic> json) => $HomeRecommendContentsDataListAppsSourceInfoFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendContentsDataListAppsSourceInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendContentsDataListAppsSourceInfoSellInfo {
	dynamic originalPrice;
	dynamic currentPrice;
	dynamic discount;
	dynamic discountDesc;

	HomeRecommendContentsDataListAppsSourceInfoSellInfo();

	factory HomeRecommendContentsDataListAppsSourceInfoSellInfo.fromJson(Map<String, dynamic> json) => $HomeRecommendContentsDataListAppsSourceInfoSellInfoFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendContentsDataListAppsSourceInfoSellInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendContentsDataListAppsRelationTags {
	String? name;
	String? targetContent;
	String? targetType;

	HomeRecommendContentsDataListAppsRelationTags();

	factory HomeRecommendContentsDataListAppsRelationTags.fromJson(Map<String, dynamic> json) => $HomeRecommendContentsDataListAppsRelationTagsFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendContentsDataListAppsRelationTagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecommendContentsDataListAppsAppBizContent {


	HomeRecommendContentsDataListAppsAppBizContent();

	factory HomeRecommendContentsDataListAppsAppBizContent.fromJson(Map<String, dynamic> json) => $HomeRecommendContentsDataListAppsAppBizContentFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecommendContentsDataListAppsAppBizContentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}