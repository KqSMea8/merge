.class public Lc8/Vsg;
.super Ljava/lang/Object;
.source "ConnectionRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lc8/xtg;

.field final b:Lc8/Lsg;

.field final c:Lc8/ntg;


# direct methods
.method constructor <init>(Lc8/xtg;Lc8/Lsg;Lc8/ntg;)V
    .locals 0
    .param p1, "session"    # Lc8/xtg;
    .param p2, "request"    # Lc8/Lsg;
    .param p3, "listener"    # Lc8/ntg;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lc8/Vsg;->a:Lc8/xtg;

    .line 60
    iput-object p2, p0, Lc8/Vsg;->b:Lc8/Lsg;

    .line 61
    iput-object p3, p0, Lc8/Vsg;->c:Lc8/ntg;

    .line 62
    return-void
.end method
