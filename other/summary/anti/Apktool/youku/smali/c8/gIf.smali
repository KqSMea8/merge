.class public Lc8/gIf;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# static fields
.field private static BUFFER_SIZE:I = 0x0

.field private static FILE_SIZE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "TLog.LogFileManager"

.field private static final WRITELOG:I = 0x1


# instance fields
.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mFile:Ljava/io/File;

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const v0, 0xc800

    sput v0, Lc8/gIf;->BUFFER_SIZE:I

    .line 28
    const-wide/16 v0, -0x1

    sput-wide v0, Lc8/gIf;->FILE_SIZE:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lc8/gIf;->mFileName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lc8/gIf;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/gIf;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lc8/gIf;->write(Ljava/lang/String;)V

    return-void
.end method

.method private createFile(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 159
    const/4 v2, 0x1

    .line 160
    .local v2, "result":Z
    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 162
    .local v1, "parentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    and-int/2addr v2, v4

    .line 165
    :cond_0
    if-eqz v2, :cond_2

    .line 167
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    and-int/2addr v2, v4

    .line 168
    const-string/jumbo v4, "tlog_monitor_module"

    const-string/jumbo v5, "file_create_successed"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lc8/FHf;->fileCreatSuccessMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 180
    .end local v1    # "parentFile":Ljava/io/File;
    :cond_1
    :goto_0
    return v3

    .line 170
    .restart local v1    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "tlog_monitor_module"

    const-string/jumbo v5, "file_create_failed"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lc8/FHf;->fileCreateFailedMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const-string/jumbo v3, "tlog_monitor_module"

    const-string/jumbo v4, "file_create_failed"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Directory create failed"

    invoke-static {v3, v4, v5, v6}, Lc8/FHf;->fileCreateFailedMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 177
    goto :goto_0
.end method

.method private setFileHeader(Ljava/nio/channels/FileChannel;)V
    .locals 8
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;

    .prologue
    .line 480
    invoke-static {}, Lc8/IHf;->createFileHeader()[B

    move-result-object v1

    .line 482
    .local v1, "header":[B
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 483
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 484
    .local v2, "result":I
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 485
    const-string/jumbo v3, "tlog_monitor_module"

    const-string/jumbo v4, "write_failed"

    const-string/jumbo v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "header = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lc8/FHf;->writeFailedMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 487
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 495
    .end local v2    # "result":I
    :goto_0
    return-void

    .line 489
    .restart local v2    # "result":I
    :cond_0
    const-string/jumbo v3, "tlog_monitor_module"

    const-string/jumbo v4, "write_sucessed"

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Lc8/FHf;->writeSuccessMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLogFileSize(J)V
    .locals 0
    .param p0, "size"    # J

    .prologue
    .line 44
    sput-wide p0, Lc8/gIf;->FILE_SIZE:J

    .line 45
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 13
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 197
    .local v0, "contentBytes":[B
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 199
    iget-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    array-length v11, v0

    add-int/2addr v10, v11

    sget v11, Lc8/gIf;->BUFFER_SIZE:I

    if-gt v10, v11, :cond_1

    .line 200
    const-wide/16 v8, 0x0

    .line 202
    .local v8, "position":J
    :try_start_0
    iget-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    int-to-long v8, v10

    .line 203
    iget-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "contentBytes":[B
    .end local v8    # "position":J
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v0    # "contentBytes":[B
    .restart local v8    # "position":J
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/nio/BufferOverflowException;
    invoke-virtual {v1}, Ljava/nio/BufferOverflowException;->printStackTrace()V

    .line 206
    const-string/jumbo v10, "TLog.LogFileManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "position is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "  and contentBytes.length is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v1    # "e":Ljava/nio/BufferOverflowException;
    .end local v8    # "position":J
    :cond_1
    iget-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    new-array v4, v10, [B

    .line 210
    .local v4, "input":[B
    iget-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    iget-object v11, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-static {v10, v12, v4, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v10

    invoke-interface {v10, v4}, Lc8/tHf;->ecrypted([B)[B

    move-result-object v2

    .line 212
    .local v2, "ecryptedResult":[B
    if-eqz v2, :cond_5

    .line 213
    array-length v10, v2

    invoke-static {v10}, Lc8/IHf;->intToByteArray(I)[B

    move-result-object v6

    .line 214
    .local v6, "length":[B
    array-length v10, v6

    array-length v11, v2

    add-int/2addr v10, v11

    new-array v7, v10, [B

    .line 215
    .local v7, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v6

    if-ge v3, v10, :cond_2

    .line 216
    aget-byte v10, v6, v3

    aput-byte v10, v7, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 219
    :cond_2
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v10, v2

    if-ge v5, v10, :cond_3

    .line 220
    array-length v10, v6

    add-int/2addr v10, v5

    aget-byte v11, v2, v5

    aput-byte v11, v7, v10

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 224
    :cond_3
    invoke-direct {p0, v7}, Lc8/gIf;->write([B)V

    .line 229
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "length":[B
    .end local v7    # "result":[B
    :cond_4
    :goto_3
    iget-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 230
    iget-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    array-length v11, v0

    add-int/2addr v10, v11

    sget v11, Lc8/gIf;->BUFFER_SIZE:I

    if-gt v10, v11, :cond_6

    .line 232
    :try_start_1
    iget-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 235
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 226
    :cond_5
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 227
    const-string/jumbo v10, "TLog.LogFileManager"

    const-string/jumbo v11, "\u65e5\u5fd7\u52a0\u5bc6\u5931\u8d25"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 237
    :cond_6
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v10

    invoke-interface {v10, v0}, Lc8/tHf;->ecrypted([B)[B

    move-result-object v2

    .line 238
    if-eqz v2, :cond_9

    .line 239
    array-length v10, v2

    invoke-static {v10}, Lc8/IHf;->intToByteArray(I)[B

    move-result-object v6

    .line 240
    .restart local v6    # "length":[B
    array-length v10, v6

    array-length v11, v2

    add-int/2addr v10, v11

    new-array v7, v10, [B

    .line 241
    .restart local v7    # "result":[B
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    array-length v10, v6

    if-ge v3, v10, :cond_7

    .line 242
    aget-byte v10, v6, v3

    aput-byte v10, v7, v3

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 245
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_5
    array-length v10, v2

    if-ge v5, v10, :cond_8

    .line 246
    array-length v10, v6

    add-int/2addr v10, v5

    aget-byte v11, v2, v5

    aput-byte v11, v7, v10

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 250
    :cond_8
    invoke-direct {p0, v7}, Lc8/gIf;->write([B)V

    goto/16 :goto_0

    .line 252
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "length":[B
    .end local v7    # "result":[B
    :cond_9
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 253
    const-string/jumbo v10, "TLog.LogFileManager"

    const-string/jumbo v11, "\u65e5\u5fd7\u52a0\u5bc6\u5931\u8d25"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private write([B)V
    .locals 21
    .param p1, "data"    # [B

    .prologue
    .line 262
    if-nez p1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/EHf;->getStrategy()Lcom/taobao/tao/log/TLogFileSaveStrategy;

    move-result-object v16

    sget-object v17, Lcom/taobao/tao/log/TLogFileSaveStrategy;->ONEFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 267
    .local v14, "timestamp":J
    invoke-static {}, Lc8/EHf;->getDeadlineTime()J

    move-result-wide v16

    cmp-long v16, v16, v14

    if-gez v16, :cond_2

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->close()V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lc8/IHf;->getPrefixName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "name":Ljava/lang/String;
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lc8/IHf;->getAbsoluteFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 275
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/gIf;->mFile:Ljava/io/File;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_2

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lc8/gIf;->createFile(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 278
    invoke-static {v7}, Lc8/IHf;->checkFile(Ljava/lang/String;)V

    .line 279
    new-instance v16, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v17, v0

    const-string/jumbo v18, "rwd"

    invoke-direct/range {v16 .. v18}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lc8/gIf;->setFileHeader(Ljava/nio/channels/FileChannel;)V

    .line 282
    invoke-static {}, Lc8/IHf;->getTimesnight()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lc8/EHf;->setDeadlineTime(J)V

    .line 289
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v14    # "timestamp":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    sget-wide v18, Lc8/gIf;->FILE_SIZE:J

    cmp-long v16, v16, v18

    if-ltz v16, :cond_8

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->close()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    .line 292
    invoke-static {}, Lc8/EHf;->getStrategy()Lcom/taobao/tao/log/TLogFileSaveStrategy;

    move-result-object v16

    sget-object v17, Lcom/taobao/tao/log/TLogFileSaveStrategy;->ONEFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 297
    .restart local v5    # "fileName":Ljava/lang/String;
    invoke-static {v5}, Lc8/IHf;->getPrefixName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "prefixName":Ljava/lang/String;
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lc8/IHf;->getAbsoluteFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, "newFileName":Ljava/lang/String;
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 300
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Create new File and the new file name is : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 303
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/gIf;->mFile:Ljava/io/File;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lc8/gIf;->createFile(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 305
    invoke-static {v9}, Lc8/IHf;->checkFile(Ljava/lang/String;)V

    .line 306
    new-instance v16, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v17, v0

    const-string/jumbo v18, "rwd"

    invoke-direct/range {v16 .. v18}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lc8/gIf;->setFileHeader(Ljava/nio/channels/FileChannel;)V

    .line 315
    invoke-static {}, Lc8/EHf;->getStrategy()Lcom/taobao/tao/log/TLogFileSaveStrategy;

    move-result-object v16

    sget-object v17, Lcom/taobao/tao/log/TLogFileSaveStrategy;->MOREFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 317
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 318
    .local v12, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 319
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 321
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "tlog_current_file_name"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lc8/IHf;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "key":Ljava/lang/String;
    .end local v12    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_5
    move-object/from16 v0, p1

    array-length v2, v0

    .line 327
    .local v2, "dataLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    .line 328
    .local v10, "preFilePosition":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 329
    .local v13, "writeLength":I
    if-eq v2, v13, :cond_7

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 332
    if-eq v13, v2, :cond_6

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 334
    const-string/jumbo v16, "tlog_monitor_module"

    const-string/jumbo v17, "write_failed"

    const-string/jumbo v18, "1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "dataLength = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "  writeLength = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v16 .. v19}, Lc8/FHf;->writeFailedMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 370
    .end local v2    # "dataLength":I
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v8    # "newFileName":Ljava/lang/String;
    .end local v9    # "prefixName":Ljava/lang/String;
    .end local v10    # "preFilePosition":J
    .end local v13    # "writeLength":I
    :catch_0
    move-exception v3

    .line 371
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v16, "tlog_monitor_module"

    const-string/jumbo v17, "write_failed"

    const-string/jumbo v18, "2"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v16 .. v19}, Lc8/FHf;->writeFailedMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 336
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "dataLength":I
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v8    # "newFileName":Ljava/lang/String;
    .restart local v9    # "prefixName":Ljava/lang/String;
    .restart local v10    # "preFilePosition":J
    .restart local v13    # "writeLength":I
    :cond_6
    :try_start_1
    const-string/jumbo v16, "tlog_monitor_module"

    const-string/jumbo v17, "write_sucessed"

    const-string/jumbo v18, ""

    invoke-static/range {v16 .. v18}, Lc8/FHf;->writeSuccessMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    :cond_7
    const-string/jumbo v16, "tlog_monitor_module"

    const-string/jumbo v17, "write_sucessed"

    const-string/jumbo v18, ""

    invoke-static/range {v16 .. v18}, Lc8/FHf;->writeSuccessMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    .end local v2    # "dataLength":I
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v8    # "newFileName":Ljava/lang/String;
    .end local v9    # "prefixName":Ljava/lang/String;
    .end local v10    # "preFilePosition":J
    .end local v13    # "writeLength":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v16

    if-nez v16, :cond_9

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 344
    .restart local v5    # "fileName":Ljava/lang/String;
    invoke-static {v5}, Lc8/IHf;->getPrefixName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 345
    .restart local v9    # "prefixName":Ljava/lang/String;
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lc8/IHf;->getAbsoluteFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    .restart local v8    # "newFileName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 347
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/gIf;->mFile:Ljava/io/File;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lc8/gIf;->createFile(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 349
    invoke-static {v9}, Lc8/IHf;->checkFile(Ljava/lang/String;)V

    .line 350
    new-instance v16, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFile:Ljava/io/File;

    move-object/from16 v17, v0

    const-string/jumbo v18, "rwd"

    invoke-direct/range {v16 .. v18}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lc8/gIf;->setFileHeader(Ljava/nio/channels/FileChannel;)V

    .line 360
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v8    # "newFileName":Ljava/lang/String;
    .end local v9    # "prefixName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    array-length v2, v0

    .line 361
    .restart local v2    # "dataLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    .line 362
    .restart local v10    # "preFilePosition":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 363
    .restart local v13    # "writeLength":I
    if-eq v2, v13, :cond_a

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 365
    const-string/jumbo v16, "tlog_monitor_module"

    const-string/jumbo v17, "write_failed"

    const-string/jumbo v18, "1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "dataLength = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "  writeLength = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v16 .. v19}, Lc8/FHf;->writeFailedMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    :cond_a
    const-string/jumbo v16, "tlog_monitor_module"

    const-string/jumbo v17, "write_sucessed"

    const-string/jumbo v18, ""

    invoke-static/range {v16 .. v18}, Lc8/FHf;->writeSuccessMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 427
    :try_start_0
    iget-object v0, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lc8/gIf;->flushBuffer()Z

    .line 429
    iget-object v0, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 431
    :cond_0
    iget-object v0, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 380
    :try_start_0
    iget-object v2, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 383
    :cond_0
    iget-object v2, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 386
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 390
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public flushBuffer()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 396
    :try_start_0
    iget-object v6, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v6, :cond_2

    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 397
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "flushBuffer and the length of bytebuffer is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    :cond_0
    iget-object v6, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-lez v6, :cond_2

    .line 399
    iget-object v6, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    new-array v1, v6, [B

    .line 400
    .local v1, "input":[B
    iget-object v6, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-static {v6, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v6

    invoke-interface {v6, v1}, Lc8/tHf;->ecrypted([B)[B

    move-result-object v3

    .line 402
    .local v3, "result":[B
    if-eqz v3, :cond_1

    .line 403
    array-length v6, v3

    invoke-static {v6}, Lc8/IHf;->intToByteArray(I)[B

    move-result-object v2

    .line 404
    .local v2, "length":[B
    iget-object v6, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 405
    iget-object v6, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 406
    iget-object v6, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 407
    iget-object v6, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 420
    .end local v1    # "input":[B
    .end local v2    # "length":[B
    .end local v3    # "result":[B
    :goto_0
    return v4

    .line 410
    .restart local v1    # "input":[B
    .restart local v3    # "result":[B
    :cond_1
    invoke-static {}, Lc8/EHf;->isDebugable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 412
    goto :goto_0

    .line 416
    .end local v1    # "input":[B
    .end local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 418
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v4, v5

    .line 420
    goto :goto_0
.end method

.method public getCurrentFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lc8/gIf;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init()Z
    .locals 14

    .prologue
    .line 49
    iget-object v10, p0, Lc8/gIf;->mFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 50
    const/4 v10, 0x0

    .line 154
    :goto_0
    return v10

    .line 53
    :cond_0
    :try_start_0
    sget-wide v10, Lc8/gIf;->FILE_SIZE:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1

    .line 54
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lc8/IHf;->getLogFileLength(Landroid/content/Context;)J

    move-result-wide v10

    sput-wide v10, Lc8/gIf;->FILE_SIZE:J

    .line 57
    :cond_1
    sget-wide v10, Lc8/gIf;->FILE_SIZE:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_2

    .line 58
    const/4 v10, 0x0

    goto :goto_0

    .line 60
    :cond_2
    sget-boolean v10, Lc8/EHf;->mIsMainProcess:Z

    if-eqz v10, :cond_5

    .line 61
    sget v10, Lc8/gIf;->BUFFER_SIZE:I

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    iput-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 68
    :goto_1
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lc8/gIf;->mFileName:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lc8/gIf;->mFile:Ljava/io/File;

    .line 69
    iget-object v10, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_7

    .line 70
    iget-object v10, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-direct {p0, v10}, Lc8/gIf;->createFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 71
    iget-object v10, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 73
    invoke-static {v8}, Lc8/IHf;->getPrefixName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/IHf;->checkFile(Ljava/lang/String;)V

    .line 75
    :cond_3
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lc8/gIf;->mFile:Ljava/io/File;

    const-string/jumbo v12, "rwd"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 76
    iget-object v10, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    iput-object v10, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 77
    iget-object v10, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v10}, Lc8/gIf;->setFileHeader(Ljava/nio/channels/FileChannel;)V

    .line 124
    .end local v8    # "name":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lc8/EHf;->getStrategy()Lcom/taobao/tao/log/TLogFileSaveStrategy;

    move-result-object v10

    sget-object v11, Lcom/taobao/tao/log/TLogFileSaveStrategy;->MOREFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    if-ne v10, v11, :cond_4

    .line 125
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 126
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 127
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v10, p0, Lc8/gIf;->mFile:Ljava/io/File;

    if-eqz v10, :cond_4

    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tlog_current_file_name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lc8/IHf;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "key":Ljava/lang/String;
    iget-object v10, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_4
    new-instance v10, Landroid/os/HandlerThread;

    const-string/jumbo v11, "tlog_write"

    invoke-direct {v10, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lc8/gIf;->mHandlerThread:Landroid/os/HandlerThread;

    .line 136
    iget-object v10, p0, Lc8/gIf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance v10, Lc8/fIf;

    iget-object v11, p0, Lc8/gIf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lc8/fIf;-><init>(Lc8/gIf;Landroid/os/Looper;)V

    iput-object v10, p0, Lc8/gIf;->mHandler:Landroid/os/Handler;

    .line 151
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 63
    :cond_5
    sget v10, Lc8/gIf;->BUFFER_SIZE:I

    div-int/lit8 v10, v10, 0x5

    sput v10, Lc8/gIf;->BUFFER_SIZE:I

    .line 64
    sget v10, Lc8/gIf;->BUFFER_SIZE:I

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    iput-object v10, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 83
    :cond_7
    const/4 v6, 0x0

    .line 84
    .local v6, "isNeedOverwrite":Z
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v10, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v5, "inputStream":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v10, 0x5

    new-array v3, v10, [B

    .line 87
    .local v3, "fileDes":[B
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 88
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v10, 0x5

    if-ge v4, v10, :cond_8

    .line 89
    const/4 v10, 0x4

    if-ge v4, v10, :cond_9

    .line 90
    sget-object v10, Lc8/zHf;->MAGIC_NUMBER:[B

    aget-byte v10, v10, v4

    aget-byte v11, v3, v4

    if-eq v10, v11, :cond_b

    .line 91
    const/4 v6, 0x1

    .line 103
    :cond_8
    if-eqz v6, :cond_d

    .line 104
    iget-object v10, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 105
    iget-object v10, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-direct {p0, v10}, Lc8/gIf;->createFile(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 106
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lc8/gIf;->mFile:Ljava/io/File;

    const-string/jumbo v12, "rwd"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 107
    iget-object v10, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    iput-object v10, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 108
    iget-object v10, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v10}, Lc8/gIf;->setFileHeader(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_2

    .line 95
    :cond_9
    aget-byte v10, v3, v4

    const/4 v11, 0x5

    if-eq v10, v11, :cond_a

    .line 96
    const/4 v6, 0x1

    .line 98
    :cond_a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 99
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 88
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 110
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 113
    :cond_d
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lc8/gIf;->mFile:Ljava/io/File;

    const-string/jumbo v12, "rwd"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 114
    iget-object v10, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    iput-object v10, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 115
    iget-object v10, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    iget-object v11, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public renameFile()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 446
    iget-object v7, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "parent":Ljava/lang/String;
    iget-object v7, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "origin":Ljava/lang/String;
    const-string/jumbo v7, ".tlog"

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 449
    .local v2, "index":I
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".tlog"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, "file":Ljava/io/File;
    iget-object v7, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v7, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 454
    .local v6, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lc8/gIf;->close()V

    .line 455
    iget-object v7, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 457
    iget-object v7, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-direct {p0, v7}, Lc8/gIf;->createFile(Ljava/io/File;)Z

    .line 458
    iget-object v7, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/IHf;->getPrefixName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "prefixName":Ljava/lang/String;
    invoke-static {v5}, Lc8/IHf;->checkFile(Ljava/lang/String;)V

    .line 460
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lc8/gIf;->mFile:Ljava/io/File;

    const-string/jumbo v9, "rwd"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 462
    iget-object v7, p0, Lc8/gIf;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    iput-object v7, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 463
    iget-object v7, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    if-eqz v7, :cond_0

    .line 464
    iget-object v7, p0, Lc8/gIf;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 466
    :cond_0
    iget-object v7, p0, Lc8/gIf;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v7}, Lc8/gIf;->setFileHeader(Ljava/nio/channels/FileChannel;)V

    .line 467
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lc8/SHf;->getInstances(Landroid/content/Context;)Lc8/SHf;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Lc8/SHf;->renameFileNotification(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v5    # "prefixName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 471
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lc8/SHf;->getInstances(Landroid/content/Context;)Lc8/SHf;

    move-result-object v7

    iget-object v8, p0, Lc8/gIf;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lc8/SHf;->renameFileNotification(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public writeLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v1, p0, Lc8/gIf;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/gIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lc8/gIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 188
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lc8/gIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
