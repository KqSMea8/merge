.class public Lc8/Tko;
.super Lc8/Oko;
.source "UserInfoResult.java"


# instance fields
.field private mUserInfo:Lcom/youku/usercenter/passport/remote/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lc8/Oko;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lc8/Tko;->mUserInfo:Lcom/youku/usercenter/passport/remote/UserInfo;

    return-object v0
.end method

.method public setUserInfo(Lcom/youku/usercenter/passport/remote/UserInfo;)V
    .locals 0
    .param p1, "aUserInfo"    # Lcom/youku/usercenter/passport/remote/UserInfo;

    .prologue
    .line 17
    iput-object p1, p0, Lc8/Tko;->mUserInfo:Lcom/youku/usercenter/passport/remote/UserInfo;

    .line 18
    return-void
.end method
