import 'package:flutter_windows_store/generated/json/base/json_field.dart';
import 'package:flutter_windows_store/generated/json/app_comment_entity.g.dart';
import 'dart:convert';
export 'package:flutter_windows_store/generated/json/app_comment_entity.g.dart';

@JsonSerializable()
class AppCommentEntity {
	int? count;
	int? skip;
	int? limit;
	List<AppCommentDataList>? dataList;

	AppCommentEntity();

	factory AppCommentEntity.fromJson(Map<String, dynamic> json) => $AppCommentEntityFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppCommentDataList {
	int? hasZan;
	int? id;
	String? bizIdentity;
	dynamic identity;
	dynamic achievements;
	String? userId;
	String? nickName;
	String? profilePicUrl;
	int? isV;
	AppCommentDataListScoreInfo? scoreInfo;
	AppCommentDataListDeviceInfo? deviceInfo;
	AppCommentDataListState? state;
	AppCommentDataListTags? tags;
	dynamic extInfo;
	AppCommentDataListDatas? datas;
	String? createTime;
	String? updateTime;
	AppCommentDataListContentInfo? contentInfo;
	dynamic replys;

	AppCommentDataList();

	factory AppCommentDataList.fromJson(Map<String, dynamic> json) => $AppCommentDataListFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppCommentDataListScoreInfo {
	int? score;

	AppCommentDataListScoreInfo();

	factory AppCommentDataListScoreInfo.fromJson(Map<String, dynamic> json) => $AppCommentDataListScoreInfoFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentDataListScoreInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppCommentDataListDeviceInfo {
	String? deviceIdType;
	String? deviceId;
	String? ip;
	String? mt;
	String? os;
	String? osbit;

	AppCommentDataListDeviceInfo();

	factory AppCommentDataListDeviceInfo.fromJson(Map<String, dynamic> json) => $AppCommentDataListDeviceInfoFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentDataListDeviceInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppCommentDataListState {
	int? finalState;
	dynamic finalCause;

	AppCommentDataListState();

	factory AppCommentDataListState.fromJson(Map<String, dynamic> json) => $AppCommentDataListStateFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentDataListStateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppCommentDataListTags {
	int? finalHot;

	AppCommentDataListTags();

	factory AppCommentDataListTags.fromJson(Map<String, dynamic> json) => $AppCommentDataListTagsFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentDataListTagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppCommentDataListDatas {
	int? zan;
	int? complaint;

	AppCommentDataListDatas();

	factory AppCommentDataListDatas.fromJson(Map<String, dynamic> json) => $AppCommentDataListDatasFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentDataListDatasToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppCommentDataListContentInfo {
	String? text;
	List<dynamic>? imgs;
	dynamic mentionUserIds;
	List<AppCommentDataListContentInfoLabelCodes>? labelCodes;
	dynamic appList;
	dynamic specialList;
	int? hasContent;

	AppCommentDataListContentInfo();

	factory AppCommentDataListContentInfo.fromJson(Map<String, dynamic> json) => $AppCommentDataListContentInfoFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentDataListContentInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppCommentDataListContentInfoLabelCodes {
	String? angleCode;
	String? angleName;
	AppCommentDataListContentInfoLabelCodesStarLabels? starLabels;

	AppCommentDataListContentInfoLabelCodes();

	factory AppCommentDataListContentInfoLabelCodes.fromJson(Map<String, dynamic> json) => $AppCommentDataListContentInfoLabelCodesFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentDataListContentInfoLabelCodesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AppCommentDataListContentInfoLabelCodesStarLabels {
	String? code;
	String? name;
	int? score;

	AppCommentDataListContentInfoLabelCodesStarLabels();

	factory AppCommentDataListContentInfoLabelCodesStarLabels.fromJson(Map<String, dynamic> json) => $AppCommentDataListContentInfoLabelCodesStarLabelsFromJson(json);

	Map<String, dynamic> toJson() => $AppCommentDataListContentInfoLabelCodesStarLabelsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}