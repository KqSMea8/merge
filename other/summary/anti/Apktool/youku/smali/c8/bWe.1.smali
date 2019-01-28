.class public Lc8/bWe;
.super Ljava/lang/Object;
.source "AppsResponse.java"


# static fields
.field private static final GET_APPLIST_URL:Ljava/lang/String; = "https://audid-api.taobao.com/v2.0/a/audid/apps?version="

.field private static final TAG_APPS:Ljava/lang/String; = "apps"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final mInstance:Lc8/bWe;


# instance fields
.field private bCollectFinished:Z

.field public mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lc8/bWe;

    invoke-direct {v0}, Lc8/bWe;-><init>()V

    sput-object v0, Lc8/bWe;->mInstance:Lc8/bWe;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lc8/bWe;->mVersion:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lc8/bWe;->bCollectFinished:Z

    .line 45
    return-void
.end method

.method private getDeviceAppList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v5

    invoke-virtual {v5}, Lc8/oVe;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 177
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 180
    .local v3, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 181
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 183
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 186
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v5

    .line 191
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lc8/bWe;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lc8/bWe;->mInstance:Lc8/bWe;

    return-object v0
.end method

.method private unGzip([B)Ljava/lang/String;
    .locals 12
    .param p1, "gzipedData"    # [B

    .prologue
    .line 195
    const/4 v9, 0x0

    .line 196
    .local v9, "originData":[B
    const/4 v0, 0x0

    .line 197
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 198
    .local v6, "gis":Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 200
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .local v7, "gis":Ljava/util/zip/GZIPInputStream;
    const/16 v10, 0x400

    :try_start_2
    new-array v4, v10, [B

    .line 204
    .local v4, "buf":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 205
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/4 v10, 0x0

    :try_start_3
    array-length v11, v4

    invoke-virtual {v7, v4, v10, v11}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v8

    .local v8, "num":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 206
    const/4 v10, 0x0

    invoke-virtual {v3, v4, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 211
    .end local v8    # "num":I
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 212
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "buf":[B
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    if-eqz v2, :cond_0

    .line 216
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 221
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 223
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 228
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 230
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 236
    :cond_2
    :goto_4
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    return-object v10

    .line 208
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "num":I
    :cond_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 209
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v9

    .line 214
    if-eqz v3, :cond_4

    .line 216
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 221
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 223
    :try_start_a
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 228
    :cond_5
    :goto_6
    if-eqz v1, :cond_9

    .line 230
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 233
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 217
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_1
    move-exception v5

    .line 218
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 224
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 225
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 231
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 232
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 233
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 217
    .end local v4    # "buf":[B
    .end local v8    # "num":I
    .local v5, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 218
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 224
    :catch_5
    move-exception v5

    .line 225
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 231
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 232
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 214
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v2, :cond_6

    .line 216
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 221
    :cond_6
    :goto_8
    if-eqz v6, :cond_7

    .line 223
    :try_start_d
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 228
    :cond_7
    :goto_9
    if-eqz v0, :cond_8

    .line 230
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 233
    :cond_8
    :goto_a
    throw v10

    .line 217
    :catch_7
    move-exception v5

    .line 218
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 224
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v5

    .line 225
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 231
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 232
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 214
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v10

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 211
    .end local v4    # "buf":[B
    :catch_a
    move-exception v5

    goto/16 :goto_1

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_b
    move-exception v5

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_c
    move-exception v5

    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "num":I
    :cond_9
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4
.end method


# virtual methods
.method public declared-synchronized getAppsList()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 142
    monitor-enter p0

    :try_start_0
    iget v8, p0, Lc8/bWe;->mVersion:I

    if-gtz v8, :cond_0

    .line 143
    const-string/jumbo v7, "00000000"

    .line 169
    .local v7, "result":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 170
    const/4 v8, 0x1

    iput-boolean v8, p0, Lc8/bWe;->bCollectFinished:Z

    .line 171
    const-string/jumbo v8, ""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-object v7

    .line 145
    .end local v7    # "result":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x4

    .line 146
    .local v5, "len":I
    const/4 v2, 0x0

    .line 147
    .local v2, "appListLen":I
    :try_start_1
    iget-object v8, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 148
    iget-object v8, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 149
    add-int/lit8 v8, v2, -0x1

    div-int/lit8 v8, v8, 0x8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v8

    .line 151
    :cond_1
    new-array v0, v5, [B

    .line 152
    .local v0, "appBytes":[B
    const/4 v8, 0x0

    iget v9, p0, Lc8/bWe;->mVersion:I

    ushr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 153
    const/4 v8, 0x1

    iget v9, p0, Lc8/bWe;->mVersion:I

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 154
    const/4 v8, 0x2

    iget v9, p0, Lc8/bWe;->mVersion:I

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 155
    const/4 v8, 0x3

    iget v9, p0, Lc8/bWe;->mVersion:I

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 156
    if-lez v2, :cond_3

    .line 157
    invoke-direct {p0}, Lc8/bWe;->getDeviceAppList()Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v8, ""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 160
    iget-object v8, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 161
    rem-int/lit8 v8, v4, 0x8

    rsub-int/lit8 v6, v8, 0x7

    .line 162
    .local v6, "n":I
    shl-int v8, v11, v6

    int-to-byte v3, v8

    .line 163
    .local v3, "b":B
    div-int/lit8 v8, v4, 0x8

    add-int/lit8 v8, v8, 0x4

    aget-byte v9, v0, v8

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 159
    .end local v3    # "b":B
    .end local v6    # "n":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :cond_3
    invoke-static {v0}, Lc8/kWe;->toHex([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .restart local v7    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 142
    .end local v0    # "appBytes":[B
    .end local v2    # "appListLen":I
    .end local v5    # "len":I
    .end local v7    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized parseAppFile()V
    .locals 10

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lc8/bWe;->bCollectFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    iput v6, p0, Lc8/bWe;->mVersion:I

    .line 109
    iget-object v6, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 111
    invoke-static {}, Lc8/gWe;->readAppsFile()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 117
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "dataJson":Lorg/json/JSONObject;
    const-string/jumbo v6, "version"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    const-string/jumbo v6, "version"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lc8/bWe;->mVersion:I

    .line 120
    const-string/jumbo v6, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lc8/bWe;->mVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    const-string/jumbo v6, "apps"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    const-string/jumbo v6, "apps"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "apps":Ljava/lang/String;
    const-string/jumbo v6, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 125
    const/4 v6, 0x2

    invoke-static {v0, v6}, Lc8/FWe;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-static {v6}, Lc8/sWe;->rc4([B)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lc8/bWe;->unGzip([B)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "decodeApps":Ljava/lang/String;
    const-string/jumbo v6, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 128
    .local v4, "decodeAppsJson":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 129
    iget-object v6, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 131
    :cond_2
    const-string/jumbo v6, ""

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "size"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "applist"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lc8/bWe;->mAppList:Ljava/util/ArrayList;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 138
    .end local v0    # "apps":Ljava/lang/String;
    .end local v2    # "dataJson":Lorg/json/JSONObject;
    .end local v3    # "decodeApps":Ljava/lang/String;
    .end local v4    # "decodeAppsJson":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 105
    .end local v1    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method parseAppResult(Ljava/lang/String;)V
    .locals 13
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 70
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    const-string/jumbo v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    .local v1, "dataJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 74
    const-string/jumbo v7, "version"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    const-string/jumbo v7, "version"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 76
    .local v6, "version":I
    const-string/jumbo v7, ""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    if-gez v6, :cond_1

    .line 78
    const-string/jumbo v7, ""

    invoke-static {v7}, Lc8/gWe;->writeAppsFile(Ljava/lang/String;)V

    .line 102
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v6    # "version":I
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v1    # "dataJson":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v6    # "version":I
    :cond_1
    const-string/jumbo v7, "apps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    const-string/jumbo v7, "apps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "apps":Ljava/lang/String;
    const-string/jumbo v7, ""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 85
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "version"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v7, "apps"

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 89
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/gWe;->writeAppsFile(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lc8/bWe;->parseAppFile()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "apps":Ljava/lang/String;
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "version":I
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v7, ""

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v11

    invoke-static {v7, v8}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "apps":Ljava/lang/String;
    .restart local v1    # "dataJson":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v6    # "version":I
    :cond_2
    :try_start_1
    const-string/jumbo v7, ""

    invoke-static {v7}, Lc8/gWe;->writeAppsFile(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public requestAppList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 52
    invoke-virtual {p0}, Lc8/bWe;->parseAppFile()V

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "https://audid-api.taobao.com/v2.0/a/audid/apps?version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/bWe;->mVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, ""

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const-string/jumbo v5, ""

    invoke-static {v4, v5, v7}, Lc8/eWe;->sendRequest(Ljava/lang/String;Ljava/lang/String;Z)Lc8/dWe;

    move-result-object v1

    .line 56
    .local v1, "response":Lc8/dWe;
    const-string/jumbo v2, ""

    .line 58
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v5, v1, Lc8/dWe;->data:[B

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    move-object v2, v3

    .line 62
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :goto_0
    iget-object v5, v1, Lc8/dWe;->signature:Ljava/lang/String;

    invoke-static {v2, v5}, Lc8/dWe;->checkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lc8/bWe;->parseAppResult(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
