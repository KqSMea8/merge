.class public final Lc8/wnq;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gnq;->toFunc(Lc8/inq;Ljava/lang/Object;)Lc8/Inq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<TT1;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lc8/inq;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/inq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lc8/wnq;->val$action:Lc8/inq;

    iput-object p2, p0, Lc8/wnq;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)TR;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    iget-object v0, p0, Lc8/wnq;->val$action:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lc8/wnq;->val$result:Ljava/lang/Object;

    return-object v0
.end method
