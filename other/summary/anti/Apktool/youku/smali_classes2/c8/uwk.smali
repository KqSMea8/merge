.class public abstract Lc8/uwk;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/twk;
    }
.end annotation


# static fields
.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B

.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 3
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    const/16 v2, 0x3d

    iput-byte v2, p0, Lc8/uwk;->PAD:B

    .line 720
    iput p1, p0, Lc8/uwk;->unencodedBlockSize:I

    .line 721
    iput p2, p0, Lc8/uwk;->encodedBlockSize:I

    .line 722
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 v0, 0x1

    .line 723
    .local v0, "useChunking":Z
    :goto_0
    if-eqz v0, :cond_0

    div-int v1, p3, p2

    mul-int/2addr v1, p2

    :cond_0
    iput v1, p0, Lc8/uwk;->lineLength:I

    .line 724
    iput p4, p0, Lc8/uwk;->chunkSeparatorLength:I

    .line 725
    return-void

    .end local v0    # "useChunking":Z
    :cond_1
    move v0, v1

    .line 722
    goto :goto_0
.end method

.method private resizeBuffer(Lc8/twk;)[B
    .locals 4
    .param p1, "context"    # Lc8/twk;

    .prologue
    const/4 v3, 0x0

    .line 762
    iget-object v1, p1, Lc8/twk;->buffer:[B

    if-nez v1, :cond_0

    .line 763
    invoke-virtual {p0}, Lc8/uwk;->getDefaultBufferSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lc8/twk;->buffer:[B

    .line 764
    iput v3, p1, Lc8/twk;->pos:I

    .line 765
    iput v3, p1, Lc8/twk;->readPos:I

    .line 771
    :goto_0
    iget-object v1, p1, Lc8/twk;->buffer:[B

    return-object v1

    .line 767
    :cond_0
    iget-object v1, p1, Lc8/twk;->buffer:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 768
    .local v0, "b":[B
    iget-object v1, p1, Lc8/twk;->buffer:[B

    iget-object v2, p1, Lc8/twk;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    iput-object v0, p1, Lc8/twk;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method available(Lc8/twk;)I
    .locals 2
    .param p1, "context"    # Lc8/twk;

    .prologue
    .line 744
    iget-object v0, p1, Lc8/twk;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lc8/twk;->pos:I

    iget v1, p1, Lc8/twk;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 6
    .param p1, "arrayOctet"    # [B

    .prologue
    const/4 v4, 0x0

    .line 993
    if-nez p1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return v4

    .line 996
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 997
    .local v1, "element":B
    const/16 v5, 0x3d

    if-eq v5, v1, :cond_2

    invoke-virtual {p0, v1}, Lc8/uwk;->isInAlphabet(B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 998
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 996
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method abstract decode([BIILc8/twk;)V
.end method

.method public decode([B)[B
    .locals 4
    .param p1, "pArray"    # [B

    .prologue
    const/4 v3, 0x0

    .line 907
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 915
    :goto_0
    return-object v1

    .line 910
    :cond_1
    new-instance v0, Lc8/twk;

    invoke-direct {v0}, Lc8/twk;-><init>()V

    .line 911
    .local v0, "context":Lc8/twk;
    array-length v2, p1

    invoke-virtual {p0, p1, v3, v2, v0}, Lc8/uwk;->decode([BIILc8/twk;)V

    .line 912
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v3, v2, v0}, Lc8/uwk;->decode([BIILc8/twk;)V

    .line 913
    iget v2, v0, Lc8/twk;->pos:I

    new-array v1, v2, [B

    .line 914
    .local v1, "result":[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2, v0}, Lc8/uwk;->readResults([BIILc8/twk;)I

    goto :goto_0
.end method

.method protected ensureBufferSize(ILc8/twk;)[B
    .locals 2
    .param p1, "size"    # I
    .param p2, "context"    # Lc8/twk;

    .prologue
    .line 781
    iget-object v0, p2, Lc8/twk;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lc8/twk;->buffer:[B

    array-length v0, v0

    iget v1, p2, Lc8/twk;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 782
    :cond_0
    invoke-direct {p0, p2}, Lc8/uwk;->resizeBuffer(Lc8/twk;)[B

    move-result-object v0

    .line 784
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lc8/twk;->buffer:[B

    goto :goto_0
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    .prologue
    .line 753
    const/16 v0, 0x2000

    return v0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method readResults([BIILc8/twk;)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I
    .param p4, "context"    # Lc8/twk;

    .prologue
    .line 800
    iget-object v1, p4, Lc8/twk;->buffer:[B

    if-eqz v1, :cond_1

    .line 801
    invoke-virtual {p0, p4}, Lc8/uwk;->available(Lc8/twk;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 802
    .local v0, "len":I
    iget-object v1, p4, Lc8/twk;->buffer:[B

    iget v2, p4, Lc8/twk;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iget v1, p4, Lc8/twk;->readPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lc8/twk;->readPos:I

    .line 804
    iget v1, p4, Lc8/twk;->readPos:I

    iget v2, p4, Lc8/twk;->pos:I

    if-lt v1, v2, :cond_0

    .line 805
    const/4 v1, 0x0

    iput-object v1, p4, Lc8/twk;->buffer:[B

    .line 809
    .end local v0    # "len":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p4, Lc8/twk;->eof:Z

    if-eqz v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
