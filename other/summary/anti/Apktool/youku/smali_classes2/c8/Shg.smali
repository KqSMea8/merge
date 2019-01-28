.class public Lc8/Shg;
.super Lc8/Jhg;
.source "ProGuard"


# static fields
.field public static final PUBLISH_TO_QZONE_APP_NAME:Ljava/lang/String; = "appName"

.field public static final PUBLISH_TO_QZONE_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final PUBLISH_TO_QZONE_KEY_TYPE:Ljava/lang/String; = "req_type"

.field public static final PUBLISH_TO_QZONE_SUMMARY:Ljava/lang/String; = "summary"

.field public static final PUBLISH_TO_QZONE_TYPE_PUBLISHMOOD:I = 0x3

.field public static final PUBLISH_TO_QZONE_TYPE_PUBLISHVIDEO:I = 0x4

.field public static final PUBLISH_TO_QZONE_VIDEO_DURATION:Ljava/lang/String; = "videoDuration"

.field public static final PUBLISH_TO_QZONE_VIDEO_PATH:Ljava/lang/String; = "videoPath"

.field public static final PUBLISH_TO_QZONE_VIDEO_SIZE:Ljava/lang/String; = "videoSize"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/thg;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lc8/Jhg;-><init>(Lc8/thg;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lc8/Shg;Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lc8/Shg;->b(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 18

    .prologue
    .line 181
    const-string/jumbo v2, "openSDK_LOG.QzonePublish"

    const-string/jumbo v3, "doPublishToQzone() --start"

    invoke-static {v2, v3}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "mqqapi://qzone/publish?src_type=app&version=1&file_type=news"

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v2, "imageUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 185
    const-string/jumbo v2, "summary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 186
    const-string/jumbo v2, "req_type"

    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 187
    const-string/jumbo v2, "appName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 188
    const-string/jumbo v2, "videoPath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 189
    const-string/jumbo v2, "videoDuration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 190
    const-string/jumbo v2, "videoSize"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v2}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v14

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v2}, Lc8/thg;->getOpenId()Ljava/lang/String;

    move-result-object v15

    .line 195
    const-string/jumbo v2, "openSDK_LOG.QzonePublish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v2, ""

    .line 197
    const/4 v3, 0x3

    if-ne v3, v8, :cond_2

    if-eqz v6, :cond_2

    .line 198
    const-string/jumbo v3, "7"

    .line 199
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 201
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    .line 202
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    add-int/lit8 v2, v17, -0x1

    if-eq v4, v2, :cond_0

    .line 204
    const-string/jumbo v2, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 207
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&image_url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/umg;->i(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, v3

    .line 210
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v8, :cond_3

    .line 211
    const-string/jumbo v2, "8"

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&videoPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Lc8/umg;->i(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&videoDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/umg;->i(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&videoSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/umg;->i(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    move-object v13, v2

    .line 217
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Lc8/umg;->i(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&share_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&app_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lc8/umg;->i(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_6
    invoke-static {v15}, Lc8/umg;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&open_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Lc8/umg;->i(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "&req_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/umg;->i(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string/jumbo v2, "openSDK_LOG.QzonePublish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doPublishToQzone, url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Shg;->b:Lc8/thg;

    const-string/jumbo v4, "requireApi"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "shareToNativeQQ"

    aput-object v8, v6, v7

    invoke-static {v2, v3, v4, v6}, Lc8/ihg;->a(Landroid/content/Context;Lc8/thg;Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v3, "pkg_name"

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lc8/Shg;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 249
    const/16 v3, 0x2778

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v2, v4}, Lc8/Shg;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    .line 250
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "SHARE_CHECK_SDK"

    const-string/jumbo v5, "1000"

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v6}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string/jumbo v11, "hasActivityForIntent success"

    invoke-virtual/range {v2 .. v11}, Lc8/Dlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 252
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v3}, Lc8/thg;->getOpenId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v4}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ANDROIDQQ.SHARETOQZ.XX"

    const-string/jumbo v6, "11"

    const-string/jumbo v7, "3"

    const-string/jumbo v8, "1"

    const-string/jumbo v10, "0"

    const-string/jumbo v11, "1"

    const-string/jumbo v12, "0"

    move-object v9, v13

    invoke-virtual/range {v2 .. v12}, Lc8/Dlg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_1
    const-string/jumbo v2, "openSDK_LOG"

    const-string/jumbo v3, "doPublishToQzone() --end"

    invoke-static {v2, v3}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void

    .line 257
    :cond_8
    const-string/jumbo v2, "openSDK_LOG.QzonePublish"

    const-string/jumbo v3, "doPublishToQzone() target activity not found"

    invoke-static {v2, v3}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "SHARE_CHECK_SDK"

    const-string/jumbo v5, "1000"

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v6}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string/jumbo v11, "hasActivityForIntent fail"

    invoke-virtual/range {v2 .. v11}, Lc8/Dlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 260
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v3}, Lc8/thg;->getOpenId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v4}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ANDROIDQQ.SHARETOQZ.XX"

    const-string/jumbo v6, "11"

    const-string/jumbo v7, "3"

    const-string/jumbo v8, "1"

    const-string/jumbo v10, "0"

    const-string/jumbo v11, "1"

    const-string/jumbo v12, "0"

    move-object v9, v13

    invoke-virtual/range {v2 .. v12}, Lc8/Dlg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 11

    .prologue
    const/4 v8, -0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 59
    const-string/jumbo v0, "openSDK_LOG.QzonePublish"

    const-string/jumbo v2, "publishToQzone() -- start"

    invoke-static {v0, v2}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-nez p2, :cond_0

    .line 62
    new-instance v0, Lc8/Fmg;

    const/4 v2, -0x6

    const-string/jumbo v3, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-direct {v0, v2, v3, v10}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    .line 64
    const-string/jumbo v0, "openSDK_LOG.QzonePublish"

    const-string/jumbo v2, "-->publishToQzone, params is null"

    invoke-static {v0, v2}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v0

    const-string/jumbo v2, "SHARE_CHECK_SDK"

    const-string/jumbo v3, "1000"

    iget-object v4, p0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v4}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v9, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    move v8, v1

    invoke-virtual/range {v0 .. v9}, Lc8/Dlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string/jumbo v0, "5.9.5"

    invoke-static {p1, v0}, Lc8/omg;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 72
    new-instance v0, Lc8/Fmg;

    const/16 v2, -0xf

    const-string/jumbo v3, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u6700\u65b0\u7248\u624bQ"

    invoke-direct {v0, v2, v3, v10}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    .line 73
    const-string/jumbo v0, "openSDK_LOG.QzonePublish"

    const-string/jumbo v2, "-->publishToQzone, this is not support below qq 5.9.5"

    invoke-static {v0, v2}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v0

    const-string/jumbo v2, "SHARE_CHECK_SDK"

    const-string/jumbo v3, "1000"

    iget-object v4, p0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v4}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v9, "publicToQzone, this is not support below qq 5.9.5"

    move v8, v1

    invoke-virtual/range {v0 .. v9}, Lc8/Dlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 78
    new-instance v0, Lc8/jlg;

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lc8/Shg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lc8/Shg;->b:Lc8/thg;

    move-object v1, p1

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lc8/jlg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;Lc8/thg;)V

    invoke-virtual {v0}, Lc8/jlg;->show()V

    goto :goto_0

    .line 82
    :cond_1
    const-string/jumbo v0, "summary"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 86
    invoke-static {p1}, Lc8/umg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-nez v0, :cond_5

    .line 89
    const-string/jumbo v0, "appName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 97
    const-string/jumbo v4, "appName"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_3
    const-string/jumbo v0, "summary"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "req_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 106
    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 108
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 109
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 110
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-static {v0}, Lc8/umg;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 91
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_2

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x14

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_6
    const-string/jumbo v0, "imageUrl"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 119
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lc8/Shg;->b(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 120
    const-string/jumbo v0, "openSDK_LOG.QzonePublish"

    const-string/jumbo v1, "publishToQzone() --end"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_8
    if-ne v0, v6, :cond_a

    .line 123
    const-string/jumbo v0, "videoPath"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Lc8/umg;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 125
    const-string/jumbo v0, "openSDK_LOG.QzonePublish"

    const-string/jumbo v1, "publishToQzone() video url invalid"

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lc8/Fmg;

    const-string/jumbo v1, "\u8bf7\u9009\u62e9\u6709\u6548\u7684\u89c6\u9891\u6587\u4ef6"

    invoke-direct {v0, v8, v1, v10}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    goto/16 :goto_0

    .line 131
    :cond_9
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 132
    new-instance v0, Lc8/Qhg;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/Qhg;-><init>(Lc8/Shg;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lc8/Dmg;)V

    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 147
    new-instance v0, Lc8/Rhg;

    invoke-direct {v0, p0, p3}, Lc8/Rhg;-><init>(Lc8/Shg;Lc8/Dmg;)V

    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 158
    :try_start_0
    invoke-virtual {v6, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 161
    :catch_0
    move-exception v0

    const-string/jumbo v0, "openSDK_LOG.QzonePublish"

    const-string/jumbo v1, "publishToQzone() exception(s) occurred when preparing mediaplayer"

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lc8/Fmg;

    const-string/jumbo v1, "\u8bf7\u9009\u62e9\u6709\u6548\u7684\u89c6\u9891\u6587\u4ef6"

    invoke-direct {v0, v8, v1, v10}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    goto/16 :goto_0

    .line 167
    :cond_a
    new-instance v0, Lc8/Fmg;

    const-string/jumbo v2, "\u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    invoke-direct {v0, v8, v2, v10}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    .line 169
    const-string/jumbo v0, "openSDK_LOG.QzonePublish"

    const-string/jumbo v2, "publishToQzone() error--end\u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    invoke-static {v0, v2}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v0

    const-string/jumbo v2, "SHARE_CHECK_SDK"

    const-string/jumbo v3, "1000"

    iget-object v4, p0, Lc8/Shg;->b:Lc8/thg;

    invoke-virtual {v4}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v9, "publishToQzone() \u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    move v8, v1

    invoke-virtual/range {v0 .. v9}, Lc8/Dlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0
.end method
