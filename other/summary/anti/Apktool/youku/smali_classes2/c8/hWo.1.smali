.class public Lc8/hWo;
.super Ljava/lang/Object;
.source "YKWXImageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iWo;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iWo;

.field final synthetic val$quality:Lcom/taobao/weex/dom/WXImageQuality;

.field final synthetic val$strategy:Lc8/GXf;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lc8/iWo;Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/iWo;

    .prologue
    .line 25
    iput-object p1, p0, Lc8/hWo;->this$0:Lc8/iWo;

    iput-object p2, p0, Lc8/hWo;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lc8/hWo;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lc8/hWo;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    iput-object p5, p0, Lc8/hWo;->val$strategy:Lc8/GXf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 28
    iget-object v1, p0, Lc8/hWo;->val$view:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/hWo;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Lc8/hWo;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, p0, Lc8/hWo;->val$view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, p0, Lc8/hWo;->val$url:Ljava/lang/String;

    const-string/jumbo v2, "img://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    iget-object v1, p0, Lc8/hWo;->this$0:Lc8/iWo;

    iget-object v2, p0, Lc8/hWo;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lc8/hWo;->val$view:Landroid/widget/ImageView;

    iget-object v4, p0, Lc8/hWo;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    iget-object v5, p0, Lc8/hWo;->val$strategy:Lc8/GXf;

    invoke-static {v1, v2, v3, v4, v5}, Lc8/iWo;->access$000(Lc8/iWo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    goto :goto_0

    .line 39
    :cond_3
    iget-object v0, p0, Lc8/hWo;->val$url:Ljava/lang/String;

    .line 40
    .local v0, "finalUrl":Ljava/lang/String;
    iget-object v1, p0, Lc8/hWo;->val$url:Ljava/lang/String;

    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/hWo;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_4
    iget-object v1, p0, Lc8/hWo;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lc8/hWo;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_0

    .line 46
    const-string/jumbo v1, "local-zk://icon_network_error"

    iget-object v2, p0, Lc8/hWo;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    iget-object v1, p0, Lc8/hWo;->val$view:Landroid/widget/ImageView;

    sget v2, Lcom/youku/phone/R$drawable;->no_network_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 49
    :cond_5
    iget-object v1, p0, Lc8/hWo;->this$0:Lc8/iWo;

    iget-object v2, p0, Lc8/hWo;->val$view:Landroid/widget/ImageView;

    iget-object v3, p0, Lc8/hWo;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    iget-object v4, p0, Lc8/hWo;->val$strategy:Lc8/GXf;

    invoke-static {v1, v0, v2, v3, v4}, Lc8/iWo;->access$101(Lc8/iWo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    goto/16 :goto_0
.end method
