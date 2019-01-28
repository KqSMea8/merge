.class public Lc8/lYo;
.super Ljava/lang/Object;
.source "CardLoginRegistView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pYo;->setRegistOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/pYo;


# direct methods
.method constructor <init>(Lc8/pYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/pYo;

    .prologue
    .line 106
    iput-object p1, p0, Lc8/lYo;->this$0:Lc8/pYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lc8/lYo;->this$0:Lc8/pYo;

    invoke-static {v0}, Lc8/pYo;->access$100(Lc8/pYo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method
