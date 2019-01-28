.class public Lc8/nQp;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field public static final DEFAULT_WUA_FLAG:I = 0x0

.field public static final GENERAL_WUA_FLAG:I = 0x4

.field public static final MINI_WUA_FLAG:I = 0x8

.field private static final TAG:Ljava/lang/String; = "mtopsdk.SecurityUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertNull2Default(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "param":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    .end local p0    # "source":Ljava/lang/String;
    .local v0, "dest":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    :goto_0
    return-object p0

    .line 40
    .end local v0    # "dest":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p0    # "source":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 43
    .restart local v0    # "dest":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 44
    .local v2, "digester":Ljava/security/MessageDigest;
    const-string/jumbo v7, "utf-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 48
    .local v1, "digest":[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v5, "hexString":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 50
    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "h":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 54
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 56
    .end local v4    # "h":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 57
    .end local v1    # "digest":[B
    .end local v2    # "digester":Ljava/security/MessageDigest;
    .end local v5    # "hexString":Ljava/lang/StringBuffer;
    .end local v6    # "i":I
    :catch_0
    move-exception v3

    .line 58
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "mtopsdk.SecurityUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getMd5] compute md5 value failed for source str="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    .line 60
    goto :goto_0
.end method
