.class public Lc8/DMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lc8/mNn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KMn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KMn;


# direct methods
.method constructor <init>(Lc8/KMn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KMn;

    .prologue
    .line 505
    iput-object p1, p0, Lc8/DMn;->this$0:Lc8/KMn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lc8/KMn;)V
    .locals 2
    .param p1, "mp"    # Lc8/KMn;

    .prologue
    .line 508
    iget-object v0, p0, Lc8/DMn;->this$0:Lc8/KMn;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lc8/KMn;->access$102(Lc8/KMn;I)I

    .line 509
    iget-object v0, p0, Lc8/DMn;->this$0:Lc8/KMn;

    invoke-static {v0}, Lc8/KMn;->access$500(Lc8/KMn;)Lc8/mNn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lc8/DMn;->this$0:Lc8/KMn;

    invoke-static {v0}, Lc8/KMn;->access$500(Lc8/KMn;)Lc8/mNn;

    move-result-object v0

    iget-object v1, p0, Lc8/DMn;->this$0:Lc8/KMn;

    invoke-interface {v0, v1}, Lc8/mNn;->onPrepared(Lc8/KMn;)V

    .line 512
    :cond_0
    return-void
.end method
