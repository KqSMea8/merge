.class public final Lc8/Yzq;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lc8/Jnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eAq;->createSingleState(Lc8/Hnq;Lc8/jnq;)Lc8/eAq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Jnq",
        "<TS;",
        "Lc8/Wlq",
        "<-TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lc8/jnq;


# direct methods
.method constructor <init>(Lc8/jnq;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lc8/Yzq;->val$next:Lc8/jnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Lc8/Wlq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lc8/Wlq",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "subscriber":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lc8/Yzq;->val$next:Lc8/jnq;

    invoke-interface {v0, p1, p2}, Lc8/jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 127
    check-cast p2, Lc8/Wlq;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/Yzq;->call(Ljava/lang/Object;Lc8/Wlq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
