.class public Lc8/zxf;
.super Ljava/lang/Object;
.source "DefaultFileLoader.java"

# interfaces
.implements Lc8/Axf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnailPath(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "isVideo"    # Z

    .prologue
    .line 87
    const-wide/16 v12, -0x1

    .line 89
    .local v12, "mediaID":J
    if-eqz p4, :cond_4

    .line 90
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 94
    .local v3, "contentUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 95
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const-string/jumbo v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 103
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 104
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const-string/jumbo v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v12, v4

    .line 107
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1
    const/4 v11, 0x0

    .line 111
    .local v11, "ret":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_3

    .line 113
    if-eqz p4, :cond_5

    .line 114
    const-string/jumbo v14, "_data"

    .line 115
    .local v14, "thumbnailsCol":Ljava/lang/String;
    sget-object v5, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v14, v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "video_id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "kind"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 126
    :goto_1
    if-eqz v10, :cond_3

    .line 127
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 130
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 133
    .end local v14    # "thumbnailsCol":Ljava/lang/String;
    :cond_3
    return-object v11

    .line 92
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "ret":Ljava/lang/String;
    :cond_4
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v3    # "contentUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 123
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "ret":Ljava/lang/String;
    :cond_5
    const-string/jumbo v14, "_data"

    .line 124
    .restart local v14    # "thumbnailsCol":Ljava/lang/String;
    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-static {v2, v12, v13, v0, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1
.end method

.method public load(Lc8/Mxf;Ljava/lang/String;Ljava/util/Map;)Lc8/exf;
    .locals 12
    .param p1, "schemeInfo"    # Lc8/Mxf;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mxf;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/exf;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/res/Resources$NotFoundException;,
            Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;
        }
    .end annotation

    .prologue
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 27
    iget v5, p1, Lc8/Mxf;->type:I

    .line 31
    .local v5, "schemeType":I
    sparse-switch v5, :sswitch_data_0

    .line 82
    new-instance v8, Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;

    invoke-direct {v8, v5}, Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;-><init>(I)V

    throw v8

    .line 33
    :sswitch_0
    iget-object v6, p1, Lc8/Mxf;->path:Ljava/lang/String;

    .line 34
    .local v6, "targetPath":Ljava/lang/String;
    iget v8, p1, Lc8/Mxf;->thumbnailType:I

    if-eq v8, v11, :cond_0

    iget v8, p1, Lc8/Mxf;->thumbnailType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 36
    :cond_0
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v8

    invoke-virtual {v8}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 37
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Phenix.with(Context) hasn\'t been called before FileLoader(thumbnail) loading"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 39
    :cond_1
    iget v8, p1, Lc8/Mxf;->thumbnailType:I

    invoke-virtual {p0, v0, v6, v8, v10}, Lc8/zxf;->getThumbnailPath(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 41
    .local v7, "thumbPath":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 42
    iget v8, p1, Lc8/Mxf;->thumbnailType:I

    invoke-virtual {p0, v0, v6, v8, v11}, Lc8/zxf;->getThumbnailPath(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 45
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 46
    move-object v6, v7

    .line 53
    .end local v0    # "context":Landroid/content/Context;
    .end local v7    # "thumbPath":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "file":Ljava/io/File;
    new-instance v8, Lc8/exf;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-direct {v8, v9, v10}, Lc8/exf;-><init>(Ljava/io/InputStream;I)V

    .line 77
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "targetPath":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 47
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v6    # "targetPath":Ljava/lang/String;
    .restart local v7    # "thumbPath":Ljava/lang/String;
    :cond_4
    iget-boolean v8, p1, Lc8/Mxf;->useOriginIfThumbNotExist:Z

    if-eqz v8, :cond_5

    .line 48
    iget-object v6, p1, Lc8/Mxf;->path:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_5
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Retrieved thumbnail(type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lc8/Mxf;->thumbnailType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") failed from local path"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 56
    .end local v0    # "context":Landroid/content/Context;
    .end local v6    # "targetPath":Ljava/lang/String;
    .end local v7    # "thumbPath":Ljava/lang/String;
    :sswitch_1
    iget-object v8, p1, Lc8/Mxf;->base64:Ljava/lang/String;

    invoke-static {v8, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 57
    .local v1, "data":[B
    new-instance v8, Lc8/exf;

    array-length v9, v1

    invoke-direct {v8, v1, v10, v9}, Lc8/exf;-><init>([BII)V

    goto :goto_1

    .line 59
    .end local v1    # "data":[B
    :sswitch_2
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v8

    invoke-virtual {v8}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    if-nez v0, :cond_6

    .line 60
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Phenix.with(Context) hasn\'t been called before FileLoader(resource) loading"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 62
    :cond_6
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 63
    .local v4, "resourceValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p1, Lc8/Mxf;->resId:I

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    .line 64
    .local v3, "is":Ljava/io/InputStream;
    new-instance v8, Lc8/exf;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-direct {v8, v3, v9, v4}, Lc8/exf;-><init>(Ljava/io/InputStream;ILandroid/util/TypedValue;)V

    goto :goto_1

    .line 66
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "resourceValue":Landroid/util/TypedValue;
    :sswitch_3
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v8

    invoke-virtual {v8}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    if-nez v0, :cond_7

    .line 67
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Phenix.with(Context) hasn\'t been called before FileLoader(asset) loading"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 69
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    iget-object v9, p1, Lc8/Mxf;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 70
    .restart local v3    # "is":Ljava/io/InputStream;
    new-instance v8, Lc8/exf;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-direct {v8, v3, v9}, Lc8/exf;-><init>(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    .line 77
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "is":Ljava/io/InputStream;
    :sswitch_4
    :try_start_0
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v8

    invoke-virtual {v8}, Lc8/ixf;->getExtendedSchemeHandlers()Ljava/util/List;

    move-result-object v8

    iget v9, p1, Lc8/Mxf;->handleIndex:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/xxf;

    invoke-interface {v8, p2}, Lc8/xxf;->handleScheme(Ljava/lang/String;)Lc8/exf;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_1

    .line 79
    :catch_0
    move-exception v8

    new-instance v8, Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;

    invoke-direct {v8, v5}, Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;-><init>(I)V

    throw v8

    .line 31
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_3
        0x24 -> :sswitch_2
        0x28 -> :sswitch_1
        0x30 -> :sswitch_4
    .end sparse-switch
.end method
