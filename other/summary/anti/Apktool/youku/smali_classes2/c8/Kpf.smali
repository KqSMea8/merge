.class public final Lc8/Kpf;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jpf;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 44
    .local v0, "buf":[B
    const-wide/16 v2, 0x0

    .line 46
    .local v2, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 47
    .local v1, "r":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 50
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-wide v2
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p0}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    if-gez p3, :cond_0

    .line 85
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 88
    .local v1, "total":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 89
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 90
    .local v0, "result":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 93
    add-int/2addr v1, v0

    .line 94
    goto :goto_0

    .line 95
    .end local v0    # "result":I
    :cond_1
    return v1
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p0, p1, p2, p3}, Lc8/Kpf;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 169
    .local v0, "read":I
    if-eq v0, p3, :cond_0

    .line 170
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reached end of stream after reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lc8/Kpf;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 109
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 121
    new-array v1, p1, [B

    .line 122
    .local v1, "bytes":[B
    move v5, p1

    .line 124
    .local v5, "remaining":I
    :goto_0
    if-lez v5, :cond_2

    .line 125
    sub-int v2, p1, v5

    .line 126
    .local v2, "off":I
    invoke-virtual {p0, v1, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 127
    .local v4, "read":I
    if-ne v4, v7, :cond_1

    .line 130
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 149
    .end local v1    # "bytes":[B
    .end local v2    # "off":I
    .end local v4    # "read":I
    :cond_0
    :goto_1
    return-object v1

    .line 132
    .restart local v1    # "bytes":[B
    .restart local v2    # "off":I
    .restart local v4    # "read":I
    :cond_1
    sub-int/2addr v5, v4

    .line 133
    goto :goto_0

    .line 136
    .end local v2    # "off":I
    .end local v4    # "read":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 137
    .local v0, "b":I
    if-eq v0, v7, :cond_0

    .line 142
    new-instance v3, Lc8/Jpf;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lc8/Jpf;-><init>(Lc8/Ipf;)V

    .line 143
    .local v3, "out":Lc8/Jpf;
    invoke-virtual {v3, v0}, Lc8/Jpf;->write(I)V

    .line 144
    invoke-static {p0, v3}, Lc8/Kpf;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 146
    array-length v7, v1

    invoke-virtual {v3}, Lc8/Jpf;->size()I

    move-result v8

    add-int/2addr v7, v8

    new-array v6, v7, [B

    .line 147
    .local v6, "result":[B
    array-length v7, v1

    invoke-static {v1, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    array-length v7, v1

    invoke-virtual {v3, v6, v7}, Lc8/Jpf;->writeTo([BI)V

    move-object v1, v6

    .line 149
    goto :goto_1
.end method
