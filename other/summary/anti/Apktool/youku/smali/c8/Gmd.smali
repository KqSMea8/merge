.class public abstract Lc8/Gmd;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected volatile cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lc8/Gmd;->cachedSize:I

    return-void
.end method

.method public static final mergeFrom(Lc8/Gmd;[B)Lc8/Gmd;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/Gmd;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "msg":Lc8/Gmd;, "TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lc8/Gmd;->mergeFrom(Lc8/Gmd;[BII)Lc8/Gmd;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lc8/Gmd;[BII)Lc8/Gmd;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/Gmd;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 141
    .line 142
    .local p0, "msg":Lc8/Gmd;, "TT;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lc8/tmd;->newInstance([BII)Lc8/tmd;

    move-result-object v1

    .line 143
    .local v1, "input":Lc8/tmd;
    invoke-virtual {p0, v1}, Lc8/Gmd;->mergeFrom(Lc8/tmd;)Lc8/Gmd;

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/tmd;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    return-object p0

    .line 146
    .end local v1    # "input":Lc8/tmd;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    throw v0

    .line 149
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final messageNanoEquals(Lc8/Gmd;Lc8/Gmd;)Z
    .locals 6
    .param p0, "a"    # Lc8/Gmd;
    .param p1, "b"    # Lc8/Gmd;

    .prologue
    const/4 v3, 0x0

    .line 159
    if-ne p0, p1, :cond_1

    .line 160
    const/4 v3, 0x1

    .line 176
    :cond_0
    :goto_0
    return v3

    .line 162
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 168
    invoke-virtual {p0}, Lc8/Gmd;->getSerializedSize()I

    move-result v2

    .line 169
    .local v2, "serializedSize":I
    invoke-virtual {p1}, Lc8/Gmd;->getSerializedSize()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 172
    new-array v0, v2, [B

    .line 173
    .local v0, "aByteArray":[B
    new-array v1, v2, [B

    .line 174
    .local v1, "bByteArray":[B
    invoke-static {p0, v0, v3, v2}, Lc8/Gmd;->toByteArray(Lc8/Gmd;[BII)V

    .line 175
    invoke-static {p1, v1, v3, v2}, Lc8/Gmd;->toByteArray(Lc8/Gmd;[BII)V

    .line 176
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_0
.end method

.method public static final toByteArray(Lc8/Gmd;[BII)V
    .locals 4
    .param p0, "msg"    # Lc8/Gmd;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 115
    .line 116
    :try_start_0
    invoke-static {p1, p2, p3}, Lc8/umd;->newInstance([BII)Lc8/umd;

    move-result-object v1

    .line 117
    .local v1, "output":Lc8/umd;
    invoke-virtual {p0, v1}, Lc8/Gmd;->writeTo(Lc8/umd;)V

    .line 118
    invoke-virtual {v1}, Lc8/umd;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 119
    .end local v1    # "output":Lc8/umd;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final toByteArray(Lc8/Gmd;)[B
    .locals 3
    .param p0, "msg"    # Lc8/Gmd;

    .prologue
    .line 100
    invoke-virtual {p0}, Lc8/Gmd;->getSerializedSize()I

    move-result v1

    new-array v0, v1, [B

    .line 101
    .local v0, "result":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lc8/Gmd;->toByteArray(Lc8/Gmd;[BII)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public clone()Lc8/Gmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Gmd;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lc8/Gmd;->clone()Lc8/Gmd;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lc8/Gmd;->cachedSize:I

    if-gez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lc8/Gmd;->getSerializedSize()I

    .line 56
    :cond_0
    iget v0, p0, Lc8/Gmd;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lc8/Gmd;->computeSerializedSize()I

    move-result v0

    .line 66
    .local v0, "size":I
    iput v0, p0, Lc8/Gmd;->cachedSize:I

    .line 67
    return v0
.end method

.method public abstract mergeFrom(Lc8/tmd;)Lc8/Gmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-static {p0}, Lc8/Hmd;->print(Lc8/Gmd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lc8/umd;)V
    .locals 0
    .param p1, "output"    # Lc8/umd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    return-void
.end method
