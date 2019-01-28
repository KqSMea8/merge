.class public Lc8/ijb;
.super Lc8/xjb;
.source "QrLoginConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/QrLoginConfirmActivity;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/auth/third/ui/QrLoginConfirmActivity;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/ui/QrLoginConfirmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/auth/third/ui/QrLoginConfirmActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lc8/ijb;->this$0:Lcom/ali/auth/third/ui/QrLoginConfirmActivity;

    invoke-direct {p0}, Lc8/xjb;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lc8/hib;

    invoke-static {v0}, Lc8/sgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hib;

    invoke-interface {v0, p2}, Lc8/hib;->isLoginUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-class v0, Lc8/hib;

    invoke-static {v0}, Lc8/sgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hib;

    new-instance v1, Lc8/hjb;

    invoke-direct {v1, p0, p1}, Lc8/hjb;-><init>(Lc8/ijb;Landroid/webkit/WebView;)V

    invoke-interface {v0, v1}, Lc8/hib;->auth(Lc8/xgb;)V

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lc8/xjb;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
