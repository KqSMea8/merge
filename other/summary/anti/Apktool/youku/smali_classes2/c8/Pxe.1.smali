.class public Lc8/Pxe;
.super Ljava/lang/Object;
.source "LogReport.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x61a8

.field private static final PRIVATE_CODE:Ljava/lang/String; = "dqwef1864il4c9m6"

.field private static final SOCKET_TIMEOUT:I = 0x4e20

.field private static UPLOADTIME:Ljava/lang/String;

.field private static mAid:Ljava/lang/String;

.field private static mAppkey:Ljava/lang/String;

.field private static mBaseUrl:Ljava/lang/String;

.field private static mChannel:Ljava/lang/String;

.field private static mKeyHash:Ljava/lang/String;

.field public static mLogReport:Lc8/Pxe;

.field private static mPackageName:Ljava/lang/String;

.field private static mParams:Lorg/json/JSONObject;

.field private static mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "uploadtime"

    sput-object v0, Lc8/Pxe;->UPLOADTIME:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "https://api.weibo.com/2/proxy/sdk/statistic.json"

    sput-object v0, Lc8/Pxe;->mBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    :try_start_0
    sget-object v1, Lc8/Pxe;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Pxe;->mPackageName:Ljava/lang/String;

    .line 50
    :cond_0
    invoke-static {p1}, Lc8/Rxe;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Pxe;->mAppkey:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lc8/Pxe;->checkAid(Landroid/content/Context;)V

    .line 52
    sget-object v1, Lc8/Pxe;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lc8/Aye;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Pxe;->mKeyHash:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lc8/Nxe;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Pxe;->mVersionName:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lc8/Rxe;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Pxe;->mChannel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-static {}, Lc8/Pxe;->initCommonParams()Lorg/json/JSONObject;

    .line 59
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "WBAgent"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkAid(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-object v1, Lc8/Pxe;->mAid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lc8/Pxe;->mAppkey:Ljava/lang/String;

    invoke-static {p0, v1}, Lc8/Aye;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Pxe;->mAid:Ljava/lang/String;

    .line 87
    :cond_0
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    .line 91
    :cond_1
    :try_start_0
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "aid"

    sget-object v3, Lc8/Pxe;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lc8/Pxe;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static getSign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 8
    .param p0, "aid"    # Ljava/lang/String;
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "dqwef1864il4c9m6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/rye;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "oriData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "md5_key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/rye;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "md5_sign":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    sget-object v1, Lc8/Pxe;->UPLOADTIME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 315
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "lasttime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static gzipLogs(Ljava/lang/String;)[B
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 297
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 298
    :cond_0
    const/4 v4, 0x0

    .line 309
    :goto_0
    return-object v4

    .line 300
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 302
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string/jumbo v4, "utf-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 303
    .local v2, "logs":[B
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 304
    .local v1, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 305
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .end local v2    # "logs":[B
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static initCommonParams()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 65
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    .line 69
    :cond_0
    :try_start_0
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "appkey"

    sget-object v3, Lc8/Pxe;->mAppkey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "packagename"

    sget-object v3, Lc8/Pxe;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "key_hash"

    sget-object v3, Lc8/Pxe;->mKeyHash:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "version"

    sget-object v3, Lc8/Pxe;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "channel"

    sget-object v3, Lc8/Pxe;->mChannel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    :goto_0
    sget-object v1, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    return-object v1

    .line 75
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_0
    move-exception v0

    .line 77
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static requestHttpExecute(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Landroid/content/Context;)Z
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONObject;
    .param p3, "applog"    # Lorg/json/JSONArray;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    sget-object v8, Lc8/Pxe;->mAppkey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 172
    const-string/jumbo v8, "WBAgent"

    const-string/jumbo v9, "unexpected null AppKey"

    invoke-static {v8, v9}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v8, 0x0

    .line 228
    :cond_0
    :goto_0
    return v8

    .line 175
    :cond_1
    const/4 v2, 0x0

    .line 177
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    if-nez p2, :cond_2

    .line 178
    :try_start_0
    invoke-static {}, Lc8/Pxe;->initCommonParams()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 181
    :cond_2
    :try_start_1
    const-string/jumbo v8, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v8, "length"

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v8, "sign"

    const-string/jumbo v9, "aid"

    .line 184
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "appkey"

    .line 185
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "time"

    .line 186
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 184
    invoke-static {v9, v10, v12, v13}, Lc8/Pxe;->getSign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    .line 183
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v8, "content"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string/jumbo v8, "WBAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "post content--- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :goto_1
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "source="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lc8/Pxe;->mAppkey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    move-object/from16 v0, p4

    invoke-static {p0, v0}, Lc8/xxe;->createConnect(Ljava/lang/String;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 196
    .local v7, "httpURLConnection":Ljava/net/HttpURLConnection;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    invoke-static {}, Lc8/Rxe;->isNeedGizp()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 198
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/Pxe;->gzipLogs(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 202
    :goto_2
    invoke-static {v7}, Lc8/Pxe;->setPost(Ljava/net/HttpURLConnection;)V

    .line 203
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 204
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 205
    .local v5, "dataOutputStream":Ljava/io/DataOutputStream;
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/Pxe;->gzipLogs(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 206
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 207
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 208
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    .line 209
    .local v4, "code":I
    const/16 v8, 0xc8

    if-ne v4, v8, :cond_5

    .line 211
    const/4 v8, 0x1

    .line 220
    if-eqz v3, :cond_0

    .line 222
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 190
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "code":I
    .end local v5    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v7    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v6

    .line 191
    .local v6, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 215
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v6

    .line 216
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    :try_start_6
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 220
    if-eqz v2, :cond_3

    .line 222
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 228
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 200
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :cond_4
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 215
    :catch_3
    move-exception v6

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 213
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "code":I
    .restart local v5    # "dataOutputStream":Ljava/io/DataOutputStream;
    :cond_5
    const-string/jumbo v8, "WBAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "status code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/qye;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 220
    if-eqz v3, :cond_7

    .line 222
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move-object v2, v3

    .line 224
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v8

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 217
    .end local v4    # "code":I
    .end local v5    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v7    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :catch_5
    move-exception v6

    .line 218
    .local v6, "e":Ljava/io/IOException;
    :goto_5
    :try_start_a
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 220
    if-eqz v2, :cond_3

    .line 222
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_4

    .line 224
    :catch_6
    move-exception v8

    goto :goto_4

    .line 220
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v2, :cond_6

    .line 222
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 224
    :cond_6
    :goto_7
    throw v8

    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :catch_7
    move-exception v8

    goto :goto_4

    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_8
    move-exception v9

    goto :goto_7

    .line 220
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 217
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_9
    move-exception v6

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "code":I
    .restart local v5    # "dataOutputStream":Ljava/io/DataOutputStream;
    :cond_7
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p0, "mPackageName"    # Ljava/lang/String;

    .prologue
    .line 99
    sput-object p0, Lc8/Pxe;->mPackageName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private static setPost(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p0, "httpURLConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 235
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 238
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 240
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "Keep-Alive"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v0, "Charset"

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static updateTime(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/lang/Long;

    .prologue
    .line 319
    sget-object v2, Lc8/Pxe;->UPLOADTIME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 322
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 323
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "lasttime"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    return-void
.end method

.method public static declared-synchronized uploadAppLogs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "memoryLogs"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v6, Lc8/Pxe;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lc8/Pxe;->mLogReport:Lc8/Pxe;

    if-nez v5, :cond_0

    .line 114
    new-instance v5, Lc8/Pxe;

    invoke-direct {v5, p0}, Lc8/Pxe;-><init>(Landroid/content/Context;)V

    sput-object v5, Lc8/Pxe;->mLogReport:Lc8/Pxe;

    .line 117
    :cond_0
    invoke-static {p0}, Lc8/Cxe;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    const-string/jumbo v5, "WBAgent"

    const-string/jumbo v7, "network is not connected"

    invoke-static {v5, v7}, Lc8/qye;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v5, "app_logs"

    .line 121
    invoke-static {v5}, Lc8/Oxe;->getAppLogPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 120
    invoke-static {v5, p1, v7}, Lc8/Oxe;->writeToFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_1
    :goto_0
    monitor-exit v6

    return-void

    .line 126
    :cond_2
    :try_start_1
    invoke-static {p1}, Lc8/Nxe;->getValidUploadLogs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "applogs":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONArray;>;"
    if-nez v1, :cond_3

    .line 128
    const-string/jumbo v5, "WBAgent"

    const-string/jumbo v7, "applogs is null"

    invoke-static {v5, v7}, Lc8/qye;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    .end local v1    # "applogs":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONArray;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 132
    .restart local v1    # "applogs":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONArray;>;"
    :cond_3
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v3, "failed_logs":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONArray;>;"
    invoke-static {p0}, Lc8/Pxe;->checkAid(Landroid/content/Context;)V

    .line 135
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 137
    .local v0, "applog":Lorg/json/JSONArray;
    sget-object v7, Lc8/Pxe;->mBaseUrl:Ljava/lang/String;

    const-string/jumbo v8, "POST"

    sget-object v9, Lc8/Pxe;->mParams:Lorg/json/JSONObject;

    invoke-static {v7, v8, v9, v0, p0}, Lc8/Pxe;->requestHttpExecute(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Landroid/content/Context;)Z

    move-result v4

    .line 138
    .local v4, "successUpdate":Z
    if-nez v4, :cond_4

    .line 139
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string/jumbo v7, "WBAgent"

    const-string/jumbo v8, "upload applogs error"

    invoke-static {v7, v8}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p0, v7}, Lc8/Pxe;->updateTime(Landroid/content/Context;Ljava/lang/Long;)V

    goto :goto_1

    .line 146
    .end local v0    # "applog":Lorg/json/JSONArray;
    .end local v4    # "successUpdate":Z
    :cond_5
    const-string/jumbo v5, "app_logs"

    .line 147
    invoke-static {v5}, Lc8/Oxe;->getAppLogPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-static {v5}, Lc8/Oxe;->delete(Ljava/lang/String;)Z

    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 150
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 151
    .local v2, "failed_log":Lorg/json/JSONArray;
    const-string/jumbo v7, "app_logs"

    .line 152
    invoke-static {v7}, Lc8/Oxe;->getAppLogPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 151
    invoke-static {v7, v8, v9}, Lc8/Oxe;->writeToFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    const-string/jumbo v7, "WBAgent"

    const-string/jumbo v8, "save failed_log"

    invoke-static {v7, v8}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
