.class public Lc8/gjb;
.super Landroid/webkit/WebViewClient;
.source "QrLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/QrLoginActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/auth/third/ui/QrLoginActivity;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/ui/QrLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/auth/third/ui/QrLoginActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 161
    iput-object p1, p0, Lc8/gjb;->this$0:Lcom/ali/auth/third/ui/QrLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    const-class v0, Lc8/hib;

    invoke-static {v0}, Lc8/sgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hib;

    invoke-interface {v0, p2}, Lc8/hib;->isLoginUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-class v0, Lc8/hib;

    invoke-static {v0}, Lc8/sgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hib;

    new-instance v1, Lc8/fjb;

    invoke-direct {v1, p0, p1}, Lc8/fjb;-><init>(Lc8/gjb;Landroid/webkit/WebView;)V

    invoke-interface {v0, v1}, Lc8/hib;->auth(Lc8/xgb;)V

    .line 176
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
