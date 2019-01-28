.class public Lc8/zKd;
.super Ljava/lang/Object;
.source "PlatformMessageSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yKd;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlatformMessageSender"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object v2

    .line 243
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "localIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 246
    .local v1, "localList":Ljava/util/List;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 247
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static launchStartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pushMessage"    # Ljava/lang/String;
    .param p3, "platformExtra"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p3}, Lc8/FLd;->buildPlatformMessage(Ljava/lang/String;)Lc8/uHd;

    move-result-object v9

    .line 203
    .local v9, "platformMessage":Lc8/uHd;
    invoke-virtual {v9}, Lc8/uHd;->getPushTimesTamp()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v9}, Lc8/uHd;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v9}, Lc8/uHd;->getTaskId()Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-virtual {v9}, Lc8/uHd;->getSeqId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p1

    move-object v6, p2

    .line 202
    invoke-static/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v8

    .line 208
    .local v8, "messageV3":Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v10, "serviceClickIntent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "custom://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    const-string/jumbo v0, "pushMessage"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v0, "method"

    const-string/jumbo v1, "private"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string/jumbo v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {v10, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string/jumbo v0, "com.meizu.cloud.pushsdk.NotificationService"

    invoke-virtual {v10, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_0
    const-string/jumbo v0, "command_type"

    const-string/jumbo v1, "reflect_receiver"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v0, "PlatformMessageSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start notification service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :try_start_0
    invoke-virtual {p0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "PlatformMessageSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchStartActivity error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendMessageFromBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramIntent"    # Landroid/content/Intent;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :cond_1
    invoke-static {p0, p2, p3}, Lc8/zKd;->findReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method private static sendPlatformStatus(Landroid/content/Context;Ljava/lang/String;Lc8/yKd;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "onUpdateIntent"    # Lc8/yKd;

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v1, "method"

    invoke-interface {p2}, Lc8/yKd;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-interface {p2}, Lc8/yKd;->getBasicStatusExtra()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lc8/yKd;->getBasicStatus()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 151
    const-string/jumbo v1, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-static {p0, v0, v1, p1}, Lc8/zKd;->sendMessageFromBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.meizu.cloud.pushservice.action.PUSH_SERVICE_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1}, Lc8/zKd;->sendMessageFromBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static sendPushStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pushSwitchStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    .prologue
    .line 35
    new-instance v0, Lc8/tKd;

    invoke-direct {v0, p2}, Lc8/tKd;-><init>(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    invoke-static {p0, p1, v0}, Lc8/zKd;->sendPlatformStatus(Landroid/content/Context;Ljava/lang/String;Lc8/yKd;)V

    .line 51
    return-void
.end method

.method public static sendRegisterStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "registerStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    .prologue
    .line 61
    new-instance v0, Lc8/uKd;

    invoke-direct {v0, p2}, Lc8/uKd;-><init>(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V

    invoke-static {p0, p1, v0}, Lc8/zKd;->sendPlatformStatus(Landroid/content/Context;Ljava/lang/String;Lc8/yKd;)V

    .line 77
    return-void
.end method

.method public static sendSubAlias(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "subAliasStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    .prologue
    .line 121
    new-instance v0, Lc8/xKd;

    invoke-direct {v0, p2}, Lc8/xKd;-><init>(Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V

    invoke-static {p0, p1, v0}, Lc8/zKd;->sendPlatformStatus(Landroid/content/Context;Ljava/lang/String;Lc8/yKd;)V

    .line 137
    return-void
.end method

.method public static sendSubTags(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "subTagsStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    .prologue
    .line 102
    new-instance v0, Lc8/wKd;

    invoke-direct {v0, p2}, Lc8/wKd;-><init>(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V

    invoke-static {p0, p1, v0}, Lc8/zKd;->sendPlatformStatus(Landroid/content/Context;Ljava/lang/String;Lc8/yKd;)V

    .line 118
    return-void
.end method

.method public static sendUnRegisterStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "unRegisterStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    .prologue
    .line 83
    new-instance v0, Lc8/vKd;

    invoke-direct {v0, p2}, Lc8/vKd;-><init>(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V

    invoke-static {p0, p1, v0}, Lc8/zKd;->sendPlatformStatus(Landroid/content/Context;Ljava/lang/String;Lc8/yKd;)V

    .line 99
    return-void
.end method
