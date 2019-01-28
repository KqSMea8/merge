.class public Lc8/lI;
.super Ljava/lang/Object;
.source "WebNaviBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mI;->setClickListener(Landroid/widget/ImageButton;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mI;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lc8/mI;I)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lc8/lI;->this$0:Lc8/mI;

    iput p2, p0, Lc8/lI;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget v0, p0, Lc8/lI;->val$index:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 157
    iget-object v0, p0, Lc8/lI;->this$0:Lc8/mI;

    invoke-static {v0}, Lc8/mI;->access$000(Lc8/mI;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lc8/lI;->this$0:Lc8/mI;

    invoke-static {v1}, Lc8/mI;->access$100(Lc8/mI;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lc8/lI;->this$0:Lc8/mI;

    iget-object v0, v0, Lc8/mI;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lc8/lI;->this$0:Lc8/mI;

    iget-object v0, v0, Lc8/mI;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 162
    :cond_2
    iget v0, p0, Lc8/lI;->val$index:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 163
    iget-object v0, p0, Lc8/lI;->this$0:Lc8/mI;

    iget-object v0, v0, Lc8/mI;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lc8/lI;->this$0:Lc8/mI;

    iget-object v0, v0, Lc8/mI;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 166
    :cond_3
    iget v0, p0, Lc8/lI;->val$index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lc8/lI;->this$0:Lc8/mI;

    iget-object v0, v0, Lc8/mI;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lc8/lI;->this$0:Lc8/mI;

    iget-object v0, v0, Lc8/mI;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 170
    :cond_4
    iget-object v0, p0, Lc8/lI;->this$0:Lc8/mI;

    invoke-static {v0}, Lc8/mI;->access$200(Lc8/mI;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
