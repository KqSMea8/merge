.class public Lc8/DMp;
.super Lc8/FD;
.source "CheckCodeValidateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;


# direct methods
.method public constructor <init>(Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;
    .param p2, "x0"    # Landroid/content/Context;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lc8/DMp;->this$0:Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;

    invoke-direct {p0, p2}, Lc8/FD;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/DMp;->this$0:Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;

    iget-object v0, v0, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->httpReferValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lc8/DMp;->this$0:Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;

    const-string/jumbo v1, "success"

    invoke-static {v0, v1}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->access$000(Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lc8/DMp;->this$0:Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;

    invoke-virtual {v0}, Lmtopsdk/extra/antiattack/CheckCodeValidateActivity;->finish()V

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lc8/FD;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
