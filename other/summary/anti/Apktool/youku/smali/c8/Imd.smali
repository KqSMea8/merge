.class public final Lc8/Imd;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lc8/Imd;->tag:I

    .line 53
    iput-object p2, p0, Lc8/Imd;->bytes:[B

    .line 54
    return-void
.end method


# virtual methods
.method computeSerializedSize()I
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "size":I
    iget v1, p0, Lc8/Imd;->tag:I

    invoke-static {v1}, Lc8/umd;->computeRawVarint32Size(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 59
    iget-object v1, p0, Lc8/Imd;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    instance-of v3, p1, Lc8/Imd;

    if-nez v3, :cond_2

    move v1, v2

    .line 74
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 77
    check-cast v0, Lc8/Imd;

    .line 78
    .local v0, "other":Lc8/Imd;
    iget v3, p0, Lc8/Imd;->tag:I

    iget v4, v0, Lc8/Imd;->tag:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lc8/Imd;->bytes:[B

    iget-object v4, v0, Lc8/Imd;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    const/16 v0, 0x11

    .line 84
    .local v0, "result":I
    iget v1, p0, Lc8/Imd;->tag:I

    add-int/lit16 v0, v1, 0x20f

    .line 85
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lc8/Imd;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 86
    return v0
.end method

.method writeTo(Lc8/umd;)V
    .locals 1
    .param p1, "output"    # Lc8/umd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lc8/Imd;->tag:I

    invoke-virtual {p1, v0}, Lc8/umd;->writeRawVarint32(I)V

    .line 65
    iget-object v0, p0, Lc8/Imd;->bytes:[B

    invoke-virtual {p1, v0}, Lc8/umd;->writeRawBytes([B)V

    .line 66
    return-void
.end method
