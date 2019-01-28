.class public final Lc8/stq;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Atq;->observeOn(Lc8/Vzq;Lc8/amq;)Lc8/Vzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field final synthetic val$observable:Lc8/Vlq;


# direct methods
.method constructor <init>(Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lc8/stq;->val$observable:Lc8/Vlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lc8/stq;->val$observable:Lc8/Vlq;

    new-instance v1, Lc8/rtq;

    invoke-direct {v1, p0, p1, p1}, Lc8/rtq;-><init>(Lc8/stq;Lc8/Omq;Lc8/Omq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 114
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/stq;->call(Lc8/Omq;)V

    return-void
.end method
