.class public Lc8/Ahg;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Chg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lc8/Chg;

.field private b:Lc8/zhg;


# direct methods
.method public constructor <init>(Lc8/Chg;Lc8/zhg;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lc8/Ahg;->a:Lc8/Chg;

    .line 171
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    iput-object p2, p0, Lc8/Ahg;->b:Lc8/zhg;

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v1, p0, Lc8/Ahg;->b:Lc8/zhg;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lc8/zhg;->a(Lc8/zhg;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lc8/Ahg;->b:Lc8/zhg;

    invoke-virtual {v0}, Lc8/zhg;->onCancel()V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lc8/Ahg;->a:Lc8/Chg;

    invoke-static {v0}, Lc8/Chg;->a(Lc8/Chg;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lc8/Chg;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
