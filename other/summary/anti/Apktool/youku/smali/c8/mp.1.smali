.class public final Lc8/mp;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lc8/np;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lc8/np;Lc8/np;)I
    .locals 2
    .param p1, "lhs"    # Lc8/np;
    .param p2, "rhs"    # Lc8/np;

    .prologue
    .line 455
    invoke-virtual {p2}, Lc8/np;->getVolume()I

    move-result v0

    invoke-virtual {p1}, Lc8/np;->getVolume()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 452
    check-cast p1, Lc8/np;

    check-cast p2, Lc8/np;

    invoke-virtual {p0, p1, p2}, Lc8/mp;->compare(Lc8/np;Lc8/np;)I

    move-result v0

    return v0
.end method
