.class public final Lc8/aAq;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lc8/Jnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eAq;->createStateless(Lc8/inq;)Lc8/eAq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Jnq",
        "<",
        "Ljava/lang/Void;",
        "Lc8/Wlq",
        "<-TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/inq;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lc8/aAq;->val$next:Lc8/inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lc8/Wlq;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/aAq;->call(Ljava/lang/Void;Lc8/Wlq;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Void;Lc8/Wlq;)Ljava/lang/Void;
    .locals 1
    .param p1, "state"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lc8/Wlq",
            "<-TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "subscriber":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lc8/aAq;->val$next:Lc8/inq;

    invoke-interface {v0, p2}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 232
    return-object p1
.end method
