.class public final Lc8/Eko;
.super Lc8/Fko;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->getUserTags(Lc8/Mko;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lc8/Mko;


# direct methods
.method constructor <init>(Lc8/Mko;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lc8/Eko;->val$aCallback:Lc8/Mko;

    invoke-direct {p0}, Lc8/Fko;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 700
    new-instance v1, Lc8/Uko;

    invoke-direct {v1}, Lc8/Uko;-><init>()V

    .line 701
    .local v1, "result":Lc8/Uko;
    if-nez p1, :cond_0

    .line 703
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, "content":Lorg/json/JSONObject;
    const-string/jumbo v2, "userIdType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/Uko;->mUserIdType:Ljava/lang/String;

    .line 705
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/Uko;->mUserId:Ljava/lang/String;

    .line 706
    const-string/jumbo v2, "reqId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/Uko;->mReqId:Ljava/lang/String;

    .line 707
    const-string/jumbo v2, "tags"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lc8/Uko;->mTags:Lorg/json/JSONObject;

    .line 708
    const-string/jumbo v2, "tagValues"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lc8/Uko;->mTagValues:Lorg/json/JSONObject;

    .line 709
    const-string/jumbo v2, "resultKey"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/Uko;->mResultKey:Ljava/lang/String;

    .line 710
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/Uko;->setResultCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    iget-object v2, p0, Lc8/Eko;->val$aCallback:Lc8/Mko;

    invoke-interface {v2, v1}, Lc8/Mko;->onSuccess(Lc8/Oko;)V

    .line 724
    .end local v0    # "content":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v2

    const/16 v2, -0x65

    invoke-virtual {v1, v2}, Lc8/Uko;->setResultCode(I)V

    .line 713
    const-string/jumbo v2, "\u7cfb\u7edf\u5f00\u5c0f\u5dee\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Lc8/Uko;->setResultMsg(Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, Lc8/Eko;->val$aCallback:Lc8/Mko;

    invoke-interface {v2, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {v1, p1}, Lc8/Uko;->setResultCode(I)V

    .line 721
    invoke-virtual {v1, p2}, Lc8/Uko;->setResultMsg(Ljava/lang/String;)V

    .line 722
    iget-object v2, p0, Lc8/Eko;->val$aCallback:Lc8/Mko;

    invoke-interface {v2, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_0
.end method
