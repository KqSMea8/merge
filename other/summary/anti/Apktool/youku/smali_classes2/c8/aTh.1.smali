.class public Lc8/aTh;
.super Ljava/lang/Object;
.source "WVPayBridge.java"

# interfaces
.implements Lc8/bac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dTh;->newAlibcComponentCallback(Ljava/lang/String;Z)Lc8/bac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dTh;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lc8/dTh;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/dTh;

    .prologue
    .line 318
    iput-object p1, p0, Lc8/aTh;->this$0:Lc8/dTh;

    iput-object p2, p0, Lc8/aTh;->val$methodName:Ljava/lang/String;

    iput-boolean p3, p0, Lc8/aTh;->val$showToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errno"    # Ljava/lang/String;
    .param p2, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    iget-object v1, p0, Lc8/aTh;->val$methodName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lc8/dTh;->access$000(Lc8/dTh;Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    iget-boolean v0, p0, Lc8/aTh;->val$showToast:Z

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    invoke-static {v0}, Lc8/dTh;->access$100(Lc8/dTh;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    invoke-static {v0}, Lc8/dTh;->access$100(Lc8/dTh;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 338
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const-string/jumbo p2, "\u52a0\u8d2d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427"

    .line 341
    :cond_1
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/dTh;->access$102(Lc8/dTh;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 342
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    invoke-static {v0}, Lc8/dTh;->access$100(Lc8/dTh;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 344
    :cond_2
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 321
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    iget-object v1, p0, Lc8/aTh;->val$methodName:Ljava/lang/String;

    const-string/jumbo v2, "\u6210\u529f"

    invoke-static {v0, v1, v3, v2}, Lc8/dTh;->access$000(Lc8/dTh;Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    iget-boolean v0, p0, Lc8/aTh;->val$showToast:Z

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    invoke-static {v0}, Lc8/dTh;->access$100(Lc8/dTh;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    invoke-static {v0}, Lc8/dTh;->access$100(Lc8/dTh;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 326
    :cond_0
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u52a0\u8d2d\u6210\u529f\uff0c\u60a8\u53ef\u5728\u4e2a\u4eba\u4e2d\u5fc3\u67e5\u770b"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/dTh;->access$102(Lc8/dTh;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 327
    iget-object v0, p0, Lc8/aTh;->this$0:Lc8/dTh;

    invoke-static {v0}, Lc8/dTh;->access$100(Lc8/dTh;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 329
    :cond_1
    return-void
.end method
