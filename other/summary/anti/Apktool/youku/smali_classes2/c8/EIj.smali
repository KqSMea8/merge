.class public Lc8/EIj;
.super Ljava/lang/Object;
.source "UrlItem.java"


# instance fields
.field mComponent:Ljava/lang/String;

.field mEndVersion:Ljava/lang/String;

.field mHitVersion:Ljava/lang/Boolean;

.field mModule:Ljava/lang/String;

.field mNewUrl:Ljava/lang/String;

.field mOriginUrl:Ljava/lang/String;

.field mStartVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lc8/EIj;->mHitVersion:Ljava/lang/Boolean;

    .line 25
    const-string/jumbo v0, "s"

    const-string/jumbo v1, "*"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EIj;->mStartVersion:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "e"

    const-string/jumbo v1, "*"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EIj;->mEndVersion:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "o"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EIj;->mOriginUrl:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "n"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EIj;->mNewUrl:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "component"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EIj;->mComponent:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "module"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EIj;->mModule:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lc8/EIj;->mHitVersion:Ljava/lang/Boolean;

    .line 32
    return-void
.end method

.method static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "versionMin"    # Ljava/lang/String;
    .param p1, "versionMax"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "versionMins":[Ljava/lang/String;
    const-string/jumbo v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "versionMaxs":[Ljava/lang/String;
    array-length v7, v5

    array-length v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 64
    .local v3, "maxLength":I
    const/4 v7, 0x4

    if-le v3, v7, :cond_0

    .line 65
    const/4 v3, 0x4

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 69
    .local v0, "diff":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 71
    :try_start_0
    const-string/jumbo v4, "0"

    .line 72
    .local v4, "min":Ljava/lang/String;
    array-length v7, v6

    if-le v7, v1, :cond_1

    .line 73
    aget-object v4, v6, v1

    .line 76
    :cond_1
    const-string/jumbo v2, "0"

    .line 77
    .local v2, "max":Ljava/lang/String;
    array-length v7, v5

    if-le v7, v1, :cond_2

    .line 78
    aget-object v2, v5, v1

    .line 81
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    sub-int v0, v7, v8

    .line 82
    if-nez v0, :cond_3

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "max":Ljava/lang/String;
    .end local v4    # "min":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 89
    :cond_3
    return v0
.end method

.method private getOldOrNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lc8/EIj;->mNewUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EIj;->mOriginUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/EIj;->mNewUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getScheme()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lc8/EIj;->mComponent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/EIj;->mModule:Ljava/lang/String;

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    :cond_0
    invoke-direct {p0}, Lc8/EIj;->getOldOrNew()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_1
    :goto_0
    return-object v0

    .line 98
    :cond_2
    invoke-static {}, Lc8/hng;->getInstance()Lc8/gng;

    move-result-object v1

    iget-object v2, p0, Lc8/EIj;->mComponent:Ljava/lang/String;

    iget-object v3, p0, Lc8/EIj;->mModule:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lc8/gng;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "bucketScheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lc8/EIj;->getOldOrNew()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method isVersion(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v2, p0, Lc8/EIj;->mHitVersion:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lc8/EIj;->mHitVersion:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 57
    :goto_0
    return v2

    .line 45
    :cond_0
    iget-object v2, p0, Lc8/EIj;->mStartVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lc8/EIj;->mStartVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    :cond_1
    const-string/jumbo v2, "0"

    iput-object v2, p0, Lc8/EIj;->mStartVersion:Ljava/lang/String;

    .line 49
    :cond_2
    iget-object v2, p0, Lc8/EIj;->mEndVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lc8/EIj;->mEndVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    :cond_3
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/EIj;->mEndVersion:Ljava/lang/String;

    .line 53
    :cond_4
    iget-object v2, p0, Lc8/EIj;->mStartVersion:Ljava/lang/String;

    invoke-static {p1, v2}, Lc8/EIj;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, "compareMin":I
    iget-object v2, p0, Lc8/EIj;->mEndVersion:Ljava/lang/String;

    invoke-static {v2, p1}, Lc8/EIj;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "compareMax":I
    if-ltz v1, :cond_5

    if-gtz v0, :cond_6

    :cond_5
    if-ne v1, v0, :cond_7

    if-nez v0, :cond_7

    :cond_6
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lc8/EIj;->mHitVersion:Ljava/lang/Boolean;

    .line 57
    iget-object v2, p0, Lc8/EIj;->mHitVersion:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 56
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method
