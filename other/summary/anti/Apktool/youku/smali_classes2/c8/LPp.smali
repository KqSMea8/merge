.class public abstract Lc8/LPp;
.super Ljava/lang/Object;
.source "ResponseBody.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ResponseBody"


# instance fields
.field private bodyBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/LPp;->bodyBytes:[B

    return-void
.end method

.method private readBytes()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lc8/LPp;->contentLength()J

    move-result-wide v4

    .line 42
    .local v4, "contentLength":J
    const-wide/32 v12, 0x7fffffff

    cmp-long v11, v4, v12

    if-lez v11, :cond_0

    .line 43
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot buffer entire body for content length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 46
    :cond_0
    invoke-virtual {p0}, Lc8/LPp;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    .line 47
    .local v9, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 48
    .local v6, "dis":Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 49
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 52
    .local v3, "bytes":[B
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .local v7, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x400

    :try_start_2
    new-array v2, v11, [B

    .line 57
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v10

    .local v10, "length":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 58
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 62
    .end local v2    # "buffer":[B
    .end local v10    # "length":I
    :catch_0
    move-exception v8

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .line 63
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v11, "mtopsdk.ResponseBody"

    const-string/jumbo v12, "[readBytes] read bytes from byteStream error."

    invoke-static {v11, v12, v8}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    invoke-static {v6}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v0}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_2
    if-nez v3, :cond_3

    .line 70
    const/4 v3, 0x0

    .line 76
    .end local v3    # "bytes":[B
    :cond_1
    return-object v3

    .line 60
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":[B
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "length":I
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 61
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v3

    .line 65
    invoke-static {v7}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v1}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .line 67
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 65
    .end local v2    # "buffer":[B
    .end local v10    # "length":I
    :catchall_0
    move-exception v11

    :goto_3
    invoke-static {v6}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v0}, Lc8/cQp;->closeQuietly(Ljava/io/Closeable;)V

    throw v11

    .line 73
    :cond_3
    const-wide/16 v12, -0x1

    cmp-long v11, v4, v12

    if-eqz v11, :cond_1

    array-length v11, v3

    int-to-long v12, v11

    cmp-long v11, v4, v12

    if-eqz v11, :cond_1

    .line 74
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Content-Length and stream length disagree"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 65
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    goto :goto_3

    .line 62
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v6    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "dis":Ljava/io/DataInputStream;
    goto :goto_1
.end method


# virtual methods
.method public abstract byteStream()Ljava/io/InputStream;
.end method

.method public abstract contentLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract contentType()Ljava/lang/String;
.end method

.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lc8/LPp;->bodyBytes:[B

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0}, Lc8/LPp;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lc8/LPp;->bodyBytes:[B

    .line 37
    :cond_0
    iget-object v0, p0, Lc8/LPp;->bodyBytes:[B

    return-object v0
.end method
