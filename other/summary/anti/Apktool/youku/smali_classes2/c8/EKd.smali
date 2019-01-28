.class public Lc8/EKd;
.super Landroid/os/Handler;
.source "RegisterStatusStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GKd;


# direct methods
.method constructor <init>(Lc8/GKd;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lc8/GKd;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 38
    iput-object p1, p0, Lc8/EKd;->this$0:Lc8/GKd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lc8/EKd;->this$0:Lc8/GKd;

    invoke-virtual {v0}, Lc8/GKd;->process()Z

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
