.class public Lc8/Rye;
.super Lc8/Uye;
.source "AuthWebViewRequestParam.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/Uye;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "authInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;
    .param p2, "type"    # Lcom/sina/weibo/sdk/web/WebRequestType;
    .param p3, "callback"    # Ljava/lang/String;
    .param p4, "specialTitle"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p6}, Lc8/Uye;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected childFillBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    return-void
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lc8/Rye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExtraTask()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lc8/Uye;->hasExtraTask()Z

    move-result v0

    return v0
.end method

.method protected transformChildBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    return-void
.end method

.method public updateRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method
