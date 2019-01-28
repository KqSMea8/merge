.class public Lc8/VHf;
.super Ljava/lang/Object;
.source "LogFileUploaderImp.java"

# interfaces
.implements Lc8/hsg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/XHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskListenerImp"
.end annotation


# instance fields
.field listener:Lc8/PHf;

.field final synthetic this$0:Lc8/XHf;


# direct methods
.method constructor <init>(Lc8/XHf;Lc8/PHf;)V
    .locals 0
    .param p2, "fileUploadListener"    # Lc8/PHf;

    .prologue
    .line 130
    iput-object p1, p0, Lc8/VHf;->this$0:Lc8/XHf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lc8/VHf;->listener:Lc8/PHf;

    .line 132
    return-void
.end method


# virtual methods
.method public onCancel(Lc8/qsg;)V
    .locals 4
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 170
    iget-object v0, p0, Lc8/VHf;->listener:Lc8/PHf;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lc8/VHf;->listener:Lc8/PHf;

    const-string/jumbo v1, "cancel"

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "the upload task is canceled!"

    invoke-interface {v0, v1, v2, v3}, Lc8/PHf;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onFailure(Lc8/qsg;Lc8/rsg;)V
    .locals 4
    .param p1, "task"    # Lc8/qsg;
    .param p2, "code"    # Lc8/rsg;

    .prologue
    .line 163
    iget-object v0, p0, Lc8/VHf;->listener:Lc8/PHf;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lc8/VHf;->listener:Lc8/PHf;

    iget-object v1, p2, Lc8/rsg;->code:Ljava/lang/String;

    iget-object v2, p2, Lc8/rsg;->subcode:Ljava/lang/String;

    iget-object v3, p2, Lc8/rsg;->info:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lc8/PHf;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onPause(Lc8/qsg;)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 152
    return-void
.end method

.method public onProgress(Lc8/qsg;I)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;
    .param p2, "progress"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onResume(Lc8/qsg;)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 147
    return-void
.end method

.method public onStart(Lc8/qsg;)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 142
    return-void
.end method

.method public onSuccess(Lc8/qsg;Lc8/isg;)V
    .locals 3
    .param p1, "task"    # Lc8/qsg;
    .param p2, "result"    # Lc8/isg;

    .prologue
    .line 156
    iget-object v0, p0, Lc8/VHf;->listener:Lc8/PHf;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lc8/VHf;->listener:Lc8/PHf;

    invoke-interface {p1}, Lc8/qsg;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lc8/isg;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/PHf;->onSucessed(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onWait(Lc8/qsg;)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 137
    return-void
.end method
