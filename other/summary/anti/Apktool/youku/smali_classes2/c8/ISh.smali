.class public final Lc8/ISh;
.super Ljava/lang/Object;
.source "LoginJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KSh;->loginSuccess(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lc8/ISh;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    const-string/jumbo v1, ""

    .line 75
    .local v1, "uid":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    iget-object v1, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "error"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v2, p0, Lc8/ISh;->val$view:Landroid/webkit/WebView;

    const-string/jumbo v3, "showLoginViewCallback"

    invoke-static {v2, v3, v0}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    return-void

    .line 75
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
