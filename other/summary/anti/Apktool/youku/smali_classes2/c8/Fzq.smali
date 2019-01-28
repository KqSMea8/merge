.class public Lc8/Fzq;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gzq;->subscribeBufferToObservable(Lc8/Vlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gzq;

.field final synthetic val$s:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Gzq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 623
    .local p0, "this":Lc8/Fzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.2;"
    iput-object p1, p0, Lc8/Fzq;->this$0:Lc8/Gzq;

    iput-object p2, p0, Lc8/Fzq;->val$s:Lc8/Omq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 626
    .local p0, "this":Lc8/Fzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager.2;"
    iget-object v0, p0, Lc8/Fzq;->this$0:Lc8/Gzq;

    iget-object v0, v0, Lc8/Gzq;->subscriptions:Lc8/SBq;

    iget-object v1, p0, Lc8/Fzq;->val$s:Lc8/Omq;

    invoke-virtual {v0, v1}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 627
    return-void
.end method
