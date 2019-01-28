.class public Lc8/heo;
.super Ljava/lang/Object;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jeo;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jeo;


# direct methods
.method constructor <init>(Lc8/jeo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jeo;

    .prologue
    .line 295
    iput-object p1, p0, Lc8/heo;->this$0:Lc8/jeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lc8/heo;->this$0:Lc8/jeo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/jeo;->setState(I)V

    .line 300
    return-void
.end method
