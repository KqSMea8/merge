.class public final Lc8/Wsg;
.super Ljava/lang/Object;
.source "ConnectionRecycler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Lc8/otg;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/otg;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Wsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/otg;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "connection"    # Lc8/otg;
    .param p2, "connections"    # Ljava/util/ArrayList;
    .param p3, "timeoutList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/otg;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/otg;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Wsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lc8/Wsg;->a:Lc8/otg;

    .line 75
    iput-object p2, p0, Lc8/Wsg;->b:Ljava/util/ArrayList;

    .line 76
    iput-object p3, p0, Lc8/Wsg;->c:Ljava/util/ArrayList;

    .line 77
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lc8/Wsg;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/Wsg;->a:Lc8/otg;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lc8/Wsg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lc8/Wsg;->a:Lc8/otg;

    invoke-interface {v0}, Lc8/otg;->c()Z

    .line 84
    return-void
.end method
