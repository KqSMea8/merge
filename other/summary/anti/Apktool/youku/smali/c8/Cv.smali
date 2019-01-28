.class public abstract Lc8/Cv;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnScrollListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 0
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .line 10105
    return-void
.end method

.method public onScrolled(Lc8/Rv;II)V
    .locals 0
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 10118
    return-void
.end method
