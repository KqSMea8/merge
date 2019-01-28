.class public Lc8/Bub;
.super Ljava/lang/Object;
.source "WXMtopRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cub;->onCached(Lc8/HNp;Lc8/cOp;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Cub;


# direct methods
.method constructor <init>(Lc8/Cub;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Cub;

    .prologue
    .line 417
    iput-object p1, p0, Lc8/Bub;->this$1:Lc8/Cub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lc8/Bub;->this$1:Lc8/Cub;

    invoke-virtual {v0}, Lc8/Cub;->onTimeOut()V

    .line 421
    return-void
.end method
