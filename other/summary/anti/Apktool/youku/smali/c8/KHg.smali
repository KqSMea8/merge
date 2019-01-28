.class public final Lc8/KHg;
.super Ljava/lang/Object;
.source "AnalyticsAgent.java"

# interfaces
.implements Lcom/ut/mini/IUTApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/LHg;->setAppApplicationInstance(Landroid/app/Application;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isDebug:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lc8/KHg;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lc8/KHg;->val$channelId:Ljava/lang/String;

    iput-object p3, p0, Lc8/KHg;->val$appkey:Ljava/lang/String;

    iput-boolean p4, p0, Lc8/KHg;->val$isDebug:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUTAppVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 992
    iget-object v1, p0, Lc8/KHg;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lc8/WHg;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "getAppVersionName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUTAppVersion().getAppVersionName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 994
    return-object v0
.end method

.method public getUTChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getUTChannel.channelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/KHg;->val$channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lc8/KHg;->val$channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;
    .locals 1

    .prologue
    .line 1038
    const-string/jumbo v0, "getUTCrashCraughtListener"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1039
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .locals 3

    .prologue
    .line 1012
    const-string/jumbo v1, "getUTRequestAuthInstance"

    invoke-static {v1}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1013
    const-string/jumbo v0, ""

    .line 1014
    .local v0, "authCode":Ljava/lang/String;
    new-instance v1, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    iget-object v2, p0, Lc8/KHg;->val$appkey:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isAliyunOsSystem()Z
    .locals 1

    .prologue
    .line 1031
    const-string/jumbo v0, "isAliyunOsSystem"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method public isUTCrashHandlerDisable()Z
    .locals 1

    .prologue
    .line 1045
    const-string/jumbo v0, "isUTCrashHandlerDisable"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1046
    const/4 v0, 0x1

    return v0
.end method

.method public isUTLogEnable()Z
    .locals 2

    .prologue
    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isUTLogEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/KHg;->val$isDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1021
    iget-boolean v0, p0, Lc8/KHg;->val$isDebug:Z

    if-eqz v0, :cond_0

    .line 1022
    const/4 v0, 0x1

    .line 1024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
