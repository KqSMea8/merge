.class public Lc8/fZm;
.super Lc8/AI;
.source "PopLayerWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iZm;->buildWebView(Landroid/content/Context;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Landroid/taobao/windvane/webview/IWVWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iZm;


# direct methods
.method constructor <init>(Lc8/iZm;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/iZm;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 232
    iput-object p1, p0, Lc8/fZm;->this$0:Lc8/iZm;

    invoke-direct {p0, p2}, Lc8/AI;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 235
    iget-object v0, p0, Lc8/fZm;->this$0:Lc8/iZm;

    invoke-static {v0, p1}, Lc8/iZm;->access$100(Lc8/iZm;Landroid/webkit/ConsoleMessage;)V

    .line 236
    invoke-super {p0, p1}, Lc8/AI;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method
