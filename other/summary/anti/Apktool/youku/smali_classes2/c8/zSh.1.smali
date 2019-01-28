.class public Lc8/zSh;
.super Ljava/lang/Object;
.source "ActionJSBridge.java"

# interfaces
.implements Lc8/BDn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/BSh;->getGeolocation(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/BSh;


# direct methods
.method constructor <init>(Lc8/BSh;)V
    .locals 0
    .param p1, "this$0"    # Lc8/BSh;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/zSh;->this$0:Lc8/BSh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v2, p0, Lc8/zSh;->this$0:Lc8/BSh;

    invoke-static {v2}, Lc8/BSh;->access$000(Lc8/BSh;)Lc8/TTh;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 118
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 119
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "error"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lc8/zSh;->this$0:Lc8/BSh;

    invoke-static {v2}, Lc8/BSh;->access$000(Lc8/BSh;)Lc8/TTh;

    move-result-object v2

    invoke-virtual {v2}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 121
    .local v1, "webView":Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 122
    new-instance v2, Lc8/ySh;

    invoke-direct {v2, p0, v1, v0}, Lc8/ySh;-><init>(Lc8/zSh;Landroid/webkit/WebView;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 130
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "webView":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public onCallbackSuccess(Lc8/DDn;)V
    .locals 4
    .param p1, "locationInfo"    # Lc8/DDn;

    .prologue
    .line 98
    iget-object v2, p0, Lc8/zSh;->this$0:Lc8/BSh;

    invoke-static {v2}, Lc8/BSh;->access$000(Lc8/BSh;)Lc8/TTh;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 99
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "error"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v2, "longitude"

    iget-object v3, p1, Lc8/DDn;->longitude:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v2, "latitude"

    iget-object v3, p1, Lc8/DDn;->latitude:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v2, p0, Lc8/zSh;->this$0:Lc8/BSh;

    invoke-static {v2}, Lc8/BSh;->access$000(Lc8/BSh;)Lc8/TTh;

    move-result-object v2

    invoke-virtual {v2}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 104
    .local v1, "webView":Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 105
    new-instance v2, Lc8/xSh;

    invoke-direct {v2, p0, v1, v0}, Lc8/xSh;-><init>(Lc8/zSh;Landroid/webkit/WebView;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 113
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "webView":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method
