.class public Lc8/cSh;
.super Landroid/os/Handler;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eSh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/YRh;)V
    .locals 0
    .param p1, "x0"    # Lc8/YRh;

    .prologue
    .line 337
    invoke-direct {p0}, Lc8/cSh;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 341
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc8/bSh;

    .line 342
    .local v0, "result":Lc8/bSh;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 354
    :goto_0
    return-void

    .line 345
    :pswitch_0
    iget-object v1, v0, Lc8/bSh;->mTask:Lc8/eSh;

    iget-object v2, v0, Lc8/bSh;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lc8/eSh;->access$300(Lc8/eSh;Ljava/lang/Object;)V

    goto :goto_0

    .line 348
    :pswitch_1
    iget-object v1, v0, Lc8/bSh;->mTask:Lc8/eSh;

    iget-object v2, v0, Lc8/bSh;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lc8/eSh;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :pswitch_2
    iget-object v1, v0, Lc8/bSh;->mTask:Lc8/eSh;

    invoke-virtual {v1}, Lc8/eSh;->onCancelled()V

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
