.class public Lc8/WD;
.super Ljava/lang/Object;
.source "WVBridgeEngine.java"

# interfaces
.implements Lc8/PD;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZD;->nativeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZD;

.field final synthetic val$reqId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/ZD;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lc8/WD;->this$0:Lc8/ZD;

    iput-object p2, p0, Lc8/WD;->val$reqId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public succeed(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v2, "{}"

    .line 42
    .local v2, "retString":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lc8/WD;->this$0:Lc8/ZD;

    invoke-static {v3, v2}, Lc8/ZD;->access$000(Lc8/ZD;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    const-string/jumbo v3, "javascript:window.__windvane__&&window.__windvane__.onSuccess(\'%s\',\'%%s\');"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lc8/WD;->val$reqId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "finalString":Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "js":Ljava/lang/String;
    iget-object v3, p0, Lc8/WD;->this$0:Lc8/ZD;

    invoke-static {v3}, Lc8/ZD;->access$100(Lc8/ZD;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V

    .line 47
    return-void

    .end local v0    # "finalString":Ljava/lang/String;
    .end local v1    # "js":Ljava/lang/String;
    .end local v2    # "retString":Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .line 41
    goto :goto_0
.end method
