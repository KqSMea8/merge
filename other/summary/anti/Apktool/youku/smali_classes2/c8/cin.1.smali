.class public Lc8/cin;
.super Ljava/lang/Object;
.source "PushUtils.java"


# static fields
.field static final ACTION_APP_NOTIFICATION_SETTINGS:Ljava/lang/String; = "android.settings.APP_NOTIFICATION_SETTINGS"

.field private static final DEFAULT_OWNER:Ljava/lang/String; = "com.youku.phone"

.field static final EXTRA_APP_PACKAGE:Ljava/lang/String; = "app_package"

.field static final EXTRA_APP_UID:Ljava/lang/String; = "app_uid"

.field private static final NOTIFY_DETECT_DAYS:I = 0xf

.field public static final NOTIFY_DETECT_SWITCH:Ljava/lang/String; = "notify_detect_switch"

.field private static final NOTIFY_DETECT_TIME:Ljava/lang/String; = "notify_detect_time"

.field private static final PushEventID:I = 0x2ef5

.field private static final PushEventType:Ljava/lang/String; = "push"

.field private static final TAG:Ljava/lang/String; = "YKPush.PushUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastNotifyDetectTime()J
    .locals 4

    .prologue
    .line 185
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v2

    const-string/jumbo v3, "notify_detect_time"

    invoke-virtual {v2, v3}, Lc8/Gin;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 186
    .local v0, "lastTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v2

    const-string/jumbo v3, "notify_detect_time"

    invoke-virtual {v2, v3, v0, v1}, Lc8/Gin;->savePreference(Ljava/lang/String;J)V

    .line 190
    :cond_0
    return-wide v0
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 260
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static getUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 172
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 174
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_0
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static launchAppSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 163
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 165
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public static launchNotificationSettings(Landroid/content/Context;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 141
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v2}, Lc8/cin;->getUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "appUid":I
    const-string/jumbo v3, "app_package"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v3, "app_uid"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 146
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .end local v0    # "appUid":I
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {p0, v2}, Lc8/cin;->launchAppSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {p0, v2}, Lc8/cin;->launchAppSettings(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string/jumbo v0, "com.youku.phone"

    invoke-static {p0, p1, p2, v0}, Lc8/cin;->notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p2, p3}, Lc8/cin;->postActiveFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 55
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 56
    return-void
.end method

.method public static postActiveFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "unionname"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "youku"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo p2, "com.youku.phone"

    .line 88
    :cond_1
    new-instance v1, Lc8/bJj;

    invoke-direct {v1}, Lc8/bJj;-><init>()V

    .line 89
    invoke-static {p0, p1, p2}, Lc8/Uhn;->getPushFeedbackForOpenURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    const-string/jumbo v2, "GET"

    .line 90
    invoke-virtual {v1, v2}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v0

    .line 92
    .local v0, "ykNetwork":Lc8/cJj;
    new-instance v1, Lc8/Zhn;

    invoke-direct {v1}, Lc8/Zhn;-><init>()V

    invoke-virtual {v0, v1}, Lc8/cJj;->asyncCall(Lc8/OIj;)V

    .line 98
    return-void
.end method

.method public static postCancelFeedback(Ljava/lang/String;)V
    .locals 3
    .param p0, "mid"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v1, Lc8/bJj;

    invoke-direct {v1}, Lc8/bJj;-><init>()V

    .line 121
    invoke-static {p0}, Lc8/Uhn;->getPushFeedbackForCancel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    const-string/jumbo v2, "GET"

    .line 122
    invoke-virtual {v1, v2}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v0

    .line 124
    .local v0, "ykNetwork":Lc8/cJj;
    new-instance v1, Lc8/bin;

    invoke-direct {v1}, Lc8/bin;-><init>()V

    invoke-virtual {v0, v1}, Lc8/cJj;->asyncCall(Lc8/OIj;)V

    .line 130
    return-void
.end method

.method public static postMIFeedback(Ljava/lang/String;)V
    .locals 6
    .param p0, "miPayload"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v1, Lc8/bJj;

    invoke-direct {v1}, Lc8/bJj;-><init>()V

    const-string/jumbo v2, "xmospush"

    const-string/jumbo v3, "XIAOMI_SYS"

    const-string/jumbo v4, "xiaomi"

    .line 108
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v2, v3, v4, v5}, Lc8/Uhn;->getPushFeedbackForMI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    const-string/jumbo v2, "GET"

    .line 109
    invoke-virtual {v1, v2}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v0

    .line 111
    .local v0, "ykNetwork":Lc8/cJj;
    new-instance v1, Lc8/ain;

    invoke-direct {v1}, Lc8/ain;-><init>()V

    invoke-virtual {v0, v1}, Lc8/cJj;->asyncCall(Lc8/OIj;)V

    .line 117
    return-void
.end method

.method public static postReceiveFeedback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "unionname"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "youku"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo p1, "com.youku.phone"

    .line 66
    :cond_1
    new-instance v1, Lc8/bJj;

    invoke-direct {v1}, Lc8/bJj;-><init>()V

    .line 67
    invoke-static {p0, p1}, Lc8/Uhn;->getPushFeedbackForReceiveURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    const-string/jumbo v2, "GET"

    .line 68
    invoke-virtual {v1, v2}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v0

    .line 70
    .local v0, "ykNetwork":Lc8/cJj;
    new-instance v1, Lc8/Yhn;

    invoke-direct {v1}, Lc8/Yhn;-><init>()V

    invoke-virtual {v0, v1}, Lc8/cJj;->asyncCall(Lc8/OIj;)V

    .line 76
    return-void
.end method

.method public static sendPushArriveUTFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "unionname"    # Ljava/lang/String;
    .param p3, "newMsg"    # Z

    .prologue
    .line 220
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v5, "aHitMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "push"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "pusharrive"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "type"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    const-string/jumbo v0, "mid"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unionname"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_1
    const-string/jumbo v1, "step"

    if-eqz p3, :cond_3

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v0, "token"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/NHg;->deviceid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string/jumbo v0, "pushType"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_2
    const-string/jumbo v0, ""

    const/16 v1, 0x2ef5

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    return-void

    .line 226
    :cond_3
    const-string/jumbo v0, "2"

    goto :goto_0
.end method

.method public static sendPushCancelUTFeedback(Ljava/lang/String;)V
    .locals 6
    .param p0, "mid"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v5, "aHitMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "push"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "pushcancel"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v0, "mid"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v0, "token"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/NHg;->deviceid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "pushType"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    const-string/jumbo v0, ""

    const/16 v1, 0x2ef5

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 256
    return-void
.end method

.method public static sendPushClickUTFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "unionname"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "payload_type"    # I
    .param p5, "mipayload"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v5, "aHitMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "push"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "pushclick"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "type"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    const-string/jumbo v0, "mid"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unionname"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_1
    const-string/jumbo v0, "action"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v0, "payload_type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "mipayload"

    invoke-virtual {v5, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_2
    const-string/jumbo v0, "token"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/NHg;->deviceid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const-string/jumbo v0, "pushType"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_3
    const-string/jumbo v0, ""

    const/16 v1, 0x2ef5

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 246
    return-void
.end method

.method public static setLastNotifyDetectTime()V
    .locals 4

    .prologue
    .line 194
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v0

    const-string/jumbo v1, "notify_detect_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lc8/Gin;->savePreference(Ljava/lang/String;J)V

    .line 195
    return-void
.end method

.method public static shouldShowNotifyDialog(Landroid/content/Context;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 198
    const-wide/32 v2, 0x4d3f6400

    .line 199
    .local v2, "threshold":J
    invoke-static {}, Lc8/cin;->getLastNotifyDetectTime()J

    move-result-wide v0

    .line 200
    .local v0, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 201
    invoke-static {}, Lc8/cin;->setLastNotifyDetectTime()V

    .line 202
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 203
    invoke-static {p0}, Lc8/din;->showNotiSettingDialog(Landroid/content/Context;)V

    .line 204
    const/4 v4, 0x1

    .line 207
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
