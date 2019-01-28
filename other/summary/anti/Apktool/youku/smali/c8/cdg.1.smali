.class public Lc8/cdg;
.super Lc8/odg;
.source "HorizontalListComponent.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/odg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
