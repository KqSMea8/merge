.class public Lc8/Wp;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Xp;


# direct methods
.method constructor <init>(Lc8/Xp;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Xp;

    .prologue
    .line 135
    .local p0, "this":Lc8/Wp;, "Landroid/support/v7/util/MessageThreadUtil$2$1;"
    iput-object p1, p0, Lc8/Wp;->this$1:Lc8/Xp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 139
    .local p0, "this":Lc8/Wp;, "Landroid/support/v7/util/MessageThreadUtil$2$1;"
    :goto_0
    iget-object v0, p0, Lc8/Wp;->this$1:Lc8/Xp;

    iget-object v0, v0, Lc8/Xp;->mQueue:Lc8/Yp;

    invoke-virtual {v0}, Lc8/Yp;->next()Lc8/Zp;

    move-result-object v6

    .line 140
    .local v6, "msg":Lc8/Zp;
    if-eqz v6, :cond_0

    .line 143
    iget v0, v6, Lc8/Zp;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    const-string/jumbo v0, "ThreadUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported message, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lc8/Zp;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lc8/Wp;->this$1:Lc8/Xp;

    iget-object v0, v0, Lc8/Xp;->mQueue:Lc8/Yp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Yp;->removeMessages(I)V

    .line 146
    iget-object v0, p0, Lc8/Wp;->this$1:Lc8/Xp;

    iget-object v0, v0, Lc8/Xp;->val$callback:Lc8/eq;

    iget v1, v6, Lc8/Zp;->arg1:I

    invoke-interface {v0, v1}, Lc8/eq;->refresh(I)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lc8/Wp;->this$1:Lc8/Xp;

    iget-object v0, v0, Lc8/Xp;->mQueue:Lc8/Yp;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/Yp;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lc8/Wp;->this$1:Lc8/Xp;

    iget-object v0, v0, Lc8/Xp;->mQueue:Lc8/Yp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc8/Yp;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lc8/Wp;->this$1:Lc8/Xp;

    iget-object v0, v0, Lc8/Xp;->val$callback:Lc8/eq;

    iget v1, v6, Lc8/Zp;->arg1:I

    iget v2, v6, Lc8/Zp;->arg2:I

    iget v3, v6, Lc8/Zp;->arg3:I

    iget v4, v6, Lc8/Zp;->arg4:I

    iget v5, v6, Lc8/Zp;->arg5:I

    invoke-interface/range {v0 .. v5}, Lc8/eq;->updateRange(IIIII)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lc8/Wp;->this$1:Lc8/Xp;

    iget-object v0, v0, Lc8/Xp;->val$callback:Lc8/eq;

    iget v1, v6, Lc8/Zp;->arg1:I

    iget v2, v6, Lc8/Zp;->arg2:I

    invoke-interface {v0, v1, v2}, Lc8/eq;->loadTile(II)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lc8/Wp;->this$1:Lc8/Xp;

    iget-object v1, v0, Lc8/Xp;->val$callback:Lc8/eq;

    iget-object v0, v6, Lc8/Zp;->data:Ljava/lang/Object;

    check-cast v0, Lc8/hq;

    invoke-interface {v1, v0}, Lc8/eq;->recycleTile(Lc8/hq;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lc8/Wp;->this$1:Lc8/Xp;

    iget-object v0, v0, Lc8/Xp;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    return-void

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
