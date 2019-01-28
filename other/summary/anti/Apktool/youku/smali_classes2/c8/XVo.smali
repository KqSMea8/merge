.class public Lc8/XVo;
.super Lc8/hwb;
.source "WXPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/weex/WXPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/weex/WXPageActivity;


# direct methods
.method public constructor <init>(Lcom/youku/weex/WXPageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/weex/WXPageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-direct {p0}, Lc8/hwb;-><init>()V

    return-void
.end method


# virtual methods
.method public needWrapper()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$100(Lcom/youku/weex/WXPageActivity;)Lc8/jWo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Lc8/nVf;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$100(Lcom/youku/weex/WXPageActivity;)Lc8/jWo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$100(Lcom/youku/weex/WXPageActivity;)Lc8/jWo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/jWo;->onWeexViewCreated(Lc8/nVf;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lc8/hwb;->onCreateView(Lc8/nVf;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onException(Lc8/nVf;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "shouldDegrade"    # Z
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$100(Lcom/youku/weex/WXPageActivity;)Lc8/jWo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$100(Lcom/youku/weex/WXPageActivity;)Lc8/jWo;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lc8/jWo;->onException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    if-eqz p2, :cond_1

    .line 128
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Ybf;->skipPreprocess()Lc8/Ybf;

    move-result-object v1

    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    .line 129
    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$200(Lcom/youku/weex/WXPageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$300(Lcom/youku/weex/WXPageActivity;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    invoke-virtual {v1, v0}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 130
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-virtual {v0}, Lcom/youku/weex/WXPageActivity;->finish()V

    .line 132
    :cond_1
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$200(Lcom/youku/weex/WXPageActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onRenderSuccess(Lc8/nVf;II)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$100(Lcom/youku/weex/WXPageActivity;)Lc8/jWo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lc8/XVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v0}, Lcom/youku/weex/WXPageActivity;->access$100(Lcom/youku/weex/WXPageActivity;)Lc8/jWo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/jWo;->onWeexRenderSuccess(Lc8/nVf;)V

    .line 120
    :cond_0
    return-void
.end method
