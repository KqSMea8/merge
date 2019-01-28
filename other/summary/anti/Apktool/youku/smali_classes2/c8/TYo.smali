.class public Lc8/TYo;
.super Landroid/os/Handler;
.source "CardRegistUIView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegistHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UYo;


# direct methods
.method private constructor <init>(Lc8/UYo;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lc8/TYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/UYo;Lc8/BYo;)V
    .locals 0
    .param p1, "x0"    # Lc8/UYo;
    .param p2, "x1"    # Lc8/BYo;

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lc8/TYo;-><init>(Lc8/UYo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 927
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 928
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 944
    :goto_0
    return-void

    .line 930
    :pswitch_0
    iget-object v0, p0, Lc8/TYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->register_success:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 931
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 932
    iget-object v0, p0, Lc8/TYo;->this$0:Lc8/UYo;

    invoke-static {v0}, Lc8/UYo;->access$2800(Lc8/UYo;)V

    goto :goto_0

    .line 936
    :pswitch_1
    invoke-static {}, Lc8/Jbp;->dismiss()V

    goto :goto_0

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x7d4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
