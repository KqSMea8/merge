.class public Lc8/Jdc;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "oldVersionName"    # Ljava/lang/String;
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v2, 0x0

    .line 21
    .local v2, "result":I
    invoke-static {p0}, Lc8/Jdc;->parseVersionValue(Ljava/lang/String;)I

    move-result v0

    .line 22
    .local v0, "myVersionValue":I
    invoke-static {p1}, Lc8/Jdc;->parseVersionValue(Ljava/lang/String;)I

    move-result v1

    .line 24
    .local v1, "otherVersionValue":I
    if-le v0, v1, :cond_1

    .line 25
    const/4 v2, 0x1

    .line 29
    :cond_0
    :goto_0
    return v2

    .line 26
    :cond_1
    if-ge v0, v1, :cond_0

    .line 27
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static isVersionUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "myVersionValue"    # Ljava/lang/String;
    .param p1, "otherVersionValue"    # Ljava/lang/String;

    .prologue
    .line 11
    const/4 v0, -0x1

    invoke-static {p0, p1}, Lc8/Jdc;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static parseVersionValue(Ljava/lang/String;)I
    .locals 6
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v4, 0x0

    .line 35
    .local v4, "versionValue":I
    :try_start_0
    const-string/jumbo v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "strVersion":[Ljava/lang/String;
    array-length v5, v3

    if-lez v5, :cond_1

    .line 37
    array-length v5, v3

    new-array v2, v5, [I

    .line 38
    .local v2, "myVersion":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 39
    aget-object v5, v3, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 40
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v1

    .line 38
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const/4 v5, 0x0

    aput v5, v2, v1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "myVersion":[I
    .end local v3    # "strVersion":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 52
    :cond_1
    return v4

    .line 44
    .restart local v1    # "i":I
    .restart local v2    # "myVersion":[I
    .restart local v3    # "strVersion":[Ljava/lang/String;
    :cond_2
    const v0, 0xf4240

    .line 45
    .local v0, "beishu":I
    const/4 v1, 0x0

    :goto_2
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 46
    aget v5, v2, v1

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    .line 47
    div-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
