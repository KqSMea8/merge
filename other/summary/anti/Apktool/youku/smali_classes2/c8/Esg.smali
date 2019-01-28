.class public Lc8/Esg;
.super Ljava/lang/Object;
.source "ActionNotifiable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lc8/hsg;

.field final b:Lc8/qsg;

.field final c:Ljava/lang/Object;

.field final d:I


# direct methods
.method private constructor <init>(ILc8/qsg;Lc8/hsg;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "task"    # Lc8/qsg;
    .param p3, "listener"    # Lc8/hsg;
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lc8/Esg;->d:I

    .line 54
    iput-object p2, p0, Lc8/Esg;->b:Lc8/qsg;

    .line 55
    iput-object p3, p0, Lc8/Esg;->a:Lc8/hsg;

    .line 56
    iput-object p4, p0, Lc8/Esg;->c:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method static a(Landroid/os/Handler;ILc8/qsg;Lc8/hsg;Ljava/lang/Object;)V
    .locals 1
    .param p0, "scheduler"    # Landroid/os/Handler;
    .param p1, "type"    # I
    .param p2, "task"    # Lc8/qsg;
    .param p3, "listener"    # Lc8/hsg;
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-nez p3, :cond_0

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lc8/Esg;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Esg;-><init>(ILc8/qsg;Lc8/hsg;Ljava/lang/Object;)V

    .line 45
    .local v0, "notifiable":Ljava/lang/Runnable;
    if-nez p0, :cond_1

    .line 46
    invoke-static {v0}, Lc8/Etg;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget v0, p0, Lc8/Esg;->d:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v1, p0, Lc8/Esg;->a:Lc8/hsg;

    iget-object v2, p0, Lc8/Esg;->b:Lc8/qsg;

    iget-object v0, p0, Lc8/Esg;->c:Ljava/lang/Object;

    check-cast v0, Lc8/isg;

    invoke-interface {v1, v2, v0}, Lc8/hsg;->onSuccess(Lc8/qsg;Lc8/isg;)V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lc8/Esg;->a:Lc8/hsg;

    iget-object v1, p0, Lc8/Esg;->b:Lc8/qsg;

    invoke-interface {v0, v1}, Lc8/hsg;->onCancel(Lc8/qsg;)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v1, p0, Lc8/Esg;->a:Lc8/hsg;

    iget-object v2, p0, Lc8/Esg;->b:Lc8/qsg;

    iget-object v0, p0, Lc8/Esg;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lc8/hsg;->onProgress(Lc8/qsg;I)V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v1, p0, Lc8/Esg;->a:Lc8/hsg;

    iget-object v2, p0, Lc8/Esg;->b:Lc8/qsg;

    iget-object v0, p0, Lc8/Esg;->c:Ljava/lang/Object;

    check-cast v0, Lc8/rsg;

    invoke-interface {v1, v2, v0}, Lc8/hsg;->onFailure(Lc8/qsg;Lc8/rsg;)V

    goto :goto_0

    .line 75
    :pswitch_4
    iget-object v0, p0, Lc8/Esg;->a:Lc8/hsg;

    iget-object v1, p0, Lc8/Esg;->b:Lc8/qsg;

    invoke-interface {v0, v1}, Lc8/hsg;->onPause(Lc8/qsg;)V

    goto :goto_0

    .line 78
    :pswitch_5
    iget-object v0, p0, Lc8/Esg;->a:Lc8/hsg;

    iget-object v1, p0, Lc8/Esg;->b:Lc8/qsg;

    invoke-interface {v0, v1}, Lc8/hsg;->onStart(Lc8/qsg;)V

    goto :goto_0

    .line 81
    :pswitch_6
    iget-object v0, p0, Lc8/Esg;->a:Lc8/hsg;

    iget-object v1, p0, Lc8/Esg;->b:Lc8/qsg;

    invoke-interface {v0, v1}, Lc8/hsg;->onResume(Lc8/qsg;)V

    goto :goto_0

    .line 84
    :pswitch_7
    iget-object v0, p0, Lc8/Esg;->a:Lc8/hsg;

    iget-object v1, p0, Lc8/Esg;->b:Lc8/qsg;

    invoke-interface {v0, v1}, Lc8/hsg;->onWait(Lc8/qsg;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
