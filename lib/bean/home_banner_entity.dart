import 'package:flutter_windows_store/generated/json/base/json_field.dart';
import 'package:flutter_windows_store/generated/json/home_banner_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeBannerEntity {
	int? status;
	dynamic message;
	List<HomeBannerData>? data;

	HomeBannerEntity();

	factory HomeBannerEntity.fromJson(Map<String, dynamic> json) => $HomeBannerEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeBannerEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeBannerData {
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
	List<HomeBannerDataDataList>? dataList;
	dynamic backgroundImg;
	int? styleType;

	HomeBannerData();

	factory HomeBannerData.fromJson(Map<String, dynamic> json) => $HomeBannerDataFromJson(json);

	Map<String, dynamic> toJson() => $HomeBannerDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeBannerDataDataList {
	String? pageCardContentId;
	String? contentImg;
	String? contentImgBig;
	String? contentTitle;
	String? contentDesc;
	dynamic contentType;
	String? targetContent;
	String? targetType;
	HomeBannerDataDataListAppInfo? appInfo;
	String? bizInfo;

	HomeBannerDataDataList();

	factory HomeBannerDataDataList.fromJson(Map<String, dynamic> json) => $HomeBannerDataDataListFromJson(json);

	Map<String, dynamic> toJson() => $HomeBannerDataDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeBannerDataDataListAppInfo {
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
	dynamic programs;
	String? downloadCount;
	List<dynamic>? guid;
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
	HomeBannerDataDataListAppInfoSourceInfo? sourceInfo;
	List<String>? captureFileList;
	dynamic vImg;
	dynamic scoreRadio;
	dynamic relationTags;
	int? installFileType;
	String? createdTime;
	String? appProperty;
	int? appBizType;
	dynamic appBizContent;

	HomeBannerDataDataListAppInfo();

	factory HomeBannerDataDataListAppInfo.fromJson(Map<String, dynamic> json) => $HomeBannerDataDataListAppInfoFromJson(json);

	Map<String, dynamic> toJson() => $HomeBannerDataDataListAppInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeBannerDataDataListAppInfoSourceInfo {
	dynamic sourceId;
	dynamic commodityId;
	dynamic sourceCode;
	dynamic sourceDesc;
	dynamic sourceUrl;
	HomeBannerDataDataListAppInfoSourceInfoSellInfo? sellInfo;
	int? sourceType;

	HomeBannerDataDataListAppInfoSourceInfo();

	factory HomeBannerDataDataListAppInfoSourceInfo.fromJson(Map<String, dynamic> json) => $HomeBannerDataDataListAppInfoSourceInfoFromJson(json);

	Map<String, dynamic> toJson() => $HomeBannerDataDataListAppInfoSourceInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeBannerDataDataListAppInfoSourceInfoSellInfo {
	dynamic originalPrice;
	dynamic currentPrice;
	dynamic discount;
	dynamic discountDesc;

	HomeBannerDataDataListAppInfoSourceInfoSellInfo();

	factory HomeBannerDataDataListAppInfoSourceInfoSellInfo.fromJson(Map<String, dynamic> json) => $HomeBannerDataDataListAppInfoSourceInfoSellInfoFromJson(json);

	Map<String, dynamic> toJson() => $HomeBannerDataDataListAppInfoSourceInfoSellInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}