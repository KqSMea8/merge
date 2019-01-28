.class public final Lc8/iye;
.super Ljava/lang/Object;
.source "AidTask4Plug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AidInfo"
.end annotation


# instance fields
.field private mAid:Ljava/lang/String;

.field private mSubCookie:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lc8/iye;
    .locals 6
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v1, Lc8/iye;

    invoke-direct {v1}, Lc8/iye;-><init>()V

    .line 128
    .local v1, "instance":Lc8/iye;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, "resObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "error_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    const-string/jumbo v3, "AidTask"

    const-string/jumbo v4, "loadAidFromNet has error !!!"

    invoke-static {v3, v4}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string/jumbo v4, "loadAidFromNet has error !!!"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v2    # "resObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "AidTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadAidFromNet JSONException Msg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string/jumbo v4, "loadAidFromNet has error !!!"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "resObj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "aid"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/iye;->mAid:Ljava/lang/String;

    .line 135
    const-string/jumbo v3, "sub"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/iye;->mSubCookie:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    return-object v1
.end method


# virtual methods
.method cloneAidInfo()Lc8/iye;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lc8/iye;

    invoke-direct {v0}, Lc8/iye;-><init>()V

    .line 146
    .local v0, "aidInfo":Lc8/iye;
    iget-object v1, p0, Lc8/iye;->mAid:Ljava/lang/String;

    iput-object v1, v0, Lc8/iye;->mAid:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lc8/iye;->mSubCookie:Ljava/lang/String;

    iput-object v1, v0, Lc8/iye;->mSubCookie:Ljava/lang/String;

    .line 148
    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lc8/iye;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lc8/iye;->mSubCookie:Ljava/lang/String;

    return-object v0
.end method
