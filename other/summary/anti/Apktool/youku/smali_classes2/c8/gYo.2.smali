.class public Lc8/gYo;
.super Ljava/lang/Object;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iYo;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iYo;


# direct methods
.method constructor <init>(Lc8/iYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/iYo;

    .prologue
    .line 326
    iput-object p1, p0, Lc8/gYo;->this$0:Lc8/iYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lc8/gYo;->this$0:Lc8/iYo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/iYo;->setState(I)V

    .line 330
    return-void
.end method
