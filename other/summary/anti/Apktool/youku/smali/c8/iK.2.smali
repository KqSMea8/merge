.class public Lc8/iK;
.super Ljava/lang/Object;
.source "NoSecurityGuardImpl.java"

# interfaces
.implements Lc8/gK;


# instance fields
.field private appSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/iK;->appSecret:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lc8/iK;->appSecret:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public decrypt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "needProcessValue"    # [B

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSecOff()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public saveBytes(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signAlgorithm"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 23
    iget-object v1, p0, Lc8/iK;->appSecret:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    const-string/jumbo v1, "HMAC_SHA1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    iget-object v0, p0, Lc8/iK;->appSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lc8/QL;->hmacSha1Hex([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
