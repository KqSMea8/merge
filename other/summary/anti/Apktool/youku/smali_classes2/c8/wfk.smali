.class public Lc8/wfk;
.super Ljava/lang/Object;
.source "NewBaseCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xfk;->setCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xfk;


# direct methods
.method constructor <init>(Lc8/xfk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xfk;

    .prologue
    .line 126
    iput-object p1, p0, Lc8/wfk;->this$0:Lc8/xfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lc8/wfk;->this$0:Lc8/xfk;

    iget-object v0, v0, Lc8/xfk;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/wfk;->this$0:Lc8/xfk;

    iget-object v0, v0, Lc8/xfk;->handler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    :cond_0
    return-void
.end method
