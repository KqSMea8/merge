.class public Lc8/GSh;
.super Ljava/lang/Object;
.source "LoadUrlJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HSh;->loadUrl(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HSh;

.field final synthetic val$shouldOverrideUrl:Z

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/HSh;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/HSh;

    .prologue
    .line 71
    iput-object p1, p0, Lc8/GSh;->this$0:Lc8/HSh;

    iput-object p2, p0, Lc8/GSh;->val$url:Ljava/lang/String;

    iput-boolean p3, p0, Lc8/GSh;->val$shouldOverrideUrl:Z

    iput-object p4, p0, Lc8/GSh;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lc8/GSh;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 76
    iget-boolean v2, p0, Lc8/GSh;->val$shouldOverrideUrl:Z

    if-eqz v2, :cond_0

    .line 77
    const-string/jumbo v2, "YKWeb.LoadUrlJSBridge"

    const-string/jumbo v3, "\u5728\u5f53\u524dWebView\u52a0\u8f7durl"

    invoke-static {v2, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lc8/GSh;->this$0:Lc8/HSh;

    invoke-static {v2}, Lc8/HSh;->access$000(Lc8/HSh;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lc8/GSh;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "hudong"

    iget-object v3, p0, Lc8/GSh;->val$source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lc8/GSh;->this$0:Lc8/HSh;

    invoke-virtual {v2}, Lc8/HSh;->getHudongBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 84
    :cond_1
    iget-object v2, p0, Lc8/GSh;->this$0:Lc8/HSh;

    invoke-static {v2}, Lc8/HSh;->access$100(Lc8/HSh;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lc8/GSh;->val$url:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
