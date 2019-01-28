.class public Lc8/eKf;
.super Ljava/lang/Object;
.source "ProtocolKIt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Protocol"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBizBytes(Lc8/Qxf;)[B
    .locals 5
    .param p0, "protocol"    # Lc8/Qxf;

    .prologue
    const/4 v4, 0x0

    .line 26
    iget v1, p0, Lc8/Qxf;->bizLength:I

    new-array v0, v1, [B

    .line 27
    .local v0, "bytes":[B
    iget-object v1, p0, Lc8/Qxf;->protocolData:[B

    invoke-static {v4, p0}, Lc8/Qxf;->getBizLengthOffset(ILc8/Qxf;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lc8/Qxf;->bizLength:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    return-object v0
.end method

.method public static getBodyBytes(Lc8/Qxf;)[B
    .locals 5
    .param p0, "protocol"    # Lc8/Qxf;

    .prologue
    const/4 v4, 0x0

    .line 20
    iget v1, p0, Lc8/Qxf;->bodyLength:I

    new-array v0, v1, [B

    .line 21
    .local v0, "bytes":[B
    iget-object v1, p0, Lc8/Qxf;->protocolData:[B

    invoke-static {v4, p0}, Lc8/Qxf;->getBodyLengthOffset(ILc8/Qxf;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lc8/Qxf;->bodyLength:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    return-object v0
.end method

.method public static getHeadBytes(Lc8/Qxf;)[B
    .locals 5
    .param p0, "protocol"    # Lc8/Qxf;

    .prologue
    const/4 v4, 0x0

    .line 14
    iget v1, p0, Lc8/Qxf;->headerLength:I

    new-array v0, v1, [B

    .line 15
    .local v0, "bytes":[B
    iget-object v1, p0, Lc8/Qxf;->protocolData:[B

    invoke-static {v4}, Lc8/Qxf;->getHeaderLengthOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lc8/Qxf;->headerLength:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    return-object v0
.end method
