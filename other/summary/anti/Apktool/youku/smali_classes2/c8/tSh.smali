.class public Lc8/tSh;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sSh;
    }
.end annotation


# static fields
.field private static CACHEDATA_SIZE:I = 0x0

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final NEWSECRET:Ljava/lang/String; = "631l1i1x3fv5vs2dxlj5v8x81jqfs2om"

.field public static TIMESTAMP:J

.field public static final URLCacheDataPath:Ljava/lang/String;

.field static volatile configWatched:Z

.field private static volatile currentProcessName:Ljava/lang/String;

.field private static final defaultWhiteHost:[Ljava/lang/String;

.field public static e:Landroid/content/SharedPreferences$Editor;

.field public static s:Landroid/content/SharedPreferences;

.field private static whiteHosts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/youku/cacheData/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/tSh;->URLCacheDataPath:Ljava/lang/String;

    .line 43
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "statis.api.3g.youku.com"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "api.mobile.youku.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "openapi.youku.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "statis.mobile.youku.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "count.atm.youku.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "v2html.atm.youku.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "account.youku.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "v.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "c.yes.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "www.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "iku.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "myes.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "iyes.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "valf.atm.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "cm.miaozhen.atm.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "tip.soku.com"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "pcclient.relay.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "ups.youku.com"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "huodong.m.taobao.com"

    aput-object v2, v0, v1

    .line 64
    sput-object v0, Lc8/tSh;->defaultWhiteHost:[Ljava/lang/String;

    sput-object v0, Lc8/tSh;->whiteHosts:[Ljava/lang/String;

    .line 66
    sput v3, Lc8/tSh;->CACHEDATA_SIZE:I

    .line 71
    sput-boolean v3, Lc8/tSh;->configWatched:Z

    .line 91
    const-string/jumbo v0, "line.separator"

    .line 92
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/tSh;->LINE_SEPARATOR:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method

.method public static URLDecoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 456
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 457
    :cond_0
    const-string/jumbo p0, ""

    .line 465
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 459
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0

    .line 463
    :catch_1
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method static synthetic access$002([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 36
    sput-object p0, Lc8/tSh;->whiteHosts:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lc8/tSh;->defaultWhiteHost:[Ljava/lang/String;

    return-object v0
.end method

.method public static canUseNetworkSDK(Ljava/lang/String;)Z
    .locals 6
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 255
    :cond_1
    sget-object v3, Lc8/tSh;->whiteHosts:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 256
    .local v0, "w":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 255
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static controlUrlCacheFilesSize(Ljava/io/File;Ljava/io/File;)V
    .locals 14
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 324
    if-nez p0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 326
    .local v1, "cacheFiles":[Ljava/io/File;
    sget v6, Lc8/tSh;->CACHEDATA_SIZE:I

    if-nez v6, :cond_4

    .line 327
    if-eqz v1, :cond_0

    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, "dirSize":I
    array-length v8, v1

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v0, v1, v6

    .line 332
    .local v0, "cacheFile":Ljava/io/File;
    int-to-long v10, v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v2, v10

    .line 331
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_2
    sput v2, Lc8/tSh;->CACHEDATA_SIZE:I

    .line 341
    .end local v2    # "dirSize":I
    :cond_3
    :goto_2
    sget v6, Lc8/tSh;->CACHEDATA_SIZE:I

    const/high16 v8, 0xa00000

    if-lt v6, v8, :cond_0

    .line 342
    const-wide v8, 0x3fd999999999999aL    # 0.4

    array-length v6, v1

    int-to-double v10, v6

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    double-to-int v5, v8

    .line 343
    .local v5, "removeFactor":I
    const-string/jumbo v6, "java.util.Arrays.useLegacyMergeSort"

    const-string/jumbo v8, "true"

    invoke-static {v6, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    :try_start_0
    new-instance v6, Lc8/sSh;

    invoke-direct {v6}, Lc8/sSh;-><init>()V

    invoke-static {v1, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v5, :cond_5

    .line 350
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 336
    .end local v4    # "i":I
    .end local v5    # "removeFactor":I
    :cond_4
    if-eqz p1, :cond_3

    .line 337
    sget v6, Lc8/tSh;->CACHEDATA_SIZE:I

    int-to-long v8, v6

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v6, v8

    sput v6, Lc8/tSh;->CACHEDATA_SIZE:I

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cacheData after add file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v8, Lc8/tSh;->CACHEDATA_SIZE:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 346
    .restart local v5    # "removeFactor":I
    :catch_0
    move-exception v3

    .line 347
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "HttpCommunication.Utils"

    const-string/jumbo v8, "NetworkUtils"

    invoke-static {v6, v8, v3}, Lc8/nSh;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 352
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    :cond_5
    sput v7, Lc8/tSh;->CACHEDATA_SIZE:I

    .line 353
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lc8/tSh;->controlUrlCacheFilesSize(Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 148
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 149
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    sget-object v3, Lc8/tSh;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 159
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 163
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 159
    .restart local v0    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v3

    goto :goto_1

    .line 158
    .end local v0    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 159
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 161
    :goto_2
    throw v3

    .line 162
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public static disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lc8/tSh;->hasHttpConnectionBug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    :cond_0
    return-void
.end method

.method public static fetchWhiteListConfigs()V
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lc8/tSh;->configWatched:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lc8/tSh;->configWatched:Z

    .line 75
    new-instance v0, Lc8/qSh;

    invoke-direct {v0}, Lc8/qSh;-><init>()V

    .line 88
    invoke-virtual {v0}, Lc8/qSh;->start()V

    goto :goto_0
.end method

.method public static formatURL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isSetCookie"    # Z

    .prologue
    const/4 v5, -0x1

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, "urlStr":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "_t_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "i":I
    if-eq v0, v5, :cond_0

    .line 175
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, "j":I
    if-eq v1, v5, :cond_7

    .line 176
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 183
    .end local v1    # "j":I
    :cond_0
    :goto_0
    const-string/jumbo v3, "_s_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 185
    if-eq v0, v5, :cond_1

    .line 186
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "j":I
    if-eq v1, v5, :cond_8

    .line 187
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 193
    .end local v1    # "j":I
    :cond_1
    :goto_1
    const-string/jumbo v3, "ver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    if-eq v0, v5, :cond_2

    .line 196
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "j":I
    if-eq v1, v5, :cond_9

    .line 197
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 203
    .end local v1    # "j":I
    :cond_2
    :goto_2
    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 205
    if-eq v0, v5, :cond_3

    .line 206
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "j":I
    if-eq v1, v5, :cond_a

    .line 207
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 212
    .end local v1    # "j":I
    :cond_3
    :goto_3
    const-string/jumbo v3, "operator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 214
    if-eq v0, v5, :cond_4

    .line 215
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "j":I
    if-eq v1, v5, :cond_b

    .line 216
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 221
    .end local v1    # "j":I
    :cond_4
    :goto_4
    if-eqz p1, :cond_5

    .line 223
    const-string/jumbo v3, "cookie"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/tSh;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_5
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 227
    if-eq v0, v5, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_6

    .line 228
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 230
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/tSh;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 178
    .restart local v1    # "j":I
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 189
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 199
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 209
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 218
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    sget-object v8, Lc8/tSh;->currentProcessName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 489
    sget-object v8, Lc8/tSh;->currentProcessName:Ljava/lang/String;

    .line 526
    :goto_0
    return-object v8

    .line 490
    :cond_0
    const-class v9, Lc8/tSh;

    monitor-enter v9

    .line 491
    :try_start_0
    sget-object v8, Lc8/tSh;->currentProcessName:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 492
    sget-object v8, Lc8/tSh;->currentProcessName:Ljava/lang/String;

    monitor-exit v9

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 493
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 494
    .local v6, "pid":I
    const/4 v3, 0x0

    .line 496
    .local v3, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 498
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v4, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v7, "processName":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .local v2, "c":I
    if-lez v2, :cond_4

    .line 500
    int-to-char v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 504
    .end local v2    # "c":I
    .end local v7    # "processName":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 505
    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 508
    if-eqz v3, :cond_2

    .line 509
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 516
    :cond_2
    :goto_3
    :try_start_6
    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 517
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 518
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v10, v6, :cond_3

    .line 519
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 520
    sput-object v8, Lc8/tSh;->currentProcessName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 502
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "c":I
    .restart local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v7    # "processName":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 503
    sput-object v8, Lc8/tSh;->currentProcessName:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 508
    if-eqz v4, :cond_5

    .line 509
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 513
    :cond_5
    :goto_4
    :try_start_a
    monitor-exit v9

    goto/16 :goto_0

    .line 511
    :catch_1
    move-exception v5

    .line 512
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 511
    .end local v2    # "c":I
    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v7    # "processName":Ljava/lang/StringBuilder;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    .line 512
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 507
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 508
    :goto_5
    if-eqz v3, :cond_6

    .line 509
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 513
    :cond_6
    :goto_6
    :try_start_c
    throw v8

    .line 511
    :catch_3
    move-exception v5

    .line 512
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 523
    :catch_4
    move-exception v5

    .line 524
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    :cond_7
    const/4 v8, 0x0

    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 507
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 504
    :catch_5
    move-exception v5

    goto :goto_2
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 389
    sget-object v0, Lc8/tSh;->s:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 405
    sget-object v0, Lc8/tSh;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 550
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    :cond_0
    const-string/jumbo p0, ""

    .line 559
    :goto_0
    return-object p0

    .line 553
    :cond_1
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 556
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasHttpConnectionBug()Z
    .locals 2

    .prologue
    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasInternet()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 123
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 124
    .local v2, "m":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 129
    .local v1, "info":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 131
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 133
    const/4 v3, 0x1

    goto :goto_0

    .line 130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 536
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    if-eqz v1, :cond_0

    .line 537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 538
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 539
    const/4 v2, 0x0

    .line 545
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return v2

    .line 537
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isMainProcess()Z
    .locals 2

    .prologue
    .line 478
    sget-object v0, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/tSh;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 479
    sput-object v0, Lc8/tSh;->currentProcessName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x0

    .line 481
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc8/tSh;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isMainThread()Z
    .locals 2

    .prologue
    .line 469
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-static {p0}, Lc8/tSh;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSearchUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 452
    const-string/jumbo v0, "/search/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    :try_start_0
    const-string/jumbo v5, "MD5"

    .line 236
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 237
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 238
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 240
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 242
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 249
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :goto_2
    return-object v5

    :catch_0
    move-exception v5

    const-string/jumbo v5, ""

    goto :goto_2
.end method

.method public static readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "#readUrlCacheFromLocal():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lc8/tSh;->URLCacheDataPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 268
    const-string/jumbo v5, ""

    .line 279
    :goto_0
    return-object v5

    .line 270
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v6, "utf-8"

    invoke-direct {v2, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 271
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 274
    .local v3, "read":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 276
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 279
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 361
    sget-object v0, Lc8/tSh;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    return-void
.end method

.method public static saveUrlCacheToLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v0, Lc8/rSh;

    invoke-direct {v0, p0, p1}, Lc8/rSh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Lc8/rSh;->start()V

    .line 307
    return-void
.end method

.method public static saveUrlCacheToLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "eTag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 313
    if-eqz p2, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#saveUrlCacheToLocal():as: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "   which eTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    invoke-static {p0, p1}, Lc8/tSh;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p0, p2}, Lc8/tSh;->saveUrlCacheToLocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method public static updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 428
    const/4 v10, 0x7

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 429
    .local v5, "relativePath":Ljava/lang/String;
    const-string/jumbo v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "?"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 430
    invoke-static {p0}, Lc8/tSh;->isSearchUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 431
    const-string/jumbo v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "key":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const-string/jumbo v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Lc8/tSh;->URLDecoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 434
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    sget-wide v12, Lc8/tSh;->TIMESTAMP:J

    add-long v8, v10, v12

    .line 435
    .local v8, "tmp":J
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 436
    .local v6, "timeStamp":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "631l1i1x3fv5vs2dxlj5v8x81jqfs2om"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, "numRaw":Ljava/lang/String;
    invoke-static {v4}, Lc8/tSh;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "md5NumRaw":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .local v7, "urlStr":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "_t_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 440
    .local v0, "i":I
    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 441
    .local v1, "j":I
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v7, v0, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 442
    const-string/jumbo v10, "_s_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 443
    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 444
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v7, v0, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 445
    const-string/jumbo v10, "&_t_="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string/jumbo v10, "&_s_="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 448
    return-object p0
.end method
