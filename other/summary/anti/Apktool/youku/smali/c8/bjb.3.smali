.class public Lc8/bjb;
.super Lc8/Ajb;
.source "LoginWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/LoginWebViewActivity;->createWebChromeClient()Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/ui/LoginWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/auth/third/ui/LoginWebViewActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lc8/bjb;->this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-direct {p0}, Lc8/Ajb;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lc8/bjb;->this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    iget-boolean v0, v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->canReceiveTitle:Z

    if-eqz v0, :cond_1

    .line 157
    if-eqz p2, :cond_0

    const-string/jumbo v0, "\u6211\u559c\u6b22"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    if-eqz p2, :cond_1

    .line 160
    iget-object v0, p0, Lc8/bjb;->this$0:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-static {v0}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->access$300(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_1
    return-void
.end method
