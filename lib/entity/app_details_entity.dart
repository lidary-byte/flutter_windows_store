import 'package:flutter_windows_store/generated/json/base/json_field.dart';
import 'package:flutter_windows_store/generated/json/app_details_entity.g.dart';
import 'dart:convert';
export 'package:flutter_windows_store/generated/json/app_details_entity.g.dart';

@JsonSerializable()
class AppDetailsEntity {
	String? androidType;
	String? softID;
	String? softName;
	String? version;
	String? installFileSize;
	String? detailInfo;
	String? score;
	String? logoFile;
	List<AppDetailsCaptureFileList>? captureFileList;
	String? whatNew;
	String? createdTime;
	String? downloadUrl;
	String? downloadCount;
	List<AppDetailsDetailsTag>? detailsTag;
	dynamic warmTips;
	String? softType;
	AppDetailsCover? cover;
	dynamic hardwareConfigurationList;
	dynamic classRankingDesc;
	dynamic editorRecommend;
	List<AppDetailsActivityList>? activityList;
	dynamic hasGiftBag;
	int? hasCollect;
	dynamic appRecommend;
	List<AppDetailsAppLabelList>? appLabelList;
	dynamic sourceInfo;
	String? lenovoClassId;
	dynamic originalPrice;
	dynamic currentPrice;
	int? payType;
	int? appBizType;
	AppDetailsAppBizContent? appBizContent;

	AppDetailsEntity();

	factory AppDetailsEntity.fromJson(Map<String, dynamic> json) => $AppDetailsEntityFromJson(json);

	Map<String, dynamic> toJson() => $AppDetailsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppDetailsCaptureFileList {
	String? type;
	String? url;
	String? videoImg;

	AppDetailsCaptureFileList();

	factory AppDetailsCaptureFileList.fromJson(Map<String, dynamic> json) => $AppDetailsCaptureFileListFromJson(json);

	Map<String, dynamic> toJson() => $AppDetailsCaptureFileListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppDetailsDetailsTag {
	String? icon;
	String? name;
	String? tips;

	AppDetailsDetailsTag();

	factory AppDetailsDetailsTag.fromJson(Map<String, dynamic> json) => $AppDetailsDetailsTagFromJson(json);

	Map<String, dynamic> toJson() => $AppDetailsDetailsTagToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppDetailsCover {
	String? coverImg;
	String? videoId;
	String? videoUrl;
	String? showVideo;
	String? coverImgBig;

	AppDetailsCover();

	factory AppDetailsCover.fromJson(Map<String, dynamic> json) => $AppDetailsCoverFromJson(json);

	Map<String, dynamic> toJson() => $AppDetailsCoverToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppDetailsActivityList {
	String? targetType;
	String? targetContent;
	String? activityDesc;

	AppDetailsActivityList();

	factory AppDetailsActivityList.fromJson(Map<String, dynamic> json) => $AppDetailsActivityListFromJson(json);

	Map<String, dynamic> toJson() => $AppDetailsActivityListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppDetailsAppLabelList {
	String? labelName;
	String? targetType;
	String? targetContent;

	AppDetailsAppLabelList();

	factory AppDetailsAppLabelList.fromJson(Map<String, dynamic> json) => $AppDetailsAppLabelListFromJson(json);

	Map<String, dynamic> toJson() => $AppDetailsAppLabelListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppDetailsAppBizContent {


	AppDetailsAppBizContent();

	factory AppDetailsAppBizContent.fromJson(Map<String, dynamic> json) => $AppDetailsAppBizContentFromJson(json);

	Map<String, dynamic> toJson() => $AppDetailsAppBizContentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}