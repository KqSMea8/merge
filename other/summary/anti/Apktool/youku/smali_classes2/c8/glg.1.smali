.class public Lc8/glg;
.super Lc8/llg;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsListener"
.end annotation


# instance fields
.field final synthetic a:Lc8/jlg;


# direct methods
.method private constructor <init>(Lc8/jlg;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lc8/glg;->a:Lc8/jlg;

    invoke-direct {p0}, Lc8/llg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/jlg;Lc8/elg;)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lc8/glg;-><init>(Lc8/jlg;)V

    return-void
.end method


# virtual methods
.method public onAddShare(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 325
    const-string/jumbo v0, "openSDK_LOG.TDialog"

    const-string/jumbo v1, "JsListener onAddShare"

    invoke-static {v0, v1}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, p1}, Lc8/glg;->onComplete(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 362
    const-string/jumbo v0, "openSDK_LOG.TDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JsListener onCancel --msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lc8/glg;->a:Lc8/jlg;

    invoke-static {v0}, Lc8/jlg;->b(Lc8/jlg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    iget-object v0, p0, Lc8/glg;->a:Lc8/jlg;

    invoke-virtual {v0}, Lc8/jlg;->dismiss()V

    .line 365
    return-void
.end method

.method public onCancelAddShare(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 338
    const-string/jumbo v0, "openSDK_LOG.TDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JsListener onCancelAddShare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, "cancel"

    invoke-virtual {p0, v0}, Lc8/glg;->onCancel(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public onCancelInvite()V
    .locals 2

    .prologue
    .line 351
    const-string/jumbo v0, "openSDK_LOG.TDialog"

    const-string/jumbo v1, "JsListener onCancelInvite"

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lc8/glg;->onCancel(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public onCancelLogin()V
    .locals 1

    .prologue
    .line 345
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lc8/glg;->onCancel(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lc8/glg;->a:Lc8/jlg;

    invoke-static {v0}, Lc8/jlg;->b(Lc8/jlg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 357
    const-string/jumbo v0, "openSDK_LOG.TDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JsListener onComplete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lc8/glg;->a:Lc8/jlg;

    invoke-virtual {v0}, Lc8/jlg;->dismiss()V

    .line 359
    return-void
.end method

.method public onInvite(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lc8/glg;->onComplete(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public onLoad(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lc8/glg;->a:Lc8/jlg;

    invoke-static {v0}, Lc8/jlg;->b(Lc8/jlg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 380
    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lc8/glg;->a:Lc8/jlg;

    invoke-static {v0}, Lc8/jlg;->b(Lc8/jlg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 370
    return-void
.end method
