.class public Lc8/Zbg;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lc8/nag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/acg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lc8/acg;

    invoke-direct {v0, p1, p2, p3}, Lc8/acg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    return-object v0
.end method
