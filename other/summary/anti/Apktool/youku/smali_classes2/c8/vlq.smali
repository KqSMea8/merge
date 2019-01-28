.class public Lc8/vlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->toObservable()Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;


# direct methods
.method constructor <init>(Lc8/Plq;)V
    .locals 0

    .prologue
    .line 2242
    iput-object p1, p0, Lc8/vlq;->this$0:Lc8/Plq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2245
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lc8/vlq;->this$0:Lc8/Plq;

    invoke-virtual {v0, p1}, Lc8/Plq;->unsafeSubscribe(Lc8/Omq;)V

    .line 2246
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2242
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/vlq;->call(Lc8/Omq;)V

    return-void
.end method
