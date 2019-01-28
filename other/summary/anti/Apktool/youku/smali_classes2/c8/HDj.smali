.class public Lc8/HDj;
.super Ljava/lang/Object;
.source "RuleSwitcher.java"


# static fields
.field private static REFER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const v0, 0xfffff

    sput v0, Lc8/HDj;->REFER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeBySHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    const-string/jumbo v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 62
    .local v2, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 63
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 64
    .local v0, "digest":[B
    invoke-static {v0}, Lc8/HDj;->toHex([B)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "hex":Ljava/lang/String;
    return-object v1
.end method

.method public static switchHit(Ljava/lang/String;D)Z
    .locals 3
    .param p0, "strategyName"    # Ljava/lang/String;
    .param p1, "percentage"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lc8/IDj;->getUtdid()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "utdid":Ljava/lang/String;
    sget-object v1, Lc8/Dfh;->versionName:Ljava/lang/String;

    .line 26
    .local v1, "versionName":Ljava/lang/String;
    invoke-static {p0, v0, v1, p1, p2}, Lc8/HDj;->switchHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Z

    move-result v2

    return v2
.end method

.method public static switchHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Z
    .locals 11
    .param p0, "strategyName"    # Ljava/lang/String;
    .param p1, "utdid"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "percentage"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const-wide/16 v8, 0x0

    cmpg-double v5, p3, v8

    if-gtz v5, :cond_0

    .line 32
    const/4 v5, 0x0

    .line 51
    :goto_0
    return v5

    .line 35
    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p3, v8

    if-ltz v5, :cond_1

    .line 36
    const/4 v5, 0x1

    goto :goto_0

    .line 40
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "input":Ljava/lang/String;
    sget v5, Lc8/HDj;->REFER:I

    int-to-double v8, v5

    mul-double/2addr v8, p3

    double-to-int v3, v8

    .line 42
    .local v3, "range":I
    invoke-static {v2}, Lc8/HDj;->encodeBySHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "digest":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "referDigest":Ljava/lang/String;
    const-string/jumbo v5, "0x%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 45
    .local v6, "result":J
    int-to-long v8, v3

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 46
    const/4 v5, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "digest":Ljava/lang/String;
    .end local v2    # "input":Ljava/lang/String;
    .end local v3    # "range":I
    .end local v4    # "referDigest":Ljava/lang/String;
    .end local v6    # "result":J
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "digest"    # [B

    .prologue
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    .line 75
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 76
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "out":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 78
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "out":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
