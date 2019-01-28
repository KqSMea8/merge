.class public Lc8/Xyk;
.super Ljava/lang/Object;
.source "MKTHandler.java"

# interfaces
.implements Lc8/OJf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dzk;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dzk;

.field final synthetic val$domain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/dzk;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dzk;

    .prologue
    .line 80
    iput-object p1, p0, Lc8/Xyk;->this$0:Lc8/dzk;

    iput-object p2, p0, Lc8/Xyk;->val$domain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Xyk;->val$domain:Ljava/lang/String;

    return-object v0
.end method

.method public returnToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "s3"

    return-object v0
.end method

.method public returnUserId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v0

    .line 84
    .local v0, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const-string/jumbo v1, "MKTHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ytid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, v0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 89
    :goto_0
    return-object v1

    .line 88
    :cond_0
    const-string/jumbo v1, "MKTHandler"

    const-string/jumbo v2, "ytid is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v1, "0"

    goto :goto_0
.end method
