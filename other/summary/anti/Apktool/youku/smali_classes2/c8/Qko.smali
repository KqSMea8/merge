.class public Lc8/Qko;
.super Ljava/lang/Object;
.source "SNSBindInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SNSBindItem"
.end annotation


# instance fields
.field public mCreateTime:J

.field public mNickName:Ljava/lang/String;

.field public mPortrait:Ljava/lang/String;

.field public mShareSet:I

.field public mTlsite:Ljava/lang/String;

.field public mTuid:Ljava/lang/String;

.field public mYtid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseFrom(Ljava/lang/String;)V
    .locals 3
    .param p1, "aJsonStr"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "infoObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "tlsite"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Qko;->mTlsite:Ljava/lang/String;

    .line 42
    const-string/jumbo v2, "ytid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Qko;->mYtid:Ljava/lang/String;

    .line 43
    const-string/jumbo v2, "tuid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Qko;->mTuid:Ljava/lang/String;

    .line 44
    const-string/jumbo v2, "portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Qko;->mPortrait:Ljava/lang/String;

    .line 45
    const-string/jumbo v2, "nickname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Qko;->mNickName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "infoObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method toJson()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, "infoObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "infoObj":Lorg/json/JSONObject;
    .local v2, "infoObj":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "tlsite"

    iget-object v4, p0, Lc8/Qko;->mTlsite:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v3, "ytid"

    iget-object v4, p0, Lc8/Qko;->mYtid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v3, "tuid"

    iget-object v4, p0, Lc8/Qko;->mTuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v3, "portrait"

    iget-object v4, p0, Lc8/Qko;->mPortrait:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v3, "nickname"

    iget-object v4, p0, Lc8/Qko;->mNickName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 63
    .end local v2    # "infoObj":Lorg/json/JSONObject;
    .restart local v1    # "infoObj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "infoObj":Lorg/json/JSONObject;
    .restart local v2    # "infoObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "infoObj":Lorg/json/JSONObject;
    .restart local v1    # "infoObj":Lorg/json/JSONObject;
    goto :goto_1
.end method
