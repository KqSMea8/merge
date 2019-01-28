.class public Lc8/gTh;
.super Lc8/RD;
.source "YKUser.java"


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "DYKUserJSBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private getUserInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 24
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 25
    .local v0, "result":Lc8/kE;
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    .line 26
    .local v1, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 27
    :cond_0
    new-instance v1, Lcom/youku/usercenter/passport/remote/UserInfo;

    .end local v1    # "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    invoke-direct {v1}, Lcom/youku/usercenter/passport/remote/UserInfo;-><init>()V

    .line 28
    .restart local v1    # "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    const-string/jumbo v2, "login"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :goto_0
    const-string/jumbo v2, "uid"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v2, "ytid"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v2, "yid"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v2, "avatar"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v2, "username"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v2, "nickname"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 39
    return-void

    .line 30
    :cond_1
    const-string/jumbo v2, "login"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 16
    const-string/jumbo v0, "getUserInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-direct {p0, p3}, Lc8/gTh;->getUserInfo(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 18
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
