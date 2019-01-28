.class public Lc8/Bwe;
.super Ljava/lang/Object;
.source "WbSdk.java"


# static fields
.field private static authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private static init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Bwe;->init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInit()V
    .locals 2

    .prologue
    .line 33
    sget-boolean v0, Lc8/Bwe;->init:Z

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "weibo sdk was not initall! please use: WbSdk.install() in your app Application or your main Activity. when you want to use weibo sdk function, make sure call WbSdk.install() before this function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    return-void
.end method

.method public static getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lc8/Bwe;->checkInit()V

    .line 41
    sget-object v0, Lc8/Bwe;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    return-object v0
.end method

.method public static install(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/sina/weibo/sdk/auth/AuthInfo;

    .prologue
    .line 18
    sget-boolean v0, Lc8/Bwe;->init:Z

    if-nez v0, :cond_2

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getScope()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please set right app info (appKey,Scope,redirect"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    sput-object p1, Lc8/Bwe;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 24
    invoke-static {p0}, Lc8/mye;->getInstance(Landroid/content/Context;)Lc8/mye;

    move-result-object v0

    sget-object v1, Lc8/Bwe;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/mye;->aidTaskInit(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Bwe;->init:Z

    .line 27
    :cond_2
    return-void
.end method
