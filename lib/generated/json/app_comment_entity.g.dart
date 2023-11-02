import 'package:flutter_windows_store/generated/json/base/json_convert_content.dart';
import 'package:flutter_windows_store/entity/app_comment_entity.dart';

AppCommentEntity $AppCommentEntityFromJson(Map<String, dynamic> json) {
  final AppCommentEntity appCommentEntity = AppCommentEntity();
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    appCommentEntity.count = count;
  }
  final int? skip = jsonConvert.convert<int>(json['skip']);
  if (skip != null) {
    appCommentEntity.skip = skip;
  }
  final int? limit = jsonConvert.convert<int>(json['limit']);
  if (limit != null) {
    appCommentEntity.limit = limit;
  }
  final List<AppCommentDataList>? dataList = (json['dataList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<AppCommentDataList>(e) as AppCommentDataList)
      .toList();
  if (dataList != null) {
    appCommentEntity.dataList = dataList;
  }
  return appCommentEntity;
}

Map<String, dynamic> $AppCommentEntityToJson(AppCommentEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['count'] = entity.count;
  data['skip'] = entity.skip;
  data['limit'] = entity.limit;
  data['dataList'] = entity.dataList?.map((v) => v.toJson()).toList();
  return data;
}

extension AppCommentEntityExtension on AppCommentEntity {
  AppCommentEntity copyWith({
    int? count,
    int? skip,
    int? limit,
    List<AppCommentDataList>? dataList,
  }) {
    return AppCommentEntity()
      ..count = count ?? this.count
      ..skip = skip ?? this.skip
      ..limit = limit ?? this.limit
      ..dataList = dataList ?? this.dataList;
  }
}

AppCommentDataList $AppCommentDataListFromJson(Map<String, dynamic> json) {
  final AppCommentDataList appCommentDataList = AppCommentDataList();
  final int? hasZan = jsonConvert.convert<int>(json['hasZan']);
  if (hasZan != null) {
    appCommentDataList.hasZan = hasZan;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    appCommentDataList.id = id;
  }
  final String? bizIdentity = jsonConvert.convert<String>(json['bizIdentity']);
  if (bizIdentity != null) {
    appCommentDataList.bizIdentity = bizIdentity;
  }
  final dynamic identity = json['identity'];
  if (identity != null) {
    appCommentDataList.identity = identity;
  }
  final dynamic achievements = json['achievements'];
  if (achievements != null) {
    appCommentDataList.achievements = achievements;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    appCommentDataList.userId = userId;
  }
  final String? nickName = jsonConvert.convert<String>(json['nickName']);
  if (nickName != null) {
    appCommentDataList.nickName = nickName;
  }
  final String? profilePicUrl = jsonConvert.convert<String>(
      json['profilePicUrl']);
  if (profilePicUrl != null) {
    appCommentDataList.profilePicUrl = profilePicUrl;
  }
  final int? isV = jsonConvert.convert<int>(json['isV']);
  if (isV != null) {
    appCommentDataList.isV = isV;
  }
  final AppCommentDataListScoreInfo? scoreInfo = jsonConvert.convert<
      AppCommentDataListScoreInfo>(json['scoreInfo']);
  if (scoreInfo != null) {
    appCommentDataList.scoreInfo = scoreInfo;
  }
  final AppCommentDataListDeviceInfo? deviceInfo = jsonConvert.convert<
      AppCommentDataListDeviceInfo>(json['deviceInfo']);
  if (deviceInfo != null) {
    appCommentDataList.deviceInfo = deviceInfo;
  }
  final AppCommentDataListState? state = jsonConvert.convert<
      AppCommentDataListState>(json['state']);
  if (state != null) {
    appCommentDataList.state = state;
  }
  final AppCommentDataListTags? tags = jsonConvert.convert<
      AppCommentDataListTags>(json['tags']);
  if (tags != null) {
    appCommentDataList.tags = tags;
  }
  final dynamic extInfo = json['extInfo'];
  if (extInfo != null) {
    appCommentDataList.extInfo = extInfo;
  }
  final AppCommentDataListDatas? datas = jsonConvert.convert<
      AppCommentDataListDatas>(json['datas']);
  if (datas != null) {
    appCommentDataList.datas = datas;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    appCommentDataList.createTime = createTime;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    appCommentDataList.updateTime = updateTime;
  }
  final AppCommentDataListContentInfo? contentInfo = jsonConvert.convert<
      AppCommentDataListContentInfo>(json['contentInfo']);
  if (contentInfo != null) {
    appCommentDataList.contentInfo = contentInfo;
  }
  final dynamic replys = json['replys'];
  if (replys != null) {
    appCommentDataList.replys = replys;
  }
  return appCommentDataList;
}

Map<String, dynamic> $AppCommentDataListToJson(AppCommentDataList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['hasZan'] = entity.hasZan;
  data['id'] = entity.id;
  data['bizIdentity'] = entity.bizIdentity;
  data['identity'] = entity.identity;
  data['achievements'] = entity.achievements;
  data['userId'] = entity.userId;
  data['nickName'] = entity.nickName;
  data['profilePicUrl'] = entity.profilePicUrl;
  data['isV'] = entity.isV;
  data['scoreInfo'] = entity.scoreInfo?.toJson();
  data['deviceInfo'] = entity.deviceInfo?.toJson();
  data['state'] = entity.state?.toJson();
  data['tags'] = entity.tags?.toJson();
  data['extInfo'] = entity.extInfo;
  data['datas'] = entity.datas?.toJson();
  data['createTime'] = entity.createTime;
  data['updateTime'] = entity.updateTime;
  data['contentInfo'] = entity.contentInfo?.toJson();
  data['replys'] = entity.replys;
  return data;
}

extension AppCommentDataListExtension on AppCommentDataList {
  AppCommentDataList copyWith({
    int? hasZan,
    int? id,
    String? bizIdentity,
    dynamic identity,
    dynamic achievements,
    String? userId,
    String? nickName,
    String? profilePicUrl,
    int? isV,
    AppCommentDataListScoreInfo? scoreInfo,
    AppCommentDataListDeviceInfo? deviceInfo,
    AppCommentDataListState? state,
    AppCommentDataListTags? tags,
    dynamic extInfo,
    AppCommentDataListDatas? datas,
    String? createTime,
    String? updateTime,
    AppCommentDataListContentInfo? contentInfo,
    dynamic replys,
  }) {
    return AppCommentDataList()
      ..hasZan = hasZan ?? this.hasZan
      ..id = id ?? this.id
      ..bizIdentity = bizIdentity ?? this.bizIdentity
      ..identity = identity ?? this.identity
      ..achievements = achievements ?? this.achievements
      ..userId = userId ?? this.userId
      ..nickName = nickName ?? this.nickName
      ..profilePicUrl = profilePicUrl ?? this.profilePicUrl
      ..isV = isV ?? this.isV
      ..scoreInfo = scoreInfo ?? this.scoreInfo
      ..deviceInfo = deviceInfo ?? this.deviceInfo
      ..state = state ?? this.state
      ..tags = tags ?? this.tags
      ..extInfo = extInfo ?? this.extInfo
      ..datas = datas ?? this.datas
      ..createTime = createTime ?? this.createTime
      ..updateTime = updateTime ?? this.updateTime
      ..contentInfo = contentInfo ?? this.contentInfo
      ..replys = replys ?? this.replys;
  }
}

AppCommentDataListScoreInfo $AppCommentDataListScoreInfoFromJson(
    Map<String, dynamic> json) {
  final AppCommentDataListScoreInfo appCommentDataListScoreInfo = AppCommentDataListScoreInfo();
  final int? score = jsonConvert.convert<int>(json['score']);
  if (score != null) {
    appCommentDataListScoreInfo.score = score;
  }
  return appCommentDataListScoreInfo;
}

Map<String, dynamic> $AppCommentDataListScoreInfoToJson(
    AppCommentDataListScoreInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['score'] = entity.score;
  return data;
}

extension AppCommentDataListScoreInfoExtension on AppCommentDataListScoreInfo {
  AppCommentDataListScoreInfo copyWith({
    int? score,
  }) {
    return AppCommentDataListScoreInfo()
      ..score = score ?? this.score;
  }
}

AppCommentDataListDeviceInfo $AppCommentDataListDeviceInfoFromJson(
    Map<String, dynamic> json) {
  final AppCommentDataListDeviceInfo appCommentDataListDeviceInfo = AppCommentDataListDeviceInfo();
  final String? deviceIdType = jsonConvert.convert<String>(
      json['deviceIdType']);
  if (deviceIdType != null) {
    appCommentDataListDeviceInfo.deviceIdType = deviceIdType;
  }
  final String? deviceId = jsonConvert.convert<String>(json['deviceId']);
  if (deviceId != null) {
    appCommentDataListDeviceInfo.deviceId = deviceId;
  }
  final String? ip = jsonConvert.convert<String>(json['ip']);
  if (ip != null) {
    appCommentDataListDeviceInfo.ip = ip;
  }
  final String? mt = jsonConvert.convert<String>(json['mt']);
  if (mt != null) {
    appCommentDataListDeviceInfo.mt = mt;
  }
  final String? os = jsonConvert.convert<String>(json['os']);
  if (os != null) {
    appCommentDataListDeviceInfo.os = os;
  }
  final String? osbit = jsonConvert.convert<String>(json['osbit']);
  if (osbit != null) {
    appCommentDataListDeviceInfo.osbit = osbit;
  }
  return appCommentDataListDeviceInfo;
}

Map<String, dynamic> $AppCommentDataListDeviceInfoToJson(
    AppCommentDataListDeviceInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['deviceIdType'] = entity.deviceIdType;
  data['deviceId'] = entity.deviceId;
  data['ip'] = entity.ip;
  data['mt'] = entity.mt;
  data['os'] = entity.os;
  data['osbit'] = entity.osbit;
  return data;
}

extension AppCommentDataListDeviceInfoExtension on AppCommentDataListDeviceInfo {
  AppCommentDataListDeviceInfo copyWith({
    String? deviceIdType,
    String? deviceId,
    String? ip,
    String? mt,
    String? os,
    String? osbit,
  }) {
    return AppCommentDataListDeviceInfo()
      ..deviceIdType = deviceIdType ?? this.deviceIdType
      ..deviceId = deviceId ?? this.deviceId
      ..ip = ip ?? this.ip
      ..mt = mt ?? this.mt
      ..os = os ?? this.os
      ..osbit = osbit ?? this.osbit;
  }
}

AppCommentDataListState $AppCommentDataListStateFromJson(
    Map<String, dynamic> json) {
  final AppCommentDataListState appCommentDataListState = AppCommentDataListState();
  final int? finalState = jsonConvert.convert<int>(json['finalState']);
  if (finalState != null) {
    appCommentDataListState.finalState = finalState;
  }
  final dynamic finalCause = json['finalCause'];
  if (finalCause != null) {
    appCommentDataListState.finalCause = finalCause;
  }
  return appCommentDataListState;
}

Map<String, dynamic> $AppCommentDataListStateToJson(
    AppCommentDataListState entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['finalState'] = entity.finalState;
  data['finalCause'] = entity.finalCause;
  return data;
}

extension AppCommentDataListStateExtension on AppCommentDataListState {
  AppCommentDataListState copyWith({
    int? finalState,
    dynamic finalCause,
  }) {
    return AppCommentDataListState()
      ..finalState = finalState ?? this.finalState
      ..finalCause = finalCause ?? this.finalCause;
  }
}

AppCommentDataListTags $AppCommentDataListTagsFromJson(
    Map<String, dynamic> json) {
  final AppCommentDataListTags appCommentDataListTags = AppCommentDataListTags();
  final int? finalHot = jsonConvert.convert<int>(json['finalHot']);
  if (finalHot != null) {
    appCommentDataListTags.finalHot = finalHot;
  }
  return appCommentDataListTags;
}

Map<String, dynamic> $AppCommentDataListTagsToJson(
    AppCommentDataListTags entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['finalHot'] = entity.finalHot;
  return data;
}

extension AppCommentDataListTagsExtension on AppCommentDataListTags {
  AppCommentDataListTags copyWith({
    int? finalHot,
  }) {
    return AppCommentDataListTags()
      ..finalHot = finalHot ?? this.finalHot;
  }
}

AppCommentDataListDatas $AppCommentDataListDatasFromJson(
    Map<String, dynamic> json) {
  final AppCommentDataListDatas appCommentDataListDatas = AppCommentDataListDatas();
  final int? zan = jsonConvert.convert<int>(json['zan']);
  if (zan != null) {
    appCommentDataListDatas.zan = zan;
  }
  final int? complaint = jsonConvert.convert<int>(json['complaint']);
  if (complaint != null) {
    appCommentDataListDatas.complaint = complaint;
  }
  return appCommentDataListDatas;
}

Map<String, dynamic> $AppCommentDataListDatasToJson(
    AppCommentDataListDatas entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['zan'] = entity.zan;
  data['complaint'] = entity.complaint;
  return data;
}

extension AppCommentDataListDatasExtension on AppCommentDataListDatas {
  AppCommentDataListDatas copyWith({
    int? zan,
    int? complaint,
  }) {
    return AppCommentDataListDatas()
      ..zan = zan ?? this.zan
      ..complaint = complaint ?? this.complaint;
  }
}

AppCommentDataListContentInfo $AppCommentDataListContentInfoFromJson(
    Map<String, dynamic> json) {
  final AppCommentDataListContentInfo appCommentDataListContentInfo = AppCommentDataListContentInfo();
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    appCommentDataListContentInfo.text = text;
  }
  final List<dynamic>? imgs = (json['imgs'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (imgs != null) {
    appCommentDataListContentInfo.imgs = imgs;
  }
  final dynamic mentionUserIds = json['mentionUserIds'];
  if (mentionUserIds != null) {
    appCommentDataListContentInfo.mentionUserIds = mentionUserIds;
  }
  final List<
      AppCommentDataListContentInfoLabelCodes>? labelCodes = (json['labelCodes'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AppCommentDataListContentInfoLabelCodes>(
          e) as AppCommentDataListContentInfoLabelCodes).toList();
  if (labelCodes != null) {
    appCommentDataListContentInfo.labelCodes = labelCodes;
  }
  final dynamic appList = json['appList'];
  if (appList != null) {
    appCommentDataListContentInfo.appList = appList;
  }
  final dynamic specialList = json['specialList'];
  if (specialList != null) {
    appCommentDataListContentInfo.specialList = specialList;
  }
  final int? hasContent = jsonConvert.convert<int>(json['hasContent']);
  if (hasContent != null) {
    appCommentDataListContentInfo.hasContent = hasContent;
  }
  return appCommentDataListContentInfo;
}

Map<String, dynamic> $AppCommentDataListContentInfoToJson(
    AppCommentDataListContentInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['text'] = entity.text;
  data['imgs'] = entity.imgs;
  data['mentionUserIds'] = entity.mentionUserIds;
  data['labelCodes'] = entity.labelCodes?.map((v) => v.toJson()).toList();
  data['appList'] = entity.appList;
  data['specialList'] = entity.specialList;
  data['hasContent'] = entity.hasContent;
  return data;
}

extension AppCommentDataListContentInfoExtension on AppCommentDataListContentInfo {
  AppCommentDataListContentInfo copyWith({
    String? text,
    List<dynamic>? imgs,
    dynamic mentionUserIds,
    List<AppCommentDataListContentInfoLabelCodes>? labelCodes,
    dynamic appList,
    dynamic specialList,
    int? hasContent,
  }) {
    return AppCommentDataListContentInfo()
      ..text = text ?? this.text
      ..imgs = imgs ?? this.imgs
      ..mentionUserIds = mentionUserIds ?? this.mentionUserIds
      ..labelCodes = labelCodes ?? this.labelCodes
      ..appList = appList ?? this.appList
      ..specialList = specialList ?? this.specialList
      ..hasContent = hasContent ?? this.hasContent;
  }
}

AppCommentDataListContentInfoLabelCodes $AppCommentDataListContentInfoLabelCodesFromJson(
    Map<String, dynamic> json) {
  final AppCommentDataListContentInfoLabelCodes appCommentDataListContentInfoLabelCodes = AppCommentDataListContentInfoLabelCodes();
  final String? angleCode = jsonConvert.convert<String>(json['angleCode']);
  if (angleCode != null) {
    appCommentDataListContentInfoLabelCodes.angleCode = angleCode;
  }
  final String? angleName = jsonConvert.convert<String>(json['angleName']);
  if (angleName != null) {
    appCommentDataListContentInfoLabelCodes.angleName = angleName;
  }
  final AppCommentDataListContentInfoLabelCodesStarLabels? starLabels = jsonConvert
      .convert<AppCommentDataListContentInfoLabelCodesStarLabels>(
      json['starLabels']);
  if (starLabels != null) {
    appCommentDataListContentInfoLabelCodes.starLabels = starLabels;
  }
  return appCommentDataListContentInfoLabelCodes;
}

Map<String, dynamic> $AppCommentDataListContentInfoLabelCodesToJson(
    AppCommentDataListContentInfoLabelCodes entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['angleCode'] = entity.angleCode;
  data['angleName'] = entity.angleName;
  data['starLabels'] = entity.starLabels?.toJson();
  return data;
}

extension AppCommentDataListContentInfoLabelCodesExtension on AppCommentDataListContentInfoLabelCodes {
  AppCommentDataListContentInfoLabelCodes copyWith({
    String? angleCode,
    String? angleName,
    AppCommentDataListContentInfoLabelCodesStarLabels? starLabels,
  }) {
    return AppCommentDataListContentInfoLabelCodes()
      ..angleCode = angleCode ?? this.angleCode
      ..angleName = angleName ?? this.angleName
      ..starLabels = starLabels ?? this.starLabels;
  }
}

AppCommentDataListContentInfoLabelCodesStarLabels $AppCommentDataListContentInfoLabelCodesStarLabelsFromJson(
    Map<String, dynamic> json) {
  final AppCommentDataListContentInfoLabelCodesStarLabels appCommentDataListContentInfoLabelCodesStarLabels = AppCommentDataListContentInfoLabelCodesStarLabels();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    appCommentDataListContentInfoLabelCodesStarLabels.code = code;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    appCommentDataListContentInfoLabelCodesStarLabels.name = name;
  }
  final int? score = jsonConvert.convert<int>(json['score']);
  if (score != null) {
    appCommentDataListContentInfoLabelCodesStarLabels.score = score;
  }
  return appCommentDataListContentInfoLabelCodesStarLabels;
}

Map<String, dynamic> $AppCommentDataListContentInfoLabelCodesStarLabelsToJson(
    AppCommentDataListContentInfoLabelCodesStarLabels entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['name'] = entity.name;
  data['score'] = entity.score;
  return data;
}

extension AppCommentDataListContentInfoLabelCodesStarLabelsExtension on AppCommentDataListContentInfoLabelCodesStarLabels {
  AppCommentDataListContentInfoLabelCodesStarLabels copyWith({
    String? code,
    String? name,
    int? score,
  }) {
    return AppCommentDataListContentInfoLabelCodesStarLabels()
      ..code = code ?? this.code
      ..name = name ?? this.name
      ..score = score ?? this.score;
  }
}