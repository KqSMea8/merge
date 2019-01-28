.class public Lcom/ali/mobisecenhance/StampFile;
.super Ljava/lang/Object;
.source "StampFile.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/RecordLog;


# instance fields
.field fl:Ljava/nio/channels/FileLock;

.field raf:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    .line 24
    :cond_0
    const-class v0, Lcom/ali/mobisecenhance/StampFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/StampFile;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/ali/mobisecenhance/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/StampFile;->log:Lcom/ali/mobisecenhance/RecordLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/mobisecenhance/StampFile;->fl:Ljava/nio/channels/FileLock;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "stampFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/mobisecenhance/StampFile;->fl:Ljava/nio/channels/FileLock;

    .line 33
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/mobisecenhance/StampFile;->raf:Ljava/io/RandomAccessFile;

    .line 34
    return-void
.end method

.method public static getCRC32(Ljava/io/File;)J
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 74
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 76
    .local v1, "crc32":Ljava/util/zip/CRC32;
    const-wide/16 v2, 0x0

    .line 77
    .local v2, "crc":J
    const/4 v5, 0x0

    .line 79
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v8, 0x2000

    :try_start_1
    new-array v0, v8, [B

    .line 82
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 83
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v7}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 86
    .end local v0    # "buffer":[B
    .end local v7    # "length":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 87
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    const-wide/16 v2, 0x0

    .line 90
    if-eqz v5, :cond_0

    .line 91
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-wide v2

    .line 85
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "length":I
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v2

    .line 90
    if-eqz v6, :cond_2

    .line 91
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v5, v6

    .line 95
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 93
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 96
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 93
    .end local v0    # "buffer":[B
    .end local v7    # "length":I
    .local v4, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 89
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 90
    :goto_3
    if-eqz v5, :cond_3

    .line 91
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 95
    :cond_3
    :goto_4
    throw v8

    .line 93
    :catch_3
    move-exception v4

    .line 94
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 89
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 86
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method public static tryUnzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 106
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    if-nez v4, :cond_0

    .line 107
    sget-object v8, Lcom/ali/mobisecenhance/StampFile;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v9, Lcom/ali/mobisecenhance/StampFile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tryUnzip: can not find entry "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in zip file."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v8, 0x0

    .line 140
    :goto_0
    return v8

    .line 112
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v6, "localFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v8

    invoke-static {v6}, Lcom/ali/mobisecenhance/StampFile;->getCRC32(Ljava/io/File;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 117
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 118
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 122
    .local v5, "foStream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 123
    invoke-virtual {p0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v1, "bufferedInputStream2":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 126
    .local v2, "bufferedOutputStream2":Ljava/io/BufferedOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 127
    .local v0, "bArr":[B
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    :goto_1
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 129
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 128
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 133
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 134
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "bArr":[B
    .end local v1    # "bufferedInputStream2":Ljava/io/BufferedInputStream;
    .end local v2    # "bufferedOutputStream2":Ljava/io/BufferedOutputStream;
    .end local v5    # "foStream":Ljava/io/FileOutputStream;
    .end local v7    # "read":I
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/ali/mobisecenhance/StampFile;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v9, Lcom/ali/mobisecenhance/StampFile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unzip "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " found a exception. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p0, Lcom/ali/mobisecenhance/StampFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v0, v1, [B

    .line 38
    .local v0, "data":[B
    iget-object v1, p0, Lcom/ali/mobisecenhance/StampFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 39
    iget-object v1, p0, Lcom/ali/mobisecenhance/StampFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 40
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method lock()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v3, p0, Lcom/ali/mobisecenhance/StampFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 53
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    :goto_0
    iget-object v3, p0, Lcom/ali/mobisecenhance/StampFile;->fl:Ljava/nio/channels/FileLock;

    if-nez v3, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    iput-object v3, p0, Lcom/ali/mobisecenhance/StampFile;->fl:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 58
    .local v2, "ex":Ljava/nio/channels/OverlappingFileLockException;
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 59
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ex":Ljava/nio/channels/OverlappingFileLockException;
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 68
    .local v0, "data":[B
    iget-object v1, p0, Lcom/ali/mobisecenhance/StampFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 69
    iget-object v1, p0, Lcom/ali/mobisecenhance/StampFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 70
    return-void
.end method

.method unlock()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ali/mobisecenhance/StampFile;->fl:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 45
    iget-object v0, p0, Lcom/ali/mobisecenhance/StampFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 46
    return-void
.end method
