.class public Lc8/fIf;
.super Landroid/os/Handler;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gIf;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gIf;


# direct methods
.method constructor <init>(Lc8/gIf;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 137
    iput-object p1, p0, Lc8/fIf;->this$0:Lc8/gIf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lc8/fIf;->this$0:Lc8/gIf;

    invoke-static {v1, v0}, Lc8/gIf;->access$000(Lc8/gIf;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
