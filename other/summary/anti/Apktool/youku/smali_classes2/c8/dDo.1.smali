.class public Lc8/dDo;
.super Lc8/HI;
.source "PlayerWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fDo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fDo;


# direct methods
.method constructor <init>(Lc8/fDo;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fDo;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 196
    iput-object p1, p0, Lc8/dDo;->this$0:Lc8/fDo;

    invoke-direct {p0, p2}, Lc8/HI;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lc8/HI;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[WVWebViewClient][onPageFinished] url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/fDo;->access$500(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lc8/dDo;->this$0:Lc8/fDo;

    invoke-virtual {v0}, Lc8/fDo;->dismissLoading()V

    .line 209
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3}, Lc8/HI;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[WVWebViewClient][onPageStarted] url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/fDo;->access$500(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lc8/dDo;->this$0:Lc8/fDo;

    invoke-virtual {v0}, Lc8/fDo;->showLoading()V

    .line 202
    return-void
.end method
