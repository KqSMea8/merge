.class public Lc8/xSh;
.super Ljava/lang/Object;
.source "ActionJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zSh;->onCallbackSuccess(Lc8/DDn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/zSh;

.field final synthetic val$m:Ljava/util/Map;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lc8/zSh;Landroid/webkit/WebView;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lc8/zSh;

    .prologue
    .line 105
    iput-object p1, p0, Lc8/xSh;->this$1:Lc8/zSh;

    iput-object p2, p0, Lc8/xSh;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lc8/xSh;->val$m:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lc8/xSh;->val$webView:Landroid/webkit/WebView;

    const-string/jumbo v1, "geolocationCallback"

    iget-object v2, p0, Lc8/xSh;->val$m:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    return-void
.end method
