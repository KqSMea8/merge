.class public Lc8/aq;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lc8/gq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Yp;,
        Lc8/Zp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/gq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lc8/aq;, "Landroid/support/v7/util/MessageThreadUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Lc8/eq;)Lc8/eq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/eq",
            "<TT;>;)",
            "Lc8/eq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lc8/aq;, "Landroid/support/v7/util/MessageThreadUtil<TT;>;"
    .local p1, "callback":Lc8/eq;, "Landroid/support/v7/util/ThreadUtil$BackgroundCallback<TT;>;"
    new-instance v0, Lc8/Xp;

    invoke-direct {v0, p0, p1}, Lc8/Xp;-><init>(Lc8/aq;Lc8/eq;)V

    return-object v0
.end method

.method public getMainThreadProxy(Lc8/fq;)Lc8/fq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fq",
            "<TT;>;)",
            "Lc8/fq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lc8/aq;, "Landroid/support/v7/util/MessageThreadUtil<TT;>;"
    .local p1, "callback":Lc8/fq;, "Landroid/support/v7/util/ThreadUtil$MainThreadCallback<TT;>;"
    new-instance v0, Lc8/Vp;

    invoke-direct {v0, p0, p1}, Lc8/Vp;-><init>(Lc8/aq;Lc8/fq;)V

    return-object v0
.end method
