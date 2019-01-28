.class public Lc8/Nbg;
.super Lc8/abg;
.source "WXInput.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p5}, Lc8/Nbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/abg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 40
    return-void
.end method


# virtual methods
.method protected appleStyleAfterCreated(Lc8/peg;)V
    .locals 0
    .param p1, "editText"    # Lc8/peg;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lc8/abg;->appleStyleAfterCreated(Lc8/peg;)V

    .line 45
    invoke-virtual {p1}, Lc8/peg;->setSingleLine()V

    .line 46
    return-void
.end method

.method protected measure(II)Lc8/pbg;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lc8/abg;->measure(II)Lc8/pbg;

    move-result-object v0

    return-object v0
.end method
