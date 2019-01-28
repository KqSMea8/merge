.class public Lc8/BYo;
.super Landroid/os/Handler;
.source "CardRegistUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UYo;


# direct methods
.method constructor <init>(Lc8/UYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UYo;

    .prologue
    .line 176
    iput-object p1, p0, Lc8/BYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 179
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lc8/BYo;->this$0:Lc8/UYo;

    invoke-virtual {v1, v0}, Lc8/UYo;->showSoftWare(Landroid/view/View;)V

    .line 180
    return-void
.end method
