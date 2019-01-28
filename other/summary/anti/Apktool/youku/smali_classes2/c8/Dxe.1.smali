.class public Lc8/Dxe;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static internalDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lc8/yxe;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static internalGetRedirectUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Lc8/Fxe;

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3}, Lc8/yxe;->openRedirectUrl4LocationUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "params"    # Lc8/Fxe;

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lc8/yxe;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lc8/Fxe;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/Exe;

    .prologue
    .line 58
    new-instance v0, Lc8/vxe;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/vxe;-><init>(Landroid/content/Context;Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lc8/vxe;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method
