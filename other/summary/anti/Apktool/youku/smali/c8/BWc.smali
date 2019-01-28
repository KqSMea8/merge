.class public Lc8/BWc;
.super Landroid/os/Handler;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/EWc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/xWc;)V
    .locals 0
    .param p1, "x0"    # Lc8/xWc;

    .prologue
    .line 353
    invoke-direct {p0}, Lc8/BWc;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 357
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc8/DWc;

    .line 358
    .local v0, "result":Lc8/DWc;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v1, v0, Lc8/DWc;->mTask:Lc8/EWc;

    iget-object v2, v0, Lc8/DWc;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lc8/EWc;->access$300(Lc8/EWc;Ljava/lang/Object;)V

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v1, v0, Lc8/DWc;->mTask:Lc8/EWc;

    iget-object v2, v0, Lc8/DWc;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lc8/EWc;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :pswitch_2
    iget-object v1, v0, Lc8/DWc;->mTask:Lc8/EWc;

    invoke-virtual {v1}, Lc8/EWc;->onCancelled()V

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
