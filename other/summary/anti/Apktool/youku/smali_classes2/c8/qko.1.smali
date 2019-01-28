.class public final Lc8/qko;
.super Lc8/Fko;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->getUpdatedUserInfo(Lc8/Mko;)V
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
    .line 975
    iput-object p1, p0, Lc8/qko;->val$aCallback:Lc8/Mko;

    invoke-direct {p0}, Lc8/Fko;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 4
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 978
    new-instance v2, Lc8/Tko;

    invoke-direct {v2}, Lc8/Tko;-><init>()V

    .line 979
    .local v2, "userInfoResult":Lc8/Tko;
    invoke-virtual {v2, p1}, Lc8/Tko;->setResultCode(I)V

    .line 980
    invoke-virtual {v2, p2}, Lc8/Tko;->setResultMsg(Ljava/lang/String;)V

    .line 981
    iget-object v3, p0, Lc8/qko;->val$aCallback:Lc8/Mko;

    if-eqz v3, :cond_0

    .line 982
    if-nez p1, :cond_1

    .line 983
    new-instance v1, Lcom/youku/usercenter/passport/remote/UserInfo;

    invoke-direct {v1}, Lcom/youku/usercenter/passport/remote/UserInfo;-><init>()V

    .line 985
    .local v1, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/youku/usercenter/passport/remote/UserInfo;->parseFrom(Lorg/json/JSONObject;)V

    .line 986
    invoke-virtual {v2, v1}, Lc8/Tko;->setUserInfo(Lcom/youku/usercenter/passport/remote/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :goto_0
    iget-object v3, p0, Lc8/qko;->val$aCallback:Lc8/Mko;

    invoke-interface {v3, v2}, Lc8/Mko;->onSuccess(Lc8/Oko;)V

    .line 995
    .end local v1    # "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    :cond_0
    :goto_1
    return-void

    .line 987
    .restart local v1    # "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getUpdatedUserInfo onResult"

    invoke-static {v0, v3}, Lc8/Gko;->access$400(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    :cond_1
    iget-object v3, p0, Lc8/qko;->val$aCallback:Lc8/Mko;

    invoke-interface {v3, v2}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_1
.end method
