.class public Lc8/PMf;
.super Ljava/lang/Object;
.source "RemoteAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/MMf;,
        Lc8/OMf;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.rb-RemoteAuth"

.field private static iRemoteAuth:Lc8/LMf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "bizId"    # Ljava/lang/String;
    .param p1, "apiInfo"    # Ljava/lang/String;
    .param p2, "failInfo"    # Ljava/lang/String;
    .param p3, "showUI"    # Z

    .prologue
    .line 25
    sget-object v0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    if-nez v0, :cond_1

    .line 26
    const-string/jumbo v0, "mtopsdk.rb-RemoteAuth"

    const-string/jumbo v1, "didn\'t set IRemoteAuth implement. remoteAuth=null"

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    sget-object v0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    invoke-interface {v0}, Lc8/LMf;->isAuthorizing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    const-string/jumbo v0, "mtopsdk.rb-RemoteAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "call auth. bizId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " apiInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_2
    sget-object v0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    invoke-static {}, Lc8/OMf;->instance()Lc8/OMf;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lc8/LMf;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/JMf;)V

    goto :goto_0
.end method

.method public static getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    invoke-interface {v0}, Lc8/LMf;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAuthInfoValid()Z
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 45
    :cond_0
    sget-object v0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    invoke-interface {v0}, Lc8/LMf;->isAuthorizing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    invoke-interface {v0}, Lc8/LMf;->isAuthInfoValid()Z

    move-result v0

    goto :goto_0
.end method

.method public static setAuthImpl(Lc8/LMf;)V
    .locals 3
    .param p0, "remoteAuth"    # Lc8/LMf;

    .prologue
    .line 18
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string/jumbo v0, "mtopsdk.rb-RemoteAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set auth implement. remoteAuth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    sput-object p0, Lc8/PMf;->iRemoteAuth:Lc8/LMf;

    .line 22
    return-void
.end method
