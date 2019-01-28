.class public Lc8/WIj;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/VIj;
    }
.end annotation


# static fields
.field private static CACHEDATA_SIZE:I

.field public static final URLCacheDataPath:Ljava/lang/String;

.field private static final whiteHosts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
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

    sput-object v0, Lc8/WIj;->URLCacheDataPath:Ljava/lang/String;

    .line 26
    const/16 v0, 0x11

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

    sput-object v0, Lc8/WIj;->whiteHosts:[Ljava/lang/String;

    .line 194
    sput v3, Lc8/WIj;->CACHEDATA_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method public static canUseNetworkSDK(Ljava/lang/String;)Z
    .locals 6
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    sget-object v3, Lc8/WIj;->whiteHosts:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 255
    .local v0, "w":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 254
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

    .line 204
    if-nez p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 206
    .local v1, "cacheFiles":[Ljava/io/File;
    sget v6, Lc8/WIj;->CACHEDATA_SIZE:I

    if-nez v6, :cond_4

    .line 207
    if-eqz v1, :cond_0

    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, "dirSize":I
    array-length v8, v1

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v0, v1, v6

    .line 212
    .local v0, "cacheFile":Ljava/io/File;
    int-to-long v10, v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v2, v10

    .line 211
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 214
    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_2
    sput v2, Lc8/WIj;->CACHEDATA_SIZE:I

    .line 221
    .end local v2    # "dirSize":I
    :cond_3
    :goto_2
    sget v6, Lc8/WIj;->CACHEDATA_SIZE:I

    const/high16 v8, 0xa00000

    if-lt v6, v8, :cond_0

    .line 222
    const-wide v8, 0x3fd999999999999aL    # 0.4

    array-length v6, v1

    int-to-double v10, v6

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    double-to-int v5, v8

    .line 223
    .local v5, "removeFactor":I
    const-string/jumbo v6, "java.util.Arrays.useLegacyMergeSort"

    const-string/jumbo v8, "true"

    invoke-static {v6, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    :try_start_0
    new-instance v6, Lc8/VIj;

    invoke-direct {v6}, Lc8/VIj;-><init>()V

    invoke-static {v1, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v5, :cond_5

    .line 230
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 216
    .end local v4    # "i":I
    .end local v5    # "removeFactor":I
    :cond_4
    if-eqz p1, :cond_3

    .line 217
    sget v6, Lc8/WIj;->CACHEDATA_SIZE:I

    int-to-long v8, v6

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v6, v8

    sput v6, Lc8/WIj;->CACHEDATA_SIZE:I

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cacheData after add file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v8, Lc8/WIj;->CACHEDATA_SIZE:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 226
    .restart local v5    # "removeFactor":I
    :catch_0
    move-exception v3

    .line 227
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "NetworkUtils"

    const-string/jumbo v8, "NetworkUtils"

    invoke-static {v6, v8, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 232
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    :cond_5
    sput v7, Lc8/WIj;->CACHEDATA_SIZE:I

    .line 233
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lc8/WIj;->controlUrlCacheFilesSize(Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_0
.end method
