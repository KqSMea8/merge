.class public Lc8/Glg;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mlg;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/Mlg;


# direct methods
.method constructor <init>(Lc8/Mlg;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lc8/Glg;->a:Lc8/Mlg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 137
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lc8/Glg;->a:Lc8/Mlg;

    invoke-virtual {v0}, Lc8/Mlg;->b()V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lc8/Glg;->a:Lc8/Mlg;

    invoke-virtual {v0}, Lc8/Mlg;->e()V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
