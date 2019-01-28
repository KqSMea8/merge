.class public final Lc8/cE;
.super Ljava/lang/Object;
.source "WVCallBackContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$jsCode:Ljava/lang/String;

.field final synthetic val$webview:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 218
    iput-object p1, p0, Lc8/cE;->val$webview:Landroid/taobao/windvane/webview/IWVWebView;

    iput-object p2, p0, Lc8/cE;->val$jsCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lc8/cE;->val$webview:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v1, p0, Lc8/cE;->val$jsCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V

    .line 222
    return-void
.end method
