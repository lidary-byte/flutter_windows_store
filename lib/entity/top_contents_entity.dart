import 'package:flutter_windows_store/generated/json/base/json_field.dart';
import 'package:flutter_windows_store/generated/json/top_contents_entity.g.dart';
import 'dart:convert';
export 'package:flutter_windows_store/generated/json/top_contents_entity.g.dart';

@JsonSerializable()
class TopContentsEntity {
	dynamic computerType;
	String? title;
	String? pageType;
	String? cardType;
	String? orderNum;
	dynamic operate;
	dynamic row;
	dynamic column;
	dynamic targetType;
	dynamic targetContent;
	int? hoverShow;
	List<TopContentsDataList>? dataList;
	dynamic backgroundImg;
	int? styleType;

	TopContentsEntity();

	factory TopContentsEntity.fromJson(Map<String, dynamic> json) => $TopContentsEntityFromJson(json);

	Map<String, dynamic> toJson() => $TopContentsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TopContentsDataList {
	String? pageCardContentId;
	String? contentImg;
	String? contentImgBig;
	String? contentTitle;
	String? contentDesc;
	dynamic contentType;
	String? targetContent;
	String? targetType;
	TopContentsDataListAppInfo? appInfo;
	String? bizInfo;

	TopContentsDataList();

	factory TopContentsDataList.fromJson(Map<String, dynamic> json) => $TopContentsDataListFromJson(json);

	Map<String, dynamic> toJson() => $TopContentsDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TopContentsDataListAppInfo {
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
	dynamic tag;
	String? version;
	String? stable;
	dynamic isFree;
	dynamic isPlugin;
	String? adKey;
	dynamic isIntervene;
	dynamic ztImg;
	dynamic collectCount;
	dynamic itemType;
	dynamic appDesc;
	dynamic resUrl;
	int? orderNum;
	dynamic downloadProportionDesc;
	int? commentUserCount;
	dynamic originalPrice;
	dynamic currentPrice;
	int? payType;
	TopContentsDataListAppInfoSourceInfo? sourceInfo;
	List<String>? captureFileList;
	dynamic vImg;
	dynamic scoreRadio;
	dynamic relationTags;
	int? installFileType;
	String? createdTime;
	String? appProperty;
	int? appBizType;
	TopContentsDataListAppInfoAppBizContent? appBizContent;

	TopContentsDataListAppInfo();

	factory TopContentsDataListAppInfo.fromJson(Map<String, dynamic> json) => $TopContentsDataListAppInfoFromJson(json);

	Map<String, dynamic> toJson() => $TopContentsDataListAppInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TopContentsDataListAppInfoSourceInfo {
	dynamic sourceId;
	dynamic commodityId;
	dynamic sourceCode;
	dynamic sourceDesc;
	dynamic sourceUrl;
	TopContentsDataListAppInfoSourceInfoSellInfo? sellInfo;
	int? sourceType;
	dynamic sku;

	TopContentsDataListAppInfoSourceInfo();

	factory TopContentsDataListAppInfoSourceInfo.fromJson(Map<String, dynamic> json) => $TopContentsDataListAppInfoSourceInfoFromJson(json);

	Map<String, dynamic> toJson() => $TopContentsDataListAppInfoSourceInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TopContentsDataListAppInfoSourceInfoSellInfo {
	dynamic originalPrice;
	dynamic currentPrice;
	dynamic discount;
	dynamic discountDesc;

	TopContentsDataListAppInfoSourceInfoSellInfo();

	factory TopContentsDataListAppInfoSourceInfoSellInfo.fromJson(Map<String, dynamic> json) => $TopContentsDataListAppInfoSourceInfoSellInfoFromJson(json);

	Map<String, dynamic> toJson() => $TopContentsDataListAppInfoSourceInfoSellInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TopContentsDataListAppInfoAppBizContent {


	TopContentsDataListAppInfoAppBizContent();

	factory TopContentsDataListAppInfoAppBizContent.fromJson(Map<String, dynamic> json) => $TopContentsDataListAppInfoAppBizContentFromJson(json);

	Map<String, dynamic> toJson() => $TopContentsDataListAppInfoAppBizContentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}