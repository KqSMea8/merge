.class public Lc8/LSh;
.super Ljava/lang/Object;
.source "PayJSBridge.java"

# interfaces
.implements Lc8/bac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OSh;->newAlibcComponentCallback(Ljava/lang/String;Z)Lc8/bac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OSh;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lc8/OSh;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/OSh;

    .prologue
    .line 223
    iput-object p1, p0, Lc8/LSh;->this$0:Lc8/OSh;

    iput-object p2, p0, Lc8/LSh;->val$methodName:Ljava/lang/String;

    iput-boolean p3, p0, Lc8/LSh;->val$showToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errno"    # Ljava/lang/String;
    .param p2, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    iget-object v1, p0, Lc8/LSh;->val$methodName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lc8/OSh;->access$000(Lc8/OSh;Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    iget-boolean v0, p0, Lc8/LSh;->val$showToast:Z

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    invoke-static {v0}, Lc8/OSh;->access$100(Lc8/OSh;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    invoke-static {v0}, Lc8/OSh;->access$100(Lc8/OSh;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 243
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string/jumbo p2, "\u52a0\u8d2d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427"

    .line 246
    :cond_1
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/OSh;->access$102(Lc8/OSh;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 247
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    invoke-static {v0}, Lc8/OSh;->access$100(Lc8/OSh;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    :cond_2
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 226
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    iget-object v1, p0, Lc8/LSh;->val$methodName:Ljava/lang/String;

    const-string/jumbo v2, "\u6210\u529f"

    invoke-static {v0, v1, v3, v2}, Lc8/OSh;->access$000(Lc8/OSh;Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    iget-boolean v0, p0, Lc8/LSh;->val$showToast:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    invoke-static {v0}, Lc8/OSh;->access$100(Lc8/OSh;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    invoke-static {v0}, Lc8/OSh;->access$100(Lc8/OSh;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 231
    :cond_0
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u52a0\u8d2d\u6210\u529f\uff0c\u60a8\u53ef\u5728\u4e2a\u4eba\u4e2d\u5fc3\u67e5\u770b"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/OSh;->access$102(Lc8/OSh;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 232
    iget-object v0, p0, Lc8/LSh;->this$0:Lc8/OSh;

    invoke-static {v0}, Lc8/OSh;->access$100(Lc8/OSh;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    :cond_1
    return-void
.end method
