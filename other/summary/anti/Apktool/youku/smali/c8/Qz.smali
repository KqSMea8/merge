.class public final Lc8/Qz;
.super Ljava/util/AbstractSet;
.source "FastImmutableArraySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Pz;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mIterator:Lc8/Pz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Pz",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lc8/Qz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet<TT;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 227
    iput-object p1, p0, Lc8/Qz;->mContents:[Ljava/lang/Object;

    .line 228
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lc8/Qz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet<TT;>;"
    iget-object v0, p0, Lc8/Qz;->mIterator:Lc8/Pz;

    .line 233
    .local v0, "it":Lc8/Pz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet$FastIterator<TT;>;"
    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lc8/Pz;

    .end local v0    # "it":Lc8/Pz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet$FastIterator<TT;>;"
    iget-object v1, p0, Lc8/Qz;->mContents:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lc8/Pz;-><init>([Ljava/lang/Object;)V

    .line 235
    .restart local v0    # "it":Lc8/Pz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet$FastIterator<TT;>;"
    iput-object v0, p0, Lc8/Qz;->mIterator:Lc8/Pz;

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lc8/Pz;->mIndex:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lc8/Qz;, "Landroid/taobao/atlas/runtime/newcomponent/FastImmutableArraySet<TT;>;"
    iget-object v0, p0, Lc8/Qz;->mContents:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
