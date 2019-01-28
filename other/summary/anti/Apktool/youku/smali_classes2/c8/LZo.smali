.class public Lc8/LZo;
.super Ljava/lang/Object;
.source "HintRefreshHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/NZo;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/NZo;


# direct methods
.method constructor <init>(Lc8/NZo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/NZo;

    .prologue
    .line 97
    iput-object p1, p0, Lc8/LZo;->this$0:Lc8/NZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lc8/LZo;->this$0:Lc8/NZo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/NZo;->setState(I)V

    .line 100
    return-void
.end method
