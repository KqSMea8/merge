.class public final Lc8/nko;
.super Lc8/Fko;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->getSNSBindInfos(Lc8/Mko;)V
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
    .line 735
    iput-object p1, p0, Lc8/nko;->val$aCallback:Lc8/Mko;

    invoke-direct {p0}, Lc8/Fko;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 8
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 738
    new-instance v4, Lc8/Rko;

    invoke-direct {v4}, Lc8/Rko;-><init>()V

    .line 739
    .local v4, "infos":Lc8/Rko;
    if-nez p1, :cond_1

    .line 741
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 742
    .local v0, "bindInfos":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 745
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 746
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 747
    .local v2, "data":Lorg/json/JSONObject;
    new-instance v5, Lc8/Qko;

    invoke-direct {v5}, Lc8/Qko;-><init>()V

    .line 748
    .local v5, "item":Lc8/Qko;
    const-string/jumbo v6, "createTime"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lc8/Qko;->mCreateTime:J

    .line 749
    const-string/jumbo v6, "portrait"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/Qko;->mPortrait:Ljava/lang/String;

    .line 750
    const-string/jumbo v6, "nickname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/Qko;->mNickName:Ljava/lang/String;

    .line 751
    const-string/jumbo v6, "shareSet"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lc8/Qko;->mShareSet:I

    .line 752
    const-string/jumbo v6, "tlsite"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/Qko;->mTlsite:Ljava/lang/String;

    .line 753
    const-string/jumbo v6, "ytid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/Qko;->mYtid:Ljava/lang/String;

    .line 754
    const-string/jumbo v6, "tuid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/Qko;->mTuid:Ljava/lang/String;

    .line 755
    iget-object v6, v4, Lc8/Rko;->mBindInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 757
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v5    # "item":Lc8/Qko;
    :cond_0
    iget-object v6, p0, Lc8/nko;->val$aCallback:Lc8/Mko;

    invoke-interface {v6, v4}, Lc8/Mko;->onSuccess(Lc8/Oko;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v0    # "bindInfos":Lorg/json/JSONArray;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :goto_1
    return-void

    .line 759
    :catch_0
    move-exception v6

    const/16 v6, -0x65

    invoke-virtual {v4, v6}, Lc8/Rko;->setResultCode(I)V

    .line 760
    const-string/jumbo v6, "\u7cfb\u7edf\u5f00\u5c0f\u5dee\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v4, v6}, Lc8/Rko;->setResultMsg(Ljava/lang/String;)V

    .line 761
    iget-object v6, p0, Lc8/nko;->val$aCallback:Lc8/Mko;

    invoke-interface {v6, v4}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_1

    .line 764
    :cond_1
    invoke-virtual {v4, p1}, Lc8/Rko;->setResultCode(I)V

    .line 765
    invoke-virtual {v4, p2}, Lc8/Rko;->setResultMsg(Ljava/lang/String;)V

    .line 766
    iget-object v6, p0, Lc8/nko;->val$aCallback:Lc8/Mko;

    invoke-interface {v6, v4}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_1
.end method
