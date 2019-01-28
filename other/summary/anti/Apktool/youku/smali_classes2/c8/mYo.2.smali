.class public Lc8/mYo;
.super Ljava/lang/Object;
.source "CardLoginRegistView.java"

# interfaces
.implements Lc8/Rbp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nYo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/nYo;


# direct methods
.method constructor <init>(Lc8/nYo;)V
    .locals 0
    .param p1, "this$1"    # Lc8/nYo;

    .prologue
    .line 186
    iput-object p1, p0, Lc8/mYo;->this$1:Lc8/nYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lc8/Obp;)V
    .locals 8
    .param p1, "item"    # Lc8/Obp;

    .prologue
    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    .local v2, "now":J
    invoke-static {}, Lc8/pYo;->access$600()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {v2, v3}, Lc8/pYo;->access$602(J)J

    .line 197
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p1}, Lc8/Obp;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 199
    iget-object v1, p0, Lc8/mYo;->this$1:Lc8/nYo;

    iget-object v1, v1, Lc8/nYo;->this$0:Lc8/pYo;

    invoke-static {v1}, Lc8/pYo;->access$100(Lc8/pYo;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
