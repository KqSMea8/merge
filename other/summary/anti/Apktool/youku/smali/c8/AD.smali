.class public final Lc8/AD;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/DD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchValueCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/rD;)V
    .locals 0
    .param p1, "x0"    # Lc8/rD;

    .prologue
    .line 1308
    invoke-direct {p0}, Lc8/AD;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V
    .locals 2
    .param p1, "setupTask"    # Lcom/uc/webview/export/utility/SetupTask;

    .prologue
    .line 1312
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 1316
    :goto_0
    return-void

    .line 1314
    :cond_0
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v0}, Lc8/DD;->access$900(Landroid/content/Context;)V

    .line 1315
    const-string/jumbo v0, "WVUCWebView"

    const-string/jumbo v1, "SwitchValueCallback   isUCSDKSupport = true"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1308
    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/AD;->onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V

    return-void
.end method
