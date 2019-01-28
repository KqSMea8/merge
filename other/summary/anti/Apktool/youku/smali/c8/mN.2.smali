.class public Lc8/mN;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/mN;",
        ">;"
    }
.end annotation


# instance fields
.field final cache:Lc8/kN;

.field final prediction:Lc8/oN;

.field final priority:I


# direct methods
.method constructor <init>(Lc8/kN;Lc8/oN;I)V
    .locals 0
    .param p1, "cache"    # Lc8/kN;
    .param p2, "prediction"    # Lc8/oN;
    .param p3, "priority"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/mN;->cache:Lc8/kN;

    .line 25
    iput-object p2, p0, Lc8/mN;->prediction:Lc8/oN;

    .line 26
    iput p3, p0, Lc8/mN;->priority:I

    .line 27
    return-void
.end method


# virtual methods
.method public compareTo(Lc8/mN;)I
    .locals 2
    .param p1, "o"    # Lc8/mN;

    .prologue
    .line 31
    iget v0, p0, Lc8/mN;->priority:I

    iget v1, p1, Lc8/mN;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lc8/mN;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/mN;->compareTo(Lc8/mN;)I

    move-result v0

    return v0
.end method
