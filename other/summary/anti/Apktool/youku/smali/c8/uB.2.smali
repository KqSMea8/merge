.class public Lc8/uB;
.super Ljava/lang/Object;
.source "WVFileInfoParser.java"


# static fields
.field public static final DEFAULT_MAX_AGE:J = 0x9a7ec800L

.field public static final FILE_INFO_MIN_LEN:I = 0x3c

.field public static final S_MAX_AGE:J = 0x493e0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileInfo(Ljava/lang/String;)Lc8/tB;
    .locals 7
    .param p0, "infoStr"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x3c

    const/16 v5, 0x7e

    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    const/16 v4, 0x1b

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_1

    :cond_0
    move-object v1, v3

    .line 69
    :goto_0
    return-object v1

    .line 41
    :cond_1
    new-instance v1, Lc8/tB;

    invoke-direct {v1}, Lc8/tB;-><init>()V

    .line 42
    .local v1, "fileInfo":Lc8/tB;
    const-string/jumbo v4, "~"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "infoStrArray":[Ljava/lang/String;
    const/4 v4, 0x7

    array-length v5, v2

    if-eq v4, v5, :cond_2

    move-object v1, v3

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lc8/tB;->expireTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lc8/tB;->lastModified:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    const/4 v3, 0x2

    aget-object v3, v2, v3

    iput-object v3, v1, Lc8/tB;->fileName:Ljava/lang/String;

    .line 62
    const/4 v3, 0x3

    aget-object v3, v2, v3

    iput-object v3, v1, Lc8/tB;->sha256ToHex:Ljava/lang/String;

    .line 64
    const/4 v3, 0x4

    aget-object v3, v2, v3

    iput-object v3, v1, Lc8/tB;->mimeType:Ljava/lang/String;

    .line 66
    const/4 v3, 0x5

    aget-object v3, v2, v3

    iput-object v3, v1, Lc8/tB;->etag:Ljava/lang/String;

    .line 68
    const/4 v3, 0x6

    aget-object v3, v2, v3

    iput-object v3, v1, Lc8/tB;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-object v1, v3

    .line 50
    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 56
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-object v1, v3

    .line 57
    goto :goto_0
.end method

.method public static getFileInfo([BII)Lc8/tB;
    .locals 3
    .param p0, "info"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 27
    .local v1, "infoStr":Ljava/lang/String;
    invoke-static {v1}, Lc8/uB;->getFileInfo(Ljava/lang/String;)Lc8/tB;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 30
    .end local v1    # "infoStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 30
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static refreshFileInfo(Lc8/tB;Ljava/nio/channels/FileChannel;)V
    .locals 10
    .param p0, "fileInfo"    # Lc8/tB;
    .param p1, "fInfoChannel"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 132
    .local v4, "time":J
    invoke-virtual {p0}, Lc8/tB;->composeFileInfoStr()[B

    move-result-object v2

    .line 133
    .local v2, "infoByte":[B
    if-nez v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 136
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    :try_start_0
    iget-wide v6, p0, Lc8/tB;->pos:J

    invoke-virtual {p1, v0, v6, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const-string/jumbo v3, "FileInfoParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshFileInfo time cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "FileInfoParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshFileInfo: write error. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static updateFileInfo(ILc8/tB;Ljava/nio/channels/FileChannel;)Lc8/tB;
    .locals 12
    .param p0, "operation"    # I
    .param p1, "fileInfo"    # Lc8/tB;
    .param p2, "fChannel"    # Ljava/nio/channels/FileChannel;

    .prologue
    const-wide/32 v10, 0x493e0

    const-wide/16 v8, 0x0

    .line 83
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string/jumbo v1, "FileInfoParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFileInfo filename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lc8/tB;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "operation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 121
    :goto_0
    return-object p1

    .line 88
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 89
    .local v4, "now":J
    iget-wide v2, p1, Lc8/tB;->expireTime:J

    .line 90
    .local v2, "expire":J
    cmp-long v1, v2, v8

    if-nez v1, :cond_1

    .line 91
    add-long v6, v4, v10

    iput-wide v6, p1, Lc8/tB;->expireTime:J

    .line 94
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    iput-wide v6, p1, Lc8/tB;->pos:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    invoke-static {p1, p2}, Lc8/uB;->refreshFileInfo(Lc8/tB;Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "FileInfoParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFileInfo setPos error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lc8/tB;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". fChannel.size():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "expire":J
    .end local v4    # "now":J
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 103
    .restart local v4    # "now":J
    iget-wide v2, p1, Lc8/tB;->expireTime:J

    .line 104
    .restart local v2    # "expire":J
    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    .line 105
    add-long v6, v4, v10

    iput-wide v6, p1, Lc8/tB;->expireTime:J

    .line 107
    :cond_2
    invoke-static {p1, p2}, Lc8/uB;->refreshFileInfo(Lc8/tB;Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 111
    .end local v2    # "expire":J
    .end local v4    # "now":J
    :pswitch_2
    invoke-static {p1, p2}, Lc8/uB;->refreshFileInfo(Lc8/tB;Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 115
    :pswitch_3
    const/4 v1, 0x0

    iput-boolean v1, p1, Lc8/tB;->valid:Z

    .line 116
    invoke-static {p1, p2}, Lc8/uB;->refreshFileInfo(Lc8/tB;Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
