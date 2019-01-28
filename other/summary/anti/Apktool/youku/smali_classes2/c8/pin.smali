.class public Lc8/pin;
.super Lc8/uin;
.source "IStaticUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IStaticUtil"

.field public static isDebugOpen:Z

.field public static isLocationOpen:Z

.field public static isTestHostOpen:Z

.field public static isTestOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lc8/pin;->isDebugOpen:Z

    .line 21
    sput-boolean v0, Lc8/pin;->isTestOpen:Z

    .line 22
    sput-boolean v0, Lc8/pin;->isTestHostOpen:Z

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lc8/pin;->isLocationOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/uin;-><init>()V

    return-void
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const-string/jumbo p0, ""

    .line 67
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 61
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static getAaid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 31
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 32
    .local v3, "rd1":Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    .local v0, "currentTime":J
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v2, v5, :cond_0

    .line 38
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static requestDisposableHttpTask(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDisposableHttpTask().url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    new-instance v0, Lc8/PIj;

    invoke-direct {v0, p0}, Lc8/PIj;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "mDisposableHttpTask":Lc8/PIj;
    invoke-virtual {v0}, Lc8/PIj;->start()V

    .line 76
    .end local v0    # "mDisposableHttpTask":Lc8/PIj;
    :cond_0
    return-void
.end method
