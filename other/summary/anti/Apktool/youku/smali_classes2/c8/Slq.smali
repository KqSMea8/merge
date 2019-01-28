.class public final Lc8/Slq;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnSubscribeExtend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final parent:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lc8/Slq;, "Lrx/Observable$OnSubscribeExtend<TT;>;"
    .local p1, "parent":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lc8/Slq;->parent:Lc8/Vlq;

    .line 229
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
    .line 232
    .local p0, "this":Lc8/Slq;, "Lrx/Observable$OnSubscribeExtend<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lc8/Slq;->parent:Lc8/Vlq;

    invoke-static {p1, v0}, Lc8/Vlq;->subscribe(Lc8/Omq;Lc8/Vlq;)Lc8/Pmq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 233
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 225
    .local p0, "this":Lc8/Slq;, "Lrx/Observable$OnSubscribeExtend<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Slq;->call(Lc8/Omq;)V

    return-void
.end method
