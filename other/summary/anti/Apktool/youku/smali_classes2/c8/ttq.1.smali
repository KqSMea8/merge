.class public final Lc8/ttq;
.super Lc8/Vzq;
.source "OperatorReplay.java"


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
        "Lc8/Vzq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$co:Lc8/Vzq;


# direct methods
.method constructor <init>(Lc8/Rlq;Lc8/Vzq;)V
    .locals 0

    .prologue
    .line 116
    .local p1, "x0":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    iput-object p2, p0, Lc8/ttq;->val$co:Lc8/Vzq;

    invoke-direct {p0, p1}, Lc8/Vzq;-><init>(Lc8/Rlq;)V

    return-void
.end method


# virtual methods
.method public connect(Lc8/inq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-",
            "Lc8/Pmq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "connection":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    iget-object v0, p0, Lc8/ttq;->val$co:Lc8/Vzq;

    invoke-virtual {v0, p1}, Lc8/Vzq;->connect(Lc8/inq;)V

    .line 120
    return-void
.end method
