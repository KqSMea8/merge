.class public Lc8/AZb;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IZb;->getSystemDecorations()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IZb;


# direct methods
.method constructor <init>(Lc8/IZb;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lc8/AZb;->this$0:Lc8/IZb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 380
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    invoke-virtual {v6}, Lc8/IZb;->getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    move-result-object v5

    .line 381
    .local v5, "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "isMaximized"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 382
    .local v0, "isMaximized":Z
    if-eqz v0, :cond_0

    iget v6, v5, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    iget-object v7, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget v7, v7, Lc8/IZb;->displayWidth:I

    if-ne v6, v7, :cond_0

    iget v6, v5, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    iget-object v7, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget v7, v7, Lc8/IZb;->displayHeight:I

    if-ne v6, v7, :cond_0

    iget v6, v5, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    if-nez v6, :cond_0

    iget v6, v5, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    if-nez v6, :cond_0

    .line 384
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "isMaximized"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "widthBeforeMaximize"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 386
    .local v2, "oldWidth":I
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "heightBeforeMaximize"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 387
    .local v1, "oldHeight":I
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "xBeforeMaximize"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 388
    .local v3, "oldX":I
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "yBeforeMaximize"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 389
    .local v4, "oldY":I
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    invoke-virtual {v6}, Lc8/IZb;->edit()Lc8/GZb;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lc8/GZb;->setSize(II)Lc8/GZb;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lc8/GZb;->setPosition(II)Lc8/GZb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/GZb;->commit()V

    .line 398
    .end local v1    # "oldHeight":I
    .end local v2    # "oldWidth":I
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "isMaximized"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "widthBeforeMaximize"

    iget v8, v5, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "heightBeforeMaximize"

    iget v8, v5, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "xBeforeMaximize"

    iget v8, v5, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    iget-object v6, v6, Lc8/IZb;->data:Landroid/os/Bundle;

    const-string/jumbo v7, "yBeforeMaximize"

    iget v8, v5, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    iget-object v6, p0, Lc8/AZb;->this$0:Lc8/IZb;

    invoke-virtual {v6}, Lc8/IZb;->edit()Lc8/GZb;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Lc8/GZb;->setSize(FF)Lc8/GZb;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lc8/GZb;->setPosition(II)Lc8/GZb;

    move-result-object v6

    invoke-virtual {v6}, Lc8/GZb;->commit()V

    goto :goto_0
.end method
